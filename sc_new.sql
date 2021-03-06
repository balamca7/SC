-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 26, 2018 at 12:51 PM
-- Server version: 5.5.41-MariaDB
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studycollab_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_master`
--

CREATE TABLE IF NOT EXISTS `admin_master` (
  `id` int(11) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `f_name` varchar(64) NOT NULL,
  `m_name` varchar(64) DEFAULT NULL,
  `l_name` varchar(64) NOT NULL,
  `email_1` text NOT NULL,
  `email_2` varchar(100) DEFAULT NULL,
  `telephone` varchar(32) DEFAULT NULL,
  `mobile_num` varchar(32) DEFAULT NULL,
  `screen_name` varchar(32) DEFAULT NULL,
  `auth_string` text NOT NULL,
  `tutor_type` varchar(15) DEFAULT NULL,
  `school_id` int(11) NOT NULL DEFAULT '0',
  `imagepath` varchar(100) DEFAULT NULL,
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `isFirstLogin` tinyint(1) NOT NULL DEFAULT '1',
  `isForgotPassword` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_master`
--

INSERT INTO `admin_master` (`id`, `user_id`, `f_name`, `m_name`, `l_name`, `email_1`, `email_2`, `telephone`, `mobile_num`, `screen_name`, `auth_string`, `tutor_type`, `school_id`, `imagepath`, `created_on`, `updated_on`, `status`, `isFirstLogin`, `isForgotPassword`) VALUES
(1, 'admin', 'Admin', NULL, 'Admin', 'admin@bmassociates.com', NULL, NULL, NULL, NULL, '21232f297a57a5a743894a0e4a801fc3', NULL, 0, 'uploadImage/default.png', '2017-04-12 09:48:35', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `isActive` int(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `isActive`) VALUES
(1, 'World Language', 1),
(2, 'History', 1),
(3, 'ELA', 1),
(4, 'Mathematics', 1),
(5, 'Geography', 1),
(6, 'Drawing', 1),
(7, 'Physics', 1),
(8, 'Mechanical', 1),
(9, 'Chemistry', 1),
(10, 'Biology', 0);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE IF NOT EXISTS `chat` (
  `chat_id` bigint(20) NOT NULL,
  `chat_description` text,
  `user_id` varchar(64) NOT NULL,
  `parent_chat_id` bigint(20) DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `active` char(1) NOT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `sent_id` varchar(60) NOT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chat_id`, `chat_description`, `user_id`, `parent_chat_id`, `timestamp`, `active`, `duration`, `sent_id`, `status`) VALUES
(1, 'dsfsdfdsfg', 'bala123', NULL, '2017-03-02 10:16:09', 'Y', 0, 'bala', 'Unread'),
(3, 'dsfsdfdsfg', 'bala123', NULL, '2017-03-02 10:30:36', 'Y', 0, 'bala', 'Unread'),
(4, 'dsfsdfdsfg', 'bala123', NULL, '2017-03-02 10:31:01', 'Y', 0, 'bala', 'Unread'),
(5, 'dsfsdfdsfg', 'bala123', NULL, '2017-03-02 10:33:22', 'Y', 0, 'bala', 'Unread'),
(6, 'hi', 'Tara1', NULL, '2017-03-03 05:38:40', 'Y', 0, 'bala', 'Unread'),
(7, 'Hello', 'bala', NULL, '2017-03-03 05:41:35', 'Y', 0, 'Tara1', 'Unread'),
(8, 'sdasdf', 'Tara1', NULL, '2017-03-03 05:44:15', 'Y', 0, 'bala', 'Unread'),
(9, 'cvcxgdfgf', 'bala', NULL, '2017-03-03 05:45:13', 'Y', 0, 'Tara1', 'Unread'),
(10, 'ghfgjhgjg', 'Tara1', NULL, '2017-03-03 05:52:06', 'Y', 0, 'bala', 'Unread'),
(11, 'sdf', 'Tara1', NULL, '2017-03-03 07:29:53', 'Y', 0, 'bala', 'Unread'),
(12, 'fgdg', 'Tara1', NULL, '2017-03-03 07:30:01', 'Y', 0, 'bala', 'Unread'),
(13, 'asd', 'Tara1', NULL, '2017-03-03 07:30:34', 'Y', 0, 'bala', 'Unread'),
(14, 'sdfsdf', 'Tara1', NULL, '2017-03-03 07:33:40', 'Y', 0, 'bala', 'Unread'),
(15, 'Hello', 'bala', NULL, '2017-03-03 07:35:38', 'Y', 0, 'Tara1', 'Unread'),
(16, 'Hellofghfg', 'bala', NULL, '2017-03-03 08:39:02', 'Y', 0, 'Tara1', 'Unread'),
(17, 'Hellofghfg', 'bala', NULL, '2017-03-03 08:39:57', 'Y', 0, 'Tara1', 'Unread'),
(18, 'dfsadfsdf', 'Tara1', NULL, '2017-03-03 10:02:19', 'Y', 0, 'bala', 'Unread'),
(19, 'oihkogh', 'bala', NULL, '2017-03-03 10:37:28', 'Y', 0, 'Tara1', 'Unread'),
(20, 'sdfysdf', 'Tara1', NULL, '2017-03-03 10:37:55', 'Y', 0, 'bala', 'Unread'),
(21, 'sjhdghf', 'Tara1', NULL, '2017-03-03 10:40:28', 'Y', 0, 'bala', 'Unread'),
(22, 'ahgsdfh', 'Tara1', NULL, '2017-03-03 10:41:04', 'Y', 0, 'bala', 'Unread'),
(23, 'sdfasdf', 'Tara1', NULL, '2017-03-03 10:41:27', 'Y', 0, 'bala', 'Unread'),
(24, 'ausdfsdf', 'Tara1', NULL, '2017-03-03 10:42:14', 'Y', 0, 'bala', 'Unread'),
(25, 'sadsad', 'Tara1', NULL, '2017-03-03 10:47:08', 'Y', 0, 'bala', 'Unread'),
(26, 'sdfsdf', 'Tara1', NULL, '2017-03-03 10:47:49', 'Y', 0, 'bala', 'Unread'),
(27, 'jkgjkhj', 'bala', NULL, '2017-03-03 10:48:28', 'Y', 0, 'Tara1', 'Unread'),
(28, '567u7777', 'bala', NULL, '2017-03-03 10:48:39', 'Y', 0, 'Tara1', 'Unread'),
(29, 'sdfsdf', 'Tara1', NULL, '2017-03-03 10:48:43', 'Y', 0, 'bala', 'Unread'),
(30, 'sdfsfd', 'Tara1', NULL, '2017-03-03 10:50:08', 'Y', 0, 'bala', 'Unread'),
(31, 'cvxcv', 'Tara1', NULL, '2017-03-03 10:50:16', 'Y', 0, 'bala', 'Unread'),
(32, 'gj', 'bala', NULL, '2017-03-03 10:50:41', 'Y', 0, 'Tara1', 'Unread'),
(33, 'fghg', 'bala', NULL, '2017-03-03 10:50:50', 'Y', 0, 'Tara1', 'Unread'),
(34, 'dfsf', 'Tara1', NULL, '2017-03-03 10:50:50', 'Y', 0, 'bala', 'Unread'),
(35, 'fdgf', 'Tara1', NULL, '2017-03-03 10:53:10', 'Y', 0, 'bala', 'Unread'),
(36, 'sdf', 'Tara1', NULL, '2017-03-03 10:53:58', 'Y', 0, 'bala', 'Unread'),
(37, 'sdfs', 'Tara1', NULL, '2017-03-03 10:54:12', 'Y', 0, 'bala', 'Unread'),
(38, 'fhjklj', 'bala', NULL, '2017-03-03 10:54:56', 'Y', 0, 'Tara1', 'Unread'),
(39, 'hi', 'Tara1', NULL, '2017-03-03 10:55:02', 'Y', 0, 'bala', 'Unread'),
(40, 'fgdfgfgdfg', 'bala', NULL, '2017-03-03 10:55:26', 'Y', 0, 'Tara1', 'Unread'),
(41, 'df', 'Tara1', NULL, '2017-03-03 10:55:50', 'Y', 0, 'bala', 'Unread'),
(42, 'asd', 'Tara1', NULL, '2017-03-03 10:56:56', 'Y', 0, 'bala', 'Unread'),
(43, 'gdsfgsdgfdghfhfgjhgjghj', 'bala', NULL, '2017-03-03 10:57:11', 'Y', 0, 'Tara1', 'Unread'),
(44, 'sdfsdf', 'Tara1', NULL, '2017-03-03 10:57:27', 'Y', 0, 'bala', 'Unread'),
(45, 'rtyer', 'bala', NULL, '2017-03-03 10:58:21', 'Y', 0, 'Tara1', 'Unread'),
(46, 'sdf', 'Tara1', NULL, '2017-03-03 10:58:24', 'Y', 0, 'bala', 'Unread'),
(47, 'guyrtyretre', 'bala', NULL, '2017-03-03 10:58:34', 'Y', 0, 'Tara1', 'Unread'),
(48, 'dasdasdasdas', 'bala', NULL, '2017-03-03 10:58:54', 'Y', 0, 'Tara1', 'Unread'),
(49, 'sdfsdf', 'Tara1', NULL, '2017-03-03 11:00:18', 'Y', 0, 'bala', 'Unread'),
(50, 'sdfsdf', 'Tara1', NULL, '2017-03-03 11:00:46', 'Y', 0, 'bala', 'Unread'),
(51, 'sdfsd', 'Tara1', NULL, '2017-03-03 11:01:30', 'Y', 0, 'bala', 'Unread'),
(52, 'dsfsdf', 'Tara1', NULL, '2017-03-03 11:01:48', 'Y', 0, 'bala', 'Unread'),
(53, 'hj', 'Tara1', NULL, '2017-03-04 04:10:27', 'Y', 0, 'bala', 'Unread'),
(54, 'sdfsd', 'Tara1', NULL, '2017-03-04 04:12:43', 'Y', 0, 'bala', 'Unread'),
(55, 'rsfsfg', 'Tara1', NULL, '2017-03-04 04:14:42', 'Y', 0, 'bala', 'Unread'),
(56, 'bvb', 'Tara1', NULL, '2017-03-04 04:21:31', 'Y', 0, 'bala', 'Unread'),
(57, 'nbgb', 'Tara1', NULL, '2017-03-04 04:23:12', 'Y', 0, 'bala', 'Unread'),
(58, 'sdfds', 'Tara1', NULL, '2017-03-04 04:25:06', 'Y', 0, 'bala', 'Unread'),
(59, 'sdf', 'Tara1', NULL, '2017-03-04 04:27:38', 'Y', 0, 'bala', 'Unread'),
(60, 'dfgfg', 'Tara1', NULL, '2017-03-04 04:34:45', 'Y', 0, 'bala', 'Unread'),
(61, 'sdfsdf', 'Tara1', NULL, '2017-03-04 04:38:55', 'Y', 0, 'bala', 'Unread'),
(62, 'SDFSD', 'Tara1', NULL, '2017-03-04 04:40:12', 'Y', 0, 'bala', 'Unread'),
(63, 'SDF', 'Tara1', NULL, '2017-03-04 04:42:00', 'Y', 0, 'bala', 'Unread'),
(64, 'b', 'Tara1', NULL, '2017-03-04 04:44:18', 'Y', 0, 'bala', 'Unread'),
(65, 'sdfsd', 'Tara1', NULL, '2017-03-04 04:47:21', 'Y', 0, 'bala', 'Unread'),
(66, 'dfsd', 'Tara1', NULL, '2017-03-04 04:48:27', 'Y', 0, 'bala', 'Unread'),
(67, 'sdfkjhfd', 'Tara1', NULL, '2017-03-04 04:54:06', 'Y', 0, 'bala', 'Unread'),
(68, 'waere', 'Tara1', NULL, '2017-03-04 04:54:10', 'Y', 0, 'bala', 'Unread'),
(69, 'sdfsd', 'Tara1', NULL, '2017-03-04 04:56:01', 'Y', 0, 'bala', 'Unread'),
(70, 'sdfsdf', 'Tara1', NULL, '2017-03-04 04:57:41', 'Y', 0, 'bala', 'Unread'),
(71, 'sdfsdf', 'Tara1', NULL, '2017-03-04 05:04:44', 'Y', 0, 'bala', 'Unread'),
(72, 'sdfsdf', 'Tara1', NULL, '2017-03-04 05:04:52', 'Y', 0, 'bala', 'Unread'),
(73, 'glhkjg', 'bala', NULL, '2017-03-04 05:05:17', 'Y', 0, 'Tara1', 'Unread'),
(74, 'dfgdfg', 'Tara1', NULL, '2017-03-04 05:05:25', 'Y', 0, 'bala', 'Unread'),
(75, 'fdgdfg', 'Tara1', NULL, '2017-03-04 05:05:35', 'Y', 0, 'bala', 'Unread'),
(76, 'fgdfg', 'Tara1', NULL, '2017-03-04 05:05:42', 'Y', 0, 'bala', 'Unread'),
(77, 'p]l]', 'bala', NULL, '2017-03-04 05:06:00', 'Y', 0, 'Tara1', 'Unread'),
(78, 'sdfsd', 'Tara1', NULL, '2017-03-04 05:21:38', 'Y', 0, 'bala', 'Unread'),
(79, 'dsfsdf', 'naga_test', NULL, '2017-03-07 04:58:20', 'Y', 0, 'bala', 'Unread'),
(80, 'dfsdf', 'naga_test', NULL, '2017-03-07 04:58:32', 'Y', 0, 'bala', 'Unread'),
(81, 'sdfdfdsfsdfdsf', 'Tara1', NULL, '2017-03-13 08:29:38', 'Y', 0, 'Jenny', 'Unread'),
(82, 'sdfdfdsfsdfdsf', 'Tara1', NULL, '2017-03-13 08:29:40', 'Y', 0, 'Jenny', 'Unread'),
(83, 'sdfdfdsfsdfdsf', 'Tara1', NULL, '2017-03-13 08:29:40', 'Y', 0, 'Jenny', 'Unread'),
(84, 'sdfdfdsfsdfdsf', 'Tara1', NULL, '2017-03-13 08:29:41', 'Y', 0, 'Jenny', 'Unread'),
(85, 'sdfdfdsfsdfdsf', 'Tara1', NULL, '2017-03-13 08:29:41', 'Y', 0, 'Jenny', 'Unread'),
(86, 'hdfg', 'Tara1', NULL, '2017-03-13 08:31:07', 'Y', 0, 'Jenny', 'Unread'),
(87, 'hi', 'naga_test', NULL, '2017-03-13 11:42:16', 'Y', 0, 'Jenny', 'Unread'),
(88, 'hello', 'Jenny', NULL, '2017-03-13 11:44:05', 'Y', 0, 'naga_test', 'Unread'),
(89, 'dfgh', 'naga_test', NULL, '2017-03-13 11:44:44', 'Y', 0, 'Jenny', 'Unread'),
(90, 'sdghsajdg', 'Jenny', NULL, '2017-03-13 11:44:53', 'Y', 0, 'naga_test', 'Unread'),
(91, 'fasada', 'Jenny', NULL, '2017-03-13 11:45:08', 'Y', 0, 'karthi', 'Unread'),
(92, 'hgfhgjhjk', 'karthi', NULL, '2017-03-13 11:45:32', 'Y', 0, 'Jenny', 'Unread'),
(93, 'sgsdgd', 'Jenny', NULL, '2017-03-13 11:45:37', 'Y', 0, 'karthi', 'Unread'),
(94, 'cghhjkj', 'karthi', NULL, '2017-03-13 11:45:52', 'Y', 0, 'Jenny', 'Unread'),
(95, 'ijlljklkl;', 'karthi', NULL, '2017-03-13 11:46:06', 'Y', 0, 'Jenny', 'Unread'),
(96, 'fdsds', 'Jenny', NULL, '2017-03-13 11:46:28', 'Y', 0, 'karthi', 'Unread'),
(97, 'dsadsadsa', 'karthi', NULL, '2017-03-13 11:49:52', 'Y', 0, 'Jenny', 'Unread'),
(98, 'faafsasfaaf', 'Jenny', NULL, '2017-03-13 11:50:09', 'Y', 0, 'karthi', 'Unread'),
(99, 'rgdfrgdfhd', 'karthi', NULL, '2017-03-13 11:53:10', 'Y', 0, 'Jenny', 'Unread'),
(100, 'aaaaa', 'test_1', NULL, '2017-03-13 11:53:24', 'Y', 0, 'karthi', 'Unread'),
(101, 'aaaaa', 'test_1', NULL, '2017-03-13 11:53:25', 'Y', 0, 'karthi', 'Unread'),
(102, 'aaaaa', 'test_1', NULL, '2017-03-13 11:53:25', 'Y', 0, 'karthi', 'Unread'),
(103, 'aaaaa', 'test_1', NULL, '2017-03-13 11:53:25', 'Y', 0, 'karthi', 'Unread'),
(104, 'aaaaa', 'test_1', NULL, '2017-03-13 11:53:25', 'Y', 0, 'karthi', 'Unread'),
(105, 'aaaaa', 'test_1', NULL, '2017-03-13 11:53:26', 'Y', 0, 'karthi', 'Unread'),
(106, 'aaaaa', 'test_1', NULL, '2017-03-13 11:53:26', 'Y', 0, 'karthi', 'Unread'),
(107, 'hello', 'bala', NULL, '2017-03-13 11:53:32', 'Y', 0, 'naga_test', 'Unread'),
(108, 'aaaaaaaaaaaaa', 'bala', NULL, '2017-03-13 11:53:35', 'Y', 0, 'karthi', 'Unread'),
(109, 'aaaaaaaaaaaaa', 'bala', NULL, '2017-03-13 11:53:36', 'Y', 0, 'karthi', 'Unread'),
(110, 'aaaaaaaaaaaaa', 'bala', NULL, '2017-03-13 11:53:36', 'Y', 0, 'karthi', 'Unread'),
(111, 'aaaaaaaaaaaaa', 'bala', NULL, '2017-03-13 11:53:37', 'Y', 0, 'karthi', 'Unread'),
(112, 'aaaaaaaaaaaaa', 'bala', NULL, '2017-03-13 11:53:37', 'Y', 0, 'karthi', 'Unread'),
(113, 'aaaaaaaaaaaaa', 'bala', NULL, '2017-03-13 11:53:37', 'Y', 0, 'karthi', 'Unread'),
(114, 'aaaaaaaaaaaaa', 'bala', NULL, '2017-03-13 11:53:38', 'Y', 0, 'karthi', 'Unread'),
(115, 'aaaaaaaaaaaaa', 'bala', NULL, '2017-03-13 11:53:38', 'Y', 0, 'karthi', 'Unread'),
(116, 'aaaaaaaaaaaaa', 'bala', NULL, '2017-03-13 11:53:38', 'Y', 0, 'karthi', 'Unread'),
(117, 'bye', 'Guna', NULL, '2017-03-13 11:53:46', 'Y', 0, 'naga_test', 'Unread'),
(118, 'bye', 'Guna', NULL, '2017-03-13 11:53:49', 'Y', 0, 'naga_test', 'Unread'),
(119, 'bye', 'Guna', NULL, '2017-03-13 11:53:50', 'Y', 0, 'naga_test', 'Unread'),
(120, 'bye', 'Guna', NULL, '2017-03-13 11:53:50', 'Y', 0, 'naga_test', 'Unread'),
(121, 'bye', 'Guna', NULL, '2017-03-13 11:53:51', 'Y', 0, 'naga_test', 'Unread'),
(122, 'gxgdsggds', 'Jenny', NULL, '2017-03-13 11:54:07', 'Y', 0, 'karthi', 'Unread'),
(123, 'hello', 'Guna', NULL, '2017-03-13 11:54:22', 'Y', 0, 'naga_test', 'Unread');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL,
  `city_name` varchar(100) NOT NULL,
  `state_id` int(11) NOT NULL,
  `isActive` int(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=664 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `state_id`, `isActive`) VALUES
(1, 'Acampo', 5, 1),
(2, 'Acton', 5, 1),
(3, 'Adelanto', 5, 1),
(4, 'Alameda', 5, 1),
(5, 'Albany', 5, 1),
(6, 'Alhambra', 5, 1),
(7, 'Allensworth', 5, 1),
(8, 'Alpaugh', 5, 1),
(9, 'Alpine', 5, 1),
(10, 'Alta', 5, 1),
(11, 'Alta Loma', 5, 1),
(12, 'Alturas', 5, 1),
(13, 'Anaheim', 5, 1),
(14, 'Anderson', 5, 1),
(15, 'Angels Camp', 5, 1),
(16, 'Angwin', 5, 1),
(17, 'Annapolis', 5, 1),
(18, 'Antelope', 5, 1),
(19, 'Antioch', 5, 1),
(20, 'Apple Valley', 5, 1),
(21, 'Arbuckle', 5, 1),
(22, 'Arcadia', 5, 1),
(23, 'Arcata', 5, 1),
(24, 'Armona', 5, 1),
(25, 'Arroyo Grande', 5, 1),
(26, 'Arvin', 5, 1),
(27, 'Atascadero', 5, 1),
(28, 'Atherton', 5, 1),
(29, 'Atwater', 5, 1),
(30, 'Auberry', 5, 1),
(31, 'Auburn', 5, 1),
(32, 'Avenal', 5, 1),
(33, 'Avery', 5, 1),
(34, 'Azusa', 5, 1),
(35, 'Baker', 5, 1),
(36, 'Bakersfield', 5, 1),
(37, 'Baldwin Park', 5, 1),
(38, 'Ballico', 5, 1),
(39, 'Bangor', 5, 1),
(40, 'Banning', 5, 1),
(41, 'Barstow', 5, 1),
(42, 'Bayside', 5, 1),
(43, 'Beaumont', 5, 1),
(44, 'Bella Vista', 5, 1),
(45, 'Bellflower', 5, 1),
(46, 'Belmont', 5, 1),
(47, 'Ben Lomond', 5, 1),
(48, 'Benicia', 5, 1),
(49, 'Berkeley', 5, 1),
(50, 'Berry Creek', 5, 1),
(51, 'Beverly Hills', 5, 1),
(52, 'Bieber', 5, 1),
(53, 'Big Bar', 5, 1),
(54, 'Big Bear Lake', 5, 1),
(55, 'Big Bend', 5, 1),
(56, 'Big Creek', 5, 1),
(57, 'Big Pine', 5, 1),
(58, 'Big Sur', 5, 1),
(59, 'Biggs', 5, 1),
(60, 'Bishop', 5, 1),
(61, 'Blue Jay', 5, 1),
(62, 'Blue Lake', 5, 1),
(63, 'Blythe', 5, 1),
(64, 'Bolinas', 5, 1),
(65, 'Bonsall', 5, 1),
(66, 'Boonville', 5, 1),
(67, 'Borrego Springs', 5, 1),
(68, 'Bradley', 5, 1),
(69, 'Brawley', 5, 1),
(70, 'Brea', 5, 1),
(71, 'Brentwood', 5, 1),
(72, 'Bridgeport', 5, 1),
(73, 'Bridgeville', 5, 1),
(74, 'Brisbane', 5, 1),
(75, 'Buellton', 5, 1),
(76, 'Buena Park', 5, 1),
(77, 'Burbank', 5, 1),
(78, 'Burlingame', 5, 1),
(79, 'Burney', 5, 1),
(80, 'Burnt Ranch', 5, 1),
(81, 'Buttonwillow', 5, 1),
(82, 'Byron', 5, 1),
(83, 'Calabasas', 5, 1),
(84, 'Calexico', 5, 1),
(85, 'Caliente', 5, 1),
(86, 'California Hot Springs', 5, 1),
(87, 'Calipatria', 5, 1),
(88, 'Calistoga', 5, 1),
(89, 'Camarillo', 5, 1),
(90, 'Cambria', 5, 1),
(91, 'Camino', 5, 1),
(92, 'Campbell', 5, 1),
(93, 'Camptonville', 5, 1),
(94, 'Canoga Park', 5, 1),
(95, 'Canyon', 5, 1),
(96, 'Canyon Country', 5, 1),
(97, 'Capitola', 5, 1),
(98, 'Cardiff-By-The-Sea', 5, 1),
(99, 'Carlotta', 5, 1),
(100, 'Carlsbad', 5, 1),
(101, 'Carmel', 5, 1),
(102, 'Carmichael', 5, 1),
(103, 'Carpinteria', 5, 1),
(104, 'Caruthers', 5, 1),
(105, 'Castella', 5, 1),
(106, 'Castro Valley', 5, 1),
(107, 'Cayucos', 5, 1),
(108, 'Cazadero', 5, 1),
(109, 'Cedarville', 5, 1),
(110, 'Ceres', 5, 1),
(111, 'Cerritos', 5, 1),
(112, 'Chico', 5, 1),
(113, 'Chino', 5, 1),
(114, 'Chowchilla', 5, 1),
(115, 'Chualar', 5, 1),
(116, 'Chula Vista', 5, 1),
(117, 'City Of Industry', 5, 1),
(118, 'Claremont', 5, 1),
(119, 'Cloverdale', 5, 1),
(120, 'Clovis', 5, 1),
(121, 'Coalinga', 5, 1),
(122, 'Coffee Creek', 5, 1),
(123, 'Colfax', 5, 1),
(124, 'Colton', 5, 1),
(125, 'Columbia', 5, 1),
(126, 'Colusa', 5, 1),
(127, 'Compton', 5, 1),
(128, 'Concord', 5, 1),
(129, 'Corcoran', 5, 1),
(130, 'Corning', 5, 1),
(131, 'Coronado', 5, 1),
(132, 'Costa Mesa', 5, 1),
(133, 'Cottonwood', 5, 1),
(134, 'Covelo', 5, 1),
(135, 'Covina', 5, 1),
(136, 'Crescent City', 5, 1),
(137, 'Culver City', 5, 1),
(138, 'Cupertino', 5, 1),
(139, 'Cypress', 5, 1),
(140, 'Daly City', 5, 1),
(141, 'Danville', 5, 1),
(142, 'Davenport', 5, 1),
(143, 'Davis', 5, 1),
(144, 'Delano', 5, 1),
(145, 'Delhi', 5, 1),
(146, 'Denair', 5, 1),
(147, 'Desert Center', 5, 1),
(148, 'Diamond Springs', 5, 1),
(149, 'Dinuba', 5, 1),
(150, 'Dixon', 5, 1),
(151, 'Dorris', 5, 1),
(152, 'Dos Palos', 5, 1),
(153, 'Douglas City', 5, 1),
(154, 'Downey', 5, 1),
(155, 'Doyle', 5, 1),
(156, 'Duarte', 5, 1),
(157, 'Dublin', 5, 1),
(158, 'Ducor', 5, 1),
(159, 'Dunsmuir', 5, 1),
(160, 'Durham', 5, 1),
(161, 'Earlimart', 5, 1),
(162, 'East Nicolaus', 5, 1),
(163, 'East Palo Alto', 5, 1),
(164, 'Edgewood', 5, 1),
(165, 'El Cajon', 5, 1),
(166, 'El Centro', 5, 1),
(167, 'El Dorado Hills', 5, 1),
(168, 'El Monte', 5, 1),
(169, 'El Nido', 5, 1),
(170, 'El Segundo', 5, 1),
(171, 'Elk Creek', 5, 1),
(172, 'Elk Grove', 5, 1),
(173, 'Elverta', 5, 1),
(174, 'Emeryville', 5, 1),
(175, 'Encinitas', 5, 1),
(176, 'Escalon', 5, 1),
(177, 'Escondido', 5, 1),
(178, 'Esparto', 5, 1),
(179, 'Etiwanda', 5, 1),
(180, 'Eureka', 5, 1),
(181, 'Exeter', 5, 1),
(182, 'Fairfield', 5, 1),
(183, 'Fallbrook', 5, 1),
(184, 'Farmersville', 5, 1),
(185, 'Fellows', 5, 1),
(186, 'Ferndale', 5, 1),
(187, 'Fillmore', 5, 1),
(188, 'Firebaugh', 5, 1),
(189, 'Five Points', 5, 1),
(190, 'Flournoy', 5, 1),
(191, 'Fontana', 5, 1),
(192, 'Foresthill', 5, 1),
(193, 'Forestville', 5, 1),
(194, 'Forks Of Salmon', 5, 1),
(195, 'Fort Bragg', 5, 1),
(196, 'Fort Jones', 5, 1),
(197, 'Fortuna', 5, 1),
(198, 'Foster City', 5, 1),
(199, 'Fountain Valley', 5, 1),
(200, 'Fowler', 5, 1),
(201, 'Fremont', 5, 1),
(202, 'French Gulch', 5, 1),
(203, 'Fresno', 5, 1),
(204, 'Fullerton', 5, 1),
(205, 'Galt', 5, 1),
(206, 'Garden Grove', 5, 1),
(207, 'Gaviota', 5, 1),
(208, 'Gazelle', 5, 1),
(209, 'Georgetown', 5, 1),
(210, 'Gerber', 5, 1),
(211, 'Geyserville', 5, 1),
(212, 'Gilroy', 5, 1),
(213, 'Glendale', 5, 1),
(214, 'Glendora', 5, 1),
(215, 'Glennville', 5, 1),
(216, 'Goleta', 5, 1),
(217, 'Gonzales', 5, 1),
(218, 'Gorman', 5, 1),
(219, 'Granite Bay', 5, 1),
(220, 'Grass Valley', 5, 1),
(221, 'Greenfield', 5, 1),
(222, 'Grenada', 5, 1),
(223, 'Gridley', 5, 1),
(224, 'Groveland', 5, 1),
(225, 'Guadalupe', 5, 1),
(226, 'Guerneville', 5, 1),
(227, 'Gustine', 5, 1),
(228, 'Half Moon Bay', 5, 1),
(229, 'Hamilton City', 5, 1),
(230, 'Hanford', 5, 1),
(231, 'Happy Camp', 5, 1),
(232, 'Hawthorne', 5, 1),
(233, 'Hayfork', 5, 1),
(234, 'Hayward', 5, 1),
(235, 'Healdsburg', 5, 1),
(236, 'Heber', 5, 1),
(237, 'Helendale', 5, 1),
(238, 'Hemet', 5, 1),
(239, 'Herald', 5, 1),
(240, 'Herlong', 5, 1),
(241, 'Hermosa Beach', 5, 1),
(242, 'Hesperia', 5, 1),
(243, 'Hickman', 5, 1),
(244, 'Hillsborough', 5, 1),
(245, 'Hilmar', 5, 1),
(246, 'Hollister', 5, 1),
(247, 'Holtville', 5, 1),
(248, 'Homeland', 5, 1),
(249, 'Hoopa', 5, 1),
(250, 'Hornbrook', 5, 1),
(251, 'Horse Creek', 5, 1),
(252, 'Hughson', 5, 1),
(253, 'Huntington Beach', 5, 1),
(254, 'Hydesville', 5, 1),
(255, 'Igo', 5, 1),
(256, 'Imperial', 5, 1),
(257, 'Imperial Beach', 5, 1),
(258, 'Independence', 5, 1),
(259, 'Inglewood', 5, 1),
(260, 'Irvine', 5, 1),
(261, 'Jackson', 5, 1),
(262, 'Jamestown', 5, 1),
(263, 'Jamul', 5, 1),
(264, 'Janesville', 5, 1),
(265, 'Julian', 5, 1),
(266, 'Junction City', 5, 1),
(267, 'Jurupa Valley', 5, 1),
(268, 'Kelseyville', 5, 1),
(269, 'Kentfield', 5, 1),
(270, 'Kenwood', 5, 1),
(271, 'Kerman', 5, 1),
(272, 'Keyes', 5, 1),
(273, 'King City', 5, 1),
(274, 'Kingsburg', 5, 1),
(275, 'Kneeland', 5, 1),
(276, 'Knights Ferry', 5, 1),
(277, 'Knightsen', 5, 1),
(278, 'Korbel', 5, 1),
(279, 'La Canada', 5, 1),
(280, 'La Habra', 5, 1),
(281, 'La Mesa', 5, 1),
(282, 'La Puente', 5, 1),
(283, 'La Quinta', 5, 1),
(284, 'Lafayette', 5, 1),
(285, 'Laguna Beach', 5, 1),
(286, 'Lake Elsinore', 5, 1),
(287, 'Lake Hughes', 5, 1),
(288, 'Lake Isabella', 5, 1),
(289, 'Lakeport', 5, 1),
(290, 'Lakeside', 5, 1),
(291, 'Lamont', 5, 1),
(292, 'Lancaster', 5, 1),
(293, 'Larkspur', 5, 1),
(294, 'Laton', 5, 1),
(295, 'Lawndale', 5, 1),
(296, 'Laytonville', 5, 1),
(297, 'Le Grand', 5, 1),
(298, 'Lebec', 5, 1),
(299, 'Leggett', 5, 1),
(300, 'Lemon Cove', 5, 1),
(301, 'Lemon Grove', 5, 1),
(302, 'Lemoore', 5, 1),
(303, 'Lennox', 5, 1),
(304, 'Lewiston', 5, 1),
(305, 'Lincoln', 5, 1),
(306, 'Linden', 5, 1),
(307, 'Lindsay', 5, 1),
(308, 'Litchfield', 5, 1),
(309, 'Live Oak', 5, 1),
(310, 'Livermore', 5, 1),
(311, 'Livingston', 5, 1),
(312, 'Lockwood', 5, 1),
(313, 'Lodi', 5, 1),
(314, 'Loleta', 5, 1),
(315, 'Lompoc', 5, 1),
(316, 'Lone Pine', 5, 1),
(317, 'Long Beach', 5, 1),
(318, 'Loomis', 5, 1),
(319, 'Los Alamitos', 5, 1),
(320, 'Los Altos', 5, 1),
(321, 'Los Angeles', 5, 1),
(322, 'Los Banos', 5, 1),
(323, 'Los Gatos', 5, 1),
(324, 'Los Molinos', 5, 1),
(325, 'Los Olivos', 5, 1),
(326, 'Lost Hills', 5, 1),
(327, 'Lower Lake', 5, 1),
(328, 'Loyalton', 5, 1),
(329, 'Lucerne', 5, 1),
(330, 'Lucerne Valley', 5, 1),
(331, 'Lynwood', 5, 1),
(332, 'Madera', 5, 1),
(333, 'Mammoth Lakes', 5, 1),
(334, 'Manchester', 5, 1),
(335, 'Manhattan Beach', 5, 1),
(336, 'Manteca', 5, 1),
(337, 'Manton', 5, 1),
(338, 'Maricopa', 5, 1),
(339, 'Mariposa', 5, 1),
(340, 'Markleeville', 5, 1),
(341, 'Martinez', 5, 1),
(342, 'Marysville', 5, 1),
(343, 'Mather', 5, 1),
(344, 'Mather Afb', 5, 1),
(345, 'Maxwell', 5, 1),
(346, 'McClellan Park', 5, 1),
(347, 'Mccloud', 5, 1),
(348, 'Mcfarland', 5, 1),
(349, 'Mckinleyville', 5, 1),
(350, 'Mckittrick', 5, 1),
(351, 'Meadow Vista', 5, 1),
(352, 'Mendocino', 5, 1),
(353, 'Mendota', 5, 1),
(354, 'Menifee', 5, 1),
(355, 'Menlo Park', 5, 1),
(356, 'Merced', 5, 1),
(357, 'Meridian', 5, 1),
(358, 'Middletown', 5, 1),
(359, 'Mill Valley', 5, 1),
(360, 'Millbrae', 5, 1),
(361, 'Millville', 5, 1),
(362, 'Milpitas', 5, 1),
(363, 'Mineral', 5, 1),
(364, 'Miranda', 5, 1),
(365, 'Mission Viejo', 5, 1),
(366, 'Modesto', 5, 1),
(367, 'Mojave', 5, 1),
(368, 'Monrovia', 5, 1),
(369, 'Montague', 5, 1),
(370, 'Monte Rio', 5, 1),
(371, 'Montebello', 5, 1),
(372, 'Monterey', 5, 1),
(373, 'Montgomery Creek', 5, 1),
(374, 'Moorpark', 5, 1),
(375, 'Moraga', 5, 1),
(376, 'Moreno Valley, CA', 5, 1),
(377, 'Morgan Hill', 5, 1),
(378, 'Moss Landing', 5, 1),
(379, 'Mount Shasta', 5, 1),
(380, 'Mountain House', 5, 1),
(381, 'Mountain View', 5, 1),
(382, 'Mt. Baldy', 5, 1),
(383, 'Mt. Shasta', 5, 1),
(384, 'Murrieta', 5, 1),
(385, 'Napa', 5, 1),
(386, 'National City', 5, 1),
(387, 'Needles', 5, 1),
(388, 'Nevada City', 5, 1),
(389, 'New Cuyama', 5, 1),
(390, 'Newark', 5, 1),
(391, 'Newcastle', 5, 1),
(392, 'Newman', 5, 1),
(393, 'Nicasio', 5, 1),
(394, 'Nicolaus', 5, 1),
(395, 'Norco', 5, 1),
(396, 'North Edwards', 5, 1),
(397, 'North Fork', 5, 1),
(398, 'Norwalk', 5, 1),
(399, 'Novato', 5, 1),
(400, 'Nuevo', 5, 1),
(401, 'Oak Park', 5, 1),
(402, 'Oak Run', 5, 1),
(403, 'Oakdale', 5, 1),
(404, 'Oakhurst', 5, 1),
(405, 'Oakland', 5, 1),
(406, 'Oakley', 5, 1),
(407, 'Occidental', 5, 1),
(408, 'Oceanside', 5, 1),
(409, 'Ojai', 5, 1),
(410, 'Ontario', 5, 1),
(411, 'Orange', 5, 1),
(412, 'Orcutt', 5, 1),
(413, 'Orick', 5, 1),
(414, 'Orinda', 5, 1),
(415, 'Orland', 5, 1),
(416, 'Oro Grande', 5, 1),
(417, 'Orosi', 5, 1),
(418, 'Oroville', 5, 1),
(419, 'Oxnard', 5, 1),
(420, 'Pacific Grove', 5, 1),
(421, 'Pacifica', 5, 1),
(422, 'Paicines', 5, 1),
(423, 'Palermo', 5, 1),
(424, 'Palm Springs', 5, 1),
(425, 'Palmdale', 5, 1),
(426, 'Palo Alto', 5, 1),
(427, 'Palo Cedro', 5, 1),
(428, 'Palos Verdes Estates', 5, 1),
(429, 'Paradise', 5, 1),
(430, 'Paramount', 5, 1),
(431, 'Parlier', 5, 1),
(432, 'Pasadena', 5, 1),
(433, 'Paskenta', 5, 1),
(434, 'Paso Robles', 5, 1),
(435, 'Patterson', 5, 1),
(436, 'Paynes Creek', 5, 1),
(437, 'Pearblossom', 5, 1),
(438, 'Penn Valley', 5, 1),
(439, 'Perris', 5, 1),
(440, 'Pescadero', 5, 1),
(441, 'Petaluma', 5, 1),
(442, 'Petrolia', 5, 1),
(443, 'Phelan', 5, 1),
(444, 'Pico Rivera', 5, 1),
(445, 'Piedmont', 5, 1),
(446, 'Pine Grove', 5, 1),
(447, 'Pine Valley', 5, 1),
(448, 'Pittsburg', 5, 1),
(449, 'Pixley', 5, 1),
(450, 'Placentia', 5, 1),
(451, 'Placerville', 5, 1),
(452, 'Planada', 5, 1),
(453, 'Pleasant Grove', 5, 1),
(454, 'Pleasant Hill', 5, 1),
(455, 'Pleasanton', 5, 1),
(456, 'Plumas Lake', 5, 1),
(457, 'Point Arena', 5, 1),
(458, 'Pollock Pines', 5, 1),
(459, 'Pomona', 5, 1),
(460, 'Pond', 5, 1),
(461, 'Pope Valley', 5, 1),
(462, 'Port Hueneme', 5, 1),
(463, 'Porterville', 5, 1),
(464, 'Portola Valley', 5, 1),
(465, 'Potter Valley', 5, 1),
(466, 'Prather', 5, 1),
(467, 'Princeton', 5, 1),
(468, 'Quartz Hill', 5, 1),
(469, 'Quincy', 5, 1),
(470, 'Rainbow', 5, 1),
(471, 'Raisin City', 5, 1),
(472, 'Ramona', 5, 1),
(473, 'Rancho Cordova', 5, 1),
(474, 'Rancho Cucamonga', 5, 1),
(475, 'Rancho Santa Fe', 5, 1),
(476, 'Raymond', 5, 1),
(477, 'Red Bluff', 5, 1),
(478, 'Redding', 5, 1),
(479, 'Redlands', 5, 1),
(480, 'Redondo Beach', 5, 1),
(481, 'Redwood City', 5, 1),
(482, 'Reedley', 5, 1),
(483, 'Rescue', 5, 1),
(484, 'Rialto', 5, 1),
(485, 'Richgrove', 5, 1),
(486, 'Richmond', 5, 1),
(487, 'Ridgecrest', 5, 1),
(488, 'Rio Dell', 5, 1),
(489, 'Rio Oso', 5, 1),
(490, 'Rio Vista', 5, 1),
(491, 'Ripon', 5, 1),
(492, 'Riverbank', 5, 1),
(493, 'Riverdale', 5, 1),
(494, 'Riverside', 5, 1),
(495, 'Rocklin', 5, 1),
(496, 'Rodeo', 5, 1),
(497, 'Rohnert Park', 5, 1),
(498, 'Rosamond', 5, 1),
(499, 'Rosemead', 5, 1),
(500, 'Roseville', 5, 1),
(501, 'Ross', 5, 1),
(502, 'Rowland Heights', 5, 1),
(503, 'Sacramento', 5, 1),
(504, 'Salida', 5, 1),
(505, 'Salinas', 5, 1),
(506, 'Samoa', 5, 1),
(507, 'San Andreas', 5, 1),
(508, 'San Anselmo', 5, 1),
(509, 'San Ardo', 5, 1),
(510, 'San Bernardino', 5, 1),
(511, 'San Bruno', 5, 1),
(512, 'San Carlos', 5, 1),
(513, 'San Diego', 5, 1),
(514, 'San Dimas', 5, 1),
(515, 'San Francisco', 5, 1),
(516, 'San Gabriel', 5, 1),
(517, 'San Geronimo', 5, 1),
(518, 'San Jacinto', 5, 1),
(519, 'San Joaquin', 5, 1),
(520, 'San Jose', 5, 1),
(521, 'San Juan Bautista', 5, 1),
(522, 'San Juan Capistrano', 5, 1),
(523, 'San Leandro', 5, 1),
(524, 'San Lorenzo', 5, 1),
(525, 'San Lucas', 5, 1),
(526, 'San Luis Obispo', 5, 1),
(527, 'San Marcos', 5, 1),
(528, 'San Marino', 5, 1),
(529, 'San Mateo', 5, 1),
(530, 'San Miguel', 5, 1),
(531, 'San Rafael', 5, 1),
(532, 'San Ysidro', 5, 1),
(533, 'Sanger', 5, 1),
(534, 'Santa Ana', 5, 1),
(535, 'Santa Barbara', 5, 1),
(536, 'Santa Clara', 5, 1),
(537, 'Santa Clarita', 5, 1),
(538, 'Santa Cruz', 5, 1),
(539, 'Santa Fe Springs', 5, 1),
(540, 'Santa Maria', 5, 1),
(541, 'Santa Monica', 5, 1),
(542, 'Santa Paula', 5, 1),
(543, 'Santa Rosa', 5, 1),
(544, 'Santa Ynez', 5, 1),
(545, 'Santa Ysabel', 5, 1),
(546, 'Santee', 5, 1),
(547, 'Saratoga', 5, 1),
(548, 'Sausalito', 5, 1),
(549, 'Scotia', 5, 1),
(550, 'Scotts Valley', 5, 1),
(551, 'Sebastopol', 5, 1),
(552, 'Seeley', 5, 1),
(553, 'Seiad Valley', 5, 1),
(554, 'Selma', 5, 1),
(555, 'Shafter', 5, 1),
(556, 'Shandon', 5, 1),
(557, 'Shasta', 5, 1),
(558, 'Shingle Springs', 5, 1),
(559, 'Shingletown', 5, 1),
(560, 'Shoshone', 5, 1),
(561, 'Simi Valley', 5, 1),
(562, 'Snelling', 5, 1),
(563, 'Solana Beach', 5, 1),
(564, 'Soledad', 5, 1),
(565, 'Solvang', 5, 1),
(566, 'Somerset', 5, 1),
(567, 'Somes Bar', 5, 1),
(568, 'Somis', 5, 1),
(569, 'Sonoma', 5, 1),
(570, 'Sonora', 5, 1),
(571, 'Soquel', 5, 1),
(572, 'Soulsbyville', 5, 1),
(573, 'South El Monte', 5, 1),
(574, 'South Lake Tahoe', 5, 1),
(575, 'South Pasadena', 5, 1),
(576, 'South San Francisco', 5, 1),
(577, 'Spreckels', 5, 1),
(578, 'Springville', 5, 1),
(579, 'St. Helena', 5, 1),
(580, 'Stewarts Point', 5, 1),
(581, 'Stockton', 5, 1),
(582, 'Strathmore', 5, 1),
(583, 'Sunnyvale', 5, 1),
(584, 'Sunol', 5, 1),
(585, 'Susanville', 5, 1),
(586, 'Sutter', 5, 1),
(587, 'Taft', 5, 1),
(588, 'Tehachapi', 5, 1),
(589, 'Temecula', 5, 1),
(590, 'Temple City', 5, 1),
(591, 'Templeton', 5, 1),
(592, 'Termo', 5, 1),
(593, 'Terra Bella', 5, 1),
(594, 'Thermal', 5, 1),
(595, 'Thornton', 5, 1),
(596, 'Thousand Oaks', 5, 1),
(597, 'Three Rivers', 5, 1),
(598, 'Tiburon', 5, 1),
(599, 'Tipton', 5, 1),
(600, 'Tomales', 5, 1),
(601, 'Torrance', 5, 1),
(602, 'Tracy', 5, 1),
(603, 'Traver', 5, 1),
(604, 'Tres Pinos', 5, 1),
(605, 'Trinidad', 5, 1),
(606, 'Trinity Center', 5, 1),
(607, 'Trona', 5, 1),
(608, 'Truckee', 5, 1),
(609, 'Tulare', 5, 1),
(610, 'Tulelake', 5, 1),
(611, 'Tuolumne', 5, 1),
(612, 'Tupman', 5, 1),
(613, 'Turlock', 5, 1),
(614, 'Tustin', 5, 1),
(615, 'Twain Harte', 5, 1),
(616, 'Twentynine Palms', 5, 1),
(617, 'Ukiah', 5, 1),
(618, 'Union City', 5, 1),
(619, 'Upland', 5, 1),
(620, 'Upper Lake', 5, 1),
(621, 'Vacaville', 5, 1),
(622, 'Valencia', 5, 1),
(623, 'Vallejo', 5, 1),
(624, 'Valley Center', 5, 1),
(625, 'Valley Home', 5, 1),
(626, 'Ventura', 5, 1),
(627, 'Victorville', 5, 1),
(628, 'Visalia', 5, 1),
(629, 'Vista', 5, 1),
(630, 'Walnut', 5, 1),
(631, 'Walnut Creek', 5, 1),
(632, 'Warner Springs', 5, 1),
(633, 'Wasco', 5, 1),
(634, 'Waterford', 5, 1),
(635, 'Watsonville', 5, 1),
(636, 'Weaverville', 5, 1),
(637, 'Weldon', 5, 1),
(638, 'West Covina', 5, 1),
(639, 'West Los Angeles', 5, 1),
(640, 'West Sacramento', 5, 1),
(641, 'Westminster', 5, 1),
(642, 'Westmorland', 5, 1),
(643, 'Westwood', 5, 1),
(644, 'Wheatland', 5, 1),
(645, 'Whitmore', 5, 1),
(646, 'Whittier', 5, 1),
(647, 'Williams', 5, 1),
(648, 'Willits', 5, 1),
(649, 'Willows', 5, 1),
(650, 'Windsor', 5, 1),
(651, 'Winterhaven', 5, 1),
(652, 'Winters', 5, 1),
(653, 'Winton', 5, 1),
(654, 'Woodlake', 5, 1),
(655, 'Woodland', 5, 1),
(656, 'Woodside', 5, 1),
(657, 'Woody', 5, 1),
(658, 'Yermo', 5, 1),
(659, 'Yreka', 5, 1),
(660, 'Yuba City', 5, 1),
(661, 'Yucaipa', 5, 1),
(662, 'RESt', 52, 1),
(663, 'ghfghdf', 53, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cometchat`
--

CREATE TABLE IF NOT EXISTS `cometchat` (
  `id` bigint(20) unsigned NOT NULL,
  `from` int(10) unsigned NOT NULL,
  `to` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `sent` int(10) unsigned NOT NULL DEFAULT '0',
  `read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `direction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `custom_data` text
) ENGINE=InnoDB AUTO_INCREMENT=2034 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cometchat`
--

INSERT INTO `cometchat` (`id`, `from`, `to`, `message`, `sent`, `read`, `direction`, `custom_data`) VALUES
(1, 4, 52, 'has sent you an audio chat request. <a class=''audiochat_link_c1aeadd56b01b5910df285c0cda491e9 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''c1aeadd56b01b5910df285c0cda491e9'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''c1aeadd56b01b5910df285c0cda491e9'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_c1aeadd56b01b5910df285c0cda491e9'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''c1aeadd56b01b5910df285c0cda491e9'');">click here.</a>You can also simply ignore this message.', 1491810219, 1, 1, NULL),
(2, 4, 52, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_c1aeadd56b01b5910df285c0cda491e9'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''52'',''c1aeadd56b01b5910df285c0cda491e9'');">click here.</a>', 1491810220, 1, 2, NULL),
(3, 4, 52, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''40ce99cdc47d3adef5046f1be5568947'');"|avchat_webaction=initiate|40ce99cdc47d3adef5046f1be5568947|', 1491810239, 1, 1, NULL),
(4, 4, 52, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_40ce99cdc47d3adef5046f1be5568947_0__2', 1491810240, 1, 2, NULL),
(5, 4, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1491810268, 1, 2, NULL),
(6, 4, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1491810268, 1, 1, NULL),
(7, 4, 52, 'has sent you an audio chat request. <a class=''audiochat_link_c1aeadd56b01b5910df285c0cda491e9 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''c1aeadd56b01b5910df285c0cda491e9'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''c1aeadd56b01b5910df285c0cda491e9'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_c1aeadd56b01b5910df285c0cda491e9'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''c1aeadd56b01b5910df285c0cda491e9'');">click here.</a>You can also simply ignore this message.', 1491810271, 1, 1, NULL),
(8, 4, 52, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_c1aeadd56b01b5910df285c0cda491e9'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''52'',''c1aeadd56b01b5910df285c0cda491e9'');">click here.</a>', 1491810272, 1, 2, NULL),
(9, 4, 52, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''40ce99cdc47d3adef5046f1be5568947'');"|avchat_webaction=initiate|40ce99cdc47d3adef5046f1be5568947|', 1491810281, 1, 1, NULL),
(10, 4, 52, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_40ce99cdc47d3adef5046f1be5568947_0__2', 1491810282, 1, 2, NULL),
(11, 4, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1491810289, 1, 2, NULL),
(12, 4, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1491810289, 1, 1, NULL),
(13, 4, 52, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''40ce99cdc47d3adef5046f1be5568947'');"|avchat_webaction=initiate|40ce99cdc47d3adef5046f1be5568947|', 1491810362, 1, 1, NULL),
(14, 4, 52, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_40ce99cdc47d3adef5046f1be5568947_0__2', 1491810363, 1, 2, NULL),
(15, 4, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1491810372, 1, 2, NULL),
(16, 4, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1491810372, 1, 1, NULL),
(17, 52, 4, 'has sent you an audio chat request. <a class=''audiochat_link_2565ed9ec11960dbb60436ad6d85534c acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''52'',''2565ed9ec11960dbb60436ad6d85534c'');" href=''javascript:void(0);'' to=''52'' caller='''' grp=''2565ed9ec11960dbb60436ad6d85534c'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_2565ed9ec11960dbb60436ad6d85534c'' onclick="javascript:jqcc.ccaudiochat.reject_call(''52'',''2565ed9ec11960dbb60436ad6d85534c'');">click here.</a>You can also simply ignore this message.', 1491810430, 1, 1, NULL),
(18, 52, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_2565ed9ec11960dbb60436ad6d85534c'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''2565ed9ec11960dbb60436ad6d85534c'');">click here.</a>', 1491810431, 1, 2, NULL),
(19, 52, 4, 'has sent you an audio chat request. <a class=''audiochat_link_2565ed9ec11960dbb60436ad6d85534c acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''52'',''2565ed9ec11960dbb60436ad6d85534c'');" href=''javascript:void(0);'' to=''52'' caller='''' grp=''2565ed9ec11960dbb60436ad6d85534c'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_2565ed9ec11960dbb60436ad6d85534c'' onclick="javascript:jqcc.ccaudiochat.reject_call(''52'',''2565ed9ec11960dbb60436ad6d85534c'');">click here.</a>You can also simply ignore this message.', 1491810440, 1, 1, NULL),
(20, 52, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_2565ed9ec11960dbb60436ad6d85534c'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''2565ed9ec11960dbb60436ad6d85534c'');">click here.</a>', 1491810441, 1, 2, NULL),
(21, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491810657, 1, 1, NULL),
(22, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491810658, 1, 2, NULL),
(23, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491810709, 1, 2, NULL),
(24, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491810709, 1, 1, NULL),
(25, 1, 4, 'has sent you an audio chat request. <a class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');" href=''javascript:void(0);'' to=''1'' caller='''' grp=''6eeb6f590d3b71d313fc8fb4e2176bc1'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.reject_call(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>You can also simply ignore this message.', 1491810716, 1, 1, NULL),
(26, 1, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>', 1491810717, 1, 2, NULL),
(27, 4, 1, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');" to=''4'' caller='''' grp=''6eeb6f590d3b71d313fc8fb4e2176bc1'' >Click here to launch the audio chat window</a>', 1491810721, 1, 1, NULL),
(28, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491810905, 1, 1, NULL),
(29, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491810907, 1, 2, NULL),
(30, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491811384, 1, 1, NULL),
(31, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491811385, 1, 2, NULL),
(32, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491811508, 1, 2, NULL),
(33, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491811508, 1, 1, NULL),
(34, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491811565, 1, 1, NULL),
(35, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491811567, 1, 2, NULL),
(36, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491811594, 1, 1, NULL),
(37, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491811595, 1, 2, NULL),
(38, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491811964, 1, 1, NULL),
(39, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491811964, 1, 2, NULL),
(40, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491811975, 1, 2, NULL),
(41, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491811975, 1, 1, NULL),
(42, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491812055, 1, 1, NULL),
(43, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491812056, 1, 2, NULL),
(44, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491812146, 1, 1, NULL),
(45, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491812147, 1, 2, NULL),
(46, 4, 1, 'hi', 1491812191, 1, 0, NULL),
(47, 1, 4, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''1'' grp=''c4ca4238a0b923820dcc509a6f75849ba87ff679a2f3e71d9181a67b7542122c'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''1'',''c4ca4238a0b923820dcc509a6f75849ba87ff679a2f3e71d9181a67b7542122c'');">Click here to view his/her screen</a> or simply ignore this message.', 1491812204, 1, 1, NULL),
(48, 1, 4, 'has successfully shared his/her screen.', 1491812205, 1, 2, NULL),
(49, 4, 1, 'is now viewing your screen.', 1491812214, 1, 1, NULL),
(50, 1, 4, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''1'' grp=''c4ca4238a0b923820dcc509a6f75849ba87ff679a2f3e71d9181a67b7542122c'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''1'',''c4ca4238a0b923820dcc509a6f75849ba87ff679a2f3e71d9181a67b7542122c'');">Click here to view his/her screen</a> or simply ignore this message.', 1491812275, 1, 1, NULL),
(51, 1, 4, 'has successfully shared his/her screen.', 1491812275, 1, 2, NULL),
(52, 4, 1, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''4'' grp=''c4ca4238a0b923820dcc509a6f75849ba87ff679a2f3e71d9181a67b7542122c'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''4'',''c4ca4238a0b923820dcc509a6f75849ba87ff679a2f3e71d9181a67b7542122c'');">Click here to view his/her screen</a> or simply ignore this message.', 1491812361, 1, 1, NULL),
(53, 4, 1, 'has successfully shared his/her screen.', 1491812363, 1, 2, NULL),
(54, 1, 4, 'is now viewing your screen.', 1491812377, 1, 1, NULL),
(55, 4, 1, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''4'' grp=''c4ca4238a0b923820dcc509a6f75849ba87ff679a2f3e71d9181a67b7542122c'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''4'',''c4ca4238a0b923820dcc509a6f75849ba87ff679a2f3e71d9181a67b7542122c'');">Click here to view his/her screen</a> or simply ignore this message.', 1491812415, 1, 1, NULL),
(56, 4, 1, 'has successfully shared his/her screen.', 1491812417, 1, 2, NULL),
(57, 1, 4, 'has successfully shared his/her whiteboard.', 1491812481, 1, 2, NULL),
(58, 1, 4, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''1'' random=''1491812507'' room=''b890a689f43ff3c70b3dd268feb98f6c'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''1'',''1491812507'',''b890a689f43ff3c70b3dd268feb98f6c'');">Click here to view</a> or simply ignore this message.', 1491812481, 1, 1, NULL),
(59, 4, 1, 'is now viewing your whiteboard.', 1491812498, 1, 1, NULL),
(60, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491812592, 1, 1, NULL),
(61, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491812594, 1, 2, NULL),
(62, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491812617, 1, 2, NULL),
(63, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491812617, 1, 1, NULL),
(64, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491812681, 1, 1, NULL),
(65, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491812682, 1, 2, NULL),
(66, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491812873, 1, 1, NULL),
(67, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491812874, 1, 2, NULL),
(68, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491812908, 1, 2, NULL),
(69, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491812908, 1, 1, NULL),
(70, 1, 4, 'has successfully shared his/her whiteboard.', 1491812935, 1, 2, NULL),
(71, 1, 4, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''1'' random=''1491812961'' room=''f7d79f2e5aa7fb2b28e22307c886a57b'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''1'',''1491812961'',''f7d79f2e5aa7fb2b28e22307c886a57b'');">Click here to view</a> or simply ignore this message.', 1491812935, 1, 1, NULL),
(72, 4, 1, 'is now viewing your whiteboard.', 1491812951, 1, 1, NULL),
(73, 52, 4, 'has sent you an audio chat request. <a class=''audiochat_link_2565ed9ec11960dbb60436ad6d85534c acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''52'',''2565ed9ec11960dbb60436ad6d85534c'');" href=''javascript:void(0);'' to=''52'' caller='''' grp=''2565ed9ec11960dbb60436ad6d85534c'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_2565ed9ec11960dbb60436ad6d85534c'' onclick="javascript:jqcc.ccaudiochat.reject_call(''52'',''2565ed9ec11960dbb60436ad6d85534c'');">click here.</a>You can also simply ignore this message.', 1491812963, 1, 1, NULL),
(74, 52, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_2565ed9ec11960dbb60436ad6d85534c'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''2565ed9ec11960dbb60436ad6d85534c'');">click here.</a>', 1491812964, 1, 2, NULL),
(75, 52, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_2565ed9ec11960dbb60436ad6d85534c', 1491812972, 1, 2, NULL),
(76, 52, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_2565ed9ec11960dbb60436ad6d85534c', 1491812972, 1, 1, NULL),
(77, 1, 4, 'has successfully shared his/her whiteboard.', 1491814843, 1, 2, NULL),
(78, 1, 4, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''1'' random=''1491812961'' room=''e1547aed165e9533be86aac9a7947f66'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''1'',''1491812961'',''e1547aed165e9533be86aac9a7947f66'');">Click here to view</a> or simply ignore this message.', 1491814843, 1, 1, NULL),
(79, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491814892, 1, 1, NULL),
(80, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491814893, 1, 2, NULL),
(81, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491814897, 1, 2, NULL),
(82, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491814897, 1, 1, NULL),
(83, 1, 4, 'has successfully shared his/her whiteboard.', 1491815129, 1, 2, NULL),
(84, 1, 4, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''1'' random=''1491815155'' room=''5b21cacf550cf2d9e2d425058a565094'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''1'',''1491815155'',''5b21cacf550cf2d9e2d425058a565094'');">Click here to view</a> or simply ignore this message.', 1491815129, 1, 1, NULL),
(85, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491815214, 1, 1, NULL),
(86, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491815216, 1, 2, NULL),
(87, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491815285, 1, 2, NULL),
(88, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491815285, 1, 1, NULL),
(89, 4, 1, 'has sent you an audio chat request. <a class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''6eeb6f590d3b71d313fc8fb4e2176bc1'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>You can also simply ignore this message.', 1491815290, 1, 1, NULL),
(90, 4, 1, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>', 1491815291, 1, 2, NULL),
(91, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491815416, 1, 1, NULL),
(92, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491815417, 1, 2, NULL),
(93, 4, 1, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_6eeb6f590d3b71d313fc8fb4e2176bc1', 1491815447, 1, 2, NULL),
(94, 4, 1, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_6eeb6f590d3b71d313fc8fb4e2176bc1', 1491815447, 1, 1, NULL),
(95, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491815461, 1, 2, NULL),
(96, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491815461, 1, 1, NULL),
(97, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491815470, 1, 1, NULL),
(98, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491815471, 1, 2, NULL),
(99, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491815571, 1, 2, NULL),
(100, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491815571, 1, 1, NULL),
(101, 4, 1, 'has sent you an audio chat request. <a class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''6eeb6f590d3b71d313fc8fb4e2176bc1'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>You can also simply ignore this message.', 1491815594, 1, 1, NULL),
(102, 4, 1, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>', 1491815594, 1, 2, NULL),
(103, 1, 4, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');" to=''1'' caller='''' grp=''6eeb6f590d3b71d313fc8fb4e2176bc1'' >Click here to launch the audio chat window</a>', 1491815601, 1, 1, NULL),
(104, 1, 4, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''1'' grp=''c4ca4238a0b923820dcc509a6f75849ba87ff679a2f3e71d9181a67b7542122c'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''1'',''c4ca4238a0b923820dcc509a6f75849ba87ff679a2f3e71d9181a67b7542122c'');">Click here to view his/her screen</a> or simply ignore this message.', 1491815768, 1, 1, NULL),
(105, 1, 4, 'has successfully shared his/her screen.', 1491815769, 1, 2, NULL),
(106, 4, 1, 'is now viewing your screen.', 1491815830, 1, 1, NULL),
(107, 1, 4, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''1'' grp=''c4ca4238a0b923820dcc509a6f75849ba87ff679a2f3e71d9181a67b7542122c'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''1'',''c4ca4238a0b923820dcc509a6f75849ba87ff679a2f3e71d9181a67b7542122c'');">Click here to view his/her screen</a> or simply ignore this message.', 1491815850, 1, 1, NULL),
(108, 1, 4, 'has successfully shared his/her screen.', 1491815851, 1, 2, NULL),
(109, 1, 4, 'has successfully shared his/her whiteboard.', 1491815916, 1, 2, NULL),
(110, 1, 4, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''1'' random=''1491815943'' room=''5d43e938943551a58d24d391ad889bd9'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''1'',''1491815943'',''5d43e938943551a58d24d391ad889bd9'');">Click here to view</a> or simply ignore this message.', 1491815916, 1, 1, NULL),
(111, 4, 1, 'is now viewing your whiteboard.', 1491815921, 1, 1, NULL),
(112, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491815976, 1, 1, NULL),
(113, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491815977, 1, 2, NULL),
(114, 4, 1, 'is now viewing your whiteboard.', 1491815980, 1, 1, NULL),
(115, 1, 4, 'has sent you an audio chat request. <a class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');" href=''javascript:void(0);'' to=''1'' caller='''' grp=''6eeb6f590d3b71d313fc8fb4e2176bc1'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.reject_call(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>You can also simply ignore this message.', 1491815999, 1, 1, NULL),
(116, 1, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>', 1491816000, 1, 2, NULL),
(117, 4, 1, 'CC^CONTROL_PLUGIN_AUDIOCHAT_REJECTCALL_6eeb6f590d3b71d313fc8fb4e2176bc1', 1491816009, 1, 1, NULL),
(118, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491816018, 1, 2, NULL),
(119, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491816018, 1, 1, NULL),
(120, 1, 4, 'has sent you an audio chat request. <a class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');" href=''javascript:void(0);'' to=''1'' caller='''' grp=''6eeb6f590d3b71d313fc8fb4e2176bc1'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.reject_call(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>You can also simply ignore this message.', 1491816023, 1, 1, NULL),
(121, 1, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>', 1491816024, 1, 2, NULL),
(122, 1, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_6eeb6f590d3b71d313fc8fb4e2176bc1', 1491816037, 1, 2, NULL),
(123, 1, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_6eeb6f590d3b71d313fc8fb4e2176bc1', 1491816037, 1, 1, NULL),
(124, 1, 4, 'has sent you an audio chat request. <a class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');" href=''javascript:void(0);'' to=''1'' caller='''' grp=''6eeb6f590d3b71d313fc8fb4e2176bc1'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.reject_call(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>You can also simply ignore this message.', 1491816057, 1, 1, NULL),
(125, 1, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>', 1491816058, 1, 2, NULL),
(126, 4, 1, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');" to=''4'' caller='''' grp=''6eeb6f590d3b71d313fc8fb4e2176bc1'' >Click here to launch the audio chat window</a>', 1491816067, 1, 1, NULL),
(127, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491816088, 1, 1, NULL),
(128, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491816089, 1, 2, NULL),
(129, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491816133, 1, 2, NULL),
(130, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491816133, 1, 1, NULL),
(131, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491816179, 1, 1, NULL),
(132, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491816180, 1, 2, NULL),
(133, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491816195, 1, 2, NULL),
(134, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491816195, 1, 1, NULL),
(135, 4, 61, 'hi', 1491816473, 1, 0, NULL),
(136, 61, 4, 'hi', 1491816489, 1, 0, NULL),
(137, 4, 61, 'has invited you to join chatroom helloWorld. <a href="javascript:jqcc.cometchat.joinChatroom(''5'','''',''aGVsbG9Xb3JsZA=='')">Join</a>', 1491816489, 1, 1, NULL),
(138, 4, 35, 'has sent you an audio chat request. <a class=''audiochat_link_549053cc9ff2ccc40b08dd0e7fa58041 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''549053cc9ff2ccc40b08dd0e7fa58041'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''549053cc9ff2ccc40b08dd0e7fa58041'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_549053cc9ff2ccc40b08dd0e7fa58041'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''549053cc9ff2ccc40b08dd0e7fa58041'');">click here.</a>You can also simply ignore this message.', 1491817433, 1, 1, NULL),
(139, 4, 35, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_549053cc9ff2ccc40b08dd0e7fa58041'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''35'',''549053cc9ff2ccc40b08dd0e7fa58041'');">click here.</a>', 1491817434, 1, 2, NULL),
(140, 35, 4, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_549053cc9ff2ccc40b08dd0e7fa58041 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''35'',''549053cc9ff2ccc40b08dd0e7fa58041'');" to=''35'' caller='''' grp=''549053cc9ff2ccc40b08dd0e7fa58041'' >Click here to launch the audio chat window</a>', 1491817449, 1, 1, NULL),
(141, 4, 35, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_549053cc9ff2ccc40b08dd0e7fa58041', 1491817451, 1, 2, NULL),
(142, 4, 35, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_549053cc9ff2ccc40b08dd0e7fa58041', 1491817451, 1, 1, NULL),
(143, 61, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''61'',''32cdf930d3b9f248ee83cb639b9cc229'');"|avchat_webaction=initiate|32cdf930d3b9f248ee83cb639b9cc229|', 1491817490, 1, 1, NULL),
(144, 61, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_32cdf930d3b9f248ee83cb639b9cc229_0__2', 1491817491, 1, 2, NULL),
(145, 35, 4, 'has sent you an audio chat request. <a class=''audiochat_link_b594acb683ed3257f925e1d50aa0b47d acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''35'',''b594acb683ed3257f925e1d50aa0b47d'');" href=''javascript:void(0);'' to=''35'' caller='''' grp=''b594acb683ed3257f925e1d50aa0b47d'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_b594acb683ed3257f925e1d50aa0b47d'' onclick="javascript:jqcc.ccaudiochat.reject_call(''35'',''b594acb683ed3257f925e1d50aa0b47d'');">click here.</a>You can also simply ignore this message.', 1491817493, 1, 1, NULL),
(146, 35, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_b594acb683ed3257f925e1d50aa0b47d'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''b594acb683ed3257f925e1d50aa0b47d'');">click here.</a>', 1491817494, 1, 2, NULL),
(147, 4, 35, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_b594acb683ed3257f925e1d50aa0b47d accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''4'',''b594acb683ed3257f925e1d50aa0b47d'');" to=''4'' caller='''' grp=''b594acb683ed3257f925e1d50aa0b47d'' >Click here to launch the audio chat window</a>', 1491817499, 1, 1, NULL),
(148, 61, 4, 'has sent you an audio chat request. <a class=''audiochat_link_4ccfabd6b146a089c7f6119b04fd9092 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''61'',''4ccfabd6b146a089c7f6119b04fd9092'');" href=''javascript:void(0);'' to=''61'' caller='''' grp=''4ccfabd6b146a089c7f6119b04fd9092'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_4ccfabd6b146a089c7f6119b04fd9092'' onclick="javascript:jqcc.ccaudiochat.reject_call(''61'',''4ccfabd6b146a089c7f6119b04fd9092'');">click here.</a>You can also simply ignore this message.', 1491817508, 1, 1, NULL),
(149, 61, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_4ccfabd6b146a089c7f6119b04fd9092'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''4ccfabd6b146a089c7f6119b04fd9092'');">click here.</a>', 1491817510, 1, 2, NULL),
(150, 61, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_4ccfabd6b146a089c7f6119b04fd9092', 1491817519, 1, 2, NULL),
(151, 61, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_4ccfabd6b146a089c7f6119b04fd9092', 1491817519, 1, 1, NULL),
(152, 4, 61, 'has sent you an audio chat request. <a class=''audiochat_link_755fda81d71a3d1ac453e90c567207d6 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''755fda81d71a3d1ac453e90c567207d6'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''755fda81d71a3d1ac453e90c567207d6'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_755fda81d71a3d1ac453e90c567207d6'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''755fda81d71a3d1ac453e90c567207d6'');">click here.</a>You can also simply ignore this message.', 1491817567, 1, 1, NULL),
(153, 4, 61, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_755fda81d71a3d1ac453e90c567207d6'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''61'',''755fda81d71a3d1ac453e90c567207d6'');">click here.</a>', 1491817568, 1, 2, NULL),
(154, 61, 4, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_755fda81d71a3d1ac453e90c567207d6 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''61'',''755fda81d71a3d1ac453e90c567207d6'');" to=''61'' caller='''' grp=''755fda81d71a3d1ac453e90c567207d6'' >Click here to launch the audio chat window</a>', 1491817573, 1, 1, NULL),
(155, 4, 61, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''32cdf930d3b9f248ee83cb639b9cc229'');"|avchat_webaction=initiate|32cdf930d3b9f248ee83cb639b9cc229|', 1491817758, 1, 1, NULL),
(156, 4, 61, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_32cdf930d3b9f248ee83cb639b9cc229_0__2', 1491817759, 1, 2, NULL),
(157, 4, 61, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_32cdf930d3b9f248ee83cb639b9cc229', 1491817783, 1, 2, NULL),
(158, 4, 61, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_32cdf930d3b9f248ee83cb639b9cc229', 1491817783, 1, 1, NULL),
(159, 4, 61, 'has sent you an audio chat request. <a class=''audiochat_link_755fda81d71a3d1ac453e90c567207d6 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''755fda81d71a3d1ac453e90c567207d6'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''755fda81d71a3d1ac453e90c567207d6'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_755fda81d71a3d1ac453e90c567207d6'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''755fda81d71a3d1ac453e90c567207d6'');">click here.</a>You can also simply ignore this message.', 1491817791, 1, 1, NULL),
(160, 4, 61, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_755fda81d71a3d1ac453e90c567207d6'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''61'',''755fda81d71a3d1ac453e90c567207d6'');">click here.</a>', 1491817792, 1, 2, NULL),
(161, 61, 4, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_755fda81d71a3d1ac453e90c567207d6 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''61'',''755fda81d71a3d1ac453e90c567207d6'');" to=''61'' caller='''' grp=''755fda81d71a3d1ac453e90c567207d6'' >Click here to launch the audio chat window</a>', 1491817797, 1, 1, NULL),
(162, 4, 61, 'no sound', 1491818273, 1, 0, NULL),
(163, 4, 61, 'light ah', 1491818281, 1, 0, NULL),
(164, 4, 61, '<img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/smile.png" title="Smile">', 1491818308, 1, 0, NULL),
(165, 4, 61, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''4'' grp=''a87ff679a2f3e71d9181a67b7542122c7f39f8317fbdb1988ef4c628eba02591'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''4'',''a87ff679a2f3e71d9181a67b7542122c7f39f8317fbdb1988ef4c628eba02591'');">Click here to view his/her screen</a> or simply ignore this message.', 1491818317, 1, 1, NULL),
(166, 4, 61, 'has successfully shared his/her screen.', 1491818318, 1, 2, NULL),
(167, 61, 4, 'is now viewing your screen.', 1491818322, 1, 1, NULL),
(168, 4, 61, 'has successfully shared his/her whiteboard.', 1491818385, 1, 2, NULL),
(169, 4, 61, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''4'' random=''1491818411'' room=''5b5f7a03fb54645bc42e597866b9d90d'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''4'',''1491818411'',''5b5f7a03fb54645bc42e597866b9d90d'');">Click here to view</a> or simply ignore this message.', 1491818385, 1, 1, NULL),
(170, 61, 4, 'is now viewing your whiteboard.', 1491818393, 1, 1, NULL),
(171, 4, 61, 'has sent you an audio/video broadcast request. <a href=''javascript:void(0);'' class=''broadcastAccept'' to=''4'' grp=''0a3bed6518b4ce00c2a14604a7439326'' mobileAction="javascript:jqcc.ccbroadcast.accept(''4'',''0a3bed6518b4ce00c2a14604a7439326'');">Click here to accept it</a> or simply ignore this message.', 1491818452, 1, 1, NULL),
(172, 4, 61, 'has successfully sent an audio/video broadcast request.', 1491818453, 1, 2, NULL),
(173, 4, 61, 'has invited you to join the broadcast. <a class="broadcastInvite" to="4" grp="0a3bed6518b4ce00c2a14604a7439326" href=''javascript:void(0);'' >Click here to join</a>', 1491818480, 1, 1, NULL),
(174, 61, 4, 'worked', 1491818497, 1, 0, NULL),
(175, 4, 61, 'accept', 1491818512, 1, 0, NULL),
(176, 4, 61, 'has sent you an audio/video broadcast request. <a href=''javascript:void(0);'' class=''broadcastAccept'' to=''4'' grp=''0a3bed6518b4ce00c2a14604a7439326'' mobileAction="javascript:jqcc.ccbroadcast.accept(''4'',''0a3bed6518b4ce00c2a14604a7439326'');">Click here to accept it</a> or simply ignore this message.', 1491818585, 1, 1, NULL),
(177, 4, 61, 'has successfully sent an audio/video broadcast request.', 1491818586, 1, 2, NULL),
(178, 4, 61, 'has invited you to join the broadcast. <a class="broadcastInvite" to="4" grp="0a3bed6518b4ce00c2a14604a7439326" href=''javascript:void(0);'' >Click here to join</a>', 1491818597, 1, 1, NULL),
(179, 4, 1, 'has invited you to join the broadcast. <a class="broadcastInvite" to="4" grp="0a3bed6518b4ce00c2a14604a7439326" href=''javascript:void(0);'' >Click here to join</a>', 1491818646, 1, 1, NULL),
(180, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491818721, 1, 1, NULL),
(181, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491818722, 1, 2, NULL),
(182, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491818765, 1, 2, NULL),
(183, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491818765, 1, 1, NULL),
(184, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491818770, 1, 1, NULL),
(185, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491818770, 1, 2, NULL),
(186, 4, 1, 'hi', 1491818777, 1, 0, NULL),
(187, 1, 4, 'sir i am calling you', 1491818791, 1, 0, NULL),
(188, 1, 4, 'are you getting my call', 1491818806, 1, 0, NULL),
(189, 4, 1, 'ok''', 1491818808, 1, 0, NULL),
(190, 4, 1, 'no', 1491818815, 1, 0, NULL),
(191, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491818816, 1, 2, NULL),
(192, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491818816, 1, 1, NULL),
(193, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491818819, 1, 1, NULL),
(194, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491818820, 1, 2, NULL),
(195, 4, 1, 'audio call', 1491818836, 1, 0, NULL),
(196, 1, 4, 'attend', 1491818837, 1, 0, NULL),
(197, 4, 1, 'has sent you an audio chat request. <a class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''6eeb6f590d3b71d313fc8fb4e2176bc1'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>You can also simply ignore this message.', 1491818841, 1, 1, NULL),
(198, 4, 1, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>', 1491818842, 1, 2, NULL),
(199, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491818882, 1, 1, NULL),
(200, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491818883, 1, 2, NULL),
(201, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491818896, 1, 2, NULL),
(202, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491818896, 1, 1, NULL),
(203, 4, 1, 'has sent you an audio chat request. <a class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''6eeb6f590d3b71d313fc8fb4e2176bc1'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>You can also simply ignore this message.', 1491818914, 1, 1, NULL),
(204, 4, 1, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>', 1491818914, 1, 2, NULL),
(205, 1, 4, 'has sent you an audio chat request. <a class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');" href=''javascript:void(0);'' to=''1'' caller='''' grp=''6eeb6f590d3b71d313fc8fb4e2176bc1'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.reject_call(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>You can also simply ignore this message.', 1491818918, 1, 1, NULL),
(206, 1, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>', 1491818919, 1, 2, NULL),
(207, 4, 1, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');" to=''4'' caller='''' grp=''6eeb6f590d3b71d313fc8fb4e2176bc1'' >Click here to launch the audio chat window</a>', 1491818922, 1, 1, NULL),
(208, 4, 61, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''32cdf930d3b9f248ee83cb639b9cc229'');"|avchat_webaction=initiate|32cdf930d3b9f248ee83cb639b9cc229|', 1491821934, 1, 1, NULL),
(209, 4, 61, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_32cdf930d3b9f248ee83cb639b9cc229_0__2', 1491821935, 1, 2, NULL),
(210, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491822015, 1, 1, NULL),
(211, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491822016, 1, 2, NULL),
(212, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822056, 1, 2, NULL),
(213, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822056, 1, 1, NULL),
(214, 4, 61, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_32cdf930d3b9f248ee83cb639b9cc229', 1491822092, 1, 2, NULL),
(215, 4, 61, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_32cdf930d3b9f248ee83cb639b9cc229', 1491822092, 1, 1, NULL),
(216, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491822096, 1, 1, NULL),
(217, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491822097, 1, 2, NULL),
(218, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491822147, 1, 1, NULL),
(219, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491822148, 1, 2, NULL),
(220, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822150, 1, 2, NULL),
(221, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822150, 1, 1, NULL),
(222, 35, 1, 'hi', 1491822257, 1, 0, NULL),
(223, 1, 61, 'hi', 1491822269, 1, 0, NULL),
(224, 4, 1, 'hi', 1491822324, 1, 0, NULL),
(225, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491822339, 1, 1, NULL),
(226, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491822340, 1, 2, NULL),
(227, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822354, 1, 2, NULL),
(228, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822354, 1, 1, NULL),
(229, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491822360, 1, 1, NULL),
(230, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491822362, 1, 2, NULL),
(231, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491822364, 1, 1, NULL),
(232, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491822365, 1, 2, NULL),
(233, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822373, 1, 2, NULL),
(234, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822373, 1, 1, NULL),
(235, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822373, 1, 2, NULL),
(236, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822373, 1, 1, NULL),
(237, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491822382, 1, 1, NULL),
(238, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491822383, 1, 2, NULL),
(239, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822404, 1, 2, NULL),
(240, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822404, 1, 1, NULL),
(241, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491822410, 1, 1, NULL),
(242, 1, 4, 'has sent you an audio chat request. <a class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');" href=''javascript:void(0);'' to=''1'' caller='''' grp=''6eeb6f590d3b71d313fc8fb4e2176bc1'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.reject_call(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>You can also simply ignore this message.', 1491822410, 1, 1, NULL),
(243, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491822411, 1, 2, NULL),
(244, 1, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>', 1491822411, 1, 2, NULL),
(245, 4, 1, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');" to=''4'' caller='''' grp=''6eeb6f590d3b71d313fc8fb4e2176bc1'' >Click here to launch the audio chat window</a>', 1491822417, 1, 1, NULL);
INSERT INTO `cometchat` (`id`, `from`, `to`, `message`, `sent`, `read`, `direction`, `custom_data`) VALUES
(246, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491822456, 1, 1, NULL),
(247, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491822457, 1, 2, NULL),
(248, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822464, 1, 2, NULL),
(249, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822464, 1, 1, NULL),
(250, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491822469, 1, 1, NULL),
(251, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491822470, 1, 2, NULL),
(252, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822500, 1, 2, NULL),
(253, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822500, 1, 1, NULL),
(254, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491822503, 1, 1, NULL),
(255, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491822503, 1, 2, NULL),
(256, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491822826, 1, 1, NULL),
(257, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822827, 1, 2, NULL),
(258, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822827, 1, 1, NULL),
(259, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491822827, 1, 2, NULL),
(260, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491822832, 1, 1, NULL),
(261, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491822833, 1, 2, NULL),
(262, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822854, 1, 2, NULL),
(263, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822854, 1, 1, NULL),
(264, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491822854, 1, 1, NULL),
(265, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822855, 1, 2, NULL),
(266, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491822855, 1, 1, NULL),
(267, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491822855, 1, 2, NULL),
(268, 1, 4, 'has sent you an audio chat request. <a class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');" href=''javascript:void(0);'' to=''1'' caller='''' grp=''6eeb6f590d3b71d313fc8fb4e2176bc1'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.reject_call(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>You can also simply ignore this message.', 1491822871, 1, 1, NULL),
(269, 1, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>', 1491822872, 1, 2, NULL),
(270, 1, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_6eeb6f590d3b71d313fc8fb4e2176bc1', 1491822881, 1, 2, NULL),
(271, 1, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_6eeb6f590d3b71d313fc8fb4e2176bc1', 1491822881, 1, 1, NULL),
(272, 1, 4, 'has sent you an audio chat request. <a class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');" href=''javascript:void(0);'' to=''1'' caller='''' grp=''6eeb6f590d3b71d313fc8fb4e2176bc1'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.reject_call(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>You can also simply ignore this message.', 1491822902, 1, 1, NULL),
(273, 1, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>', 1491822903, 1, 2, NULL),
(274, 4, 1, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');" to=''4'' caller='''' grp=''6eeb6f590d3b71d313fc8fb4e2176bc1'' >Click here to launch the audio chat window</a>', 1491822907, 1, 1, NULL),
(275, 1, 4, 'has sent you an audio/video broadcast request. <a href=''javascript:void(0);'' class=''broadcastAccept'' to=''1'' grp=''aa251a5a78ca803988478df7335af896'' mobileAction="javascript:jqcc.ccbroadcast.accept(''1'',''aa251a5a78ca803988478df7335af896'');">Click here to accept it</a> or simply ignore this message.', 1491822941, 1, 1, NULL),
(276, 1, 4, 'has successfully sent an audio/video broadcast request.', 1491822942, 1, 2, NULL),
(277, 1, 4, 'has invited you to join the broadcast. <a class="broadcastInvite" to="1" grp="aa251a5a78ca803988478df7335af896" href=''javascript:void(0);'' >Click here to join</a>', 1491822955, 1, 1, NULL),
(278, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491823151, 1, 1, NULL),
(279, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491823152, 1, 2, NULL),
(280, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491823155, 1, 1, NULL),
(281, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491823156, 1, 2, NULL),
(282, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491823165, 1, 2, NULL),
(283, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491823165, 1, 1, NULL),
(284, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491823174, 1, 1, NULL),
(285, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491823175, 1, 2, NULL),
(286, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491823181, 1, 2, NULL),
(287, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491823181, 1, 1, NULL),
(288, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491823223, 1, 1, NULL),
(289, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491823223, 1, 2, NULL),
(290, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491823231, 1, 2, NULL),
(291, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491823231, 1, 1, NULL),
(292, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491823238, 1, 1, NULL),
(293, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491823239, 1, 2, NULL),
(294, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491823588, 1, 2, NULL),
(295, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491823588, 1, 1, NULL),
(296, 4, 52, 'has shared a document. <a href=''javascript:void(0);'' class=''accept_Write'' to=''4'' random=''1491824074'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwriteboard.accept(''4'',''1491824074'');">Click here to view the document</a> or simply ignore this message.', 1491824047, 1, 1, NULL),
(297, 1, 4, 'has shared a document. <a href=''javascript:void(0);'' class=''accept_Write'' to=''1'' random=''1491824140'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwriteboard.accept(''1'',''1491824140'');">Click here to view the document</a> or simply ignore this message.', 1491824113, 1, 1, NULL),
(298, 1, 4, '<div class=''cometchat_hw_lang'' style=''display:none;''>has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="ac249891e1638460abc2a671e90fc7cd.png" encfilename="ac249891e1638460abc2a671e90fc7cd.png" mediatype="1"  href="//studycollab.com/cometchat/plugins/handwrite/download.php?file=ac249891e1638460abc2a671e90fc7cd.png&amp;unencryptedfilename=ac249891e1638460abc2a671e90fc7cd.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/cometchat/writable/handwrite/uploads/ac249891e1638460abc2a671e90fc7cd.png" border="0" height="90" width="134"></a>', 1491824237, 1, 0, NULL),
(299, 1, 4, '<div class=''cometchat_hw_lang'' style=''display:none;''>has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="327e81314a472e57515cffd8d4961906.png" encfilename="327e81314a472e57515cffd8d4961906.png" mediatype="1"  href="//studycollab.com/cometchat/plugins/handwrite/download.php?file=327e81314a472e57515cffd8d4961906.png&amp;unencryptedfilename=327e81314a472e57515cffd8d4961906.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/cometchat/writable/handwrite/uploads/327e81314a472e57515cffd8d4961906.png" border="0" height="90" width="134"></a>', 1491824257, 1, 0, NULL),
(300, 1, 4, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''1'' grp=''c4ca4238a0b923820dcc509a6f75849ba87ff679a2f3e71d9181a67b7542122c'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''1'',''c4ca4238a0b923820dcc509a6f75849ba87ff679a2f3e71d9181a67b7542122c'');">Click here to view his/her screen</a> or simply ignore this message.', 1491824278, 1, 1, NULL),
(301, 1, 4, 'has successfully shared his/her screen.', 1491824279, 1, 2, NULL),
(302, 4, 1, 'is now viewing your screen.', 1491824294, 1, 1, NULL),
(303, 1, 4, 'fghfgh', 1491824569, 1, 0, NULL),
(304, 1, 4, 'sdfsdf', 1491824582, 1, 0, NULL),
(305, 1, 4, 'fdgdfg', 1491824594, 1, 0, NULL),
(306, 4, 1, 'jbjghj', 1491824606, 1, 0, NULL),
(307, 4, 1, 'ghfgf', 1491824640, 1, 0, NULL),
(308, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491825147, 1, 1, NULL),
(309, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491825147, 1, 2, NULL),
(310, 4, 1, 'has sent you an audio chat request. <a class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''6eeb6f590d3b71d313fc8fb4e2176bc1'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>You can also simply ignore this message.', 1491825164, 1, 1, NULL),
(311, 4, 1, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_6eeb6f590d3b71d313fc8fb4e2176bc1'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''1'',''6eeb6f590d3b71d313fc8fb4e2176bc1'');">click here.</a>', 1491825165, 1, 2, NULL),
(312, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491825166, 1, 2, NULL),
(313, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491825166, 1, 1, NULL),
(314, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491825172, 1, 1, NULL),
(315, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491825173, 1, 2, NULL),
(316, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491825183, 1, 2, NULL),
(317, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491825183, 1, 1, NULL),
(318, 1, 4, '<div class=''cometchat_hw_lang'' style=''display:none;''>has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="9285eb8a50a64ab6f840d47177340424.png" encfilename="9285eb8a50a64ab6f840d47177340424.png" mediatype="1"  href="//studycollab.com/cometchat/plugins/handwrite/download.php?file=9285eb8a50a64ab6f840d47177340424.png&amp;unencryptedfilename=9285eb8a50a64ab6f840d47177340424.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/cometchat/writable/handwrite/uploads/9285eb8a50a64ab6f840d47177340424.png" border="0" height="90" width="134"></a>', 1491825504, 1, 0, NULL),
(319, 1, 4, '<div class=''cometchat_hw_lang'' style=''display:none;''>has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="686bd4c6e2c74e67aaa157c52bd3c293.png" encfilename="686bd4c6e2c74e67aaa157c52bd3c293.png" mediatype="1"  href="//studycollab.com/cometchat/plugins/handwrite/download.php?file=686bd4c6e2c74e67aaa157c52bd3c293.png&amp;unencryptedfilename=686bd4c6e2c74e67aaa157c52bd3c293.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/cometchat/writable/handwrite/uploads/686bd4c6e2c74e67aaa157c52bd3c293.png" border="0" height="90" width="134"></a>', 1491825530, 1, 0, NULL),
(320, 35, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''35'',''c6277b283207d2f733ea2f1fff0b863b'');"|avchat_webaction=initiate|c6277b283207d2f733ea2f1fff0b863b|', 1491826249, 1, 1, NULL),
(321, 35, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_c6277b283207d2f733ea2f1fff0b863b_0__2', 1491826250, 1, 2, NULL),
(322, 4, 35, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_b594acb683ed3257f925e1d50aa0b47d accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''4'',''b594acb683ed3257f925e1d50aa0b47d'');" to=''4'' caller='''' grp=''b594acb683ed3257f925e1d50aa0b47d'' >Click here to launch the audio chat window</a>', 1491826264, 1, 1, NULL),
(323, 35, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''35'',''c6277b283207d2f733ea2f1fff0b863b'');"|avchat_webaction=initiate|c6277b283207d2f733ea2f1fff0b863b|', 1491826342, 1, 1, NULL),
(324, 35, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_c6277b283207d2f733ea2f1fff0b863b_0__2', 1491826344, 1, 2, NULL),
(325, 35, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_c6277b283207d2f733ea2f1fff0b863b', 1491826357, 1, 2, NULL),
(326, 35, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_c6277b283207d2f733ea2f1fff0b863b', 1491826357, 1, 1, NULL),
(327, 35, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''35'',''c6277b283207d2f733ea2f1fff0b863b'');"|avchat_webaction=initiate|c6277b283207d2f733ea2f1fff0b863b|', 1491826360, 1, 1, NULL),
(328, 35, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_c6277b283207d2f733ea2f1fff0b863b_0__2', 1491826361, 1, 2, NULL),
(329, 35, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_c6277b283207d2f733ea2f1fff0b863b', 1491826384, 1, 2, NULL),
(330, 35, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_c6277b283207d2f733ea2f1fff0b863b', 1491826384, 1, 1, NULL),
(331, 35, 4, '<div class=''cometchat_hw_lang'' style=''display:none;''>has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="9e795f272d11e1bc894de24de19f703c.png" encfilename="9e795f272d11e1bc894de24de19f703c.png" mediatype="1"  href="//www.studycollab.com/cometchat/plugins/handwrite/download.php?file=9e795f272d11e1bc894de24de19f703c.png&amp;unencryptedfilename=9e795f272d11e1bc894de24de19f703c.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/cometchat/writable/handwrite/uploads/9e795f272d11e1bc894de24de19f703c.png" border="0" height="90" width="134"></a>', 1491826413, 1, 0, NULL),
(332, 35, 4, '<div class=''cometchat_hw_lang'' style=''display:none;''>has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="a97116e81dfd0dc9dbd06e1f54668db9.png" encfilename="a97116e81dfd0dc9dbd06e1f54668db9.png" mediatype="1"  href="//www.studycollab.com/cometchat/plugins/handwrite/download.php?file=a97116e81dfd0dc9dbd06e1f54668db9.png&amp;unencryptedfilename=a97116e81dfd0dc9dbd06e1f54668db9.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/cometchat/writable/handwrite/uploads/a97116e81dfd0dc9dbd06e1f54668db9.png" border="0" height="90" width="134"></a>', 1491826428, 1, 0, NULL),
(333, 35, 4, '<div style=''display:none;''>has sent a file</div><br/><a class="imagemessage mediamessage" pluginname ="filetransfer" filename="14918264436711144000340.jpg" encfilename="783a0cda9810e908bcb0bebe769c3e98.jpg" mediatype="1" href="//www.studycollab.com/cometchat/plugins/filetransfer/download.php?file=783a0cda9810e908bcb0bebe769c3e98.jpg&amp;unencryptedfilename=14918264436711144000340.jpg"><img class="file_image" type="image" src="/cometchat/writable/filetransfer/uploads/783a0cda9810e908bcb0bebe769c3e98.jpg" style="max-height:170px;"/></a>', 1491826471, 1, 0, NULL),
(334, 35, 4, 'has successfully shared his/her whiteboard.', 1491826519, 1, 2, NULL),
(335, 35, 4, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''35'' random=''1491826519'' room=''61bad4ecdc38cc2eb003864374b4fb70'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''35'',''1491826519'',''61bad4ecdc38cc2eb003864374b4fb70'');">Click here to view</a> or simply ignore this message.', 1491826519, 1, 1, NULL),
(336, 4, 35, 'is now viewing your whiteboard.', 1491826529, 1, 1, NULL),
(337, 4, 35, 'is now viewing your whiteboard.', 1491826724, 1, 1, NULL),
(338, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491903653, 1, 1, NULL),
(339, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491903654, 1, 2, NULL),
(340, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491903693, 1, 2, NULL),
(341, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491903693, 1, 1, NULL),
(342, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491904382, 1, 1, NULL),
(343, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491904383, 1, 2, NULL),
(344, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491904421, 1, 2, NULL),
(345, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491904421, 1, 1, NULL),
(346, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491904436, 1, 1, NULL),
(347, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491904437, 1, 2, NULL),
(348, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=acceptcall|ec23fc99fbd87b2ffdeba936c32b01db', 1491904455, 1, 1, NULL),
(349, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491904569, 1, 2, NULL),
(350, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491904569, 1, 1, NULL),
(351, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491904580, 1, 1, NULL),
(352, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491904580, 1, 2, NULL),
(353, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491904644, 1, 2, NULL),
(354, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491904644, 1, 1, NULL),
(355, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491904650, 1, 1, NULL),
(356, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491904651, 1, 2, NULL),
(357, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491904679, 1, 2, NULL),
(358, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491904679, 1, 1, NULL),
(359, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491904683, 1, 1, NULL),
(360, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491904685, 1, 2, NULL),
(361, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=acceptcall|ec23fc99fbd87b2ffdeba936c32b01db', 1491904690, 1, 1, NULL),
(362, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_ec23fc99fbd87b2ffdeba936c32b01db', 1491904714, 1, 1, NULL),
(363, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491904820, 1, 1, NULL),
(364, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491904822, 1, 2, NULL),
(365, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=acceptcall|ec23fc99fbd87b2ffdeba936c32b01db', 1491904826, 1, 1, NULL),
(366, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491904852, 1, 1, NULL),
(367, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491904859, 1, 1, NULL),
(368, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491904860, 1, 2, NULL),
(369, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491905351, 1, 2, NULL),
(370, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491905351, 1, 1, NULL),
(371, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491905405, 1, 1, NULL),
(372, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491905406, 1, 2, NULL),
(373, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=acceptcall|ec23fc99fbd87b2ffdeba936c32b01db', 1491905414, 1, 1, NULL),
(374, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_ec23fc99fbd87b2ffdeba936c32b01db', 1491905436, 1, 1, NULL),
(375, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491905494, 1, 1, NULL),
(376, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491905495, 1, 2, NULL),
(377, 1, 4, '<img class="cometchat_smiley" height="20" width="20" src="/chat/writable/images/smileys/umbrella.png" title="Umbrella"> <img class="cometchat_smiley" height="20" width="20" src="/chat/writable/images/smileys/sunny.png" title="Sunny">', 1491905572, 1, 0, NULL),
(378, 1, 4, '<img class="cometchat_smiley" height="20" width="20" src="/chat/writable/images/smileys/umbrella.png" title="Umbrella"> <img class="cometchat_smiley" height="20" width="20" src="/chat/writable/images/smileys/sunny.png" title="Sunny">', 1491905573, 1, 0, NULL),
(379, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491905661, 1, 2, NULL),
(380, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491905661, 1, 1, NULL),
(381, 1, 4, '<div style=''display:none;''>has sent a file</div><br/><a class="imagemessage mediamessage" pluginname ="filetransfer" filename="149190558271849388012.jpg" encfilename="63e420f82131c201648633d6004fdf44.jpg" mediatype="1" href="//studycollab.com/chat/plugins/filetransfer/download.php?file=63e420f82131c201648633d6004fdf44.jpg&amp;unencryptedfilename=149190558271849388012.jpg"><img class="file_image" type="image" src="/chat/writable/filetransfer/uploads/63e420f82131c201648633d6004fdf44.jpg" style="max-height:70px;"/></a>', 1491905679, 1, 0, NULL),
(382, 61, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''61'',''32cdf930d3b9f248ee83cb639b9cc229'');"|avchat_webaction=initiate|32cdf930d3b9f248ee83cb639b9cc229|', 1491905830, 1, 1, NULL),
(383, 61, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_32cdf930d3b9f248ee83cb639b9cc229_0__2', 1491905831, 1, 2, NULL),
(384, 61, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''61'',''32cdf930d3b9f248ee83cb639b9cc229'');"|avchat_webaction=initiate|32cdf930d3b9f248ee83cb639b9cc229|', 1491905842, 1, 1, NULL),
(385, 61, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_32cdf930d3b9f248ee83cb639b9cc229_0__2', 1491905843, 1, 2, NULL),
(386, 61, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''61'',''a70ffc99194cf5f51054daf1f1845c54'');"|avchat_webaction=initiate|a70ffc99194cf5f51054daf1f1845c54|', 1491905873, 1, 1, NULL),
(387, 61, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_a70ffc99194cf5f51054daf1f1845c54_0__2', 1491905874, 1, 2, NULL),
(388, 61, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''61'',''a70ffc99194cf5f51054daf1f1845c54'');"|avchat_webaction=initiate|a70ffc99194cf5f51054daf1f1845c54|', 1491905897, 1, 1, NULL),
(389, 61, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_a70ffc99194cf5f51054daf1f1845c54_0__2', 1491905898, 1, 2, NULL),
(390, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_a70ffc99194cf5f51054daf1f1845c54', 1491905902, 1, 1, NULL),
(391, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_a70ffc99194cf5f51054daf1f1845c54', 1491905908, 1, 1, NULL),
(392, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_a70ffc99194cf5f51054daf1f1845c54', 1491905910, 1, 1, NULL),
(393, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_a70ffc99194cf5f51054daf1f1845c54', 1491905911, 1, 1, NULL),
(394, 61, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''61'',''a70ffc99194cf5f51054daf1f1845c54'');"|avchat_webaction=initiate|a70ffc99194cf5f51054daf1f1845c54|', 1491905912, 1, 1, NULL),
(395, 61, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_a70ffc99194cf5f51054daf1f1845c54_0__2', 1491905913, 1, 2, NULL),
(396, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_a70ffc99194cf5f51054daf1f1845c54', 1491905918, 1, 1, NULL),
(397, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_a70ffc99194cf5f51054daf1f1845c54', 1491905920, 1, 1, NULL),
(398, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_a70ffc99194cf5f51054daf1f1845c54', 1491905922, 1, 1, NULL),
(399, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_a70ffc99194cf5f51054daf1f1845c54', 1491905924, 1, 1, NULL),
(400, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_a70ffc99194cf5f51054daf1f1845c54', 1491905925, 1, 1, NULL),
(401, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_a70ffc99194cf5f51054daf1f1845c54', 1491905927, 1, 1, NULL),
(402, 61, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''61'',''a70ffc99194cf5f51054daf1f1845c54'');"|avchat_webaction=initiate|a70ffc99194cf5f51054daf1f1845c54|', 1491905940, 1, 1, NULL),
(403, 61, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_a70ffc99194cf5f51054daf1f1845c54_0__2', 1491905941, 1, 2, NULL),
(404, 1, 61, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''a70ffc99194cf5f51054daf1f1845c54'');"|avchat_webaction=acceptcall|a70ffc99194cf5f51054daf1f1845c54', 1491905944, 1, 1, NULL),
(405, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_a70ffc99194cf5f51054daf1f1845c54', 1491905971, 1, 1, NULL),
(406, 1, 61, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''a70ffc99194cf5f51054daf1f1845c54'');"|avchat_webaction=initiate|a70ffc99194cf5f51054daf1f1845c54|', 1491906041, 1, 1, NULL),
(407, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_a70ffc99194cf5f51054daf1f1845c54_0__2', 1491906042, 1, 2, NULL),
(408, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_a70ffc99194cf5f51054daf1f1845c54', 1491906068, 1, 2, NULL),
(409, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_a70ffc99194cf5f51054daf1f1845c54', 1491906068, 1, 1, NULL),
(410, 1, 61, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''a70ffc99194cf5f51054daf1f1845c54'');"|avchat_webaction=initiate|a70ffc99194cf5f51054daf1f1845c54|', 1491906076, 1, 1, NULL),
(411, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_a70ffc99194cf5f51054daf1f1845c54_0__2', 1491906077, 1, 2, NULL),
(412, 61, 1, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''61'',''a70ffc99194cf5f51054daf1f1845c54'');"|avchat_webaction=acceptcall|a70ffc99194cf5f51054daf1f1845c54', 1491906090, 1, 1, NULL),
(413, 1, 61, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''a70ffc99194cf5f51054daf1f1845c54'');"|avchat_webaction=initiate|a70ffc99194cf5f51054daf1f1845c54|', 1491906144, 1, 1, NULL),
(414, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_a70ffc99194cf5f51054daf1f1845c54_0__2', 1491906145, 1, 2, NULL),
(415, 61, 1, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_a70ffc99194cf5f51054daf1f1845c54', 1491906188, 1, 1, NULL),
(416, 61, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''61'',''a70ffc99194cf5f51054daf1f1845c54'');"|avchat_webaction=initiate|a70ffc99194cf5f51054daf1f1845c54|', 1491906235, 1, 1, NULL),
(417, 61, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_a70ffc99194cf5f51054daf1f1845c54_0__2', 1491906237, 1, 2, NULL),
(418, 1, 61, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''a70ffc99194cf5f51054daf1f1845c54'');"|avchat_webaction=acceptcall|a70ffc99194cf5f51054daf1f1845c54', 1491906240, 1, 1, NULL),
(419, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_a70ffc99194cf5f51054daf1f1845c54', 1491906267, 1, 1, NULL),
(420, 61, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''61'',''a70ffc99194cf5f51054daf1f1845c54'');"|avchat_webaction=initiate|a70ffc99194cf5f51054daf1f1845c54|', 1491906279, 1, 1, NULL),
(421, 1, 61, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''a70ffc99194cf5f51054daf1f1845c54'');"|avchat_webaction=initiate|a70ffc99194cf5f51054daf1f1845c54|', 1491906279, 1, 1, NULL),
(422, 61, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_a70ffc99194cf5f51054daf1f1845c54_0__2', 1491906280, 1, 2, NULL),
(423, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_a70ffc99194cf5f51054daf1f1845c54_0__2', 1491906280, 1, 2, NULL),
(424, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_a70ffc99194cf5f51054daf1f1845c54', 1491906288, 1, 2, NULL),
(425, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_a70ffc99194cf5f51054daf1f1845c54', 1491906288, 1, 1, NULL),
(426, 61, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_a70ffc99194cf5f51054daf1f1845c54', 1491906289, 1, 2, NULL),
(427, 61, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_a70ffc99194cf5f51054daf1f1845c54', 1491906289, 1, 1, NULL),
(428, 61, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''61'',''a70ffc99194cf5f51054daf1f1845c54'');"|avchat_webaction=initiate|a70ffc99194cf5f51054daf1f1845c54|', 1491906295, 1, 1, NULL),
(429, 61, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_a70ffc99194cf5f51054daf1f1845c54_0__2', 1491906296, 1, 2, NULL),
(430, 1, 61, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''a70ffc99194cf5f51054daf1f1845c54'');"|avchat_webaction=acceptcall|a70ffc99194cf5f51054daf1f1845c54', 1491906301, 1, 1, NULL),
(431, 61, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_a70ffc99194cf5f51054daf1f1845c54', 1491906310, 1, 2, NULL),
(432, 61, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_a70ffc99194cf5f51054daf1f1845c54', 1491906310, 1, 1, NULL),
(433, 1, 61, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''a70ffc99194cf5f51054daf1f1845c54'');"|avchat_webaction=initiate|a70ffc99194cf5f51054daf1f1845c54|', 1491906357, 1, 1, NULL),
(434, 1, 61, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_a70ffc99194cf5f51054daf1f1845c54_0__2', 1491906358, 1, 2, NULL),
(435, 61, 1, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''61'',''a70ffc99194cf5f51054daf1f1845c54'');"|avchat_webaction=acceptcall|a70ffc99194cf5f51054daf1f1845c54', 1491906363, 1, 1, NULL),
(436, 61, 1, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_a70ffc99194cf5f51054daf1f1845c54', 1491906390, 1, 1, NULL),
(437, 61, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''61'',''a70ffc99194cf5f51054daf1f1845c54'');"|avchat_webaction=initiate|a70ffc99194cf5f51054daf1f1845c54|', 1491906537, 1, 1, NULL),
(438, 61, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_a70ffc99194cf5f51054daf1f1845c54_0__2', 1491906538, 1, 2, NULL),
(439, 1, 61, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''a70ffc99194cf5f51054daf1f1845c54'');"|avchat_webaction=acceptcall|a70ffc99194cf5f51054daf1f1845c54', 1491906563, 1, 1, NULL),
(440, 35, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''35'',''d54bb948041efc480d4844f7611c0741'');"|avchat_webaction=initiate|d54bb948041efc480d4844f7611c0741|', 1491906677, 1, 1, NULL),
(441, 35, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d54bb948041efc480d4844f7611c0741_0__2', 1491906678, 1, 2, NULL),
(442, 1, 35, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''d54bb948041efc480d4844f7611c0741'');"|avchat_webaction=acceptcall|d54bb948041efc480d4844f7611c0741', 1491906700, 1, 1, NULL),
(443, 1, 35, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''d54bb948041efc480d4844f7611c0741'');"|avchat_webaction=initiate|d54bb948041efc480d4844f7611c0741|', 1491906895, 1, 1, NULL),
(444, 1, 35, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d54bb948041efc480d4844f7611c0741_0__2', 1491906896, 1, 2, NULL),
(445, 35, 1, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''35'',''d54bb948041efc480d4844f7611c0741'');"|avchat_webaction=acceptcall|d54bb948041efc480d4844f7611c0741', 1491906904, 1, 1, NULL),
(446, 4, 35, 'பாலமுருகன், எழில், ஷோபனா, சதிஷ்', 1491908006, 1, 0, NULL),
(447, 35, 4, 'நான் ஷோபனா', 1491908170, 1, 0, NULL),
(448, 35, 4, ';''/', 1491909092, 1, 0, NULL),
(449, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491970949, 1, 1, NULL),
(450, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491970949, 1, 2, NULL),
(451, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491970976, 1, 2, NULL),
(452, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491970976, 1, 1, NULL),
(453, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491970984, 1, 1, NULL),
(454, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491970986, 1, 2, NULL),
(455, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491972239, 1, 2, NULL),
(456, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491972239, 1, 1, NULL),
(457, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491972305, 1, 1, NULL),
(458, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491972307, 1, 2, NULL),
(459, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491972354, 1, 2, NULL),
(460, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491972354, 1, 1, NULL),
(461, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491972574, 1, 1, NULL),
(462, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491972575, 1, 2, NULL),
(463, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491972596, 1, 2, NULL),
(464, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491972596, 1, 1, NULL),
(465, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1491972603, 1, 1, NULL),
(466, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1491972604, 1, 2, NULL),
(467, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491972635, 1, 2, NULL),
(468, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1491972635, 1, 1, NULL),
(469, 52, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''40ce99cdc47d3adef5046f1be5568947'');"|avchat_webaction=initiate|40ce99cdc47d3adef5046f1be5568947|', 1491972942, 1, 1, NULL),
(470, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_40ce99cdc47d3adef5046f1be5568947_0__2', 1491972943, 1, 2, NULL),
(471, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1491972964, 1, 2, NULL),
(472, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1491972964, 1, 1, NULL),
(473, 48, 24, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''ea46b7829c69943da67bb9005741b726'');"|avchat_webaction=initiate|ea46b7829c69943da67bb9005741b726|', 1492072083, 1, 1, NULL),
(474, 48, 24, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ea46b7829c69943da67bb9005741b726_0__2', 1492072084, 1, 2, NULL),
(475, 48, 24, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ea46b7829c69943da67bb9005741b726', 1492072119, 1, 2, NULL),
(476, 48, 24, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ea46b7829c69943da67bb9005741b726', 1492072119, 1, 1, NULL),
(477, 62, 48, 'hii', 1492072528, 1, 0, NULL),
(478, 48, 62, 'm good', 1492072542, 1, 0, NULL),
(479, 62, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''62'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492072553, 1, 1, NULL),
(480, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492072554, 1, 2, NULL),
(481, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=acceptcall|2d58053363cd1cb83b56ec26d3c3f47f', 1492072566, 1, 1, NULL),
(482, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492076247, 1, 1, NULL),
(483, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492076248, 1, 2, NULL),
(484, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492076253, 1, 2, NULL),
(485, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492076253, 1, 1, NULL),
(486, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492076264, 1, 1, NULL),
(487, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492076265, 1, 2, NULL),
(488, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492076284, 1, 2, NULL),
(489, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492076284, 1, 1, NULL),
(490, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492076287, 1, 1, NULL),
(491, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492076366, 1, 1, NULL),
(492, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492076367, 1, 2, NULL),
(493, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_2d58053363cd1cb83b56ec26d3c3f47f', 1492076403, 1, 1, NULL),
(494, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492076416, 1, 1, NULL),
(495, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492076417, 1, 2, NULL),
(496, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492076441, 1, 1, NULL),
(497, 48, 62, 'has sent you an audio chat request. <a class=''audiochat_link_73fa813b7e09b0bad1e850d6c09fa3c8 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''48'',''73fa813b7e09b0bad1e850d6c09fa3c8'');" href=''javascript:void(0);'' to=''48'' caller='''' grp=''73fa813b7e09b0bad1e850d6c09fa3c8'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_73fa813b7e09b0bad1e850d6c09fa3c8'' onclick="javascript:jqcc.ccaudiochat.reject_call(''48'',''73fa813b7e09b0bad1e850d6c09fa3c8'');">click here.</a>You can also simply ignore this message.', 1492076463, 1, 1, NULL),
(498, 48, 62, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_73fa813b7e09b0bad1e850d6c09fa3c8'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''62'',''73fa813b7e09b0bad1e850d6c09fa3c8'');">click here.</a>', 1492076464, 1, 2, NULL),
(499, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492076471, 1, 1, NULL),
(500, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492076472, 1, 2, NULL),
(501, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_2d58053363cd1cb83b56ec26d3c3f47f', 1492076514, 1, 1, NULL),
(502, 62, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''62'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492076839, 1, 1, NULL),
(503, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492076841, 1, 2, NULL),
(504, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=acceptcall|2d58053363cd1cb83b56ec26d3c3f47f', 1492076845, 1, 1, NULL),
(505, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492076903, 1, 2, NULL),
(506, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492076903, 1, 1, NULL),
(507, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492076923, 1, 1, NULL),
(508, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492076923, 1, 2, NULL),
(509, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492076934, 1, 1, NULL),
(510, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492076959, 1, 1, NULL),
(511, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492076960, 1, 2, NULL),
(512, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_2d58053363cd1cb83b56ec26d3c3f47f', 1492076993, 1, 1, NULL),
(513, 62, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''62'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492077115, 1, 1, NULL),
(514, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492077116, 1, 2, NULL),
(515, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=acceptcall|2d58053363cd1cb83b56ec26d3c3f47f', 1492077129, 1, 1, NULL),
(516, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492077229, 1, 1, NULL),
(517, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492077230, 1, 2, NULL),
(518, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_2d58053363cd1cb83b56ec26d3c3f47f', 1492077260, 1, 1, NULL),
(519, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492077281, 1, 1, NULL),
(520, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492077282, 1, 2, NULL),
(521, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_2d58053363cd1cb83b56ec26d3c3f47f', 1492077320, 1, 1, NULL),
(522, 62, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''62'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492077479, 1, 1, NULL),
(523, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492077480, 1, 2, NULL),
(524, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=acceptcall|2d58053363cd1cb83b56ec26d3c3f47f', 1492077493, 1, 1, NULL),
(525, 48, 52, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''04dd167a3c35cee9cc6e0fa5d783755b'');"|avchat_webaction=initiate|04dd167a3c35cee9cc6e0fa5d783755b|', 1492228670, 1, 1, NULL),
(526, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_04dd167a3c35cee9cc6e0fa5d783755b_0__2', 1492228671, 1, 2, NULL),
(527, 52, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''04dd167a3c35cee9cc6e0fa5d783755b'');"|avchat_webaction=initiate|04dd167a3c35cee9cc6e0fa5d783755b|', 1492228684, 1, 1, NULL),
(528, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_04dd167a3c35cee9cc6e0fa5d783755b_0__2', 1492228685, 1, 2, NULL),
(529, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492228688, 1, 2, NULL),
(530, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492228688, 1, 1, NULL),
(531, 52, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''40ce99cdc47d3adef5046f1be5568947'');"|avchat_webaction=initiate|40ce99cdc47d3adef5046f1be5568947|', 1492228705, 1, 1, NULL),
(532, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_40ce99cdc47d3adef5046f1be5568947_0__2', 1492228706, 1, 2, NULL),
(533, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1492228731, 1, 2, NULL),
(534, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1492228731, 1, 1, NULL),
(535, 52, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''40ce99cdc47d3adef5046f1be5568947'');"|avchat_webaction=initiate|40ce99cdc47d3adef5046f1be5568947|', 1492228733, 1, 1, NULL),
(536, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_40ce99cdc47d3adef5046f1be5568947_0__2', 1492228734, 1, 2, NULL),
(537, 52, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''04dd167a3c35cee9cc6e0fa5d783755b'');"|avchat_webaction=initiate|04dd167a3c35cee9cc6e0fa5d783755b|', 1492228784, 1, 1, NULL),
(538, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_04dd167a3c35cee9cc6e0fa5d783755b_0__2', 1492228785, 1, 2, NULL),
(539, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492228800, 1, 2, NULL),
(540, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492228800, 1, 1, NULL),
(541, 48, 52, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''04dd167a3c35cee9cc6e0fa5d783755b'');"|avchat_webaction=initiate|04dd167a3c35cee9cc6e0fa5d783755b|', 1492228810, 1, 1, NULL),
(542, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_04dd167a3c35cee9cc6e0fa5d783755b_0__2', 1492228811, 1, 2, NULL),
(543, 52, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''04dd167a3c35cee9cc6e0fa5d783755b'');"|avchat_webaction=initiate|04dd167a3c35cee9cc6e0fa5d783755b|', 1492228891, 1, 1, NULL),
(544, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_04dd167a3c35cee9cc6e0fa5d783755b_0__2', 1492228892, 1, 2, NULL),
(545, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492228910, 1, 2, NULL),
(546, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492228910, 1, 1, NULL),
(547, 48, 52, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''04dd167a3c35cee9cc6e0fa5d783755b'');"|avchat_webaction=initiate|04dd167a3c35cee9cc6e0fa5d783755b|', 1492228927, 1, 1, NULL),
(548, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_04dd167a3c35cee9cc6e0fa5d783755b_0__2', 1492228928, 1, 2, NULL),
(549, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492228959, 1, 2, NULL),
(550, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492228959, 1, 1, NULL);
INSERT INTO `cometchat` (`id`, `from`, `to`, `message`, `sent`, `read`, `direction`, `custom_data`) VALUES
(551, 48, 52, 'has sent you an audio chat request. <a class=''audiochat_link_48f6ad9ffee4589b44c6eed8048b02f5 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''48'',''48f6ad9ffee4589b44c6eed8048b02f5'');" href=''javascript:void(0);'' to=''48'' caller='''' grp=''48f6ad9ffee4589b44c6eed8048b02f5'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_48f6ad9ffee4589b44c6eed8048b02f5'' onclick="javascript:jqcc.ccaudiochat.reject_call(''48'',''48f6ad9ffee4589b44c6eed8048b02f5'');">click here.</a>You can also simply ignore this message.', 1492228969, 1, 1, NULL),
(552, 48, 52, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_48f6ad9ffee4589b44c6eed8048b02f5'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''52'',''48f6ad9ffee4589b44c6eed8048b02f5'');">click here.</a>', 1492228970, 1, 2, NULL),
(553, 52, 48, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_48f6ad9ffee4589b44c6eed8048b02f5 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''52'',''48f6ad9ffee4589b44c6eed8048b02f5'');" to=''52'' caller='''' grp=''48f6ad9ffee4589b44c6eed8048b02f5'' >Click here to launch the audio chat window</a>', 1492228975, 1, 1, NULL),
(554, 48, 52, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''04dd167a3c35cee9cc6e0fa5d783755b'');"|avchat_webaction=initiate|04dd167a3c35cee9cc6e0fa5d783755b|', 1492229021, 1, 1, NULL),
(555, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_04dd167a3c35cee9cc6e0fa5d783755b_0__2', 1492229022, 1, 2, NULL),
(556, 52, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''04dd167a3c35cee9cc6e0fa5d783755b'');"|avchat_webaction=initiate|04dd167a3c35cee9cc6e0fa5d783755b|', 1492229042, 1, 1, NULL),
(557, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_04dd167a3c35cee9cc6e0fa5d783755b_0__2', 1492229043, 1, 2, NULL),
(558, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492229048, 1, 2, NULL),
(559, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492229048, 1, 1, NULL),
(560, 48, 52, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''04dd167a3c35cee9cc6e0fa5d783755b'');"|avchat_webaction=initiate|04dd167a3c35cee9cc6e0fa5d783755b|', 1492229061, 1, 1, NULL),
(561, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_04dd167a3c35cee9cc6e0fa5d783755b_0__2', 1492229062, 1, 2, NULL),
(562, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492229104, 1, 2, NULL),
(563, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492229104, 1, 1, NULL),
(564, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492229104, 1, 2, NULL),
(565, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492229104, 1, 1, NULL),
(566, 52, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''04dd167a3c35cee9cc6e0fa5d783755b'');"|avchat_webaction=initiate|04dd167a3c35cee9cc6e0fa5d783755b|', 1492229129, 1, 1, NULL),
(567, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_04dd167a3c35cee9cc6e0fa5d783755b_0__2', 1492229130, 1, 2, NULL),
(568, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492229140, 1, 2, NULL),
(569, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492229140, 1, 1, NULL),
(570, 48, 52, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''04dd167a3c35cee9cc6e0fa5d783755b'');"|avchat_webaction=initiate|04dd167a3c35cee9cc6e0fa5d783755b|', 1492229149, 1, 1, NULL),
(571, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_04dd167a3c35cee9cc6e0fa5d783755b_0__2', 1492229149, 1, 2, NULL),
(572, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492229162, 1, 2, NULL),
(573, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492229162, 1, 1, NULL),
(574, 52, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''04dd167a3c35cee9cc6e0fa5d783755b'');"|avchat_webaction=initiate|04dd167a3c35cee9cc6e0fa5d783755b|', 1492229205, 1, 1, NULL),
(575, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_04dd167a3c35cee9cc6e0fa5d783755b_0__2', 1492229206, 1, 2, NULL),
(576, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492229224, 1, 2, NULL),
(577, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492229224, 1, 1, NULL),
(578, 1, 52, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''dc1498ffac117014fde021149d4634c2'');"|avchat_webaction=initiate|dc1498ffac117014fde021149d4634c2|', 1492229327, 1, 1, NULL),
(579, 62, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''62'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492229328, 1, 1, NULL),
(580, 1, 52, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_dc1498ffac117014fde021149d4634c2_0__2', 1492229328, 1, 2, NULL),
(581, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492229329, 1, 2, NULL),
(582, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492229341, 1, 2, NULL),
(583, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492229341, 1, 1, NULL),
(584, 1, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_dc1498ffac117014fde021149d4634c2', 1492229343, 1, 2, NULL),
(585, 1, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_dc1498ffac117014fde021149d4634c2', 1492229343, 1, 1, NULL),
(586, 1, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''2923520837530687f0a302630e0d5410'');"|avchat_webaction=initiate|2923520837530687f0a302630e0d5410|', 1492229356, 1, 1, NULL),
(587, 1, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2923520837530687f0a302630e0d5410_0__2', 1492229357, 1, 2, NULL),
(588, 1, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2923520837530687f0a302630e0d5410', 1492229370, 1, 2, NULL),
(589, 1, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2923520837530687f0a302630e0d5410', 1492229370, 1, 1, NULL),
(590, 52, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''dc1498ffac117014fde021149d4634c2'');"|avchat_webaction=initiate|dc1498ffac117014fde021149d4634c2|', 1492229374, 1, 1, NULL),
(591, 52, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_dc1498ffac117014fde021149d4634c2_0__2', 1492229375, 1, 2, NULL),
(592, 52, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_dc1498ffac117014fde021149d4634c2', 1492229385, 1, 2, NULL),
(593, 52, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_dc1498ffac117014fde021149d4634c2', 1492229385, 1, 1, NULL),
(594, 62, 52, 'mobileAction="javascript:jqcc.ccavchat.accept(''62'',''afc835a8aa2263e9b3a13e19ef5e6e8a'');"|avchat_webaction=initiate|afc835a8aa2263e9b3a13e19ef5e6e8a|', 1492229392, 1, 1, NULL),
(595, 62, 52, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_afc835a8aa2263e9b3a13e19ef5e6e8a_0__2', 1492229392, 1, 2, NULL),
(596, 62, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_afc835a8aa2263e9b3a13e19ef5e6e8a', 1492229462, 1, 2, NULL),
(597, 62, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_afc835a8aa2263e9b3a13e19ef5e6e8a', 1492229462, 1, 1, NULL),
(598, 52, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''afc835a8aa2263e9b3a13e19ef5e6e8a'');"|avchat_webaction=initiate|afc835a8aa2263e9b3a13e19ef5e6e8a|', 1492229475, 1, 1, NULL),
(599, 52, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_afc835a8aa2263e9b3a13e19ef5e6e8a_0__2', 1492229476, 0, 2, NULL),
(600, 1, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''2923520837530687f0a302630e0d5410'');"|avchat_webaction=initiate|2923520837530687f0a302630e0d5410|', 1492229490, 1, 1, NULL),
(601, 1, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2923520837530687f0a302630e0d5410_0__2', 1492229491, 1, 2, NULL),
(602, 1, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2923520837530687f0a302630e0d5410', 1492229516, 1, 2, NULL),
(603, 1, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2923520837530687f0a302630e0d5410', 1492229516, 1, 1, NULL),
(604, 1, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2923520837530687f0a302630e0d5410', 1492229516, 1, 2, NULL),
(605, 1, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2923520837530687f0a302630e0d5410', 1492229516, 1, 1, NULL),
(606, 1, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2923520837530687f0a302630e0d5410', 1492229516, 1, 2, NULL),
(607, 1, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2923520837530687f0a302630e0d5410', 1492229516, 1, 1, NULL),
(608, 62, 52, 'mobileAction="javascript:jqcc.ccavchat.accept(''62'',''afc835a8aa2263e9b3a13e19ef5e6e8a'');"|avchat_webaction=initiate|afc835a8aa2263e9b3a13e19ef5e6e8a|', 1492229519, 1, 1, NULL),
(609, 62, 52, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_afc835a8aa2263e9b3a13e19ef5e6e8a_0__2', 1492229520, 0, 2, NULL),
(610, 52, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''dc1498ffac117014fde021149d4634c2'');"|avchat_webaction=initiate|dc1498ffac117014fde021149d4634c2|', 1492229586, 1, 1, NULL),
(611, 52, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_dc1498ffac117014fde021149d4634c2_0__2', 1492229587, 1, 2, NULL),
(612, 52, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_dc1498ffac117014fde021149d4634c2', 1492229692, 1, 2, NULL),
(613, 52, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_dc1498ffac117014fde021149d4634c2', 1492229692, 1, 1, NULL),
(614, 52, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_dc1498ffac117014fde021149d4634c2', 1492229693, 1, 2, NULL),
(615, 52, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_dc1498ffac117014fde021149d4634c2', 1492229693, 1, 1, NULL),
(616, 48, 52, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''04dd167a3c35cee9cc6e0fa5d783755b'');"|avchat_webaction=initiate|04dd167a3c35cee9cc6e0fa5d783755b|', 1492229816, 1, 1, NULL),
(617, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_04dd167a3c35cee9cc6e0fa5d783755b_0__2', 1492229817, 1, 2, NULL),
(618, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492229821, 1, 2, NULL),
(619, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492229821, 1, 1, NULL),
(620, 48, 52, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''04dd167a3c35cee9cc6e0fa5d783755b'');"|avchat_webaction=initiate|04dd167a3c35cee9cc6e0fa5d783755b|', 1492229844, 1, 1, NULL),
(621, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_04dd167a3c35cee9cc6e0fa5d783755b_0__2', 1492229845, 1, 2, NULL),
(622, 52, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''04dd167a3c35cee9cc6e0fa5d783755b'');"|avchat_webaction=initiate|04dd167a3c35cee9cc6e0fa5d783755b|', 1492229870, 1, 1, NULL),
(623, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_04dd167a3c35cee9cc6e0fa5d783755b_0__2', 1492229870, 1, 2, NULL),
(624, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492229889, 1, 2, NULL),
(625, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492229889, 1, 1, NULL),
(626, 52, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''04dd167a3c35cee9cc6e0fa5d783755b'');"|avchat_webaction=initiate|04dd167a3c35cee9cc6e0fa5d783755b|', 1492230016, 1, 1, NULL),
(627, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_04dd167a3c35cee9cc6e0fa5d783755b_0__2', 1492230017, 1, 2, NULL),
(628, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492230059, 1, 2, NULL),
(629, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492230059, 1, 1, NULL),
(630, 48, 52, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''04dd167a3c35cee9cc6e0fa5d783755b'');"|avchat_webaction=initiate|04dd167a3c35cee9cc6e0fa5d783755b|', 1492230183, 1, 1, NULL),
(631, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_04dd167a3c35cee9cc6e0fa5d783755b_0__2', 1492230184, 1, 2, NULL),
(632, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492230383, 1, 2, NULL),
(633, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_04dd167a3c35cee9cc6e0fa5d783755b', 1492230383, 1, 1, NULL),
(634, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492231366, 1, 1, NULL),
(635, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492231367, 1, 2, NULL),
(636, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492231376, 1, 2, NULL),
(637, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492231376, 1, 1, NULL),
(638, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492231384, 1, 1, NULL),
(639, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492231384, 1, 2, NULL),
(640, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492231423, 1, 2, NULL),
(641, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492231423, 1, 1, NULL),
(642, 48, 62, 'has sent you an audio chat request. <a class=''audiochat_link_987bc521c853b9af2ba4859e17e8c075 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''48'',''987bc521c853b9af2ba4859e17e8c075'');" href=''javascript:void(0);'' to=''48'' caller='''' grp=''987bc521c853b9af2ba4859e17e8c075'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_987bc521c853b9af2ba4859e17e8c075'' onclick="javascript:jqcc.ccaudiochat.reject_call(''48'',''987bc521c853b9af2ba4859e17e8c075'');">click here.</a>You can also simply ignore this message.', 1492231650, 1, 1, NULL),
(643, 48, 62, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_987bc521c853b9af2ba4859e17e8c075'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''62'',''987bc521c853b9af2ba4859e17e8c075'');">click here.</a>', 1492231651, 1, 2, NULL),
(644, 62, 48, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_987bc521c853b9af2ba4859e17e8c075 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''62'',''987bc521c853b9af2ba4859e17e8c075'');" to=''62'' caller='''' grp=''987bc521c853b9af2ba4859e17e8c075'' >Click here to launch the audio chat window</a>', 1492231686, 1, 1, NULL),
(645, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492232100, 1, 1, NULL),
(646, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492232101, 1, 2, NULL),
(647, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492232129, 1, 2, NULL),
(648, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492232129, 1, 1, NULL),
(649, 62, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''62'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492232565, 1, 1, NULL),
(650, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492232566, 1, 2, NULL),
(651, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492232584, 1, 2, NULL),
(652, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492232584, 1, 1, NULL),
(653, 62, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''62'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492232588, 1, 1, NULL),
(654, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492232589, 1, 2, NULL),
(655, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492232704, 1, 2, NULL),
(656, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492232704, 1, 1, NULL),
(657, 62, 48, 'has invited you to join chatroom helloWorld. <a href="javascript:jqcc.cometchat.joinChatroom(''5'','''',''aGVsbG9Xb3JsZA=='')">Join</a>', 1492232736, 1, 1, NULL),
(658, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492234203, 1, 1, NULL),
(659, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492234204, 1, 2, NULL),
(660, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492234274, 1, 2, NULL),
(661, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492234274, 1, 1, NULL),
(662, 62, 48, 'hi', 1492234511, 1, 0, NULL),
(663, 62, 48, 'thish test', 1492234552, 1, 0, NULL),
(664, 62, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''62'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492234781, 1, 1, NULL),
(665, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492234781, 1, 2, NULL),
(666, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492234801, 1, 2, NULL),
(667, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492234801, 1, 1, NULL),
(668, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492234808, 1, 1, NULL),
(669, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492234809, 1, 2, NULL),
(670, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492234821, 1, 2, NULL),
(671, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492234821, 1, 1, NULL),
(672, 62, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''62'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492236807, 1, 1, NULL),
(673, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492236808, 1, 2, NULL),
(674, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492236826, 1, 2, NULL),
(675, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492236826, 1, 1, NULL),
(676, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492236841, 1, 1, NULL),
(677, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492236842, 1, 2, NULL),
(678, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492236862, 1, 2, NULL),
(679, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492236862, 1, 1, NULL),
(680, 62, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''62'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492236995, 1, 1, NULL),
(681, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492236996, 1, 2, NULL),
(682, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492237006, 1, 2, NULL),
(683, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492237006, 1, 1, NULL),
(684, 62, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''62'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492357129, 1, 1, NULL),
(685, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492357130, 1, 2, NULL),
(686, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=acceptcall|2d58053363cd1cb83b56ec26d3c3f47f', 1492357141, 1, 1, NULL),
(687, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492357199, 1, 2, NULL),
(688, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492357199, 1, 1, NULL),
(689, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492357228, 1, 1, NULL),
(690, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492357229, 1, 2, NULL),
(691, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492357240, 1, 1, NULL),
(692, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492402302, 1, 1, NULL),
(693, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492402303, 1, 2, NULL),
(694, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492402337, 1, 2, NULL),
(695, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492402337, 1, 1, NULL),
(696, 62, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''62'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492402366, 1, 1, NULL),
(697, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492402367, 1, 2, NULL),
(698, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492402397, 1, 2, NULL),
(699, 62, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492402397, 1, 1, NULL),
(700, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492402463, 1, 1, NULL),
(701, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492402463, 1, 2, NULL),
(702, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492402484, 1, 2, NULL),
(703, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492402484, 1, 1, NULL),
(704, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492403266, 1, 1, NULL),
(705, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492403266, 1, 2, NULL),
(706, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492403296, 1, 2, NULL),
(707, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492403296, 1, 1, NULL),
(708, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492403299, 1, 1, NULL),
(709, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492403300, 1, 2, NULL),
(710, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492403313, 1, 1, NULL),
(711, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492403314, 1, 2, NULL),
(712, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492403341, 1, 2, NULL),
(713, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492403341, 1, 1, NULL),
(714, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492403351, 1, 1, NULL),
(715, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492403352, 1, 2, NULL),
(716, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492403373, 1, 2, NULL),
(717, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492403373, 1, 1, NULL),
(718, 4, 48, 'has sent you an audio chat request. <a class=''audiochat_link_3d43e41723298a0cfd34830be5fa0f73 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''3d43e41723298a0cfd34830be5fa0f73'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''3d43e41723298a0cfd34830be5fa0f73'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_3d43e41723298a0cfd34830be5fa0f73'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''3d43e41723298a0cfd34830be5fa0f73'');">click here.</a>You can also simply ignore this message.', 1492403391, 1, 1, NULL),
(719, 4, 48, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_3d43e41723298a0cfd34830be5fa0f73'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''48'',''3d43e41723298a0cfd34830be5fa0f73'');">click here.</a>', 1492403392, 1, 2, NULL),
(720, 48, 4, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_3d43e41723298a0cfd34830be5fa0f73 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''48'',''3d43e41723298a0cfd34830be5fa0f73'');" to=''48'' caller='''' grp=''3d43e41723298a0cfd34830be5fa0f73'' >Click here to launch the audio chat window</a>', 1492403406, 1, 1, NULL),
(721, 4, 48, 'has sent you an audio chat request. <a class=''audiochat_link_3d43e41723298a0cfd34830be5fa0f73 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''3d43e41723298a0cfd34830be5fa0f73'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''3d43e41723298a0cfd34830be5fa0f73'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_3d43e41723298a0cfd34830be5fa0f73'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''3d43e41723298a0cfd34830be5fa0f73'');">click here.</a>You can also simply ignore this message.', 1492403409, 1, 1, NULL),
(722, 4, 48, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_3d43e41723298a0cfd34830be5fa0f73'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''48'',''3d43e41723298a0cfd34830be5fa0f73'');">click here.</a>', 1492403410, 1, 2, NULL),
(723, 4, 48, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_3d43e41723298a0cfd34830be5fa0f73', 1492403425, 1, 2, NULL),
(724, 4, 48, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_3d43e41723298a0cfd34830be5fa0f73', 1492403425, 1, 1, NULL),
(725, 4, 48, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_3d43e41723298a0cfd34830be5fa0f73', 1492403428, 1, 2, NULL),
(726, 4, 48, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_3d43e41723298a0cfd34830be5fa0f73', 1492403428, 1, 1, NULL),
(727, 4, 48, 'has sent you an audio chat request. <a class=''audiochat_link_3d43e41723298a0cfd34830be5fa0f73 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''3d43e41723298a0cfd34830be5fa0f73'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''3d43e41723298a0cfd34830be5fa0f73'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_3d43e41723298a0cfd34830be5fa0f73'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''3d43e41723298a0cfd34830be5fa0f73'');">click here.</a>You can also simply ignore this message.', 1492403467, 1, 1, NULL),
(728, 4, 48, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_3d43e41723298a0cfd34830be5fa0f73'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''48'',''3d43e41723298a0cfd34830be5fa0f73'');">click here.</a>', 1492403468, 1, 2, NULL),
(729, 4, 48, 'has sent you an audio chat request. <a class=''audiochat_link_3d43e41723298a0cfd34830be5fa0f73 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''3d43e41723298a0cfd34830be5fa0f73'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''3d43e41723298a0cfd34830be5fa0f73'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_3d43e41723298a0cfd34830be5fa0f73'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''3d43e41723298a0cfd34830be5fa0f73'');">click here.</a>You can also simply ignore this message.', 1492403489, 1, 1, NULL),
(730, 4, 48, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_3d43e41723298a0cfd34830be5fa0f73'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''48'',''3d43e41723298a0cfd34830be5fa0f73'');">click here.</a>', 1492403490, 1, 2, NULL),
(731, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492403724, 1, 1, NULL),
(732, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492403725, 1, 2, NULL),
(733, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492403829, 1, 2, NULL),
(734, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492403829, 1, 1, NULL),
(735, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492403840, 1, 1, NULL),
(736, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492403841, 1, 2, NULL),
(737, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492403865, 1, 2, NULL),
(738, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492403865, 1, 1, NULL),
(739, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492404201, 1, 1, NULL),
(740, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492404202, 1, 2, NULL),
(741, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492404246, 1, 2, NULL),
(742, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492404246, 1, 1, NULL),
(743, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492404258, 1, 1, NULL),
(744, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492404259, 1, 2, NULL),
(745, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492404284, 1, 2, NULL),
(746, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492404284, 1, 1, NULL),
(747, 55, 35, 'mobileAction="javascript:jqcc.ccavchat.accept(''55'',''6f65422d719cbb7d2bdefadd8ec4a265'');"|avchat_webaction=initiate|6f65422d719cbb7d2bdefadd8ec4a265|', 1492404541, 1, 1, NULL),
(748, 55, 35, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_6f65422d719cbb7d2bdefadd8ec4a265_0__2', 1492404542, 1, 2, NULL),
(749, 55, 35, 'mobileAction="javascript:jqcc.ccavchat.accept(''55'',''6f65422d719cbb7d2bdefadd8ec4a265'');"|avchat_webaction=initiate|6f65422d719cbb7d2bdefadd8ec4a265|', 1492404562, 1, 1, NULL),
(750, 55, 35, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_6f65422d719cbb7d2bdefadd8ec4a265_0__2', 1492404563, 1, 2, NULL),
(751, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492404769, 1, 1, NULL),
(752, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492404770, 1, 2, NULL),
(753, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492404874, 1, 1, NULL),
(754, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492404875, 1, 2, NULL),
(755, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492404885, 1, 2, NULL),
(756, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492404885, 1, 1, NULL),
(757, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492404890, 1, 2, NULL),
(758, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492404890, 1, 1, NULL),
(759, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492404901, 1, 1, NULL),
(760, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492404902, 1, 2, NULL),
(761, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492404932, 1, 2, NULL),
(762, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492404932, 1, 1, NULL),
(763, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492405040, 1, 1, NULL),
(764, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492405041, 1, 2, NULL),
(765, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492405062, 1, 2, NULL),
(766, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492405062, 1, 1, NULL),
(767, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492405319, 1, 1, NULL),
(768, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492405320, 1, 2, NULL),
(769, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492405345, 1, 2, NULL),
(770, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492405345, 1, 1, NULL),
(771, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492405353, 1, 1, NULL),
(772, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492405354, 1, 2, NULL),
(773, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=acceptcall|d10df8305f119c7d6fa5804d075dbff0', 1492405362, 1, 1, NULL),
(774, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_d10df8305f119c7d6fa5804d075dbff0', 1492405415, 1, 1, NULL),
(775, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492405475, 1, 1, NULL),
(776, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492405476, 1, 2, NULL),
(777, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492405541, 1, 2, NULL),
(778, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492405541, 1, 1, NULL),
(779, 48, 35, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''18d440c12db136182c40e849808fe424'');"|avchat_webaction=initiate|18d440c12db136182c40e849808fe424|', 1492405991, 1, 1, NULL),
(780, 48, 35, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_18d440c12db136182c40e849808fe424_0__2', 1492405991, 1, 2, NULL),
(781, 55, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''55'',''1649771dcefa8b89ab6c1bf2b348c7f0'');"|avchat_webaction=initiate|1649771dcefa8b89ab6c1bf2b348c7f0|', 1492406004, 1, 1, NULL),
(782, 55, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_1649771dcefa8b89ab6c1bf2b348c7f0_0__2', 1492406005, 1, 2, NULL),
(783, 55, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_1649771dcefa8b89ab6c1bf2b348c7f0', 1492406016, 1, 2, NULL),
(784, 55, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_1649771dcefa8b89ab6c1bf2b348c7f0', 1492406016, 1, 1, NULL),
(785, 48, 35, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_18d440c12db136182c40e849808fe424', 1492406018, 1, 2, NULL),
(786, 48, 35, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_18d440c12db136182c40e849808fe424', 1492406018, 1, 1, NULL),
(787, 48, 55, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''1649771dcefa8b89ab6c1bf2b348c7f0'');"|avchat_webaction=initiate|1649771dcefa8b89ab6c1bf2b348c7f0|', 1492406024, 1, 1, NULL),
(788, 48, 55, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_1649771dcefa8b89ab6c1bf2b348c7f0_0__2', 1492406025, 1, 2, NULL),
(789, 48, 55, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_1649771dcefa8b89ab6c1bf2b348c7f0', 1492406044, 1, 2, NULL),
(790, 48, 55, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_1649771dcefa8b89ab6c1bf2b348c7f0', 1492406045, 1, 1, NULL),
(791, 48, 35, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''18d440c12db136182c40e849808fe424'');"|avchat_webaction=initiate|18d440c12db136182c40e849808fe424|', 1492406263, 1, 1, NULL),
(792, 48, 35, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_18d440c12db136182c40e849808fe424_0__2', 1492406263, 1, 2, NULL),
(793, 48, 35, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_18d440c12db136182c40e849808fe424', 1492406275, 1, 2, NULL),
(794, 48, 35, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_18d440c12db136182c40e849808fe424', 1492406275, 1, 1, NULL),
(795, 52, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''04dd167a3c35cee9cc6e0fa5d783755b'');"|avchat_webaction=initiate|04dd167a3c35cee9cc6e0fa5d783755b|', 1492406330, 1, 1, NULL),
(796, 52, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_04dd167a3c35cee9cc6e0fa5d783755b_0__2', 1492406331, 1, 2, NULL),
(797, 52, 48, 'has sent you an audio chat request. <a class=''audiochat_link_d05723ebd22fd007dc39f12bc5fa930f acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''52'',''d05723ebd22fd007dc39f12bc5fa930f'');" href=''javascript:void(0);'' to=''52'' caller='''' grp=''d05723ebd22fd007dc39f12bc5fa930f'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_d05723ebd22fd007dc39f12bc5fa930f'' onclick="javascript:jqcc.ccaudiochat.reject_call(''52'',''d05723ebd22fd007dc39f12bc5fa930f'');">click here.</a>You can also simply ignore this message.', 1492406345, 1, 1, NULL),
(798, 52, 48, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_d05723ebd22fd007dc39f12bc5fa930f'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''48'',''d05723ebd22fd007dc39f12bc5fa930f'');">click here.</a>', 1492406346, 1, 2, NULL),
(799, 48, 52, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_d05723ebd22fd007dc39f12bc5fa930f accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''48'',''d05723ebd22fd007dc39f12bc5fa930f'');" to=''48'' caller='''' grp=''d05723ebd22fd007dc39f12bc5fa930f'' >Click here to launch the audio chat window</a>', 1492406350, 1, 1, NULL),
(800, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492407288, 1, 1, NULL),
(801, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492407289, 1, 2, NULL),
(802, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492407305, 1, 2, NULL),
(803, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d58053363cd1cb83b56ec26d3c3f47f', 1492407305, 1, 1, NULL),
(804, 48, 62, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''2d58053363cd1cb83b56ec26d3c3f47f'');"|avchat_webaction=initiate|2d58053363cd1cb83b56ec26d3c3f47f|', 1492407369, 1, 1, NULL),
(805, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d58053363cd1cb83b56ec26d3c3f47f_0__2', 1492407370, 0, 2, NULL),
(806, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492407660, 1, 1, NULL),
(807, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492407661, 1, 2, NULL),
(808, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=acceptcall|d10df8305f119c7d6fa5804d075dbff0', 1492407675, 1, 1, NULL),
(809, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492407747, 1, 2, NULL),
(810, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492407747, 1, 1, NULL),
(811, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492407766, 1, 1, NULL),
(812, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492407767, 1, 2, NULL),
(813, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492407783, 1, 2, NULL),
(814, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492407783, 1, 1, NULL),
(815, 48, 4, '<div class=''cometchat_hw_lang'' style=''display:none;''>has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="93532958fbd115204d3f5ee5ffe74bee.png" encfilename="93532958fbd115204d3f5ee5ffe74bee.png" mediatype="1"  href="//studycollab.com/chat/plugins/handwrite/download.php?file=93532958fbd115204d3f5ee5ffe74bee.png&amp;unencryptedfilename=93532958fbd115204d3f5ee5ffe74bee.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/chat/writable/handwrite/uploads/93532958fbd115204d3f5ee5ffe74bee.png" border="0" height="90" width="134"></a>', 1492407842, 1, 0, NULL),
(816, 48, 4, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''48'' grp=''a87ff679a2f3e71d9181a67b7542122c642e92efb79421734881b53e1e1b18b6'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''48'',''a87ff679a2f3e71d9181a67b7542122c642e92efb79421734881b53e1e1b18b6'');">Click here to view his/her screen</a> or simply ignore this message.', 1492407857, 1, 1, NULL),
(817, 48, 4, 'has successfully shared his/her screen.', 1492407858, 1, 2, NULL),
(818, 4, 48, 'is now viewing your screen.', 1492407866, 1, 1, NULL),
(819, 48, 4, 'has successfully shared his/her whiteboard.', 1492407929, 1, 2, NULL),
(820, 48, 4, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''48'' random=''1492407956'' room=''210cbaf3b8af790efd8fd7fb80ad26a2'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''48'',''1492407956'',''210cbaf3b8af790efd8fd7fb80ad26a2'');">Click here to view</a> or simply ignore this message.', 1492407929, 1, 1, NULL),
(821, 4, 48, 'is now viewing your whiteboard.', 1492407940, 1, 1, NULL),
(822, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492408015, 1, 1, NULL),
(823, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492408016, 1, 2, NULL),
(824, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=acceptcall|d10df8305f119c7d6fa5804d075dbff0', 1492408032, 1, 1, NULL),
(825, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492408101, 1, 2, NULL),
(826, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492408101, 1, 1, NULL),
(827, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492409806, 1, 1, NULL),
(828, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492409807, 1, 2, NULL),
(829, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_d10df8305f119c7d6fa5804d075dbff0', 1492409838, 1, 1, NULL),
(830, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492409926, 1, 1, NULL),
(831, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492409927, 1, 2, NULL),
(832, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492409941, 1, 2, NULL),
(833, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492409941, 1, 1, NULL),
(834, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=acceptcall|d10df8305f119c7d6fa5804d075dbff0', 1492409946, 1, 1, NULL),
(835, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492410206, 1, 1, NULL),
(836, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492410208, 1, 2, NULL),
(837, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492410268, 1, 2, NULL),
(838, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492410268, 1, 1, NULL),
(839, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492410291, 1, 1, NULL),
(840, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492410292, 1, 2, NULL),
(841, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492410325, 1, 2, NULL),
(842, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492410325, 1, 1, NULL),
(843, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492411894, 1, 1, NULL),
(844, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492411895, 1, 2, NULL),
(845, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492411912, 1, 2, NULL),
(846, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492411912, 1, 1, NULL),
(847, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492411912, 1, 2, NULL),
(848, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492411912, 1, 1, NULL),
(849, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492411924, 1, 1, NULL),
(850, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492411925, 1, 2, NULL),
(851, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492411940, 1, 2, NULL),
(852, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492411940, 1, 1, NULL),
(853, 21, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''66f8b6aaf63014cc857ead64aa69bab0'');"|avchat_webaction=initiate|66f8b6aaf63014cc857ead64aa69bab0|', 1492412081, 1, 1, NULL),
(854, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_66f8b6aaf63014cc857ead64aa69bab0_0__2', 1492412082, 1, 2, NULL),
(855, 21, 4, 'has sent you an audio chat request. <a class=''audiochat_link_c52429c2d4c5c497795e1cce329feba8 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''21'',''c52429c2d4c5c497795e1cce329feba8'');" href=''javascript:void(0);'' to=''21'' caller='''' grp=''c52429c2d4c5c497795e1cce329feba8'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_c52429c2d4c5c497795e1cce329feba8'' onclick="javascript:jqcc.ccaudiochat.reject_call(''21'',''c52429c2d4c5c497795e1cce329feba8'');">click here.</a>You can also simply ignore this message.', 1492412146, 1, 1, NULL),
(856, 21, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_c52429c2d4c5c497795e1cce329feba8'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''c52429c2d4c5c497795e1cce329feba8'');">click here.</a>', 1492412147, 1, 2, NULL),
(857, 4, 21, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_c52429c2d4c5c497795e1cce329feba8 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''4'',''c52429c2d4c5c497795e1cce329feba8'');" to=''4'' caller='''' grp=''c52429c2d4c5c497795e1cce329feba8'' >Click here to launch the audio chat window</a>', 1492412150, 1, 1, NULL),
(858, 4, 21, 'has successfully shared his/her whiteboard.', 1492412333, 1, 2, NULL),
(859, 4, 21, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''4'' random=''1492412360'' room=''2c1d5df206ac0077227751fdbb1edfac'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''4'',''1492412360'',''2c1d5df206ac0077227751fdbb1edfac'');">Click here to view</a> or simply ignore this message.', 1492412333, 1, 1, NULL),
(860, 21, 4, 'is now viewing your whiteboard.', 1492412347, 1, 1, NULL),
(861, 4, 21, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''4'' grp=''a87ff679a2f3e71d9181a67b7542122c3c59dc048e8850243be8079a5c74d079'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''4'',''a87ff679a2f3e71d9181a67b7542122c3c59dc048e8850243be8079a5c74d079'');">Click here to view his/her screen</a> or simply ignore this message.', 1492412387, 1, 1, NULL),
(862, 4, 21, 'has successfully shared his/her screen.', 1492412388, 1, 2, NULL),
(863, 21, 4, 'is now viewing your screen.', 1492412418, 1, 1, NULL);
INSERT INTO `cometchat` (`id`, `from`, `to`, `message`, `sent`, `read`, `direction`, `custom_data`) VALUES
(864, 4, 21, '<div class=''cometchat_hw_lang'' style=''display:none;''>has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="c40aeeaa07465519b57f685957845866.png" encfilename="c40aeeaa07465519b57f685957845866.png" mediatype="1"  href="//www.studycollab.com/chat/plugins/handwrite/download.php?file=c40aeeaa07465519b57f685957845866.png&amp;unencryptedfilename=c40aeeaa07465519b57f685957845866.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/chat/writable/handwrite/uploads/c40aeeaa07465519b57f685957845866.png" border="0" height="90" width="134"></a>', 1492412461, 1, 0, NULL),
(865, 4, 21, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''66f8b6aaf63014cc857ead64aa69bab0'');"|avchat_webaction=initiate|66f8b6aaf63014cc857ead64aa69bab0|', 1492412650, 1, 1, NULL),
(866, 4, 21, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_66f8b6aaf63014cc857ead64aa69bab0_0__2', 1492412651, 1, 2, NULL),
(867, 21, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''66f8b6aaf63014cc857ead64aa69bab0'');"|avchat_webaction=initiate|66f8b6aaf63014cc857ead64aa69bab0|', 1492412686, 1, 1, NULL),
(868, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_66f8b6aaf63014cc857ead64aa69bab0_0__2', 1492412687, 1, 2, NULL),
(869, 21, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''66f8b6aaf63014cc857ead64aa69bab0'');"|avchat_webaction=initiate|66f8b6aaf63014cc857ead64aa69bab0|', 1492412710, 1, 1, NULL),
(870, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_66f8b6aaf63014cc857ead64aa69bab0_0__2', 1492412711, 1, 2, NULL),
(871, 4, 21, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_66f8b6aaf63014cc857ead64aa69bab0', 1492412714, 1, 2, NULL),
(872, 4, 21, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_66f8b6aaf63014cc857ead64aa69bab0', 1492412714, 1, 1, NULL),
(873, 21, 4, 'has sent you an audio chat request. <a class=''audiochat_link_c52429c2d4c5c497795e1cce329feba8 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''21'',''c52429c2d4c5c497795e1cce329feba8'');" href=''javascript:void(0);'' to=''21'' caller='''' grp=''c52429c2d4c5c497795e1cce329feba8'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_c52429c2d4c5c497795e1cce329feba8'' onclick="javascript:jqcc.ccaudiochat.reject_call(''21'',''c52429c2d4c5c497795e1cce329feba8'');">click here.</a>You can also simply ignore this message.', 1492412722, 1, 1, NULL),
(874, 21, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_c52429c2d4c5c497795e1cce329feba8'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''c52429c2d4c5c497795e1cce329feba8'');">click here.</a>', 1492412723, 1, 2, NULL),
(875, 4, 21, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_c52429c2d4c5c497795e1cce329feba8 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''4'',''c52429c2d4c5c497795e1cce329feba8'');" to=''4'' caller='''' grp=''c52429c2d4c5c497795e1cce329feba8'' >Click here to launch the audio chat window</a>', 1492412736, 1, 1, NULL),
(876, 21, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''66f8b6aaf63014cc857ead64aa69bab0'');"|avchat_webaction=initiate|66f8b6aaf63014cc857ead64aa69bab0|', 1492412754, 1, 1, NULL),
(877, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_66f8b6aaf63014cc857ead64aa69bab0_0__2', 1492412755, 1, 2, NULL),
(878, 4, 21, 'has invited you to join chatroom helloWorld. <a href="javascript:jqcc.cometchat.joinChatroom(''5'','''',''aGVsbG9Xb3JsZA=='')">Join</a>', 1492412831, 1, 1, NULL),
(879, 4, 21, 'has sent you an audio chat request. <a class=''audiochat_link_680bc4e0b11d436d0da7bd5ad5ebe119 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''680bc4e0b11d436d0da7bd5ad5ebe119'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''680bc4e0b11d436d0da7bd5ad5ebe119'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_680bc4e0b11d436d0da7bd5ad5ebe119'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''680bc4e0b11d436d0da7bd5ad5ebe119'');">click here.</a>You can also simply ignore this message.', 1492412876, 1, 1, NULL),
(880, 4, 21, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_680bc4e0b11d436d0da7bd5ad5ebe119'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''21'',''680bc4e0b11d436d0da7bd5ad5ebe119'');">click here.</a>', 1492412877, 1, 2, NULL),
(881, 21, 4, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_680bc4e0b11d436d0da7bd5ad5ebe119 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''21'',''680bc4e0b11d436d0da7bd5ad5ebe119'');" to=''21'' caller='''' grp=''680bc4e0b11d436d0da7bd5ad5ebe119'' >Click here to launch the audio chat window</a>', 1492412892, 1, 1, NULL),
(882, 4, 21, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_680bc4e0b11d436d0da7bd5ad5ebe119', 1492412893, 1, 2, NULL),
(883, 4, 21, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_680bc4e0b11d436d0da7bd5ad5ebe119', 1492412893, 1, 1, NULL),
(884, 21, 4, 'no udi or video', 1492412919, 1, 0, NULL),
(885, 21, 4, 'no audio or video', 1492412930, 1, 0, NULL),
(886, 4, 21, 'group call', 1492412945, 1, 0, NULL),
(887, 4, 21, 'video', 1492412954, 1, 0, NULL),
(888, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492416274, 1, 1, NULL),
(889, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492416275, 1, 2, NULL),
(890, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492416304, 1, 2, NULL),
(891, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492416304, 1, 1, NULL),
(892, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1492416331, 1, 1, NULL),
(893, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1492416332, 1, 2, NULL),
(894, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492416351, 1, 2, NULL),
(895, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492416351, 1, 1, NULL),
(896, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1492416364, 1, 1, NULL),
(897, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1492416365, 1, 2, NULL),
(898, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=acceptcall|ec23fc99fbd87b2ffdeba936c32b01db', 1492416376, 1, 1, NULL),
(899, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_ec23fc99fbd87b2ffdeba936c32b01db', 1492416397, 1, 1, NULL),
(900, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1492416436, 1, 1, NULL),
(901, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1492416437, 1, 2, NULL),
(902, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492416455, 1, 2, NULL),
(903, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492416455, 1, 1, NULL),
(904, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1492416469, 1, 1, NULL),
(905, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1492416470, 1, 2, NULL),
(906, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=acceptcall|ec23fc99fbd87b2ffdeba936c32b01db', 1492416479, 1, 1, NULL),
(907, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492416624, 1, 2, NULL),
(908, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492416625, 1, 1, NULL),
(909, 35, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''35'',''c6277b283207d2f733ea2f1fff0b863b'');"|avchat_webaction=initiate|c6277b283207d2f733ea2f1fff0b863b|', 1492416674, 1, 1, NULL),
(910, 35, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_c6277b283207d2f733ea2f1fff0b863b_0__2', 1492416675, 1, 2, NULL),
(911, 35, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_c6277b283207d2f733ea2f1fff0b863b', 1492416696, 1, 2, NULL),
(912, 35, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_c6277b283207d2f733ea2f1fff0b863b', 1492416696, 1, 1, NULL),
(913, 35, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''35'',''d54bb948041efc480d4844f7611c0741'');"|avchat_webaction=initiate|d54bb948041efc480d4844f7611c0741|', 1492416726, 1, 1, NULL),
(914, 35, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d54bb948041efc480d4844f7611c0741_0__2', 1492416727, 1, 2, NULL),
(915, 1, 35, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''d54bb948041efc480d4844f7611c0741'');"|avchat_webaction=acceptcall|d54bb948041efc480d4844f7611c0741', 1492416752, 1, 1, NULL),
(916, 4, 35, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''c6277b283207d2f733ea2f1fff0b863b'');"|avchat_webaction=initiate|c6277b283207d2f733ea2f1fff0b863b|', 1492416875, 1, 1, NULL),
(917, 4, 35, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_c6277b283207d2f733ea2f1fff0b863b_0__2', 1492416877, 1, 2, NULL),
(918, 35, 4, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_c6277b283207d2f733ea2f1fff0b863b', 1492416915, 1, 1, NULL),
(919, 1, 35, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''d54bb948041efc480d4844f7611c0741'');"|avchat_webaction=initiate|d54bb948041efc480d4844f7611c0741|', 1492416927, 1, 1, NULL),
(920, 1, 35, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d54bb948041efc480d4844f7611c0741_0__2', 1492416928, 1, 2, NULL),
(921, 1, 35, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d54bb948041efc480d4844f7611c0741', 1492416963, 1, 2, NULL),
(922, 1, 35, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d54bb948041efc480d4844f7611c0741', 1492416963, 1, 1, NULL),
(923, 1, 35, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''d54bb948041efc480d4844f7611c0741'');"|avchat_webaction=initiate|d54bb948041efc480d4844f7611c0741|', 1492416976, 1, 1, NULL),
(924, 1, 35, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d54bb948041efc480d4844f7611c0741_0__2', 1492416977, 1, 2, NULL),
(925, 35, 1, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''35'',''d54bb948041efc480d4844f7611c0741'');"|avchat_webaction=acceptcall|d54bb948041efc480d4844f7611c0741', 1492416983, 1, 1, NULL),
(926, 55, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''55'',''7c35473294e65eb09ed10a84e2231e1b'');"|avchat_webaction=initiate|7c35473294e65eb09ed10a84e2231e1b|', 1492417004, 1, 1, NULL),
(927, 55, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_7c35473294e65eb09ed10a84e2231e1b_0__2', 1492417005, 1, 2, NULL),
(928, 55, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''55'',''7c35473294e65eb09ed10a84e2231e1b'');"|avchat_webaction=initiate|7c35473294e65eb09ed10a84e2231e1b|', 1492417025, 1, 1, NULL),
(929, 55, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_7c35473294e65eb09ed10a84e2231e1b_0__2', 1492417026, 1, 2, NULL),
(930, 1, 55, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_7c35473294e65eb09ed10a84e2231e1b', 1492417040, 1, 1, NULL),
(931, 55, 35, 'mobileAction="javascript:jqcc.ccavchat.accept(''55'',''6f65422d719cbb7d2bdefadd8ec4a265'');"|avchat_webaction=initiate|6f65422d719cbb7d2bdefadd8ec4a265|', 1492417092, 1, 1, NULL),
(932, 55, 35, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_6f65422d719cbb7d2bdefadd8ec4a265_0__2', 1492417093, 0, 2, NULL),
(933, 35, 55, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''35'',''6f65422d719cbb7d2bdefadd8ec4a265'');"|avchat_webaction=acceptcall|6f65422d719cbb7d2bdefadd8ec4a265', 1492417100, 1, 1, NULL),
(934, 35, 55, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_6f65422d719cbb7d2bdefadd8ec4a265', 1492417122, 1, 1, NULL),
(935, 1, 35, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''d54bb948041efc480d4844f7611c0741'');"|avchat_webaction=initiate|d54bb948041efc480d4844f7611c0741|', 1492417217, 1, 1, NULL),
(936, 1, 35, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d54bb948041efc480d4844f7611c0741_0__2', 1492417218, 0, 2, NULL),
(937, 35, 1, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''35'',''d54bb948041efc480d4844f7611c0741'');"|avchat_webaction=acceptcall|d54bb948041efc480d4844f7611c0741', 1492417223, 1, 1, NULL),
(938, 55, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''55'',''3f347c076965187ace56acb912656c28'');"|avchat_webaction=initiate|3f347c076965187ace56acb912656c28|', 1492417248, 1, 1, NULL),
(939, 55, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_3f347c076965187ace56acb912656c28_0__2', 1492417249, 1, 2, NULL),
(940, 55, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_3f347c076965187ace56acb912656c28', 1492417264, 1, 2, NULL),
(941, 55, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_3f347c076965187ace56acb912656c28', 1492417264, 1, 1, NULL),
(942, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1492417359, 1, 1, NULL),
(943, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1492417360, 1, 2, NULL),
(944, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=acceptcall|ec23fc99fbd87b2ffdeba936c32b01db', 1492417371, 1, 1, NULL),
(945, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1492417604, 1, 1, NULL),
(946, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1492417605, 1, 2, NULL),
(947, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=acceptcall|ec23fc99fbd87b2ffdeba936c32b01db', 1492417613, 1, 1, NULL),
(948, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_ec23fc99fbd87b2ffdeba936c32b01db', 1492417638, 1, 1, NULL),
(949, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1492417756, 1, 1, NULL),
(950, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1492417757, 1, 2, NULL),
(951, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492417764, 1, 2, NULL),
(952, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492417764, 1, 1, NULL),
(953, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1492418134, 1, 1, NULL),
(954, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1492418135, 1, 2, NULL),
(955, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492418153, 1, 2, NULL),
(956, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492418153, 1, 1, NULL),
(957, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1492418432, 1, 1, NULL),
(958, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1492418433, 1, 2, NULL),
(959, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492419991, 1, 2, NULL),
(960, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492419991, 1, 1, NULL),
(961, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492419991, 1, 2, NULL),
(962, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492419991, 1, 1, NULL),
(963, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1492419996, 1, 1, NULL),
(964, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1492419997, 1, 2, NULL),
(965, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=acceptcall|ec23fc99fbd87b2ffdeba936c32b01db', 1492420004, 1, 1, NULL),
(966, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_ec23fc99fbd87b2ffdeba936c32b01db', 1492420029, 1, 1, NULL),
(967, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1492420098, 1, 1, NULL),
(968, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1492420099, 1, 2, NULL),
(969, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=acceptcall|ec23fc99fbd87b2ffdeba936c32b01db', 1492420110, 1, 1, NULL),
(970, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_ec23fc99fbd87b2ffdeba936c32b01db', 1492420132, 1, 1, NULL),
(971, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1492420195, 1, 1, NULL),
(972, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1492420195, 1, 2, NULL),
(973, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492420211, 1, 2, NULL),
(974, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492420211, 1, 1, NULL),
(975, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1492420217, 1, 1, NULL),
(976, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1492420218, 1, 2, NULL),
(977, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=acceptcall|ec23fc99fbd87b2ffdeba936c32b01db', 1492420233, 1, 1, NULL),
(978, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492420926, 1, 1, NULL),
(979, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492420927, 1, 2, NULL),
(980, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492420997, 1, 2, NULL),
(981, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492420997, 1, 1, NULL),
(982, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492421006, 1, 1, NULL),
(983, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492421007, 1, 2, NULL),
(984, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492421089, 1, 1, NULL),
(985, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492421090, 1, 2, NULL),
(986, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492421107, 1, 1, NULL),
(987, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492421108, 1, 2, NULL),
(988, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492421171, 1, 1, NULL),
(989, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492421172, 1, 2, NULL),
(990, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492421182, 1, 1, NULL),
(991, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492421183, 1, 2, NULL),
(992, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1492422070, 1, 1, NULL),
(993, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1492422071, 1, 2, NULL),
(994, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492422114, 1, 2, NULL),
(995, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492422114, 1, 1, NULL),
(996, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1492422119, 1, 1, NULL),
(997, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1492422120, 1, 2, NULL),
(998, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492422138, 1, 2, NULL),
(999, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492422138, 1, 1, NULL),
(1000, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1492423802, 1, 1, NULL),
(1001, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1492423803, 1, 2, NULL),
(1002, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1492423833, 1, 1, NULL),
(1003, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1492423834, 1, 2, NULL),
(1004, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492423887, 1, 2, NULL),
(1005, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1492423887, 1, 1, NULL),
(1006, 4, 1, 'has successfully shared his/her whiteboard.', 1492423905, 1, 2, NULL),
(1007, 4, 1, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''4'' random=''1492423934'' room=''6be11b44593260b073a5d6d466cdcbbf'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''4'',''1492423934'',''6be11b44593260b073a5d6d466cdcbbf'');">Click here to view</a> or simply ignore this message.', 1492423905, 1, 1, NULL),
(1008, 1, 4, 'is now viewing your whiteboard.', 1492423918, 1, 1, NULL),
(1009, 1, 4, 'has successfully shared his/her whiteboard.', 1492423972, 1, 2, NULL),
(1010, 1, 4, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''1'' random=''1492424000'' room=''1c2795f959a89b274030c7761add6743'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''1'',''1492424000'',''1c2795f959a89b274030c7761add6743'');">Click here to view</a> or simply ignore this message.', 1492423972, 1, 1, NULL),
(1011, 4, 1, 'is now viewing your whiteboard.', 1492423986, 1, 1, NULL),
(1012, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492438356, 1, 1, NULL),
(1013, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492438356, 1, 2, NULL),
(1014, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492438383, 1, 2, NULL),
(1015, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d10df8305f119c7d6fa5804d075dbff0', 1492438383, 1, 1, NULL),
(1016, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492438395, 1, 1, NULL),
(1017, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492438396, 1, 2, NULL),
(1018, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_d10df8305f119c7d6fa5804d075dbff0', 1492438402, 1, 1, NULL),
(1019, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492438413, 1, 1, NULL),
(1020, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492438414, 1, 2, NULL),
(1021, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_d10df8305f119c7d6fa5804d075dbff0', 1492438420, 1, 1, NULL),
(1022, 4, 48, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_d10df8305f119c7d6fa5804d075dbff0', 1492438426, 1, 1, NULL),
(1023, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492438444, 1, 1, NULL),
(1024, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492438445, 1, 2, NULL),
(1025, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_d10df8305f119c7d6fa5804d075dbff0', 1492438445, 1, 1, NULL),
(1026, 48, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''48'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=initiate|d10df8305f119c7d6fa5804d075dbff0|', 1492438465, 1, 1, NULL),
(1027, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d10df8305f119c7d6fa5804d075dbff0_0__2', 1492438466, 1, 2, NULL),
(1028, 4, 48, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''4'',''d10df8305f119c7d6fa5804d075dbff0'');"|avchat_webaction=acceptcall|d10df8305f119c7d6fa5804d075dbff0', 1492438473, 1, 1, NULL),
(1029, 4, 5, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''b61e9a2681b589c392c50e3a8f508857'');"|avchat_webaction=initiate|b61e9a2681b589c392c50e3a8f508857|', 1492439049, 0, 1, NULL),
(1030, 4, 5, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_b61e9a2681b589c392c50e3a8f508857_0__2', 1492439050, 0, 2, NULL),
(1031, 4, 5, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_b61e9a2681b589c392c50e3a8f508857', 1492439064, 0, 2, NULL),
(1032, 4, 5, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_b61e9a2681b589c392c50e3a8f508857', 1492439064, 0, 1, NULL),
(1033, 21, 25, 'has sent you an audio chat request. <a class=''audiochat_link_e68126c48f629a705295c6207cbc64e0 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''21'',''e68126c48f629a705295c6207cbc64e0'');" href=''javascript:void(0);'' to=''21'' caller='''' grp=''e68126c48f629a705295c6207cbc64e0'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.reject_call(''21'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>You can also simply ignore this message.', 1492458358, 1, 1, NULL),
(1034, 21, 25, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''25'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>', 1492458359, 1, 2, NULL),
(1035, 25, 21, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''25'',''e68126c48f629a705295c6207cbc64e0'');" to=''25'' caller='''' grp=''e68126c48f629a705295c6207cbc64e0'' >Click here to launch the audio chat window</a>', 1492458375, 1, 1, NULL),
(1036, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1492458399, 1, 1, NULL),
(1037, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1492458400, 1, 2, NULL),
(1038, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1492458417, 1, 1, NULL),
(1039, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1492458418, 1, 2, NULL),
(1040, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_eb12c8eeb2478cbe3ed428a78cbb9be0', 1492458435, 1, 1, NULL),
(1041, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1492458460, 1, 1, NULL),
(1042, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1492458460, 1, 2, NULL),
(1043, 25, 21, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''25'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=acceptcall|eb12c8eeb2478cbe3ed428a78cbb9be0', 1492458475, 1, 1, NULL),
(1044, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_eb12c8eeb2478cbe3ed428a78cbb9be0', 1492458501, 1, 2, NULL),
(1045, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_eb12c8eeb2478cbe3ed428a78cbb9be0', 1492458501, 1, 1, NULL),
(1046, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1492458506, 1, 1, NULL),
(1047, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1492458507, 1, 2, NULL),
(1048, 25, 21, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''25'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=acceptcall|eb12c8eeb2478cbe3ed428a78cbb9be0', 1492458516, 1, 1, NULL),
(1049, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_eb12c8eeb2478cbe3ed428a78cbb9be0', 1492458718, 1, 2, NULL),
(1050, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_eb12c8eeb2478cbe3ed428a78cbb9be0', 1492458718, 1, 1, NULL),
(1051, 52, 4, 'has successfully shared his/her whiteboard.', 1492668985, 1, 2, NULL),
(1052, 52, 4, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''52'' random=''1492669012'' room=''948781a3128bcd0d90c9dd868cb66da9'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''52'',''1492669012'',''948781a3128bcd0d90c9dd868cb66da9'');">Click here to view</a> or simply ignore this message.', 1492668985, 1, 1, NULL),
(1053, 4, 35, 'hi', 1492688168, 1, 0, NULL),
(1054, 4, 35, 'has sent you an audio chat request. <a class=''audiochat_link_b594acb683ed3257f925e1d50aa0b47d acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''b594acb683ed3257f925e1d50aa0b47d'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''b594acb683ed3257f925e1d50aa0b47d'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_b594acb683ed3257f925e1d50aa0b47d'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''b594acb683ed3257f925e1d50aa0b47d'');">click here.</a>You can also simply ignore this message.', 1492688183, 1, 1, NULL),
(1055, 4, 35, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_b594acb683ed3257f925e1d50aa0b47d'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''35'',''b594acb683ed3257f925e1d50aa0b47d'');">click here.</a>', 1492688183, 1, 2, NULL),
(1056, 4, 35, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_b594acb683ed3257f925e1d50aa0b47d', 1492688189, 1, 2, NULL),
(1057, 4, 35, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_b594acb683ed3257f925e1d50aa0b47d', 1492688189, 1, 1, NULL),
(1058, 4, 35, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''c6277b283207d2f733ea2f1fff0b863b'');"|avchat_webaction=initiate|c6277b283207d2f733ea2f1fff0b863b|', 1492688195, 1, 1, NULL),
(1059, 4, 35, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_c6277b283207d2f733ea2f1fff0b863b_0__2', 1492688196, 1, 2, NULL),
(1060, 4, 35, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_c6277b283207d2f733ea2f1fff0b863b', 1492688212, 1, 2, NULL),
(1061, 4, 35, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_c6277b283207d2f733ea2f1fff0b863b', 1492688212, 1, 1, NULL),
(1062, 4, 55, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''3f347c076965187ace56acb912656c28'');"|avchat_webaction=initiate|3f347c076965187ace56acb912656c28|', 1492688235, 1, 1, NULL),
(1063, 4, 55, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_3f347c076965187ace56acb912656c28_0__2', 1492688236, 1, 2, NULL),
(1064, 4, 55, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_3f347c076965187ace56acb912656c28', 1492688257, 1, 2, NULL),
(1065, 4, 55, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_3f347c076965187ace56acb912656c28', 1492688257, 1, 1, NULL),
(1066, 21, 24, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''cfa7c8f38e507714494dc673528b945a'');"|avchat_webaction=initiate|cfa7c8f38e507714494dc673528b945a|', 1492705396, 1, 1, NULL),
(1067, 21, 24, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_cfa7c8f38e507714494dc673528b945a_0__2', 1492705397, 1, 2, NULL),
(1068, 21, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''66f8b6aaf63014cc857ead64aa69bab0'');"|avchat_webaction=initiate|66f8b6aaf63014cc857ead64aa69bab0|', 1492752029, 1, 1, NULL),
(1069, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_66f8b6aaf63014cc857ead64aa69bab0_0__2', 1492752030, 1, 2, NULL),
(1070, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_66f8b6aaf63014cc857ead64aa69bab0', 1492752076, 1, 2, NULL),
(1071, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_66f8b6aaf63014cc857ead64aa69bab0', 1492752076, 1, 1, NULL),
(1072, 4, 21, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''66f8b6aaf63014cc857ead64aa69bab0'');"|avchat_webaction=initiate|66f8b6aaf63014cc857ead64aa69bab0|', 1492752082, 1, 1, NULL),
(1073, 4, 21, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_66f8b6aaf63014cc857ead64aa69bab0_0__2', 1492752083, 1, 2, NULL),
(1074, 21, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''21'',''66f8b6aaf63014cc857ead64aa69bab0'');"|avchat_webaction=acceptcall|66f8b6aaf63014cc857ead64aa69bab0', 1492752101, 1, 1, NULL),
(1075, 4, 21, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_66f8b6aaf63014cc857ead64aa69bab0', 1492752232, 1, 2, NULL),
(1076, 4, 21, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_66f8b6aaf63014cc857ead64aa69bab0', 1492752232, 1, 1, NULL),
(1077, 4, 21, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''66f8b6aaf63014cc857ead64aa69bab0'');"|avchat_webaction=initiate|66f8b6aaf63014cc857ead64aa69bab0|', 1492752239, 1, 1, NULL),
(1078, 4, 21, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_66f8b6aaf63014cc857ead64aa69bab0_0__2', 1492752240, 1, 2, NULL),
(1079, 21, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''21'',''66f8b6aaf63014cc857ead64aa69bab0'');"|avchat_webaction=acceptcall|66f8b6aaf63014cc857ead64aa69bab0', 1492752246, 1, 1, NULL),
(1080, 4, 21, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_66f8b6aaf63014cc857ead64aa69bab0', 1492752264, 1, 2, NULL),
(1081, 4, 21, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_66f8b6aaf63014cc857ead64aa69bab0', 1492752264, 1, 1, NULL),
(1082, 21, 4, 'I accepted', 1492752266, 1, 0, NULL),
(1083, 21, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''66f8b6aaf63014cc857ead64aa69bab0'');"|avchat_webaction=initiate|66f8b6aaf63014cc857ead64aa69bab0|', 1492752283, 1, 1, NULL),
(1084, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_66f8b6aaf63014cc857ead64aa69bab0_0__2', 1492752284, 1, 2, NULL),
(1085, 21, 4, 'I am calling now', 1492752306, 1, 0, NULL),
(1086, 4, 21, 'Ok sir', 1492752314, 1, 0, NULL),
(1087, 4, 21, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''66f8b6aaf63014cc857ead64aa69bab0'');"|avchat_webaction=initiate|66f8b6aaf63014cc857ead64aa69bab0|', 1492752356, 1, 1, NULL),
(1088, 4, 21, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_66f8b6aaf63014cc857ead64aa69bab0_0__2', 1492752357, 1, 2, NULL),
(1089, 21, 4, 'Just shows the ''Ringing...'' screen with cancel button', 1492752382, 1, 0, NULL),
(1090, 21, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''66f8b6aaf63014cc857ead64aa69bab0'');"|avchat_webaction=initiate|66f8b6aaf63014cc857ead64aa69bab0|', 1492752391, 1, 1, NULL),
(1091, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_66f8b6aaf63014cc857ead64aa69bab0_0__2', 1492752392, 1, 2, NULL),
(1092, 4, 21, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_66f8b6aaf63014cc857ead64aa69bab0', 1492752397, 1, 2, NULL),
(1093, 4, 21, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_66f8b6aaf63014cc857ead64aa69bab0', 1492752397, 1, 1, NULL),
(1094, 21, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''66f8b6aaf63014cc857ead64aa69bab0'');"|avchat_webaction=initiate|66f8b6aaf63014cc857ead64aa69bab0|', 1492752407, 1, 1, NULL),
(1095, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_66f8b6aaf63014cc857ead64aa69bab0_0__2', 1492752408, 1, 2, NULL),
(1096, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_66f8b6aaf63014cc857ead64aa69bab0', 1492752453, 1, 2, NULL),
(1097, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_66f8b6aaf63014cc857ead64aa69bab0', 1492752453, 1, 1, NULL),
(1098, 21, 24, '<div class=''cometchat_hw_lang'' style=''display:none;''>has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="802770fba12c06559bd40b8af275679c.png" encfilename="802770fba12c06559bd40b8af275679c.png" mediatype="1"  href="//studycollab.com/chat/plugins/handwrite/download.php?file=802770fba12c06559bd40b8af275679c.png&amp;unencryptedfilename=802770fba12c06559bd40b8af275679c.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/chat/writable/handwrite/uploads/802770fba12c06559bd40b8af275679c.png" border="0" height="90" width="134"></a>', 1492755434, 1, 0, NULL),
(1099, 21, 24, '<div class=''cometchat_hw_lang'' style=''display:none;''>has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="757941fa87c4950c591f69c23cf97fc6.png" encfilename="757941fa87c4950c591f69c23cf97fc6.png" mediatype="1"  href="//studycollab.com/chat/plugins/handwrite/download.php?file=757941fa87c4950c591f69c23cf97fc6.png&amp;unencryptedfilename=757941fa87c4950c591f69c23cf97fc6.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/chat/writable/handwrite/uploads/757941fa87c4950c591f69c23cf97fc6.png" border="0" height="90" width="134"></a>', 1492755437, 1, 0, NULL),
(1100, 21, 24, '<div class=''cometchat_hw_lang'' style=''display:none;''>has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="1d9a91b82054ecd4acd2990200e877c9.png" encfilename="1d9a91b82054ecd4acd2990200e877c9.png" mediatype="1"  href="//studycollab.com/chat/plugins/handwrite/download.php?file=1d9a91b82054ecd4acd2990200e877c9.png&amp;unencryptedfilename=1d9a91b82054ecd4acd2990200e877c9.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/chat/writable/handwrite/uploads/1d9a91b82054ecd4acd2990200e877c9.png" border="0" height="90" width="134"></a>', 1492755450, 1, 0, NULL),
(1101, 21, 24, 'has successfully shared his/her whiteboard.', 1493076771, 1, 2, NULL),
(1102, 21, 24, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''21'' random=''1493076781'' room=''e52e95f6e1c582f9077d8b9f5a335bbe'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''21'',''1493076781'',''e52e95f6e1c582f9077d8b9f5a335bbe'');">Click here to view</a> or simply ignore this message.', 1493076771, 1, 1, NULL),
(1103, 21, 24, '<div class=''cometchat_hw_lang'' style=''display:none;''>has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="678c5a55513feb3b589ef8fc90dfe06e.png" encfilename="678c5a55513feb3b589ef8fc90dfe06e.png" mediatype="1"  href="//studycollab.com/chat/plugins/handwrite/download.php?file=678c5a55513feb3b589ef8fc90dfe06e.png&amp;unencryptedfilename=678c5a55513feb3b589ef8fc90dfe06e.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/chat/writable/handwrite/uploads/678c5a55513feb3b589ef8fc90dfe06e.png" border="0" height="90" width="134"></a>', 1493319281, 1, 0, NULL),
(1104, 21, 24, '<div class=''cometchat_hw_lang'' style=''display:none;''>has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="5481b3892a8e0b7d660e5455bbcc5f35.png" encfilename="5481b3892a8e0b7d660e5455bbcc5f35.png" mediatype="1"  href="//studycollab.com/chat/plugins/handwrite/download.php?file=5481b3892a8e0b7d660e5455bbcc5f35.png&amp;unencryptedfilename=5481b3892a8e0b7d660e5455bbcc5f35.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/chat/writable/handwrite/uploads/5481b3892a8e0b7d660e5455bbcc5f35.png" border="0" height="90" width="134"></a>', 1493319283, 1, 0, NULL),
(1105, 21, 24, 'has successfully shared his/her whiteboard.', 1493319607, 1, 2, NULL),
(1106, 21, 24, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''21'' random=''1493319618'' room=''e5607b80e83fba1cf0a7bbaa26f5c38a'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''21'',''1493319618'',''e5607b80e83fba1cf0a7bbaa26f5c38a'');">Click here to view</a> or simply ignore this message.', 1493319607, 1, 1, NULL),
(1107, 21, 24, 'has successfully shared his/her whiteboard.', 1493319708, 1, 2, NULL),
(1108, 21, 24, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''21'' random=''1493319719'' room=''66b10dfd293c6c0973c127af08e176f9'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''21'',''1493319719'',''66b10dfd293c6c0973c127af08e176f9'');">Click here to view</a> or simply ignore this message.', 1493319708, 1, 1, NULL),
(1109, 21, 24, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''21'' grp=''3c59dc048e8850243be8079a5c74d0791ff1de774005f8da13f42943881c655f'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''21'',''3c59dc048e8850243be8079a5c74d0791ff1de774005f8da13f42943881c655f'');">Click here to view his/her screen</a> or simply ignore this message.', 1493319745, 1, 1, NULL),
(1110, 21, 24, 'has successfully shared his/her screen.', 1493319746, 1, 2, NULL),
(1111, 21, 24, 'has sent you an audio chat request. <a class=''audiochat_link_657d296e862854893c37d0b26bdde0ff acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''21'',''657d296e862854893c37d0b26bdde0ff'');" href=''javascript:void(0);'' to=''21'' caller='''' grp=''657d296e862854893c37d0b26bdde0ff'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_657d296e862854893c37d0b26bdde0ff'' onclick="javascript:jqcc.ccaudiochat.reject_call(''21'',''657d296e862854893c37d0b26bdde0ff'');">click here.</a>You can also simply ignore this message.', 1493319882, 1, 1, NULL),
(1112, 21, 24, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_657d296e862854893c37d0b26bdde0ff'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''24'',''657d296e862854893c37d0b26bdde0ff'');">click here.</a>', 1493319883, 1, 2, NULL),
(1113, 21, 24, 'has sent you an audio chat request. <a class=''audiochat_link_657d296e862854893c37d0b26bdde0ff acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''21'',''657d296e862854893c37d0b26bdde0ff'');" href=''javascript:void(0);'' to=''21'' caller='''' grp=''657d296e862854893c37d0b26bdde0ff'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_657d296e862854893c37d0b26bdde0ff'' onclick="javascript:jqcc.ccaudiochat.reject_call(''21'',''657d296e862854893c37d0b26bdde0ff'');">click here.</a>You can also simply ignore this message.', 1493319894, 1, 1, NULL),
(1114, 21, 24, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_657d296e862854893c37d0b26bdde0ff'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''24'',''657d296e862854893c37d0b26bdde0ff'');">click here.</a>', 1493319895, 1, 2, NULL),
(1115, 21, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''66f8b6aaf63014cc857ead64aa69bab0'');"|avchat_webaction=initiate|66f8b6aaf63014cc857ead64aa69bab0|', 1494049871, 1, 1, NULL),
(1116, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_66f8b6aaf63014cc857ead64aa69bab0_0__2', 1494049872, 1, 2, NULL),
(1117, 21, 4, 'has sent you an audio chat request. <a class=''audiochat_link_c52429c2d4c5c497795e1cce329feba8 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''21'',''c52429c2d4c5c497795e1cce329feba8'');" href=''javascript:void(0);'' to=''21'' caller='''' grp=''c52429c2d4c5c497795e1cce329feba8'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_c52429c2d4c5c497795e1cce329feba8'' onclick="javascript:jqcc.ccaudiochat.reject_call(''21'',''c52429c2d4c5c497795e1cce329feba8'');">click here.</a>You can also simply ignore this message.', 1494049890, 1, 1, NULL),
(1118, 21, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_c52429c2d4c5c497795e1cce329feba8'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''c52429c2d4c5c497795e1cce329feba8'');">click here.</a>', 1494049891, 1, 2, NULL),
(1119, 21, 4, 'Hi Bala', 1494049942, 1, 0, NULL),
(1120, 21, 4, 'has sent you an audio chat request. <a class=''audiochat_link_c52429c2d4c5c497795e1cce329feba8 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''21'',''c52429c2d4c5c497795e1cce329feba8'');" href=''javascript:void(0);'' to=''21'' caller='''' grp=''c52429c2d4c5c497795e1cce329feba8'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_c52429c2d4c5c497795e1cce329feba8'' onclick="javascript:jqcc.ccaudiochat.reject_call(''21'',''c52429c2d4c5c497795e1cce329feba8'');">click here.</a>You can also simply ignore this message.', 1494049950, 1, 1, NULL),
(1121, 21, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_c52429c2d4c5c497795e1cce329feba8'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''c52429c2d4c5c497795e1cce329feba8'');">click here.</a>', 1494049951, 1, 2, NULL),
(1122, 21, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''66f8b6aaf63014cc857ead64aa69bab0'');"|avchat_webaction=initiate|66f8b6aaf63014cc857ead64aa69bab0|', 1494050054, 1, 1, NULL),
(1123, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_66f8b6aaf63014cc857ead64aa69bab0_0__2', 1494050055, 1, 2, NULL),
(1124, 21, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''66f8b6aaf63014cc857ead64aa69bab0'');"|avchat_webaction=initiate|66f8b6aaf63014cc857ead64aa69bab0|', 1494050080, 1, 1, NULL),
(1125, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_66f8b6aaf63014cc857ead64aa69bab0_0__2', 1494050081, 1, 2, NULL),
(1126, 47, 73, 'has sent you an audio chat request. <a class=''audiochat_link_94f7c5fba55d3eb8421e9cc599c353aa acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''47'',''94f7c5fba55d3eb8421e9cc599c353aa'');" href=''javascript:void(0);'' to=''47'' caller='''' grp=''94f7c5fba55d3eb8421e9cc599c353aa'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_94f7c5fba55d3eb8421e9cc599c353aa'' onclick="javascript:jqcc.ccaudiochat.reject_call(''47'',''94f7c5fba55d3eb8421e9cc599c353aa'');">click here.</a>You can also simply ignore this message.', 1494351866, 0, 1, NULL),
(1127, 47, 73, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_94f7c5fba55d3eb8421e9cc599c353aa'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''73'',''94f7c5fba55d3eb8421e9cc599c353aa'');">click here.</a>', 1494351868, 0, 2, NULL),
(1128, 4, 47, 'Hi Manish', 1494566637, 1, 0, NULL),
(1129, 4, 47, 'its working fine', 1494566650, 1, 0, NULL),
(1130, 47, 4, 'Hello', 1494567022, 1, 0, NULL),
(1131, 47, 4, 'App integration is not working', 1494567036, 1, 0, NULL),
(1132, 4, 47, 'only web', 1494567052, 1, 0, NULL),
(1133, 47, 4, 'yes', 1494567150, 1, 0, NULL),
(1134, 47, 4, 'hello', 1494586067, 1, 0, NULL),
(1135, 47, 4, 'how are you?', 1494586081, 1, 0, NULL),
(1136, 47, 48, 'Hi', 1494586090, 1, 0, NULL),
(1137, 47, 4, 'hey', 1494586516, 1, 0, NULL),
(1138, 47, 4, 'i think chat is working now', 1494586527, 1, 0, NULL),
(1139, 47, 48, 'has successfully shared his/her whiteboard.', 1494586540, 1, 2, NULL),
(1140, 47, 48, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''47'' random=''1494586540026'' room=''a66f088686eb554f02810c83b66f32fa'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''47'',''1494586540026'',''a66f088686eb554f02810c83b66f32fa'');">Click here to view</a> or simply ignore this message.', 1494586541, 1, 1, NULL),
(1141, 47, 48, '<div style=''display:none;''>has sent a file</div><br/><a class="imagemessage mediamessage" pluginname ="filetransfer" filename="VID20170512162608.mp4" encfilename="261043e3581ce4360c4add54bc702d1f.mp4" mediatype="2" href="//www.studycollab.com/chat/plugins/filetransfer/download.php?file=261043e3581ce4360c4add54bc702d1f.mp4&amp;unencryptedfilename=VID20170512162608.mp4"><div class="cometchat_filevideo">(VID20170512162608.mp4)</div><img class="file_video" type="video" src="/chat/images/videoicon.png"/></a>', 1494586579, 1, 0, NULL),
(1142, 47, 21, 'hey man', 1494587586, 1, 0, NULL),
(1143, 47, 21, 'how are you?', 1494587594, 1, 0, NULL),
(1144, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597752, 0, 1, NULL),
(1145, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597752, 0, 1, NULL),
(1146, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597753, 0, 1, NULL),
(1147, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597754, 0, 1, NULL),
(1148, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597754, 1, 1, NULL);
INSERT INTO `cometchat` (`id`, `from`, `to`, `message`, `sent`, `read`, `direction`, `custom_data`) VALUES
(1149, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597755, 1, 1, NULL),
(1150, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597755, 1, 1, NULL),
(1151, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597756, 1, 1, NULL),
(1152, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597757, 1, 1, NULL),
(1153, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597758, 1, 1, NULL),
(1154, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597758, 0, 1, NULL),
(1155, 48, 1, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597761, 1, 1, NULL),
(1156, 48, 1, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597761, 1, 1, NULL),
(1157, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597761, 1, 1, NULL),
(1158, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597761, 1, 1, NULL),
(1159, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597762, 0, 1, NULL),
(1160, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597763, 0, 1, NULL),
(1161, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597763, 0, 1, NULL),
(1162, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597763, 0, 1, NULL),
(1163, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597763, 0, 1, NULL),
(1164, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597763, 0, 1, NULL),
(1165, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597764, 0, 1, NULL),
(1166, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597765, 1, 1, NULL),
(1167, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597765, 1, 1, NULL),
(1168, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1494597765, 1, 1, NULL),
(1169, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1494597765, 1, 1, NULL),
(1170, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1494597765, 1, 1, NULL),
(1171, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1494597765, 1, 1, NULL),
(1172, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597765, 1, 1, NULL),
(1173, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597765, 1, 1, NULL),
(1174, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597766, 1, 1, NULL),
(1175, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597767, 1, 1, NULL),
(1176, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597768, 1, 1, NULL),
(1177, 48, 55, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597768, 1, 1, NULL),
(1178, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597768, 1, 1, NULL),
(1179, 48, 52, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1494597768, 1, 1, NULL),
(1180, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597769, 1, 1, NULL),
(1181, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597772, 1, 1, NULL),
(1182, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597773, 1, 1, NULL),
(1183, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597773, 1, 1, NULL),
(1184, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597773, 1, 1, NULL),
(1185, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597773, 1, 1, NULL),
(1186, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597773, 1, 1, NULL),
(1187, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1494597775, 1, 1, NULL),
(1188, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1494597779, 1, 1, NULL),
(1189, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1494597779, 1, 1, NULL),
(1190, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1494597779, 1, 1, NULL),
(1191, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1494597779, 1, 1, NULL),
(1192, 48, 52, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1494597780, 1, 1, NULL),
(1193, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1494597790, 1, 1, NULL),
(1194, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1494597790, 1, 1, NULL),
(1195, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1494597791, 1, 1, NULL),
(1196, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1494597791, 1, 1, NULL),
(1197, 48, 52, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1494597793, 1, 1, NULL),
(1198, 52, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''dc1498ffac117014fde021149d4634c2'');"|avchat_webaction=initiate|dc1498ffac117014fde021149d4634c2|', 1494649537, 1, 1, NULL),
(1199, 52, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_dc1498ffac117014fde021149d4634c2_0__2', 1494649538, 1, 2, NULL),
(1200, 52, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''dc1498ffac117014fde021149d4634c2'');"|avchat_webaction=initiate|dc1498ffac117014fde021149d4634c2|', 1494649547, 1, 1, NULL),
(1201, 52, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_dc1498ffac117014fde021149d4634c2_0__2', 1494649548, 1, 2, NULL),
(1202, 52, 1, 'has sent you an audio chat request. <a class=''audiochat_link_5111b2126e1ec598c8ceee5f17911751 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''52'',''5111b2126e1ec598c8ceee5f17911751'');" href=''javascript:void(0);'' to=''52'' caller='''' grp=''5111b2126e1ec598c8ceee5f17911751'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_5111b2126e1ec598c8ceee5f17911751'' onclick="javascript:jqcc.ccaudiochat.reject_call(''52'',''5111b2126e1ec598c8ceee5f17911751'');">click here.</a>You can also simply ignore this message.', 1494649549, 1, 1, NULL),
(1203, 52, 1, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_5111b2126e1ec598c8ceee5f17911751'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''1'',''5111b2126e1ec598c8ceee5f17911751'');">click here.</a>', 1494649550, 1, 2, NULL),
(1204, 52, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''dc1498ffac117014fde021149d4634c2'');"|avchat_webaction=initiate|dc1498ffac117014fde021149d4634c2|', 1494649567, 1, 1, NULL),
(1205, 52, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_dc1498ffac117014fde021149d4634c2_0__2', 1494649568, 1, 2, NULL),
(1206, 1, 4, 'has successfully shared his/her whiteboard.', 1494649568, 1, 2, NULL),
(1207, 1, 4, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''1'' random=''1494649568152'' room=''4339e7cf9370eede1bfbaa3e7e05dc3f'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''1'',''1494649568152'',''4339e7cf9370eede1bfbaa3e7e05dc3f'');">Click here to view</a> or simply ignore this message.', 1494649568, 1, 1, NULL),
(1208, 52, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''dc1498ffac117014fde021149d4634c2'');"|avchat_webaction=initiate|dc1498ffac117014fde021149d4634c2|', 1494649586, 1, 1, NULL),
(1209, 52, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_dc1498ffac117014fde021149d4634c2_0__2', 1494649587, 1, 2, NULL),
(1210, 4, 1, 'is now viewing your whiteboard.', 1494649598, 1, 1, NULL),
(1211, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1494649818, 1, 1, NULL),
(1212, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1494649819, 1, 2, NULL),
(1213, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1494649844, 1, 2, NULL),
(1214, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1494649844, 1, 1, NULL),
(1215, 4, 1, 'hi', 1494649848, 1, 0, NULL),
(1216, 4, 1, 'hi', 1494649851, 1, 0, NULL),
(1217, 4, 1, 'hi', 1494649863, 1, 0, NULL),
(1218, 1, 4, 'Hi', 1494649872, 1, 0, NULL),
(1219, 1, 4, '<div style=''display:none;''>has sent a file</div><br/><a class="imagemessage mediamessage" pluginname ="filetransfer" filename="20170513100123.aac" encfilename="9831e8f32f32f822a90fbc85c87da176" mediatype="3" href="//www.studycollab.com/chat/plugins/filetransfer/download.php?file=9831e8f32f32f822a90fbc85c87da176&amp;unencryptedfilename=20170513100123.aac"><div class="cometchat_fileaudio">(20170513100123.aac)</div><img class="file_audio" type="audio" src="/chat/images/audioicon.png"/></a>', 1494649903, 1, 0, NULL),
(1220, 52, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''dc1498ffac117014fde021149d4634c2'');"|avchat_webaction=initiate|dc1498ffac117014fde021149d4634c2|', 1494650048, 1, 1, NULL),
(1221, 52, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_dc1498ffac117014fde021149d4634c2_0__2', 1494650049, 1, 2, NULL),
(1222, 52, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_dc1498ffac117014fde021149d4634c2', 1494650073, 1, 2, NULL),
(1223, 52, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_dc1498ffac117014fde021149d4634c2', 1494650073, 1, 1, NULL),
(1224, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1494650075, 1, 1, NULL),
(1225, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1494650076, 1, 2, NULL),
(1226, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1494651429, 1, 2, NULL),
(1227, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1494651429, 1, 1, NULL),
(1228, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1494651497, 1, 1, NULL),
(1229, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1494651498, 1, 2, NULL),
(1230, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1494651508, 1, 2, NULL),
(1231, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1494651508, 1, 1, NULL),
(1232, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1494652334, 1, 1, NULL),
(1233, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1494652335, 1, 2, NULL),
(1234, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1494652340, 1, 2, NULL),
(1235, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1494652340, 1, 1, NULL),
(1236, 47, 4, 'Hi', 1494917958, 1, 0, NULL),
(1237, 47, 4, 'You have any queries on mobile SDK?', 1494917973, 1, 0, NULL),
(1238, 47, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''47'',''283ccd578aa1df2371f264e85bbef764'');"|avchat_webaction=initiate|283ccd578aa1df2371f264e85bbef764|', 1494936440, 1, 1, NULL),
(1239, 47, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_283ccd578aa1df2371f264e85bbef764_0__2', 1494936441, 1, 2, NULL),
(1240, 47, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1494936443, 1, 2, NULL),
(1241, 47, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1494936443, 1, 1, NULL),
(1242, 47, 4, 'has sent you an audio chat request. <a class=''audiochat_link_e7aaf9d1f7f4ff8c8d9bab5131202ddb acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''47'',''e7aaf9d1f7f4ff8c8d9bab5131202ddb'');" href=''javascript:void(0);'' to=''47'' caller='''' grp=''e7aaf9d1f7f4ff8c8d9bab5131202ddb'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_e7aaf9d1f7f4ff8c8d9bab5131202ddb'' onclick="javascript:jqcc.ccaudiochat.reject_call(''47'',''e7aaf9d1f7f4ff8c8d9bab5131202ddb'');">click here.</a>You can also simply ignore this message.', 1495013230, 1, 1, NULL),
(1243, 47, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_e7aaf9d1f7f4ff8c8d9bab5131202ddb'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''e7aaf9d1f7f4ff8c8d9bab5131202ddb'');">click here.</a>', 1495013231, 1, 2, NULL),
(1244, 47, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''47'',''283ccd578aa1df2371f264e85bbef764'');"|avchat_webaction=initiate|283ccd578aa1df2371f264e85bbef764|', 1495013238, 1, 1, NULL),
(1245, 47, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_283ccd578aa1df2371f264e85bbef764_0__2', 1495013240, 1, 2, NULL),
(1246, 47, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_283ccd578aa1df2371f264e85bbef764', 1495013247, 1, 2, NULL),
(1247, 47, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_283ccd578aa1df2371f264e85bbef764', 1495013247, 1, 1, NULL),
(1248, 47, 4, 'has sent you an audio chat request. <a class=''audiochat_link_e7aaf9d1f7f4ff8c8d9bab5131202ddb acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''47'',''e7aaf9d1f7f4ff8c8d9bab5131202ddb'');" href=''javascript:void(0);'' to=''47'' caller='''' grp=''e7aaf9d1f7f4ff8c8d9bab5131202ddb'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_e7aaf9d1f7f4ff8c8d9bab5131202ddb'' onclick="javascript:jqcc.ccaudiochat.reject_call(''47'',''e7aaf9d1f7f4ff8c8d9bab5131202ddb'');">click here.</a>You can also simply ignore this message.', 1495128592, 1, 1, NULL),
(1249, 47, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_e7aaf9d1f7f4ff8c8d9bab5131202ddb'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''e7aaf9d1f7f4ff8c8d9bab5131202ddb'');">click here.</a>', 1495128593, 1, 2, NULL),
(1250, 47, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_', 1495128602, 1, 2, NULL),
(1251, 47, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_', 1495128602, 1, 1, NULL),
(1252, 47, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''47'',''283ccd578aa1df2371f264e85bbef764'');"|avchat_webaction=initiate|283ccd578aa1df2371f264e85bbef764|', 1495128606, 1, 1, NULL),
(1253, 47, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_283ccd578aa1df2371f264e85bbef764_0__2', 1495128607, 1, 2, NULL),
(1254, 47, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1495128612, 1, 2, NULL),
(1255, 47, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1495128612, 1, 1, NULL),
(1256, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458209, 0, 1, NULL),
(1257, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458210, 0, 1, NULL),
(1258, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458210, 0, 1, NULL),
(1259, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458210, 1, 1, NULL),
(1260, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458210, 1, 1, NULL),
(1261, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458210, 1, 1, NULL),
(1262, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458211, 1, 1, NULL),
(1263, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458212, 1, 1, NULL),
(1264, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458212, 1, 1, NULL),
(1265, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458212, 0, 1, NULL),
(1266, 48, 1, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458212, 1, 1, NULL),
(1267, 48, 1, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458213, 1, 1, NULL),
(1268, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458213, 1, 1, NULL),
(1269, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458213, 1, 1, NULL),
(1270, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458213, 0, 1, NULL),
(1271, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458213, 0, 1, NULL),
(1272, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458213, 0, 1, NULL),
(1273, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458213, 0, 1, NULL),
(1274, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458214, 0, 1, NULL),
(1275, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458214, 0, 1, NULL),
(1276, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458214, 0, 1, NULL),
(1277, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458214, 1, 1, NULL),
(1278, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458214, 1, 1, NULL),
(1279, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1495458214, 1, 1, NULL),
(1280, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1495458214, 1, 1, NULL),
(1281, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1495458215, 1, 1, NULL),
(1282, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1495458215, 1, 1, NULL),
(1283, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458215, 1, 1, NULL),
(1284, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458215, 1, 1, NULL),
(1285, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458215, 1, 1, NULL),
(1286, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458215, 1, 1, NULL),
(1287, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458215, 1, 1, NULL),
(1288, 48, 55, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458216, 1, 1, NULL),
(1289, 48, 52, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458216, 1, 1, NULL),
(1290, 48, 52, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1495458217, 1, 1, NULL),
(1291, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458217, 1, 1, NULL),
(1292, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458217, 1, 1, NULL),
(1293, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458217, 1, 1, NULL),
(1294, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458218, 1, 1, NULL),
(1295, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458218, 1, 1, NULL),
(1296, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458218, 1, 1, NULL),
(1297, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458218, 1, 1, NULL),
(1298, 48, 4, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458219, 1, 1, NULL),
(1299, 48, 62, 'CC^CONTROL_PLUGIN_AVCHAT_BUSYCALL_', 1495458219, 0, 1, NULL),
(1300, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1495458223, 1, 1, NULL),
(1301, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1495458223, 1, 1, NULL),
(1302, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1495458223, 1, 1, NULL),
(1303, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1495458223, 1, 1, NULL),
(1304, 48, 52, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1495458224, 1, 1, NULL),
(1305, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1495458225, 1, 1, NULL),
(1306, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1495458225, 1, 1, NULL),
(1307, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1495458225, 1, 1, NULL),
(1308, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1495458225, 1, 1, NULL),
(1309, 48, 52, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1495458228, 1, 1, NULL),
(1310, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1495458231, 1, 1, NULL),
(1311, 48, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1495458231, 1, 1, NULL),
(1312, 48, 52, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1495458232, 1, 1, NULL),
(1313, 48, 52, 'CC^CONTROL_PLUGIN_AUDIOCHAT_BUSYCALL_', 1495458234, 1, 1, NULL),
(1314, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1495523871, 1, 1, NULL),
(1315, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1495523872, 1, 2, NULL),
(1316, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1495523892, 1, 2, NULL),
(1317, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1495523892, 1, 1, NULL),
(1318, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1495523921, 1, 1, NULL),
(1319, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1495523922, 1, 2, NULL),
(1320, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=acceptcall|ec23fc99fbd87b2ffdeba936c32b01db', 1495523929, 1, 1, NULL),
(1321, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_8538eded348ebc8b0ffda649016802a5', 1495523982, 1, 2, NULL),
(1322, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_8538eded348ebc8b0ffda649016802a5', 1495523982, 1, 1, NULL),
(1323, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1495524003, 1, 2, NULL),
(1324, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1495524003, 1, 1, NULL),
(1325, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1495524201, 1, 1, NULL),
(1326, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1495524202, 1, 2, NULL),
(1327, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=acceptcall|ec23fc99fbd87b2ffdeba936c32b01db', 1495524211, 1, 1, NULL),
(1328, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_8538eded348ebc8b0ffda649016802a5', 1495524361, 1, 2, NULL),
(1329, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_8538eded348ebc8b0ffda649016802a5', 1495524361, 1, 1, NULL),
(1330, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1496136811, 1, 1, NULL),
(1331, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1496136813, 1, 2, NULL),
(1332, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1496136842, 1, 2, NULL),
(1333, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1496136842, 1, 1, NULL),
(1334, 21, 25, 'has sent you an audio chat request. <a class=''audiochat_link_e68126c48f629a705295c6207cbc64e0 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''21'',''e68126c48f629a705295c6207cbc64e0'');" href=''javascript:void(0);'' to=''21'' caller='''' grp=''e68126c48f629a705295c6207cbc64e0'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.reject_call(''21'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>You can also simply ignore this message.', 1497150553, 1, 1, NULL),
(1335, 21, 25, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''25'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>', 1497150554, 1, 2, NULL),
(1336, 25, 21, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''25'',''e68126c48f629a705295c6207cbc64e0'');" to=''25'' caller='''' grp=''e68126c48f629a705295c6207cbc64e0'' >Click here to launch the audio chat window</a>', 1497150585, 1, 1, NULL),
(1337, 21, 25, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3ce0db095da4da29d85c3d4535641bb5', 1497150680, 1, 2, NULL),
(1338, 21, 25, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3ce0db095da4da29d85c3d4535641bb5', 1497150680, 1, 1, NULL),
(1339, 25, 21, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3ce0db095da4da29d85c3d4535641bb5', 1497150680, 1, 2, NULL),
(1340, 25, 21, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3ce0db095da4da29d85c3d4535641bb5', 1497150680, 1, 1, NULL),
(1341, 25, 21, 'has sent you an audio chat request. <a class=''audiochat_link_e68126c48f629a705295c6207cbc64e0 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''25'',''e68126c48f629a705295c6207cbc64e0'');" href=''javascript:void(0);'' to=''25'' caller='''' grp=''e68126c48f629a705295c6207cbc64e0'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.reject_call(''25'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>You can also simply ignore this message.', 1497150771, 1, 1, NULL),
(1342, 25, 21, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''21'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>', 1497150772, 1, 2, NULL),
(1343, 25, 21, 'has sent you an audio chat request. <a class=''audiochat_link_e68126c48f629a705295c6207cbc64e0 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''25'',''e68126c48f629a705295c6207cbc64e0'');" href=''javascript:void(0);'' to=''25'' caller='''' grp=''e68126c48f629a705295c6207cbc64e0'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.reject_call(''25'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>You can also simply ignore this message.', 1497151109, 1, 1, NULL),
(1344, 25, 21, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''21'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>', 1497151110, 1, 2, NULL),
(1345, 21, 25, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''21'',''e68126c48f629a705295c6207cbc64e0'');" to=''21'' caller='''' grp=''e68126c48f629a705295c6207cbc64e0'' >Click here to launch the audio chat window</a>', 1497151123, 1, 1, NULL),
(1346, 21, 25, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3ce0db095da4da29d85c3d4535641bb5', 1497151140, 1, 2, NULL),
(1347, 21, 25, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3ce0db095da4da29d85c3d4535641bb5', 1497151140, 1, 1, NULL),
(1348, 25, 21, 'mobileAction="javascript:jqcc.ccavchat.accept(''25'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1497151188, 1, 1, NULL),
(1349, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1497151189, 1, 2, NULL),
(1350, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=acceptcall|eb12c8eeb2478cbe3ed428a78cbb9be0', 1497151194, 1, 1, NULL),
(1351, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1497151225, 1, 2, NULL),
(1352, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1497151225, 1, 1, NULL),
(1353, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1497151227, 1, 1, NULL),
(1354, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1497151227, 1, 2, NULL),
(1355, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_eb12c8eeb2478cbe3ed428a78cbb9be0', 1497151230, 1, 2, NULL),
(1356, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_eb12c8eeb2478cbe3ed428a78cbb9be0', 1497151230, 1, 1, NULL),
(1357, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1497151243, 1, 1, NULL),
(1358, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1497151244, 1, 2, NULL),
(1359, 25, 21, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''25'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=acceptcall|eb12c8eeb2478cbe3ed428a78cbb9be0', 1497151249, 1, 1, NULL),
(1360, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_eb12c8eeb2478cbe3ed428a78cbb9be0', 1497151267, 1, 2, NULL),
(1361, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_eb12c8eeb2478cbe3ed428a78cbb9be0', 1497151267, 1, 1, NULL),
(1362, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1497151268, 1, 1, NULL),
(1363, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1497151269, 1, 2, NULL),
(1364, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1497151275, 1, 2, NULL),
(1365, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1497151275, 1, 1, NULL),
(1366, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_eb12c8eeb2478cbe3ed428a78cbb9be0', 1497151277, 1, 1, NULL),
(1367, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1497151284, 1, 1, NULL),
(1368, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1497151285, 1, 2, NULL),
(1369, 25, 21, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''25'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=acceptcall|eb12c8eeb2478cbe3ed428a78cbb9be0', 1497151287, 1, 1, NULL),
(1370, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1497151297, 1, 2, NULL),
(1371, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1497151297, 1, 1, NULL),
(1372, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1497151299, 1, 2, NULL),
(1373, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1497151299, 1, 1, NULL),
(1374, 25, 21, 'mobileAction="javascript:jqcc.ccavchat.accept(''25'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1497151302, 1, 1, NULL),
(1375, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1497151303, 1, 2, NULL),
(1376, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=acceptcall|eb12c8eeb2478cbe3ed428a78cbb9be0', 1497151309, 1, 1, NULL),
(1377, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_eb12c8eeb2478cbe3ed428a78cbb9be0', 1497151315, 1, 1, NULL),
(1378, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1497151333, 1, 2, NULL),
(1379, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1497151333, 1, 2, NULL),
(1380, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1497151333, 1, 1, NULL),
(1381, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1497151333, 1, 1, NULL),
(1382, 25, 21, 'mobileAction="javascript:jqcc.ccavchat.accept(''25'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1497151338, 1, 1, NULL),
(1383, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1497151339, 1, 2, NULL),
(1384, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=acceptcall|eb12c8eeb2478cbe3ed428a78cbb9be0', 1497151342, 1, 1, NULL),
(1385, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1497151365, 1, 2, NULL),
(1386, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1497151365, 1, 1, NULL),
(1387, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1497151368, 1, 1, NULL),
(1388, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1497151369, 1, 2, NULL),
(1389, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_eb12c8eeb2478cbe3ed428a78cbb9be0', 1497151370, 1, 1, NULL),
(1390, 25, 21, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''25'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=acceptcall|eb12c8eeb2478cbe3ed428a78cbb9be0', 1497151372, 1, 1, NULL),
(1391, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1497151381, 1, 2, NULL),
(1392, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1497151381, 1, 1, NULL),
(1393, 25, 21, 'mobileAction="javascript:jqcc.ccavchat.accept(''25'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1497151386, 1, 1, NULL),
(1394, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1497151387, 1, 2, NULL),
(1395, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=acceptcall|eb12c8eeb2478cbe3ed428a78cbb9be0', 1497151389, 1, 1, NULL),
(1396, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_eb12c8eeb2478cbe3ed428a78cbb9be0', 1497151399, 1, 1, NULL),
(1397, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1497151406, 1, 2, NULL),
(1398, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1497151406, 1, 1, NULL),
(1399, 25, 21, 'mobileAction="javascript:jqcc.ccavchat.accept(''25'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1497151456, 1, 1, NULL),
(1400, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1497151457, 1, 2, NULL),
(1401, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=acceptcall|eb12c8eeb2478cbe3ed428a78cbb9be0', 1497151470, 1, 1, NULL),
(1402, 21, 25, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''21'' grp=''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''21'',''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'');">Click here to view his/her screen</a> or simply ignore this message.', 1497151555, 1, 1, NULL),
(1403, 21, 25, 'has successfully shared his/her screen.', 1497151556, 1, 2, NULL),
(1404, 21, 25, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''21'' grp=''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''21'',''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'');">Click here to view his/her screen</a> or simply ignore this message.', 1497151590, 1, 1, NULL),
(1405, 21, 25, 'has successfully shared his/her screen.', 1497151592, 1, 2, NULL),
(1406, 21, 25, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''21'' grp=''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''21'',''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'');">Click here to view his/her screen</a> or simply ignore this message.', 1497151640, 1, 1, NULL),
(1407, 21, 25, 'has successfully shared his/her screen.', 1497151641, 1, 2, NULL),
(1408, 21, 25, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''21'' grp=''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''21'',''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'');">Click here to view his/her screen</a> or simply ignore this message.', 1497151779, 1, 1, NULL),
(1409, 21, 25, 'has successfully shared his/her screen.', 1497151780, 1, 2, NULL),
(1410, 25, 21, 'is now viewing your screen.', 1497151897, 1, 1, NULL),
(1411, 21, 25, 'has sent you an audio chat request. <a class=''audiochat_link_e68126c48f629a705295c6207cbc64e0 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''21'',''e68126c48f629a705295c6207cbc64e0'');" href=''javascript:void(0);'' to=''21'' caller='''' grp=''e68126c48f629a705295c6207cbc64e0'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.reject_call(''21'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>You can also simply ignore this message.', 1497151923, 1, 1, NULL),
(1412, 21, 25, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''25'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>', 1497151924, 1, 2, NULL),
(1413, 25, 21, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''25'',''e68126c48f629a705295c6207cbc64e0'');" to=''25'' caller='''' grp=''e68126c48f629a705295c6207cbc64e0'' >Click here to launch the audio chat window</a>', 1497151936, 1, 1, NULL),
(1414, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1497151952, 1, 1, NULL),
(1415, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1497151953, 1, 2, NULL),
(1416, 25, 21, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3ce0db095da4da29d85c3d4535641bb5', 1497151959, 1, 2, NULL),
(1417, 25, 21, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3ce0db095da4da29d85c3d4535641bb5', 1497151959, 1, 1, NULL),
(1418, 25, 21, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''25'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=acceptcall|eb12c8eeb2478cbe3ed428a78cbb9be0', 1497151963, 1, 1, NULL),
(1419, 21, 25, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3ce0db095da4da29d85c3d4535641bb5', 1497151982, 1, 2, NULL),
(1420, 21, 25, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3ce0db095da4da29d85c3d4535641bb5', 1497151982, 1, 1, NULL),
(1421, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1497151991, 1, 1, NULL),
(1422, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1497151992, 1, 2, NULL),
(1423, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_eb12c8eeb2478cbe3ed428a78cbb9be0', 1497152023, 1, 1, NULL),
(1424, 25, 21, 'has successfully shared his/her whiteboard.', 1497152066, 1, 2, NULL),
(1425, 25, 21, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''25'' random=''1497152065'' room=''3d04549230475623f4758b6c2e0e6cf8'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''25'',''1497152065'',''3d04549230475623f4758b6c2e0e6cf8'');">Click here to view</a> or simply ignore this message.', 1497152066, 1, 1, NULL),
(1426, 21, 25, 'has successfully shared his/her whiteboard.', 1497152098, 1, 2, NULL),
(1427, 21, 25, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''21'' random=''1497152101'' room=''3d04549230475623f4758b6c2e0e6cf8'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''21'',''1497152101'',''3d04549230475623f4758b6c2e0e6cf8'');">Click here to view</a> or simply ignore this message.', 1497152098, 1, 1, NULL),
(1428, 25, 21, 'has successfully shared his/her whiteboard.', 1497152224, 1, 2, NULL),
(1429, 25, 21, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''25'' random=''1497152224'' room=''3d04549230475623f4758b6c2e0e6cf8'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''25'',''1497152224'',''3d04549230475623f4758b6c2e0e6cf8'');">Click here to view</a> or simply ignore this message.', 1497152224, 1, 1, NULL),
(1430, 21, 25, 'is now viewing your whiteboard.', 1497152234, 1, 1, NULL),
(1431, 25, 21, 'has successfully shared his/her whiteboard.', 1497152300, 1, 2, NULL),
(1432, 25, 21, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''25'' random=''1497152224'' room=''3d04549230475623f4758b6c2e0e6cf8'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''25'',''1497152224'',''3d04549230475623f4758b6c2e0e6cf8'');">Click here to view</a> or simply ignore this message.', 1497152300, 1, 1, NULL),
(1433, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1497152326, 1, 1, NULL),
(1434, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1497152326, 1, 2, NULL),
(1435, 25, 21, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''25'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=acceptcall|eb12c8eeb2478cbe3ed428a78cbb9be0', 1497152347, 1, 1, NULL),
(1436, 25, 21, 'Prini is lame', 1497152721, 1, 0, NULL),
(1437, 25, 21, 'has sent you an audio chat request. <a class=''audiochat_link_e68126c48f629a705295c6207cbc64e0 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''25'',''e68126c48f629a705295c6207cbc64e0'');" href=''javascript:void(0);'' to=''25'' caller='''' grp=''e68126c48f629a705295c6207cbc64e0'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.reject_call(''25'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>You can also simply ignore this message.', 1497154876, 1, 1, NULL),
(1438, 25, 21, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''21'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>', 1497154876, 1, 2, NULL),
(1439, 21, 25, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''21'',''e68126c48f629a705295c6207cbc64e0'');" to=''21'' caller='''' grp=''e68126c48f629a705295c6207cbc64e0'' >Click here to launch the audio chat window</a>', 1497154890, 1, 1, NULL),
(1440, 25, 21, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3ce0db095da4da29d85c3d4535641bb5', 1497154901, 1, 2, NULL),
(1441, 25, 21, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3ce0db095da4da29d85c3d4535641bb5', 1497154901, 1, 1, NULL),
(1442, 21, 25, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3ce0db095da4da29d85c3d4535641bb5', 1497162286, 1, 2, NULL),
(1443, 21, 25, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3ce0db095da4da29d85c3d4535641bb5', 1497162286, 1, 1, NULL),
(1444, 48, 36, 'Hello', 1498127505, 0, 0, NULL),
(1445, 48, 1, 'Hello', 1498128013, 1, 0, NULL),
(1446, 47, 17, 'Hi', 1498137026, 0, 0, NULL),
(1447, 47, 4, 'Hi', 1498664540, 1, 0, NULL),
(1448, 47, 4, 'How are you ?', 1498664548, 1, 0, NULL),
(1449, 47, 4, 'has sent you an audio chat request. <a class=''audiochat_link_e7aaf9d1f7f4ff8c8d9bab5131202ddb acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''47'',''e7aaf9d1f7f4ff8c8d9bab5131202ddb'');" href=''javascript:void(0);'' to=''47'' caller='''' grp=''e7aaf9d1f7f4ff8c8d9bab5131202ddb'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_e7aaf9d1f7f4ff8c8d9bab5131202ddb'' onclick="javascript:jqcc.ccaudiochat.reject_call(''47'',''e7aaf9d1f7f4ff8c8d9bab5131202ddb'');">click here.</a>You can also simply ignore this message.', 1498664555, 1, 1, NULL),
(1450, 47, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_e7aaf9d1f7f4ff8c8d9bab5131202ddb'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''e7aaf9d1f7f4ff8c8d9bab5131202ddb'');">click here.</a>', 1498664556, 1, 2, NULL),
(1451, 47, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_', 1498664565, 1, 2, NULL),
(1452, 47, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_', 1498664565, 1, 1, NULL),
(1453, 47, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''47'',''283ccd578aa1df2371f264e85bbef764'');"|avchat_webaction=initiate|283ccd578aa1df2371f264e85bbef764|', 1498664570, 1, 1, NULL),
(1454, 47, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_283ccd578aa1df2371f264e85bbef764_0__2', 1498664571, 1, 2, NULL),
(1455, 47, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1498664578, 1, 2, NULL),
(1456, 47, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1498664578, 1, 1, NULL),
(1457, 47, 4, 'Hi', 1498716842, 1, 0, NULL),
(1458, 47, 4, 'How are you bala?', 1498716851, 1, 0, NULL),
(1459, 25, 28, 'Hi', 1502994775, 0, 0, NULL),
(1460, 25, 28, '<div class=''cometchat_hw_lang'' style=''display:none;''>has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="7f01c7d287ebc7980c9ee1d46d620f3b.png" encfilename="7f01c7d287ebc7980c9ee1d46d620f3b.png" mediatype="1"  href="//studycollab.com/chat/plugins/handwrite/download.php?file=7f01c7d287ebc7980c9ee1d46d620f3b.png&amp;unencryptedfilename=7f01c7d287ebc7980c9ee1d46d620f3b.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/chat/writable/handwrite/uploads/7f01c7d287ebc7980c9ee1d46d620f3b.png" border="0" height="90" width="134"></a>', 1502994802, 0, 0, NULL),
(1461, 25, 28, '<div class=''cometchat_hw_lang'' style=''display:none;''>has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="a2b5a59be0168181b1202810ab81dcfe.png" encfilename="a2b5a59be0168181b1202810ab81dcfe.png" mediatype="1"  href="//studycollab.com/chat/plugins/handwrite/download.php?file=a2b5a59be0168181b1202810ab81dcfe.png&amp;unencryptedfilename=a2b5a59be0168181b1202810ab81dcfe.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/chat/writable/handwrite/uploads/a2b5a59be0168181b1202810ab81dcfe.png" border="0" height="90" width="134"></a>', 1502994803, 0, 0, NULL),
(1462, 25, 28, '<div class=''cometchat_hw_lang'' style=''display:none;''>has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="84e833e677b54d68fbf82d93b01efdfd.png" encfilename="84e833e677b54d68fbf82d93b01efdfd.png" mediatype="1"  href="//studycollab.com/chat/plugins/handwrite/download.php?file=84e833e677b54d68fbf82d93b01efdfd.png&amp;unencryptedfilename=84e833e677b54d68fbf82d93b01efdfd.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/chat/writable/handwrite/uploads/84e833e677b54d68fbf82d93b01efdfd.png" border="0" height="90" width="134"></a>', 1502994804, 0, 0, NULL),
(1463, 25, 28, '<div class=''cometchat_hw_lang'' style=''display:none;''>has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="89ac07ec12ebc82bf1defb5a583245a3.png" encfilename="89ac07ec12ebc82bf1defb5a583245a3.png" mediatype="1"  href="//studycollab.com/chat/plugins/handwrite/download.php?file=89ac07ec12ebc82bf1defb5a583245a3.png&amp;unencryptedfilename=89ac07ec12ebc82bf1defb5a583245a3.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/chat/writable/handwrite/uploads/89ac07ec12ebc82bf1defb5a583245a3.png" border="0" height="90" width="134"></a>', 1502994818, 0, 0, NULL),
(1464, 21, 24, '<div class=''cometchat_hw_lang'' style=''display:none;''>has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="0c8dcc293737842401f81aac8b6d8ab8.png" encfilename="0c8dcc293737842401f81aac8b6d8ab8.png" mediatype="1"  href="//studycollab.com/chat/plugins/handwrite/download.php?file=0c8dcc293737842401f81aac8b6d8ab8.png&amp;unencryptedfilename=0c8dcc293737842401f81aac8b6d8ab8.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/chat/writable/handwrite/uploads/0c8dcc293737842401f81aac8b6d8ab8.png" border="0" height="90" width="134"></a>', 1504136176, 1, 0, NULL),
(1465, 21, 24, 'has successfully shared his/her whiteboard.', 1504136187, 1, 2, NULL),
(1466, 21, 24, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''21'' random=''1504136187'' room=''3d04549230475623f4758b6c2e0e6cf8'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''21'',''1504136187'',''3d04549230475623f4758b6c2e0e6cf8'');">Click here to view</a> or simply ignore this message.', 1504136187, 1, 1, NULL),
(1467, 21, 4, 'has successfully shared his/her whiteboard.', 1504241660, 1, 2, NULL),
(1468, 21, 4, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''21'' random=''1504241662'' room=''3d04549230475623f4758b6c2e0e6cf8'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''21'',''1504241662'',''3d04549230475623f4758b6c2e0e6cf8'');">Click here to view</a> or simply ignore this message.', 1504241660, 1, 1, NULL),
(1469, 21, 4, 'has sent you an audio chat request. <a class=''audiochat_link_c52429c2d4c5c497795e1cce329feba8 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''21'',''c52429c2d4c5c497795e1cce329feba8'');" href=''javascript:void(0);'' to=''21'' caller='''' grp=''c52429c2d4c5c497795e1cce329feba8'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_c52429c2d4c5c497795e1cce329feba8'' onclick="javascript:jqcc.ccaudiochat.reject_call(''21'',''c52429c2d4c5c497795e1cce329feba8'');">click here.</a>You can also simply ignore this message.', 1504241695, 1, 1, NULL),
(1470, 21, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_c52429c2d4c5c497795e1cce329feba8'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''c52429c2d4c5c497795e1cce329feba8'');">click here.</a>', 1504241695, 1, 2, NULL),
(1471, 21, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''66f8b6aaf63014cc857ead64aa69bab0'');"|avchat_webaction=initiate|66f8b6aaf63014cc857ead64aa69bab0|', 1504241707, 1, 1, NULL),
(1472, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_66f8b6aaf63014cc857ead64aa69bab0_0__2', 1504241708, 1, 2, NULL),
(1473, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_66f8b6aaf63014cc857ead64aa69bab0', 1504241713, 1, 2, NULL),
(1474, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_66f8b6aaf63014cc857ead64aa69bab0', 1504241713, 1, 1, NULL),
(1475, 1, 55, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''7c35473294e65eb09ed10a84e2231e1b'');"|avchat_webaction=initiate|7c35473294e65eb09ed10a84e2231e1b|', 1504678686, 1, 1, NULL),
(1476, 1, 55, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_7c35473294e65eb09ed10a84e2231e1b_0__2', 1504678687, 1, 2, NULL);
INSERT INTO `cometchat` (`id`, `from`, `to`, `message`, `sent`, `read`, `direction`, `custom_data`) VALUES
(1477, 1, 55, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_7c35473294e65eb09ed10a84e2231e1b', 1504678712, 1, 2, NULL),
(1478, 1, 55, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_7c35473294e65eb09ed10a84e2231e1b', 1504678712, 1, 1, NULL),
(1479, 1, 55, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''7c35473294e65eb09ed10a84e2231e1b'');"|avchat_webaction=initiate|7c35473294e65eb09ed10a84e2231e1b|', 1504678715, 1, 1, NULL),
(1480, 1, 55, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_7c35473294e65eb09ed10a84e2231e1b_0__2', 1504678716, 1, 2, NULL),
(1481, 1, 55, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_7c35473294e65eb09ed10a84e2231e1b', 1504678729, 1, 2, NULL),
(1482, 1, 55, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_7c35473294e65eb09ed10a84e2231e1b', 1504678729, 1, 1, NULL),
(1483, 1, 55, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''7c35473294e65eb09ed10a84e2231e1b'');"|avchat_webaction=initiate|7c35473294e65eb09ed10a84e2231e1b|', 1504678733, 1, 1, NULL),
(1484, 1, 55, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_7c35473294e65eb09ed10a84e2231e1b_0__2', 1504678734, 1, 2, NULL),
(1485, 1, 55, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_7c35473294e65eb09ed10a84e2231e1b', 1504678753, 1, 2, NULL),
(1486, 1, 55, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_7c35473294e65eb09ed10a84e2231e1b', 1504678753, 1, 1, NULL),
(1487, 1, 55, 'has sent you an audio chat request. <a class=''audiochat_link_df24aafa1315f119520816913ec88747 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''1'',''df24aafa1315f119520816913ec88747'');" href=''javascript:void(0);'' to=''1'' caller='''' grp=''df24aafa1315f119520816913ec88747'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_df24aafa1315f119520816913ec88747'' onclick="javascript:jqcc.ccaudiochat.reject_call(''1'',''df24aafa1315f119520816913ec88747'');">click here.</a>You can also simply ignore this message.', 1504678755, 1, 1, NULL),
(1488, 55, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''55'',''7c35473294e65eb09ed10a84e2231e1b'');"|avchat_webaction=initiate|7c35473294e65eb09ed10a84e2231e1b|', 1504678756, 1, 1, NULL),
(1489, 1, 55, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_df24aafa1315f119520816913ec88747'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''55'',''df24aafa1315f119520816913ec88747'');">click here.</a>', 1504678756, 1, 2, NULL),
(1490, 55, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_7c35473294e65eb09ed10a84e2231e1b_0__2', 1504678757, 1, 2, NULL),
(1491, 1, 55, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_7c35473294e65eb09ed10a84e2231e1b', 1504678763, 1, 1, NULL),
(1492, 55, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''55'',''7c35473294e65eb09ed10a84e2231e1b'');"|avchat_webaction=initiate|7c35473294e65eb09ed10a84e2231e1b|', 1504678768, 1, 1, NULL),
(1493, 55, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_7c35473294e65eb09ed10a84e2231e1b_0__2', 1504678768, 1, 2, NULL),
(1494, 1, 55, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''1'',''7c35473294e65eb09ed10a84e2231e1b'');"|avchat_webaction=acceptcall|7c35473294e65eb09ed10a84e2231e1b', 1504678776, 1, 1, NULL),
(1495, 55, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_7c35473294e65eb09ed10a84e2231e1b', 1504679069, 1, 2, NULL),
(1496, 55, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_7c35473294e65eb09ed10a84e2231e1b', 1504679069, 1, 1, NULL),
(1497, 55, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_7c35473294e65eb09ed10a84e2231e1b', 1504679073, 1, 2, NULL),
(1498, 55, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_7c35473294e65eb09ed10a84e2231e1b', 1504679073, 1, 1, NULL),
(1499, 21, 4, 'r u awake?!', 1504741387, 1, 0, NULL),
(1500, 25, 21, 'has sent you an audio chat request. <a class=''audiochat_link_e68126c48f629a705295c6207cbc64e0 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''25'',''e68126c48f629a705295c6207cbc64e0'');" href=''javascript:void(0);'' to=''25'' caller='''' grp=''e68126c48f629a705295c6207cbc64e0'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.reject_call(''25'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>You can also simply ignore this message.', 1504747149, 1, 1, NULL),
(1501, 25, 21, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''21'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>', 1504747150, 1, 2, NULL),
(1502, 21, 25, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''21'',''e68126c48f629a705295c6207cbc64e0'');" to=''21'' caller='''' grp=''e68126c48f629a705295c6207cbc64e0'' >Click here to launch the audio chat window</a>', 1504747163, 1, 1, NULL),
(1503, 25, 21, 'has sent you an audio chat request. <a class=''audiochat_link_e68126c48f629a705295c6207cbc64e0 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''25'',''e68126c48f629a705295c6207cbc64e0'');" href=''javascript:void(0);'' to=''25'' caller='''' grp=''e68126c48f629a705295c6207cbc64e0'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.reject_call(''25'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>You can also simply ignore this message.', 1504747163, 1, 1, NULL),
(1504, 25, 21, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''21'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>', 1504747164, 1, 2, NULL),
(1505, 21, 25, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3ce0db095da4da29d85c3d4535641bb5', 1504747202, 1, 2, NULL),
(1506, 21, 25, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3ce0db095da4da29d85c3d4535641bb5', 1504747202, 1, 1, NULL),
(1507, 25, 21, 'has sent you an audio chat request. <a class=''audiochat_link_e68126c48f629a705295c6207cbc64e0 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''25'',''e68126c48f629a705295c6207cbc64e0'');" href=''javascript:void(0);'' to=''25'' caller='''' grp=''e68126c48f629a705295c6207cbc64e0'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.reject_call(''25'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>You can also simply ignore this message.', 1504747203, 1, 1, NULL),
(1508, 25, 21, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''21'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>', 1504747203, 1, 2, NULL),
(1509, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1504747210, 1, 1, NULL),
(1510, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1504747211, 1, 2, NULL),
(1511, 25, 21, 'mobileAction="javascript:jqcc.ccavchat.accept(''25'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1504747212, 1, 1, NULL),
(1512, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1504747213, 1, 2, NULL),
(1513, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_eb12c8eeb2478cbe3ed428a78cbb9be0', 1504747222, 1, 2, NULL),
(1514, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_eb12c8eeb2478cbe3ed428a78cbb9be0', 1504747222, 1, 1, NULL),
(1515, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1504747228, 1, 1, NULL),
(1516, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1504747229, 1, 2, NULL),
(1517, 25, 21, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''25'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=acceptcall|eb12c8eeb2478cbe3ed428a78cbb9be0', 1504747231, 1, 1, NULL),
(1518, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1504747290, 1, 2, NULL),
(1519, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1504747290, 1, 1, NULL),
(1520, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1504747305, 1, 2, NULL),
(1521, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1504747305, 1, 1, NULL),
(1522, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1504747321, 1, 1, NULL),
(1523, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1504747322, 1, 2, NULL),
(1524, 25, 21, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''25'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=acceptcall|eb12c8eeb2478cbe3ed428a78cbb9be0', 1504747335, 1, 1, NULL),
(1525, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1504747477, 1, 2, NULL),
(1526, 25, 21, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1504747477, 1, 1, NULL),
(1527, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1504747499, 1, 1, NULL),
(1528, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1504747500, 1, 2, NULL),
(1529, 25, 21, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''25'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=acceptcall|eb12c8eeb2478cbe3ed428a78cbb9be0', 1504747507, 1, 1, NULL),
(1530, 21, 25, 'has successfully shared his/her whiteboard.', 1504747554, 1, 2, NULL),
(1531, 21, 25, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''21'' random=''1504747555'' room=''3d04549230475623f4758b6c2e0e6cf8'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''21'',''1504747555'',''3d04549230475623f4758b6c2e0e6cf8'');">Click here to view</a> or simply ignore this message.', 1504747554, 1, 1, NULL),
(1532, 21, 25, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''21'' grp=''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''21'',''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'');">Click here to view his/her screen</a> or simply ignore this message.', 1504747555, 1, 1, NULL),
(1533, 21, 25, 'has successfully shared his/her screen.', 1504747556, 1, 2, NULL),
(1534, 25, 21, 'has successfully shared his/her whiteboard.', 1504747558, 1, 2, NULL),
(1535, 25, 21, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''25'' random=''1504747558'' room=''3d04549230475623f4758b6c2e0e6cf8'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''25'',''1504747558'',''3d04549230475623f4758b6c2e0e6cf8'');">Click here to view</a> or simply ignore this message.', 1504747558, 1, 1, NULL),
(1536, 21, 25, 'is now viewing your whiteboard.', 1504747750, 1, 1, NULL),
(1537, 21, 25, '<div class=''cometchat_hw_lang'' style=''display:none;''>has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="27b05a3d74743add4ff77f44cd9336ae.png" encfilename="27b05a3d74743add4ff77f44cd9336ae.png" mediatype="1"  href="//studycollab.com/chat/plugins/handwrite/download.php?file=27b05a3d74743add4ff77f44cd9336ae.png&amp;unencryptedfilename=27b05a3d74743add4ff77f44cd9336ae.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/chat/writable/handwrite/uploads/27b05a3d74743add4ff77f44cd9336ae.png" border="0" height="90" width="134"></a>', 1504747820, 1, 0, NULL),
(1538, 21, 25, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''21'' grp=''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''21'',''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'');">Click here to view his/her screen</a> or simply ignore this message.', 1504747840, 1, 1, NULL),
(1539, 21, 25, 'has successfully shared his/her screen.', 1504747840, 1, 2, NULL),
(1540, 25, 21, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''25'' grp=''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''25'',''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'');">Click here to view his/her screen</a> or simply ignore this message.', 1504747841, 1, 1, NULL),
(1541, 25, 21, 'has successfully shared his/her screen.', 1504747842, 1, 2, NULL),
(1542, 21, 25, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''21'' grp=''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''21'',''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'');">Click here to view his/her screen</a> or simply ignore this message.', 1504747893, 1, 1, NULL),
(1543, 21, 25, 'has successfully shared his/her screen.', 1504747894, 1, 2, NULL),
(1544, 25, 21, 'is now viewing your screen.', 1504747903, 1, 1, NULL),
(1545, 21, 25, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''21'' grp=''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''21'',''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'');">Click here to view his/her screen</a> or simply ignore this message.', 1504747957, 1, 1, NULL),
(1546, 21, 25, 'has successfully shared his/her screen.', 1504747957, 1, 2, NULL),
(1547, 21, 25, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''21'' grp=''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''21'',''3c59dc048e8850243be8079a5c74d0798e296a067a37563370ded05f5a3bf3ec'');">Click here to view his/her screen</a> or simply ignore this message.', 1504747987, 1, 1, NULL),
(1548, 21, 25, 'has successfully shared his/her screen.', 1504747988, 1, 2, NULL),
(1549, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1504753405, 1, 2, NULL),
(1550, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1504753405, 1, 1, NULL),
(1551, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1504753405, 1, 2, NULL),
(1552, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_21c3a811757571c70df90a85a38ae287', 1504753405, 1, 1, NULL),
(1553, 4, 1, 'has successfully shared his/her whiteboard.', 1505125213, 1, 2, NULL),
(1554, 4, 1, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''4'' random=''1505125248'' room=''3d04549230475623f4758b6c2e0e6cf8'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''4'',''1505125248'',''3d04549230475623f4758b6c2e0e6cf8'');">Click here to view</a> or simply ignore this message.', 1505125213, 1, 1, NULL),
(1555, 47, 4, 'How is', 1505285691, 1, 0, NULL),
(1556, 47, 4, 'has opened a document. <a href=''javascript:void(0);'' class=''accept_Write'' to=''47'' random=''4'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwriteboard.accept(''47'',''4'');">Click here to view the document</a> or simply ignore this message.', 1505285769, 1, 1, NULL),
(1557, 47, 4, 'has opened a document.', 1505285770, 1, 2, NULL),
(1558, 47, 35, 'is now viewing your whiteboard.', 1505285862, 0, 1, NULL),
(1559, 4, 47, 'is now viewing the document.', 1505361450, 1, 1, NULL),
(1560, 4, 47, 'is now viewing the document.', 1505372331, 1, 1, NULL),
(1561, 4, 47, '<div style=''display:none;''>has sent a file</div><br/><a class="imagemessage mediamessage" pluginname ="filetransfer" filename="Koala.jpg" encfilename="59562e8b5d196c87424405f28af3850a.jpg" mediatype="1" href="//www.studycollab.com/chat/plugins/filetransfer/download.php?file=59562e8b5d196c87424405f28af3850a.jpg&amp;unencryptedfilename=Koala.jpg"><img class="file_image" type="image" src="/chat/writable/filetransfer/uploads/59562e8b5d196c87424405f28af3850a.jpg" style="max-height:70px;"/></a>', 1505372346, 1, 0, NULL),
(1562, 97, 25, 'has sent you an audio chat request. <a class=''audiochat_link_01732b0d8775304a4ad65af7ac37e256 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''97'',''01732b0d8775304a4ad65af7ac37e256'');" href=''javascript:void(0);'' to=''97'' caller='''' grp=''01732b0d8775304a4ad65af7ac37e256'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_01732b0d8775304a4ad65af7ac37e256'' onclick="javascript:jqcc.ccaudiochat.reject_call(''97'',''01732b0d8775304a4ad65af7ac37e256'');">click here.</a>You can also simply ignore this message.', 1505540187, 1, 1, NULL),
(1563, 97, 25, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_01732b0d8775304a4ad65af7ac37e256'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''25'',''01732b0d8775304a4ad65af7ac37e256'');">click here.</a>', 1505540188, 1, 2, NULL),
(1564, 25, 97, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_01732b0d8775304a4ad65af7ac37e256 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''25'',''01732b0d8775304a4ad65af7ac37e256'');" to=''25'' caller='''' grp=''01732b0d8775304a4ad65af7ac37e256'' >Click here to launch the audio chat window</a>', 1505540200, 1, 1, NULL),
(1565, 97, 25, 'mobileAction="javascript:jqcc.ccavchat.accept(''97'',''0c330019109ff2d81e14317f226a219f'');"|avchat_webaction=initiate|0c330019109ff2d81e14317f226a219f|', 1505540301, 1, 1, NULL),
(1566, 97, 25, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_0c330019109ff2d81e14317f226a219f_0__2', 1505540302, 1, 2, NULL),
(1567, 25, 97, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_0fa4cd3074e40ca5cc7b72f0db73211e', 1505540312, 1, 2, NULL),
(1568, 25, 97, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_0fa4cd3074e40ca5cc7b72f0db73211e', 1505540312, 1, 1, NULL),
(1569, 25, 97, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''25'',''0c330019109ff2d81e14317f226a219f'');"|avchat_webaction=acceptcall|0c330019109ff2d81e14317f226a219f', 1505540315, 1, 1, NULL),
(1570, 25, 97, 'mobileAction="javascript:jqcc.ccavchat.accept(''25'',''0c330019109ff2d81e14317f226a219f'');"|avchat_webaction=initiate|0c330019109ff2d81e14317f226a219f|', 1505540816, 1, 1, NULL),
(1571, 25, 97, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_0c330019109ff2d81e14317f226a219f_0__2', 1505540817, 1, 2, NULL),
(1572, 97, 25, 'okay there', 1505540821, 1, 0, NULL),
(1573, 97, 25, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''97'',''0c330019109ff2d81e14317f226a219f'');"|avchat_webaction=acceptcall|0c330019109ff2d81e14317f226a219f', 1505540824, 1, 1, NULL),
(1574, 97, 25, 'it''s taking a while to connect', 1505540837, 1, 0, NULL),
(1575, 25, 97, 'yeah', 1505540849, 1, 0, NULL),
(1576, 97, 25, '<a href="https://discord.gg/zv8CgfY" target="_blank" title="https://discord.gg/zv8CgfY">https://discord.gg/zv8CgfY</a>', 1505540851, 1, 0, NULL),
(1577, 97, 25, 'Try this link', 1505540853, 1, 0, NULL),
(1578, 97, 25, 'maybe hopen a new browser tab.', 1505540857, 1, 0, NULL),
(1579, 25, 97, 'but the chat feature is good', 1505540859, 1, 0, NULL),
(1580, 97, 25, 'Cus you should be able to join without any problem', 1505540862, 1, 0, NULL),
(1581, 97, 25, 'Oh yeah chat feature works great.', 1505540866, 1, 0, NULL),
(1582, 25, 97, 'opened discord', 1505540876, 1, 0, NULL),
(1583, 25, 97, 'accepted invite', 1505540880, 1, 0, NULL),
(1584, 97, 25, 'alright <br> Hey there. <br> Hop in the channel called General', 1505540883, 1, 0, NULL),
(1585, 97, 25, 'It says voice channels', 1505540892, 1, 0, NULL),
(1586, 1, 4, 'is now viewing your whiteboard.', 1505810999, 1, 1, NULL),
(1587, 61, 99, 'vghjg', 1505818066, 1, 0, NULL),
(1588, 61, 99, 'has successfully shared his/her whiteboard.', 1505818079, 1, 2, NULL),
(1589, 61, 99, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''61'' random=''1505818076'' room=''3d04549230475623f4758b6c2e0e6cf8'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''61'',''1505818076'',''3d04549230475623f4758b6c2e0e6cf8'');">Click here to view</a> or simply ignore this message.', 1505818079, 1, 1, NULL),
(1590, 99, 61, 'is now viewing your whiteboard.', 1505818088, 1, 1, NULL),
(1591, 99, 61, 'is now viewing your whiteboard.', 1505818107, 1, 1, NULL),
(1592, 61, 99, 'has sent you an audio chat request. <a class=''audiochat_link_b575749111fceaf5625bb6a8b73d1392 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''61'',''b575749111fceaf5625bb6a8b73d1392'');" href=''javascript:void(0);'' to=''61'' caller='''' grp=''b575749111fceaf5625bb6a8b73d1392'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_b575749111fceaf5625bb6a8b73d1392'' onclick="javascript:jqcc.ccaudiochat.reject_call(''61'',''b575749111fceaf5625bb6a8b73d1392'');">click here.</a>You can also simply ignore this message.', 1505818190, 1, 1, NULL),
(1593, 61, 99, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_b575749111fceaf5625bb6a8b73d1392'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''99'',''b575749111fceaf5625bb6a8b73d1392'');">click here.</a>', 1505818190, 1, 2, NULL),
(1594, 61, 99, 'has sent you an audio chat request. <a class=''audiochat_link_b575749111fceaf5625bb6a8b73d1392 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''61'',''b575749111fceaf5625bb6a8b73d1392'');" href=''javascript:void(0);'' to=''61'' caller='''' grp=''b575749111fceaf5625bb6a8b73d1392'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_b575749111fceaf5625bb6a8b73d1392'' onclick="javascript:jqcc.ccaudiochat.reject_call(''61'',''b575749111fceaf5625bb6a8b73d1392'');">click here.</a>You can also simply ignore this message.', 1505818217, 1, 1, NULL),
(1595, 61, 99, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_b575749111fceaf5625bb6a8b73d1392'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''99'',''b575749111fceaf5625bb6a8b73d1392'');">click here.</a>', 1505818218, 1, 2, NULL),
(1596, 61, 99, 'mobileAction="javascript:jqcc.ccavchat.accept(''61'',''4c07b2a167d30c1e854caceca572dc22'');"|avchat_webaction=initiate|4c07b2a167d30c1e854caceca572dc22|', 1505818444, 1, 1, NULL),
(1597, 61, 99, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_4c07b2a167d30c1e854caceca572dc22_0__2', 1505818445, 1, 2, NULL),
(1598, 61, 99, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_4c07b2a167d30c1e854caceca572dc22', 1505818458, 1, 2, NULL),
(1599, 61, 99, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_4c07b2a167d30c1e854caceca572dc22', 1505818458, 1, 1, NULL),
(1600, 99, 61, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''99'',''4c07b2a167d30c1e854caceca572dc22'');"|avchat_webaction=acceptcall|4c07b2a167d30c1e854caceca572dc22', 1505818463, 1, 1, NULL),
(1601, 61, 99, 'mobileAction="javascript:jqcc.ccavchat.accept(''61'',''4c07b2a167d30c1e854caceca572dc22'');"|avchat_webaction=initiate|4c07b2a167d30c1e854caceca572dc22|', 1505818463, 1, 1, NULL),
(1602, 61, 99, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_4c07b2a167d30c1e854caceca572dc22_0__2', 1505818464, 1, 2, NULL),
(1603, 99, 61, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_4c07b2a167d30c1e854caceca572dc22', 1505818477, 1, 1, NULL),
(1604, 61, 99, 'ghkjh', 1505818583, 1, 0, NULL),
(1605, 99, 61, 'mobileAction="javascript:jqcc.ccavchat.accept(''99'',''4c07b2a167d30c1e854caceca572dc22'');"|avchat_webaction=initiate|4c07b2a167d30c1e854caceca572dc22|', 1505818604, 1, 1, NULL),
(1606, 99, 61, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_4c07b2a167d30c1e854caceca572dc22_0__2', 1505818605, 1, 2, NULL),
(1607, 61, 99, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_4c07b2a167d30c1e854caceca572dc22', 1505818635, 1, 1, NULL),
(1608, 99, 61, 'mobileAction="javascript:jqcc.ccavchat.accept(''99'',''4c07b2a167d30c1e854caceca572dc22'');"|avchat_webaction=initiate|4c07b2a167d30c1e854caceca572dc22|', 1505818644, 1, 1, NULL),
(1609, 99, 61, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_4c07b2a167d30c1e854caceca572dc22_0__2', 1505818644, 1, 2, NULL),
(1610, 61, 99, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_4c07b2a167d30c1e854caceca572dc22', 1505818674, 1, 1, NULL),
(1611, 61, 99, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_4c07b2a167d30c1e854caceca572dc22', 1505818675, 1, 1, NULL),
(1612, 61, 99, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_4c07b2a167d30c1e854caceca572dc22', 1505818684, 1, 1, NULL),
(1613, 99, 61, 'mobileAction="javascript:jqcc.ccavchat.accept(''99'',''4c07b2a167d30c1e854caceca572dc22'');"|avchat_webaction=initiate|4c07b2a167d30c1e854caceca572dc22|', 1505818855, 1, 1, NULL),
(1614, 99, 61, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_4c07b2a167d30c1e854caceca572dc22_0__2', 1505818856, 1, 2, NULL),
(1615, 61, 99, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_4c07b2a167d30c1e854caceca572dc22', 1505818891, 1, 1, NULL),
(1616, 61, 99, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_4c07b2a167d30c1e854caceca572dc22', 1505818897, 1, 1, NULL),
(1617, 99, 61, 'mobileAction="javascript:jqcc.ccavchat.accept(''99'',''4c07b2a167d30c1e854caceca572dc22'');"|avchat_webaction=initiate|4c07b2a167d30c1e854caceca572dc22|', 1505818924, 1, 1, NULL),
(1618, 99, 61, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_4c07b2a167d30c1e854caceca572dc22_0__2', 1505818925, 1, 2, NULL),
(1619, 61, 99, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_4c07b2a167d30c1e854caceca572dc22', 1505818958, 1, 1, NULL),
(1620, 61, 99, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_4c07b2a167d30c1e854caceca572dc22', 1505818961, 1, 1, NULL),
(1621, 4, 47, 'is now viewing the document.', 1505880080, 1, 1, NULL),
(1622, 4, 47, 'is now viewing the document.', 1505880230, 1, 1, NULL),
(1623, 4, 47, 'is now viewing the document.', 1505880639, 1, 1, NULL),
(1624, 4, 47, 'has successfully shared his/her whiteboard.', 1505880706, 1, 2, NULL),
(1625, 4, 47, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''4'' random=''1505880750'' room=''3d04549230475623f4758b6c2e0e6cf8'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''4'',''1505880750'',''3d04549230475623f4758b6c2e0e6cf8'');">Click here to view</a> or simply ignore this message.', 1505880706, 1, 1, NULL),
(1626, 4, 47, 'has successfully shared his/her whiteboard.', 1505880777, 1, 2, NULL),
(1627, 4, 47, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''4'' random=''1505880821'' room=''ea1abbdcca645a7ce21e6e5b5d08bd26'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''4'',''1505880821'',''ea1abbdcca645a7ce21e6e5b5d08bd26'');">Click here to view</a> or simply ignore this message.', 1505880777, 1, 1, NULL),
(1628, 1, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''1'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1505880913, 1, 1, NULL),
(1629, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1505880914, 1, 2, NULL),
(1630, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1505880954, 1, 2, NULL),
(1631, 1, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1505880954, 1, 1, NULL),
(1632, 4, 1, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''ec23fc99fbd87b2ffdeba936c32b01db'');"|avchat_webaction=initiate|ec23fc99fbd87b2ffdeba936c32b01db|', 1505880961, 1, 1, NULL),
(1633, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', 1505880962, 1, 2, NULL),
(1634, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1505880987, 1, 2, NULL),
(1635, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_ec23fc99fbd87b2ffdeba936c32b01db', 1505880987, 1, 1, NULL),
(1636, 4, 1, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''4'' grp=''c4ca4238a0b923820dcc509a6f75849ba87ff679a2f3e71d9181a67b7542122c'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''4'',''c4ca4238a0b923820dcc509a6f75849ba87ff679a2f3e71d9181a67b7542122c'');">Click here to view his/her screen</a> or simply ignore this message.', 1505881146, 1, 1, NULL),
(1637, 4, 1, 'has successfully shared his/her screen.', 1505881146, 0, 2, NULL),
(1638, 1, 4, 'is now viewing your screen.', 1505881176, 1, 1, NULL),
(1639, 4, 61, 'hi', 1505881286, 1, 0, NULL),
(1640, 4, 61, 'has successfully shared his/her whiteboard.', 1505881300, 1, 2, NULL),
(1641, 4, 61, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''4'' random=''1505881345'' room=''a5b869628baef84053b34c248dc0ba4e'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''4'',''1505881345'',''a5b869628baef84053b34c248dc0ba4e'');">Click here to view</a> or simply ignore this message.', 1505881300, 1, 1, NULL),
(1642, 61, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''61'',''32cdf930d3b9f248ee83cb639b9cc229'');"|avchat_webaction=initiate|32cdf930d3b9f248ee83cb639b9cc229|', 1505881320, 1, 1, NULL),
(1643, 61, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_32cdf930d3b9f248ee83cb639b9cc229_0__2', 1505881321, 1, 2, NULL),
(1644, 4, 61, 'has sent you an audio chat request. <a class=''audiochat_link_755fda81d71a3d1ac453e90c567207d6 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''755fda81d71a3d1ac453e90c567207d6'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''755fda81d71a3d1ac453e90c567207d6'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_755fda81d71a3d1ac453e90c567207d6'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''755fda81d71a3d1ac453e90c567207d6'');">click here.</a>You can also simply ignore this message.', 1505881343, 1, 1, NULL),
(1645, 4, 61, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_755fda81d71a3d1ac453e90c567207d6'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''61'',''755fda81d71a3d1ac453e90c567207d6'');">click here.</a>', 1505881344, 1, 2, NULL),
(1646, 4, 61, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_755fda81d71a3d1ac453e90c567207d6', 1505881360, 1, 2, NULL),
(1647, 4, 61, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_755fda81d71a3d1ac453e90c567207d6', 1505881360, 1, 1, NULL),
(1648, 4, 61, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_755fda81d71a3d1ac453e90c567207d6', 1505881363, 1, 2, NULL),
(1649, 4, 61, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_755fda81d71a3d1ac453e90c567207d6', 1505881363, 1, 1, NULL),
(1650, 4, 61, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''32cdf930d3b9f248ee83cb639b9cc229'');"|avchat_webaction=initiate|32cdf930d3b9f248ee83cb639b9cc229|', 1505881404, 1, 1, NULL),
(1651, 4, 61, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_32cdf930d3b9f248ee83cb639b9cc229_0__2', 1505881404, 1, 2, NULL),
(1652, 61, 4, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_32cdf930d3b9f248ee83cb639b9cc229', 1505881432, 1, 1, NULL),
(1653, 4, 61, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''32cdf930d3b9f248ee83cb639b9cc229'');"|avchat_webaction=initiate|32cdf930d3b9f248ee83cb639b9cc229|', 1505881438, 1, 1, NULL),
(1654, 4, 61, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_32cdf930d3b9f248ee83cb639b9cc229_0__2', 1505881439, 1, 2, NULL),
(1655, 61, 4, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_32cdf930d3b9f248ee83cb639b9cc229', 1505881446, 1, 1, NULL),
(1656, 99, 4, 'Hi', 1505881456, 1, 0, NULL),
(1657, 4, 99, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''73285dbdb8df1a4ceed11bff8f6381bb'');"|avchat_webaction=initiate|73285dbdb8df1a4ceed11bff8f6381bb|', 1505881464, 1, 1, NULL),
(1658, 4, 99, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_73285dbdb8df1a4ceed11bff8f6381bb_0__2', 1505881465, 1, 2, NULL),
(1659, 4, 99, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_73285dbdb8df1a4ceed11bff8f6381bb', 1505881477, 1, 2, NULL),
(1660, 4, 99, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_73285dbdb8df1a4ceed11bff8f6381bb', 1505881477, 1, 1, NULL),
(1661, 4, 61, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''32cdf930d3b9f248ee83cb639b9cc229'');"|avchat_webaction=initiate|32cdf930d3b9f248ee83cb639b9cc229|', 1505881478, 1, 1, NULL),
(1662, 4, 61, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_32cdf930d3b9f248ee83cb639b9cc229_0__2', 1505881479, 1, 2, NULL),
(1663, 61, 4, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_32cdf930d3b9f248ee83cb639b9cc229', 1505881488, 1, 1, NULL),
(1664, 99, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''99'',''73285dbdb8df1a4ceed11bff8f6381bb'');"|avchat_webaction=initiate|73285dbdb8df1a4ceed11bff8f6381bb|', 1505881492, 1, 1, NULL),
(1665, 99, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_73285dbdb8df1a4ceed11bff8f6381bb_0__2', 1505881493, 1, 2, NULL),
(1666, 4, 61, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''32cdf930d3b9f248ee83cb639b9cc229'');"|avchat_webaction=initiate|32cdf930d3b9f248ee83cb639b9cc229|', 1505881523, 1, 1, NULL),
(1667, 4, 61, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_32cdf930d3b9f248ee83cb639b9cc229_0__2', 1505881524, 1, 2, NULL),
(1668, 99, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_73285dbdb8df1a4ceed11bff8f6381bb', 1505881525, 1, 2, NULL),
(1669, 99, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_73285dbdb8df1a4ceed11bff8f6381bb', 1505881525, 1, 1, NULL),
(1670, 61, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''61'',''32cdf930d3b9f248ee83cb639b9cc229'');"|avchat_webaction=acceptcall|32cdf930d3b9f248ee83cb639b9cc229', 1505881527, 1, 1, NULL),
(1671, 99, 61, 'mobileAction="javascript:jqcc.ccavchat.accept(''99'',''4c07b2a167d30c1e854caceca572dc22'');"|avchat_webaction=initiate|4c07b2a167d30c1e854caceca572dc22|', 1505881599, 1, 1, NULL),
(1672, 99, 61, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_4c07b2a167d30c1e854caceca572dc22_0__2', 1505881600, 1, 2, NULL),
(1673, 4, 61, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_32cdf930d3b9f248ee83cb639b9cc229', 1505881601, 1, 2, NULL),
(1674, 4, 61, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_32cdf930d3b9f248ee83cb639b9cc229', 1505881601, 1, 1, NULL),
(1675, 4, 52, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''40ce99cdc47d3adef5046f1be5568947'');"|avchat_webaction=initiate|40ce99cdc47d3adef5046f1be5568947|', 1505881617, 1, 1, NULL),
(1676, 4, 52, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_40ce99cdc47d3adef5046f1be5568947_0__2', 1505881617, 1, 2, NULL),
(1677, 52, 4, 'has sent you an audio chat request. <a class=''audiochat_link_2565ed9ec11960dbb60436ad6d85534c acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''52'',''2565ed9ec11960dbb60436ad6d85534c'');" href=''javascript:void(0);'' to=''52'' caller='''' grp=''2565ed9ec11960dbb60436ad6d85534c'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_2565ed9ec11960dbb60436ad6d85534c'' onclick="javascript:jqcc.ccaudiochat.reject_call(''52'',''2565ed9ec11960dbb60436ad6d85534c'');">click here.</a>You can also simply ignore this message.', 1505881632, 1, 1, NULL),
(1678, 52, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_2565ed9ec11960dbb60436ad6d85534c'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''2565ed9ec11960dbb60436ad6d85534c'');">click here.</a>', 1505881633, 1, 2, NULL),
(1679, 52, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''40ce99cdc47d3adef5046f1be5568947'');"|avchat_webaction=initiate|40ce99cdc47d3adef5046f1be5568947|', 1505881638, 1, 1, NULL),
(1680, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_40ce99cdc47d3adef5046f1be5568947_0__2', 1505881638, 1, 2, NULL),
(1681, 4, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1505881651, 1, 2, NULL),
(1682, 4, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1505881651, 1, 1, NULL),
(1683, 4, 52, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_2565ed9ec11960dbb60436ad6d85534c accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''4'',''2565ed9ec11960dbb60436ad6d85534c'');" to=''4'' caller='''' grp=''2565ed9ec11960dbb60436ad6d85534c'' >Click here to launch the audio chat window</a>', 1505881653, 1, 1, NULL),
(1684, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1505881656, 1, 2, NULL),
(1685, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1505881656, 1, 1, NULL),
(1686, 52, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_4c0966456162d330e332d6aac5375aef', 1505881685, 1, 2, NULL),
(1687, 52, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_4c0966456162d330e332d6aac5375aef', 1505881685, 1, 1, NULL),
(1688, 52, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''40ce99cdc47d3adef5046f1be5568947'');"|avchat_webaction=initiate|40ce99cdc47d3adef5046f1be5568947|', 1505881687, 1, 1, NULL),
(1689, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_40ce99cdc47d3adef5046f1be5568947_0__2', 1505881688, 1, 2, NULL),
(1690, 4, 52, 'has sent you an audio chat request. <a class=''audiochat_link_c1aeadd56b01b5910df285c0cda491e9 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''c1aeadd56b01b5910df285c0cda491e9'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''c1aeadd56b01b5910df285c0cda491e9'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_c1aeadd56b01b5910df285c0cda491e9'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''c1aeadd56b01b5910df285c0cda491e9'');">click here.</a>You can also simply ignore this message.', 1505881697, 1, 1, NULL),
(1691, 4, 52, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_c1aeadd56b01b5910df285c0cda491e9'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''52'',''c1aeadd56b01b5910df285c0cda491e9'');">click here.</a>', 1505881698, 1, 2, NULL),
(1692, 4, 52, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_c1aeadd56b01b5910df285c0cda491e9', 1505881705, 1, 2, NULL),
(1693, 4, 52, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_c1aeadd56b01b5910df285c0cda491e9', 1505881705, 1, 1, NULL),
(1694, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1505881712, 1, 2, NULL),
(1695, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1505881712, 1, 1, NULL),
(1696, 52, 4, 'has sent you an audio chat request. <a class=''audiochat_link_2565ed9ec11960dbb60436ad6d85534c acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''52'',''2565ed9ec11960dbb60436ad6d85534c'');" href=''javascript:void(0);'' to=''52'' caller='''' grp=''2565ed9ec11960dbb60436ad6d85534c'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_2565ed9ec11960dbb60436ad6d85534c'' onclick="javascript:jqcc.ccaudiochat.reject_call(''52'',''2565ed9ec11960dbb60436ad6d85534c'');">click here.</a>You can also simply ignore this message.', 1505881720, 1, 1, NULL),
(1697, 52, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_2565ed9ec11960dbb60436ad6d85534c'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''2565ed9ec11960dbb60436ad6d85534c'');">click here.</a>', 1505881721, 1, 2, NULL),
(1698, 61, 99, 'mobileAction="javascript:jqcc.ccavchat.accept(''61'',''4c07b2a167d30c1e854caceca572dc22'');"|avchat_webaction=initiate|4c07b2a167d30c1e854caceca572dc22|', 1505881724, 1, 1, NULL),
(1699, 61, 99, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_4c07b2a167d30c1e854caceca572dc22_0__2', 1505881725, 1, 2, NULL),
(1700, 4, 52, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_2565ed9ec11960dbb60436ad6d85534c accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''4'',''2565ed9ec11960dbb60436ad6d85534c'');" to=''4'' caller='''' grp=''2565ed9ec11960dbb60436ad6d85534c'' >Click here to launch the audio chat window</a>', 1505881727, 1, 1, NULL),
(1701, 99, 61, 'mobileAction="javascript:jqcc.ccavchat.accept(''99'',''4c07b2a167d30c1e854caceca572dc22'');"|avchat_webaction=initiate|4c07b2a167d30c1e854caceca572dc22|', 1505881756, 1, 1, NULL),
(1702, 99, 61, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_4c07b2a167d30c1e854caceca572dc22_0__2', 1505881757, 0, 2, NULL),
(1703, 4, 52, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_4c0966456162d330e332d6aac5375aef', 1505881771, 1, 2, NULL),
(1704, 4, 52, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_4c0966456162d330e332d6aac5375aef', 1505881771, 1, 1, NULL),
(1705, 61, 99, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_4c07b2a167d30c1e854caceca572dc22', 1505881777, 1, 1, NULL),
(1706, 52, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''40ce99cdc47d3adef5046f1be5568947'');"|avchat_webaction=initiate|40ce99cdc47d3adef5046f1be5568947|', 1505881780, 1, 1, NULL),
(1707, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_40ce99cdc47d3adef5046f1be5568947_0__2', 1505881780, 1, 2, NULL),
(1708, 61, 99, 'mobileAction="javascript:jqcc.ccavchat.accept(''61'',''4c07b2a167d30c1e854caceca572dc22'');"|avchat_webaction=initiate|4c07b2a167d30c1e854caceca572dc22|', 1505881794, 1, 1, NULL),
(1709, 61, 99, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_4c07b2a167d30c1e854caceca572dc22_0__2', 1505881795, 0, 2, NULL),
(1710, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1505881796, 1, 2, NULL),
(1711, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1505881796, 1, 1, NULL),
(1712, 52, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''40ce99cdc47d3adef5046f1be5568947'');"|avchat_webaction=initiate|40ce99cdc47d3adef5046f1be5568947|', 1505881800, 1, 1, NULL),
(1713, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_40ce99cdc47d3adef5046f1be5568947_0__2', 1505881800, 1, 2, NULL),
(1714, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1505881818, 1, 2, NULL),
(1715, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1505881818, 1, 1, NULL),
(1716, 52, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''40ce99cdc47d3adef5046f1be5568947'');"|avchat_webaction=initiate|40ce99cdc47d3adef5046f1be5568947|', 1505881821, 1, 1, NULL),
(1717, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_40ce99cdc47d3adef5046f1be5568947_0__2', 1505881822, 1, 2, NULL),
(1718, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1505881827, 1, 2, NULL),
(1719, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1505881827, 1, 1, NULL),
(1720, 52, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''40ce99cdc47d3adef5046f1be5568947'');"|avchat_webaction=initiate|40ce99cdc47d3adef5046f1be5568947|', 1505881853, 1, 1, NULL),
(1721, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_40ce99cdc47d3adef5046f1be5568947_0__2', 1505881853, 1, 2, NULL),
(1722, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1505881871, 1, 2, NULL),
(1723, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_40ce99cdc47d3adef5046f1be5568947', 1505881871, 1, 1, NULL),
(1724, 4, 52, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''40ce99cdc47d3adef5046f1be5568947'');"|avchat_webaction=initiate|40ce99cdc47d3adef5046f1be5568947|', 1505881875, 1, 1, NULL),
(1725, 4, 52, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_40ce99cdc47d3adef5046f1be5568947_0__2', 1505881876, 1, 2, NULL),
(1726, 52, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''52'',''40ce99cdc47d3adef5046f1be5568947'');"|avchat_webaction=acceptcall|40ce99cdc47d3adef5046f1be5568947', 1505881888, 1, 1, NULL),
(1727, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_d9eabed2cd5e72a5b7f972f3d52fd14b', 1505881935, 1, 2, NULL),
(1728, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_d9eabed2cd5e72a5b7f972f3d52fd14b', 1505881935, 1, 1, NULL),
(1729, 52, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''52'',''40ce99cdc47d3adef5046f1be5568947'');"|avchat_webaction=initiate|40ce99cdc47d3adef5046f1be5568947|', 1505881939, 1, 1, NULL),
(1730, 52, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_40ce99cdc47d3adef5046f1be5568947_0__2', 1505881939, 1, 2, NULL),
(1731, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1508905024, 1, 1, NULL),
(1732, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1508905025, 1, 2, NULL),
(1733, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1508905031, 1, 2, NULL),
(1734, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1508905031, 1, 1, NULL),
(1735, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1508905098, 1, 1, NULL),
(1736, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1508905099, 1, 2, NULL),
(1737, 4, 101, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''4'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=acceptcall|d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1508905104, 1, 1, NULL),
(1738, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_d589f118f414cd335eadb8fafee89a50', 1508905142, 1, 2, NULL),
(1739, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_d589f118f414cd335eadb8fafee89a50', 1508905142, 1, 1, NULL),
(1740, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1508905152, 1, 1, NULL),
(1741, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1508905153, 1, 2, NULL),
(1742, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_NOANSWER_d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1508905185, 1, 1, NULL),
(1743, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1508905195, 1, 1, NULL),
(1744, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1508905196, 1, 2, NULL),
(1745, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1508905219, 1, 2, NULL),
(1746, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1508905219, 1, 1, NULL),
(1747, 101, 4, 'Hai', 1508905263, 1, 0, NULL),
(1748, 101, 4, 'has sent you an audio chat request. <a class=''audiochat_link_f9608dfdb57687ba78981547a25fe6c9 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''101'',''f9608dfdb57687ba78981547a25fe6c9'');" href=''javascript:void(0);'' to=''101'' caller='''' grp=''f9608dfdb57687ba78981547a25fe6c9'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_f9608dfdb57687ba78981547a25fe6c9'' onclick="javascript:jqcc.ccaudiochat.reject_call(''101'',''f9608dfdb57687ba78981547a25fe6c9'');">click here.</a>You can also simply ignore this message.', 1508905324, 1, 1, NULL),
(1749, 101, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_f9608dfdb57687ba78981547a25fe6c9'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''f9608dfdb57687ba78981547a25fe6c9'');">click here.</a>', 1508905325, 1, 2, NULL),
(1750, 4, 101, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_f9608dfdb57687ba78981547a25fe6c9 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''4'',''f9608dfdb57687ba78981547a25fe6c9'');" to=''4'' caller='''' grp=''f9608dfdb57687ba78981547a25fe6c9'' >Click here to launch the audio chat window</a>', 1508905341, 1, 1, NULL),
(1751, 4, 101, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_4658375a723db8d8706409dfa1607741', 1508905366, 1, 2, NULL),
(1752, 4, 101, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_4658375a723db8d8706409dfa1607741', 1508905366, 1, 1, NULL),
(1753, 4, 101, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1508905421, 1, 1, NULL),
(1754, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1508905422, 1, 2, NULL),
(1755, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1508905435, 1, 2, NULL),
(1756, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1508905435, 1, 1, NULL),
(1757, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=acceptcall|d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1508905497, 1, 1, NULL),
(1758, 4, 101, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1508905505, 1, 1, NULL);
INSERT INTO `cometchat` (`id`, `from`, `to`, `message`, `sent`, `read`, `direction`, `custom_data`) VALUES
(1759, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1508905506, 1, 2, NULL),
(1760, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=acceptcall|d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1508905512, 1, 1, NULL),
(1761, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1508905545, 1, 2, NULL),
(1762, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1508905545, 1, 1, NULL),
(1763, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_4a338d15b82767aaafebe8eb191af56e', 1508905547, 1, 2, NULL),
(1764, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_4a338d15b82767aaafebe8eb191af56e', 1508905547, 1, 1, NULL),
(1765, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1508905555, 1, 1, NULL),
(1766, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1508905556, 1, 2, NULL),
(1767, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1508905572, 1, 1, NULL),
(1768, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1508905575, 1, 2, NULL),
(1769, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1508905575, 1, 1, NULL),
(1770, 4, 55, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''3f347c076965187ace56acb912656c28'');"|avchat_webaction=initiate|3f347c076965187ace56acb912656c28|', 1508905579, 1, 1, NULL),
(1771, 4, 55, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_3f347c076965187ace56acb912656c28_0__2', 1508905580, 1, 2, NULL),
(1772, 55, 4, 'hi', 1508905597, 1, 0, NULL),
(1773, 55, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''55'',''3f347c076965187ace56acb912656c28'');"|avchat_webaction=initiate|3f347c076965187ace56acb912656c28|', 1508905605, 1, 1, NULL),
(1774, 55, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_3f347c076965187ace56acb912656c28_0__2', 1508905605, 1, 2, NULL),
(1775, 55, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_3f347c076965187ace56acb912656c28', 1508905621, 1, 2, NULL),
(1776, 55, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_3f347c076965187ace56acb912656c28', 1508905621, 1, 1, NULL),
(1777, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1508905634, 1, 1, NULL),
(1778, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1508905635, 1, 2, NULL),
(1779, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1508905662, 1, 2, NULL),
(1780, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1508905662, 1, 1, NULL),
(1781, 4, 55, 'has sent you an audio chat request. <a class=''audiochat_link_1c5af687b6a8eccc4238643cdc0b27aa acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''1c5af687b6a8eccc4238643cdc0b27aa'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''1c5af687b6a8eccc4238643cdc0b27aa'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_1c5af687b6a8eccc4238643cdc0b27aa'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''1c5af687b6a8eccc4238643cdc0b27aa'');">click here.</a>You can also simply ignore this message.', 1508905667, 1, 1, NULL),
(1782, 4, 55, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_1c5af687b6a8eccc4238643cdc0b27aa'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''55'',''1c5af687b6a8eccc4238643cdc0b27aa'');">click here.</a>', 1508905668, 1, 2, NULL),
(1783, 4, 55, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_1c5af687b6a8eccc4238643cdc0b27aa', 1508905682, 1, 2, NULL),
(1784, 4, 55, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_1c5af687b6a8eccc4238643cdc0b27aa', 1508905682, 1, 1, NULL),
(1785, 4, 55, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_1c5af687b6a8eccc4238643cdc0b27aa', 1508905683, 1, 2, NULL),
(1786, 4, 55, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_1c5af687b6a8eccc4238643cdc0b27aa', 1508905683, 1, 1, NULL),
(1787, 4, 101, 'has sent you an audio chat request. <a class=''audiochat_link_f9608dfdb57687ba78981547a25fe6c9 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''f9608dfdb57687ba78981547a25fe6c9'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''f9608dfdb57687ba78981547a25fe6c9'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_f9608dfdb57687ba78981547a25fe6c9'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''f9608dfdb57687ba78981547a25fe6c9'');">click here.</a>You can also simply ignore this message.', 1508905687, 1, 1, NULL),
(1788, 4, 101, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_f9608dfdb57687ba78981547a25fe6c9'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''101'',''f9608dfdb57687ba78981547a25fe6c9'');">click here.</a>', 1508905688, 1, 2, NULL),
(1789, 101, 4, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_f9608dfdb57687ba78981547a25fe6c9 accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''101'',''f9608dfdb57687ba78981547a25fe6c9'');" to=''101'' caller='''' grp=''f9608dfdb57687ba78981547a25fe6c9'' >Click here to launch the audio chat window</a>', 1508905692, 1, 1, NULL),
(1790, 52, 101, 'has sent you an audio chat request. <a class=''audiochat_link_1d6323eb61c44b899483642ad27c40a6 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''52'',''1d6323eb61c44b899483642ad27c40a6'');" href=''javascript:void(0);'' to=''52'' caller='''' grp=''1d6323eb61c44b899483642ad27c40a6'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_1d6323eb61c44b899483642ad27c40a6'' onclick="javascript:jqcc.ccaudiochat.reject_call(''52'',''1d6323eb61c44b899483642ad27c40a6'');">click here.</a>You can also simply ignore this message.', 1508905692, 1, 1, NULL),
(1791, 52, 101, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_1d6323eb61c44b899483642ad27c40a6'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''101'',''1d6323eb61c44b899483642ad27c40a6'');">click here.</a>', 1508905692, 1, 2, NULL),
(1792, 101, 52, 'CC^CONTROL_PLUGIN_AUDIOCHAT_REJECTCALL_6eddd9584013f30940f02b90fe109969', 1508905701, 1, 1, NULL),
(1793, 4, 101, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_4658375a723db8d8706409dfa1607741', 1508905791, 1, 2, NULL),
(1794, 4, 101, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_4658375a723db8d8706409dfa1607741', 1508905791, 1, 1, NULL),
(1795, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1508905799, 1, 1, NULL),
(1796, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1508905799, 1, 2, NULL),
(1797, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1508905821, 1, 2, NULL),
(1798, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1508905821, 1, 1, NULL),
(1799, 55, 101, 'mobileAction="javascript:jqcc.ccavchat.accept(''55'',''f88e56427fbc3c8bca12bbf0f36abb8d'');"|avchat_webaction=initiate|f88e56427fbc3c8bca12bbf0f36abb8d|', 1508905831, 1, 1, NULL),
(1800, 55, 101, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_f88e56427fbc3c8bca12bbf0f36abb8d_0__2', 1508905832, 1, 2, NULL),
(1801, 101, 55, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''101'',''f88e56427fbc3c8bca12bbf0f36abb8d'');"|avchat_webaction=acceptcall|f88e56427fbc3c8bca12bbf0f36abb8d', 1508905837, 1, 1, NULL),
(1802, 101, 55, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_e0efeaa026ba9d07cf707962d03e7775', 1508905883, 1, 2, NULL),
(1803, 101, 55, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_e0efeaa026ba9d07cf707962d03e7775', 1508905883, 1, 1, NULL),
(1804, 55, 101, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_f88e56427fbc3c8bca12bbf0f36abb8d', 1508905908, 1, 2, NULL),
(1805, 55, 101, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_f88e56427fbc3c8bca12bbf0f36abb8d', 1508905908, 1, 1, NULL),
(1806, 101, 52, 'mobileAction="javascript:jqcc.ccavchat.accept(''101'',''1ad466926275943b8044364e82eaf5ad'');"|avchat_webaction=initiate|1ad466926275943b8044364e82eaf5ad|', 1508905913, 1, 1, NULL),
(1807, 101, 52, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_1ad466926275943b8044364e82eaf5ad_0__2', 1508905914, 1, 2, NULL),
(1808, 101, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1508905930, 1, 2, NULL),
(1809, 101, 52, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1508905930, 1, 1, NULL),
(1810, 52, 101, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''52'',''1ad466926275943b8044364e82eaf5ad'');"|avchat_webaction=acceptcall|1ad466926275943b8044364e82eaf5ad', 1508905934, 1, 1, NULL),
(1811, 4, 101, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1508905972, 1, 1, NULL),
(1812, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1508905973, 1, 2, NULL),
(1813, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=acceptcall|d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1508905976, 1, 1, NULL),
(1814, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_d589f118f414cd335eadb8fafee89a50', 1508906093, 1, 2, NULL),
(1815, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_d589f118f414cd335eadb8fafee89a50', 1508906093, 1, 1, NULL),
(1816, 4, 101, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1508906099, 1, 1, NULL),
(1817, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1508906100, 1, 2, NULL),
(1818, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=acceptcall|d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1508906101, 1, 1, NULL),
(1819, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_d589f118f414cd335eadb8fafee89a50', 1508906146, 1, 2, NULL),
(1820, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_d589f118f414cd335eadb8fafee89a50', 1508906146, 1, 1, NULL),
(1821, 4, 55, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''3f347c076965187ace56acb912656c28'');"|avchat_webaction=initiate|3f347c076965187ace56acb912656c28|', 1508906158, 1, 1, NULL),
(1822, 4, 55, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_3f347c076965187ace56acb912656c28_0__2', 1508906159, 1, 2, NULL),
(1823, 4, 55, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_3f347c076965187ace56acb912656c28', 1508906183, 1, 2, NULL),
(1824, 4, 55, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_3f347c076965187ace56acb912656c28', 1508906183, 1, 1, NULL),
(1825, 4, 101, 'has sent you an audio chat request. <a class=''audiochat_link_d6d294b8f2f4a0eb5fc320ec70779ebd acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''d6d294b8f2f4a0eb5fc320ec70779ebd'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''d6d294b8f2f4a0eb5fc320ec70779ebd'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_d6d294b8f2f4a0eb5fc320ec70779ebd'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''d6d294b8f2f4a0eb5fc320ec70779ebd'');">click here.</a>You can also simply ignore this message.', 1508906189, 1, 1, NULL),
(1826, 4, 101, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_d6d294b8f2f4a0eb5fc320ec70779ebd'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''101'',''d6d294b8f2f4a0eb5fc320ec70779ebd'');">click here.</a>', 1508906189, 1, 2, NULL),
(1827, 101, 4, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_d6d294b8f2f4a0eb5fc320ec70779ebd accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''101'',''d6d294b8f2f4a0eb5fc320ec70779ebd'');" to=''101'' caller='''' grp=''d6d294b8f2f4a0eb5fc320ec70779ebd'' >Click here to launch the audio chat window</a>', 1508906197, 1, 1, NULL),
(1828, 101, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3782c88028d23d015c6f51b89962d298', 1508906277, 1, 2, NULL),
(1829, 101, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3782c88028d23d015c6f51b89962d298', 1508906277, 1, 1, NULL),
(1830, 4, 101, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3782c88028d23d015c6f51b89962d298', 1508906278, 1, 2, NULL),
(1831, 4, 101, 'CC^CONTROL_PLUGIN_AUDIOCHAT_ENDCALL_3782c88028d23d015c6f51b89962d298', 1508906278, 1, 1, NULL),
(1832, 4, 101, 'has sent you an audio chat request. <a class=''audiochat_link_d6d294b8f2f4a0eb5fc320ec70779ebd acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''d6d294b8f2f4a0eb5fc320ec70779ebd'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''d6d294b8f2f4a0eb5fc320ec70779ebd'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_d6d294b8f2f4a0eb5fc320ec70779ebd'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''d6d294b8f2f4a0eb5fc320ec70779ebd'');">click here.</a>You can also simply ignore this message.', 1508906281, 1, 1, NULL),
(1833, 4, 101, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_d6d294b8f2f4a0eb5fc320ec70779ebd'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''101'',''d6d294b8f2f4a0eb5fc320ec70779ebd'');">click here.</a>', 1508906281, 1, 2, NULL),
(1834, 101, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_REJECTCALL_3782c88028d23d015c6f51b89962d298', 1508906288, 1, 1, NULL),
(1835, 4, 55, 'has sent you an audio chat request. <a class=''audiochat_link_0769a072a129efcf9741d18b4ef5b566 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''4'',''0769a072a129efcf9741d18b4ef5b566'');" href=''javascript:void(0);'' to=''4'' caller='''' grp=''0769a072a129efcf9741d18b4ef5b566'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_0769a072a129efcf9741d18b4ef5b566'' onclick="javascript:jqcc.ccaudiochat.reject_call(''4'',''0769a072a129efcf9741d18b4ef5b566'');">click here.</a>You can also simply ignore this message.', 1508906307, 1, 1, NULL),
(1836, 4, 55, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_0769a072a129efcf9741d18b4ef5b566'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''55'',''0769a072a129efcf9741d18b4ef5b566'');">click here.</a>', 1508906308, 1, 2, NULL),
(1837, 4, 55, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''3f347c076965187ace56acb912656c28'');"|avchat_webaction=initiate|3f347c076965187ace56acb912656c28|', 1508906311, 1, 1, NULL),
(1838, 4, 55, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_3f347c076965187ace56acb912656c28_0__2', 1508906312, 1, 2, NULL),
(1839, 4, 55, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_0769a072a129efcf9741d18b4ef5b566', 1508906316, 1, 2, NULL),
(1840, 4, 55, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_0769a072a129efcf9741d18b4ef5b566', 1508906316, 1, 1, NULL),
(1841, 4, 55, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_0769a072a129efcf9741d18b4ef5b566', 1508906317, 1, 2, NULL),
(1842, 4, 55, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_0769a072a129efcf9741d18b4ef5b566', 1508906317, 1, 1, NULL),
(1843, 4, 55, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_0769a072a129efcf9741d18b4ef5b566', 1508906319, 1, 2, NULL),
(1844, 4, 55, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_0769a072a129efcf9741d18b4ef5b566', 1508906319, 1, 1, NULL),
(1845, 4, 55, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_3f347c076965187ace56acb912656c28', 1508906323, 1, 2, NULL),
(1846, 4, 55, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_3f347c076965187ace56acb912656c28', 1508906323, 1, 1, NULL),
(1847, 4, 55, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''3f347c076965187ace56acb912656c28'');"|avchat_webaction=initiate|3f347c076965187ace56acb912656c28|', 1508906338, 1, 1, NULL),
(1848, 4, 55, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_3f347c076965187ace56acb912656c28_0__2', 1508906338, 1, 2, NULL),
(1849, 4, 55, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_3f347c076965187ace56acb912656c28', 1508906355, 1, 2, NULL),
(1850, 4, 55, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_3f347c076965187ace56acb912656c28', 1508906355, 1, 1, NULL),
(1851, 55, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''55'',''3f347c076965187ace56acb912656c28'');"|avchat_webaction=initiate|3f347c076965187ace56acb912656c28|', 1508906362, 1, 1, NULL),
(1852, 55, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_3f347c076965187ace56acb912656c28_0__2', 1508906363, 1, 2, NULL),
(1853, 4, 55, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''4'',''3f347c076965187ace56acb912656c28'');"|avchat_webaction=acceptcall|3f347c076965187ace56acb912656c28', 1508906368, 1, 1, NULL),
(1854, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1508906428, 1, 1, NULL),
(1855, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1508906429, 1, 2, NULL),
(1856, 4, 55, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_255bacb3fd9c300d9df5ca9f391a8fc3', 1508906443, 1, 2, NULL),
(1857, 4, 55, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_255bacb3fd9c300d9df5ca9f391a8fc3', 1508906443, 1, 1, NULL),
(1858, 4, 101, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''4'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=acceptcall|d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1508906446, 1, 1, NULL),
(1859, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_d589f118f414cd335eadb8fafee89a50', 1508906525, 1, 2, NULL),
(1860, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_d589f118f414cd335eadb8fafee89a50', 1508906525, 1, 1, NULL),
(1861, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1508906694, 1, 1, NULL),
(1862, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1508906695, 1, 2, NULL),
(1863, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1508906709, 1, 2, NULL),
(1864, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1508906709, 1, 1, NULL),
(1865, 61, 101, 'mobileAction="javascript:jqcc.ccavchat.accept(''61'',''2d19cfbbe418d8cef9c6b1b3641a8c8f'');"|avchat_webaction=initiate|2d19cfbbe418d8cef9c6b1b3641a8c8f|', 1508906764, 1, 1, NULL),
(1866, 61, 101, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d19cfbbe418d8cef9c6b1b3641a8c8f_0__2', 1508906765, 1, 2, NULL),
(1867, 101, 61, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''101'',''2d19cfbbe418d8cef9c6b1b3641a8c8f'');"|avchat_webaction=acceptcall|2d19cfbbe418d8cef9c6b1b3641a8c8f', 1508906770, 1, 1, NULL),
(1868, 101, 61, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_3de3d2ccc2d9c7691a782f8ead6a7d53', 1508906912, 1, 2, NULL),
(1869, 101, 61, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_3de3d2ccc2d9c7691a782f8ead6a7d53', 1508906912, 1, 1, NULL),
(1870, 61, 101, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_3de3d2ccc2d9c7691a782f8ead6a7d53', 1508906916, 1, 2, NULL),
(1871, 61, 101, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_3de3d2ccc2d9c7691a782f8ead6a7d53', 1508906916, 1, 1, NULL),
(1872, 61, 101, '<div class="cometchat_hw_lang" style="display:none;">has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="010592fc410d76da2b0a5d444c4d5a67.png" encfilename="010592fc410d76da2b0a5d444c4d5a67.png" mediatype="1" link="//www.studycollab.com/chat/plugins/handwrite/download.php?file=010592fc410d76da2b0a5d444c4d5a67.png&amp;unencryptedfilename=010592fc410d76da2b0a5d444c4d5a67.png" href="//www.studycollab.com/chat/plugins/handwrite/download.php?file=010592fc410d76da2b0a5d444c4d5a67.png&amp;unencryptedfilename=010592fc410d76da2b0a5d444c4d5a67.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/chat/writable/handwrite/uploads/010592fc410d76da2b0a5d444c4d5a67.png" border="0" height="90" width="134"></a>', 1508906945, 1, 0, NULL),
(1873, 61, 101, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''61'' grp=''7f39f8317fbdb1988ef4c628eba0259138b3eff8baf56627478ec76a704e9b52'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''61'',''7f39f8317fbdb1988ef4c628eba0259138b3eff8baf56627478ec76a704e9b52'');">Click here to view his/her screen</a> or simply ignore this message.', 1508906976, 1, 1, NULL),
(1874, 61, 101, 'has successfully shared his/her screen.', 1508906977, 1, 2, NULL),
(1875, 61, 101, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''61'' grp=''7f39f8317fbdb1988ef4c628eba0259138b3eff8baf56627478ec76a704e9b52'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''61'',''7f39f8317fbdb1988ef4c628eba0259138b3eff8baf56627478ec76a704e9b52'');">Click here to view his/her screen</a> or simply ignore this message.', 1508907017, 1, 1, NULL),
(1876, 61, 101, 'has successfully shared his/her screen.', 1508907018, 1, 2, NULL),
(1877, 61, 101, 'has successfully shared his/her whiteboard.', 1508907083, 1, 2, NULL),
(1878, 61, 101, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''61'' random=''1508907081'' room=''8a6ea43e78a9bd55646e3c2a8e8af3c1'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''61'',''1508907081'',''8a6ea43e78a9bd55646e3c2a8e8af3c1'');">Click here to view</a> or simply ignore this message.', 1508907083, 1, 1, NULL),
(1879, 101, 55, 'has successfully shared his/her whiteboard.', 1508907103, 1, 2, NULL),
(1880, 101, 55, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''101'' random=''1508907318824'' room=''09d113730474ce05ed460850a5061e7f'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''101'',''1508907318824'',''09d113730474ce05ed460850a5061e7f'');">Click here to view</a> or simply ignore this message.', 1508907103, 1, 1, NULL),
(1881, 61, 101, 'has successfully shared his/her whiteboard.', 1508907126, 1, 2, NULL),
(1882, 61, 101, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''61'' random=''1508907081'' room=''8a6ea43e78a9bd55646e3c2a8e8af3c1'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''61'',''1508907081'',''8a6ea43e78a9bd55646e3c2a8e8af3c1'');">Click here to view</a> or simply ignore this message.', 1508907126, 1, 1, NULL),
(1883, 101, 55, 'has successfully shared his/her whiteboard.', 1508907143, 1, 2, NULL),
(1884, 101, 55, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''101'' random=''1508907358790'' room=''09d113730474ce05ed460850a5061e7f'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''101'',''1508907358790'',''09d113730474ce05ed460850a5061e7f'');">Click here to view</a> or simply ignore this message.', 1508907143, 1, 1, NULL),
(1885, 61, 101, 'mobileAction="javascript:jqcc.ccavchat.accept(''61'',''2d19cfbbe418d8cef9c6b1b3641a8c8f'');"|avchat_webaction=initiate|2d19cfbbe418d8cef9c6b1b3641a8c8f|', 1508907206, 1, 1, NULL),
(1886, 61, 101, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_2d19cfbbe418d8cef9c6b1b3641a8c8f_0__2', 1508907207, 1, 2, NULL),
(1887, 61, 101, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d19cfbbe418d8cef9c6b1b3641a8c8f', 1508907214, 1, 2, NULL),
(1888, 61, 101, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_2d19cfbbe418d8cef9c6b1b3641a8c8f', 1508907214, 1, 1, NULL),
(1889, 61, 101, 'has successfully shared his/her whiteboard.', 1508907221, 1, 2, NULL),
(1890, 61, 101, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''61'' random=''1508907219'' room=''8a6ea43e78a9bd55646e3c2a8e8af3c1'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''61'',''1508907219'',''8a6ea43e78a9bd55646e3c2a8e8af3c1'');">Click here to view</a> or simply ignore this message.', 1508907221, 1, 1, NULL),
(1891, 61, 101, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''61'' grp=''7f39f8317fbdb1988ef4c628eba0259138b3eff8baf56627478ec76a704e9b52'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''61'',''7f39f8317fbdb1988ef4c628eba0259138b3eff8baf56627478ec76a704e9b52'');">Click here to view his/her screen</a> or simply ignore this message.', 1508907330, 1, 1, NULL),
(1892, 61, 101, 'has successfully shared his/her screen.', 1508907330, 1, 2, NULL),
(1893, 101, 61, '<div class="cometchat_hw_lang" style="display:none;">has sent you a handwritten message</div><a class="mediamessage" pluginname="handwrite" filename="6994c5bbcc8dc0717a988dc42128c4c4.png" encfilename="6994c5bbcc8dc0717a988dc42128c4c4.png" mediatype="1" link="//studycollab.com/chat/plugins/handwrite/download.php?file=6994c5bbcc8dc0717a988dc42128c4c4.png&amp;unencryptedfilename=6994c5bbcc8dc0717a988dc42128c4c4.png" href="//studycollab.com/chat/plugins/handwrite/download.php?file=6994c5bbcc8dc0717a988dc42128c4c4.png&amp;unencryptedfilename=6994c5bbcc8dc0717a988dc42128c4c4.png" style="display:inline-block;margin-bottom:3px;margin-top:3px;max-width:100%;"><img class="cc_handwrite_image" src="/chat/writable/handwrite/uploads/6994c5bbcc8dc0717a988dc42128c4c4.png" border="0" height="90" width="134"></a>', 1508907381, 1, 0, NULL),
(1894, 52, 61, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''52'' grp=''9a1158154dfa42caddbd0694a4e9bdc87f39f8317fbdb1988ef4c628eba02591'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''52'',''9a1158154dfa42caddbd0694a4e9bdc87f39f8317fbdb1988ef4c628eba02591'');">Click here to view his/her screen</a> or simply ignore this message.', 1508907417, 1, 1, NULL),
(1895, 52, 61, 'has successfully shared his/her screen.', 1508907418, 0, 2, NULL),
(1896, 4, 101, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1509516736, 1, 1, NULL),
(1897, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1509516737, 1, 2, NULL),
(1898, 4, 101, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1509519259, 1, 1, NULL),
(1899, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1509519261, 1, 2, NULL),
(1900, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=acceptcall|d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1509519271, 1, 1, NULL),
(1901, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_4a338d15b82767aaafebe8eb191af56e', 1509519282, 1, 2, NULL),
(1902, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_4a338d15b82767aaafebe8eb191af56e', 1509519282, 1, 1, NULL),
(1903, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1509523612, 1, 1, NULL),
(1904, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1509523613, 1, 2, NULL),
(1905, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1509523623, 1, 2, NULL),
(1906, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1509523623, 1, 1, NULL),
(1907, 101, 4, 'Hai', 1509523696, 1, 0, NULL),
(1908, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1509523872, 1, 1, NULL),
(1909, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1509523873, 1, 2, NULL),
(1910, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1509524127, 1, 1, NULL),
(1911, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1509524128, 1, 2, NULL),
(1912, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1509524138, 1, 2, NULL),
(1913, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1509524138, 1, 1, NULL),
(1914, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1509526784, 1, 1, NULL),
(1915, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1509526784, 1, 2, NULL),
(1916, 4, 101, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''4'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=acceptcall|d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1509526799, 1, 1, NULL),
(1917, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_d589f118f414cd335eadb8fafee89a50', 1509526893, 1, 2, NULL),
(1918, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_d589f118f414cd335eadb8fafee89a50', 1509526893, 1, 1, NULL),
(1919, 101, 4, 'Hai', 1509526901, 1, 0, NULL),
(1920, 101, 4, 'How are you', 1509526909, 1, 0, NULL),
(1921, 101, 4, 'has sent you an audio chat request. <a class=''audiochat_link_f9608dfdb57687ba78981547a25fe6c9 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''101'',''f9608dfdb57687ba78981547a25fe6c9'');" href=''javascript:void(0);'' to=''101'' caller='''' grp=''f9608dfdb57687ba78981547a25fe6c9'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_f9608dfdb57687ba78981547a25fe6c9'' onclick="javascript:jqcc.ccaudiochat.reject_call(''101'',''f9608dfdb57687ba78981547a25fe6c9'');">click here.</a>You can also simply ignore this message.', 1509526991, 1, 1, NULL),
(1922, 101, 4, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_f9608dfdb57687ba78981547a25fe6c9'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''4'',''f9608dfdb57687ba78981547a25fe6c9'');">click here.</a>', 1509526992, 1, 2, NULL),
(1923, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1509527000, 1, 2, NULL),
(1924, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1509527000, 1, 1, NULL),
(1925, 4, 101, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1509527143, 1, 1, NULL),
(1926, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1509527144, 1, 2, NULL),
(1927, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=acceptcall|d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1509527159, 1, 1, NULL),
(1928, 4, 101, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1509527247, 1, 1, NULL),
(1929, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1509527247, 1, 2, NULL),
(1930, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=acceptcall|d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1509527251, 1, 1, NULL),
(1931, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_d589f118f414cd335eadb8fafee89a50', 1509527288, 1, 2, NULL),
(1932, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_d589f118f414cd335eadb8fafee89a50', 1509527288, 1, 1, NULL),
(1933, 61, 52, 'is now viewing your screen.', 1509527410, 1, 1, NULL),
(1934, 61, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''61'',''32cdf930d3b9f248ee83cb639b9cc229'');"|avchat_webaction=initiate|32cdf930d3b9f248ee83cb639b9cc229|', 1509527437, 1, 1, NULL),
(1935, 61, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_32cdf930d3b9f248ee83cb639b9cc229_0__2', 1509527438, 1, 2, NULL),
(1936, 4, 61, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''4'',''32cdf930d3b9f248ee83cb639b9cc229'');"|avchat_webaction=acceptcall|32cdf930d3b9f248ee83cb639b9cc229', 1509527440, 1, 1, NULL),
(1937, 4, 61, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_e04f141b27a0dd8c9743f6880003543a', 1509527458, 1, 2, NULL),
(1938, 4, 61, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_e04f141b27a0dd8c9743f6880003543a', 1509527458, 1, 1, NULL),
(1939, 4, 61, 'Hai bala', 1509527469, 1, 0, NULL),
(1940, 61, 4, 'hai tara', 1509527479, 1, 0, NULL),
(1941, 61, 4, 'how are you', 1509527492, 1, 0, NULL),
(1942, 61, 4, 'yeah going good', 1509527506, 1, 0, NULL),
(1943, 4, 61, 'What''s up there', 1509527518, 1, 0, NULL),
(1944, 4, 101, 'Hai', 1509621011, 1, 0, NULL),
(1945, 4, 101, 'Hai', 1510912144, 1, 0, NULL),
(1946, 4, 101, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1510912222, 1, 1, NULL),
(1947, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1510912224, 1, 2, NULL),
(1948, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1510912241, 1, 2, NULL),
(1949, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1510912241, 1, 1, NULL),
(1950, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_REJECTCALL_4a338d15b82767aaafebe8eb191af56e', 1511497096, 1, 1, NULL),
(1951, 4, 101, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1514450954, 1, 1, NULL),
(1952, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1514450954, 1, 2, NULL),
(1953, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1514450966, 1, 2, NULL),
(1954, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_', 1514450966, 1, 1, NULL),
(1955, 21, 25, 'mother', 1516516977, 1, 0, NULL),
(1956, 21, 25, 'book', 1516516999, 1, 0, NULL),
(1957, 21, 25, 'book', 1516517009, 1, 0, NULL),
(1958, 21, 25, 'go', 1516517060, 1, 0, NULL),
(1959, 21, 25, 'has sent a file (XL__Certificate_of_Achievement_Math_Enrichment_I_Name.docx). <a class="imagemessage" href="//studycollab.com/chat/plugins/filetransfer/download.php?file=17671ec8e3c8e5bfcd29c455205e8a93&amp;unencryptedfilename=XL__Certificate_of_Achievement_Math_Enrichment_I_Name.docx" target="_blank" mediatype="0">Click here to download the file</a>', 1516517085, 1, 0, NULL),
(1960, 21, 25, 'has opened a document. <a href=''javascript:void(0);'' class=''accept_Write'' to=''21'' random=''ca202ac273679ca08d924208a28c0ea4'' chatroommode=''0'' room=''ca202ac273679ca08d924208a28c0ea4'' mobileAction="javascript:jqcc.ccwriteboard.accept(''21'',''ca202ac273679ca08d924208a28c0ea4'');">Click here to view the document</a> or simply ignore this message.', 1516517102, 1, 1, NULL),
(1961, 21, 25, 'has sent you an audio chat request. <a class=''audiochat_link_e68126c48f629a705295c6207cbc64e0 acceptAudioChat'' token ='''' mobileAction="javascript:jqcc.ccaudiochat.accept(''21'',''e68126c48f629a705295c6207cbc64e0'');" href=''javascript:void(0);'' to=''21'' caller='''' grp=''e68126c48f629a705295c6207cbc64e0'' >Click here to accept it</a> To reject call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.reject_call(''21'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>You can also simply ignore this message.', 1516517166, 1, 1, NULL),
(1962, 21, 25, 'has successfully sent an audio chat request. To cancel outgoing call <a href=''javascript:void(0);'' class=''audiochat_link_e68126c48f629a705295c6207cbc64e0'' onclick="javascript:jqcc.ccaudiochat.cancel_call(''25'',''e68126c48f629a705295c6207cbc64e0'');">click here.</a>', 1516517167, 1, 2, NULL),
(1963, 21, 25, 'has opened a document. <a href=''javascript:void(0);'' class=''accept_Write'' to=''21'' random=''ca202ac273679ca08d924208a28c0ea4'' chatroommode=''0'' room=''ca202ac273679ca08d924208a28c0ea4'' mobileAction="javascript:jqcc.ccwriteboard.accept(''21'',''ca202ac273679ca08d924208a28c0ea4'');">Click here to view the document</a> or simply ignore this message.', 1516517332, 1, 1, NULL),
(1964, 21, 4, 'has opened a document. <a href=''javascript:void(0);'' class=''accept_Write'' to=''21'' random=''6e740328864f06d33292009f64f1cc7b'' chatroommode=''0'' room=''6e740328864f06d33292009f64f1cc7b'' mobileAction="javascript:jqcc.ccwriteboard.accept(''21'',''6e740328864f06d33292009f64f1cc7b'');">Click here to view the document</a> or simply ignore this message.', 1516517365, 1, 1, NULL),
(1965, 21, 4, 'has opened a document. <a href=''javascript:void(0);'' class=''accept_Write'' to=''21'' random=''6e740328864f06d33292009f64f1cc7b'' chatroommode=''0'' room=''6e740328864f06d33292009f64f1cc7b'' mobileAction="javascript:jqcc.ccwriteboard.accept(''21'',''6e740328864f06d33292009f64f1cc7b'');">Click here to view the document</a> or simply ignore this message.', 1516517393, 1, 1, NULL),
(1966, 21, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''66f8b6aaf63014cc857ead64aa69bab0'');"|avchat_webaction=initiate|66f8b6aaf63014cc857ead64aa69bab0|', 1516517457, 1, 1, NULL),
(1967, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_66f8b6aaf63014cc857ead64aa69bab0_0__2', 1516517458, 0, 2, NULL),
(1968, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1516517476, 1, 1, NULL),
(1969, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1516517477, 1, 2, NULL),
(1970, 21, 25, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''eb12c8eeb2478cbe3ed428a78cbb9be0'');"|avchat_webaction=initiate|eb12c8eeb2478cbe3ed428a78cbb9be0|', 1516517524, 1, 1, NULL),
(1971, 21, 25, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eb12c8eeb2478cbe3ed428a78cbb9be0_0__2', 1516517525, 1, 2, NULL),
(1972, 21, 46, 'mobileAction="javascript:jqcc.ccavchat.accept(''21'',''eabb32e80b4e826e1cb5493a78a14c18'');"|avchat_webaction=initiate|eabb32e80b4e826e1cb5493a78a14c18|', 1516517538, 0, 1, NULL),
(1973, 21, 46, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_eabb32e80b4e826e1cb5493a78a14c18_0__2', 1516517539, 0, 2, NULL),
(1974, 21, 25, 'good morning', 1516518293, 1, 0, NULL),
(1975, 21, 25, 'has successfully shared his/her whiteboard.', 1516601054, 1, 2, NULL),
(1976, 21, 25, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''21'' random=''1516601056'' room=''9ff5150c47325cb7e381476b09a79565'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''21'',''1516601056'',''9ff5150c47325cb7e381476b09a79565'');">Click here to view</a> or simply ignore this message.', 1516601054, 1, 1, NULL),
(1977, 21, 25, 'has successfully shared his/her whiteboard.', 1516601065, 1, 2, NULL),
(1978, 21, 25, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''21'' random=''1516601068'' room=''9ff5150c47325cb7e381476b09a79565'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''21'',''1516601068'',''9ff5150c47325cb7e381476b09a79565'');">Click here to view</a> or simply ignore this message.', 1516601065, 1, 1, NULL),
(1979, 21, 25, 'what''s the weather in new york?', 1516682659, 1, 0, NULL),
(1980, 21, 25, 'What''s the weather in New York?', 1516682677, 1, 0, NULL),
(1981, 21, 25, '@weather What''s the weather in New York?', 1516682703, 1, 0, NULL),
(1982, 21, 25, '@weather What''s the weather in New York?', 1516682939, 1, 0, NULL),
(1983, 21, 46, '@weather What''s the weather in New York?', 1516682965, 0, 0, NULL),
(1984, 21, 46, 'What''s the weather in New York?', 1516683031, 0, 0, NULL),
(1985, 21, 46, '@weather What''s the weather in New York?', 1516683063, 0, 0, NULL),
(1986, 21, 25, 'has successfully shared his/her whiteboard.', 1517026306, 1, 2, NULL),
(1987, 21, 25, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''21'' random=''1517026306'' room=''9ff5150c47325cb7e381476b09a79565'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''21'',''1517026306'',''9ff5150c47325cb7e381476b09a79565'');">Click here to view</a> or simply ignore this message.', 1517026306, 1, 1, NULL),
(1988, 21, 25, 'has successfully shared his/her whiteboard.', 1517027241, 1, 2, NULL),
(1989, 21, 25, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''21'' random=''1517027241'' room=''9ff5150c47325cb7e381476b09a79565'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''21'',''1517027241'',''9ff5150c47325cb7e381476b09a79565'');">Click here to view</a> or simply ignore this message.', 1517027241, 1, 1, NULL),
(1990, 21, 25, 'has successfully shared his/her whiteboard.', 1517632443, 1, 2, NULL),
(1991, 21, 25, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''21'' random=''1517632443'' room=''9ff5150c47325cb7e381476b09a79565'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''21'',''1517632443'',''9ff5150c47325cb7e381476b09a79565'');">Click here to view</a> or simply ignore this message.', 1517632443, 1, 1, NULL),
(1992, 4, 101, 'Hai', 1517823842, 1, 0, NULL),
(1993, 4, 5, 'CC^CONTROL_PLUGIN_BROADCAST_ENDCALL_dc84633716d4f879f40e535e6192f2f4', 1517823911, 0, 2, NULL),
(1994, 4, 5, 'CC^CONTROL_PLUGIN_BROADCAST_ENDCALL_dc84633716d4f879f40e535e6192f2f4', 1517823911, 0, 1, NULL),
(1995, 4, 5, 'CC^CONTROL_PLUGIN_BROADCAST_ENDCALL_dc84633716d4f879f40e535e6192f2f4', 1517823912, 0, 2, NULL),
(1996, 4, 5, 'CC^CONTROL_PLUGIN_BROADCAST_ENDCALL_dc84633716d4f879f40e535e6192f2f4', 1517823912, 0, 1, NULL),
(1997, 4, 5, 'CC^CONTROL_PLUGIN_BROADCAST_ENDCALL_dc84633716d4f879f40e535e6192f2f4', 1517823912, 0, 2, NULL),
(1998, 4, 5, 'CC^CONTROL_PLUGIN_BROADCAST_ENDCALL_dc84633716d4f879f40e535e6192f2f4', 1517823912, 0, 1, NULL),
(1999, 4, 5, 'CC^CONTROL_PLUGIN_BROADCAST_ENDCALL_dc84633716d4f879f40e535e6192f2f4', 1517823916, 0, 2, NULL),
(2000, 4, 5, 'CC^CONTROL_PLUGIN_BROADCAST_ENDCALL_dc84633716d4f879f40e535e6192f2f4', 1517823916, 0, 1, NULL),
(2001, 4, 5, 'CC^CONTROL_PLUGIN_BROADCAST_ENDCALL_dc84633716d4f879f40e535e6192f2f4', 1517823923, 0, 2, NULL),
(2002, 4, 5, 'CC^CONTROL_PLUGIN_BROADCAST_ENDCALL_dc84633716d4f879f40e535e6192f2f4', 1517823923, 0, 1, NULL),
(2003, 101, 4, 'Hai ji', 1520330316, 1, 0, NULL),
(2004, 101, 4, '<div style="display:none;">has sent a file (IMG1520368174005.jpg). </div><br/><a class="imagemessage mediamessage" pluginname ="filetransfer" filename="IMG1520368174005.jpg" encfilename="42e9210bb1e6efd75308cbd77fb0dc52.jpg" mediatype="1" link="//studycollab.com/chat/plugins/filetransfer/download.php?file=42e9210bb1e6efd75308cbd77fb0dc52.jpg&amp;unencryptedfilename=IMG1520368174005.jpg" href="//studycollab.com/chat/plugins/filetransfer/download.php?file=42e9210bb1e6efd75308cbd77fb0dc52.jpg&amp;unencryptedfilename=IMG1520368174005.jpg" pluginpath="/plugins/filetransfer/"><img class="file_image" type="image" src="/chat/writable/filetransfer/uploads/42e9210bb1e6efd75308cbd77fb0dc52.jpg" style="max-height:70px;"/></a>', 1520330403, 1, 0, NULL),
(2005, 101, 4, 'mobileAction="javascript:jqcc.ccaudiochat.accept(''101'',''f9608dfdb57687ba78981547a25fe6c9'');"|audiochat_webaction=initiate|f9608dfdb57687ba78981547a25fe6c9|', 1520330530, 1, 1, NULL),
(2006, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_f9608dfdb57687ba78981547a25fe6c9_0__2', 1520330531, 1, 2, NULL),
(2007, 101, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_', 1520330550, 1, 2, NULL),
(2008, 101, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_', 1520330550, 1, 1, NULL),
(2009, 4, 101, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1524282985, 1, 1, NULL),
(2010, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1524282986, 1, 2, NULL),
(2011, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1524283021, 1, 2, NULL),
(2012, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1524283021, 1, 1, NULL),
(2013, 47, 4, 'has successfully shared his/her whiteboard.', 1524283178, 1, 2, NULL),
(2014, 47, 4, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''47'' random=''1524283169695'' room=''d719ddfcc18980ca7c82ad5362b92d1c'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''47'',''1524283169695'',''d719ddfcc18980ca7c82ad5362b92d1c'');">Click here to view</a> or simply ignore this message.', 1524283178, 1, 1, NULL),
(2015, 4, 47, 'is now viewing your whiteboard.', 1524283196, 1, 1, NULL),
(2016, 101, 4, 'hai ji', 1524283230, 1, 0, NULL),
(2017, 101, 4, 'now you can call me', 1524283236, 1, 0, NULL),
(2018, 101, 4, 'now', 1524283241, 1, 0, NULL),
(2019, 4, 101, 'mobileAction="javascript:jqcc.ccavchat.accept(''4'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1524283249, 1, 1, NULL),
(2020, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1524283250, 1, 2, NULL),
(2021, 101, 4, 'Sorry i dont have face cam', 1524283255, 1, 0, NULL),
(2022, 101, 4, 'so you cant able to call me', 1524283263, 1, 0, NULL),
(2023, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1524283265, 1, 2, NULL),
(2024, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_CANCELCALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1524283265, 1, 1, NULL),
(2025, 101, 4, 'mobileAction="javascript:jqcc.ccavchat.accept(''101'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=initiate|d00166d5ef0a4bf701ad1cd3ff7d8a4a|', 1524283268, 1, 1, NULL),
(2026, 101, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_d00166d5ef0a4bf701ad1cd3ff7d8a4a_0__2', 1524283269, 1, 2, NULL),
(2027, 4, 101, 'mobileAction="javascript:jqcc.ccavchat.accept_fid(''4'',''d00166d5ef0a4bf701ad1cd3ff7d8a4a'');"|avchat_webaction=acceptcall|d00166d5ef0a4bf701ad1cd3ff7d8a4a', 1524283275, 1, 1, NULL),
(2028, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_d589f118f414cd335eadb8fafee89a50', 1524283333, 1, 2, NULL),
(2029, 4, 101, 'CC^CONTROL_PLUGIN_AVCHAT_ENDCALL_d589f118f414cd335eadb8fafee89a50', 1524283333, 1, 1, NULL),
(2030, 4, 101, 'has successfully shared his/her whiteboard.', 1524638777, 0, 2, NULL),
(2031, 4, 101, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''4'' random=''1524638782'' room=''231173b9f1dc730cde64f8cb33144cad'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''4'',''1524638782'',''231173b9f1dc730cde64f8cb33144cad'');">Click here to view</a> or simply ignore this message.', 1524638777, 0, 1, NULL),
(2032, 4, 101, 'has shared his/her screen with you. <a href=''javascript:void(0);'' class=''acceptSceenshare'' to=''4'' grp=''a87ff679a2f3e71d9181a67b7542122c38b3eff8baf56627478ec76a704e9b52'' join_url='''' start_url='''' chatroommode=''0'' mobileAction="javascript:jqcc.ccscreenshare.accept(''4'',''a87ff679a2f3e71d9181a67b7542122c38b3eff8baf56627478ec76a704e9b52'');">Click here to view his/her screen</a> or simply ignore this message.', 1524638811, 0, 1, NULL),
(2033, 4, 101, 'has successfully shared his/her screen.', 1524638812, 0, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_announcements`
--

CREATE TABLE IF NOT EXISTS `cometchat_announcements` (
  `id` int(10) unsigned NOT NULL,
  `announcement` text NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `to` int(10) NOT NULL,
  `recd` int(1) NOT NULL DEFAULT '0',
  `custom_data` text
) ENGINE=InnoDB AUTO_INCREMENT=5003 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cometchat_announcements`
--

INSERT INTO `cometchat_announcements` (`id`, `announcement`, `time`, `to`, `recd`, `custom_data`) VALUES
(5000, 'Hello Users,\r\n\r\nThis is sample announcement.\r\n\r\nWe have recently lunched our new site.\r\nI hope you enjoy it :)\r\n', 1490091498, 0, 0, NULL),
(5002, 'hi', 1491824544, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_archive`
--

CREATE TABLE IF NOT EXISTS `cometchat_archive` (
  `id` bigint(20) unsigned NOT NULL,
  `from` int(10) unsigned NOT NULL,
  `to` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `sent` int(10) unsigned NOT NULL DEFAULT '0',
  `read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `direction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `custom_data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_block`
--

CREATE TABLE IF NOT EXISTS `cometchat_block` (
  `id` int(10) unsigned NOT NULL,
  `fromid` int(10) unsigned NOT NULL,
  `toid` int(10) unsigned NOT NULL,
  `custom_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_bots`
--

CREATE TABLE IF NOT EXISTS `cometchat_bots` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `keywords` text CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `apikey` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cometchat_bots`
--

INSERT INTO `cometchat_bots` (`id`, `name`, `description`, `keywords`, `avatar`, `apikey`) VALUES
(1, 'Weather', 'Get the latest weather for any city!\r\n\r\nKeywords:\r\n\r\n@weather What''s the weather in New York?\r\n\r\nSummary:\r\n\r\nStepping out for a drink? Dress casually for a summer day or suit up for winter. Use the weather bot to quickly find out the weather in any city.\r\n\r\nIt''s as simple as:\r\nWhat''s the weather in New York?\r\n\r\nAnd the bot will run it''s computations and get back with the current up-to-date weather. Now never carry an umbrella on a rainy day and vice versa!', '', '/chat/writable/bots/Weather.jpg', 'd-cometchat-47ca54130d704620d0621bfa97e55ec02f2d75f0');

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_chatroommessages`
--

CREATE TABLE IF NOT EXISTS `cometchat_chatroommessages` (
  `id` bigint(20) unsigned NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `chatroomid` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `sent` int(10) unsigned NOT NULL,
  `custom_data` text
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cometchat_chatroommessages`
--

INSERT INTO `cometchat_chatroommessages` (`id`, `userid`, `chatroomid`, `message`, `sent`, `custom_data`) VALUES
(3, 4, 1, 'ni', 1490251199, NULL),
(4, 21, 2, 'How do we add contacts?', 1490886485, NULL),
(5, 21, 2, 'How do u add other users to a group?', 1490887837, NULL),
(6, 4, 3, 'hi', 1491538272, NULL),
(7, 61, 3, 'tghsrtghr', 1491538337, NULL),
(8, 4, 3, 'hi', 1491538352, NULL),
(9, 4, 3, 'tara', 1491538378, NULL),
(10, 4, 3, 'CC^CONTROL_deletedchatroom_3', 1491538399, NULL),
(11, 4, 4, 'hi', 1491538467, NULL),
(12, 4, 4, 'CC^CONTROL_deletedchatroom_4', 1491538549, NULL),
(13, 4, 4, 'CC^CONTROL_deletedchatroom_4', 1491538563, NULL),
(17, 4, 5, 'CC^CONTROL_deletemessage_15', 1491561316, NULL),
(18, 4, 5, 'CC^CONTROL_deletemessage_15', 1491561318, NULL),
(19, 4, 5, 'CC^CONTROL_deletemessage_16', 1491561326, NULL),
(22, 4, 5, 'CC^CONTROL_deletemessage_21', 1491561371, NULL),
(23, 4, 5, 'CC^CONTROL_deletemessage_20', 1491561381, NULL),
(25, 4, 5, 'CC^CONTROL_deletemessage_14', 1491561392, NULL),
(26, 52, 5, 'CC^CONTROL_deletemessage_24', 1491561400, NULL),
(28, 1, 5, 'CC^CONTROL_deletemessage_27', 1491815079, NULL),
(29, 4, 5, 'has started a audio conversation. <a token ='''' href=''javascript:void(0);'' onclick="javascript:jqcc.ccaudiochat.join(''b600e1fc6683565a42c67bdd0478d1cc'');">Click here to join the conversation.</a> ', 1491816333, NULL),
(30, 1, 5, '<span style="color:#6BB9F0">hi</span>', 1491816527, NULL),
(31, 4, 5, 'has started a audio conversation. <a token ='''' href=''javascript:void(0);'' onclick="javascript:jqcc.ccaudiochat.join(''b600e1fc6683565a42c67bdd0478d1cc'');">Click here to join the conversation.</a> ', 1491816546, NULL),
(32, 4, 5, 'has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''5'' grp =''b61e9a2681b589c392c50e3a8f508857'' caller='''' mobileAction="javascript:jqcc.ccavchat.join(''b61e9a2681b589c392c50e3a8f508857'');" >Click here to join the conversation.</a> ', 1491816687, NULL),
(33, 1, 5, 'has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''5'' grp =''6a11d42498a73f7038f2b3ba1b2d6f28'' caller='''' mobileAction="javascript:jqcc.ccavchat.join(''6a11d42498a73f7038f2b3ba1b2d6f28'');" >Click here to join the conversation.</a> ', 1491816874, NULL),
(34, 4, 5, 'has started a audio conversation. <a token ='''' href=''javascript:void(0);'' onclick="javascript:jqcc.ccaudiochat.join(''b600e1fc6683565a42c67bdd0478d1cc'');">Click here to join the conversation.</a> ', 1491817044, NULL),
(35, 4, 5, 'has started a audio conversation. <a token ='''' href=''javascript:void(0);'' onclick="javascript:jqcc.ccaudiochat.join(''b600e1fc6683565a42c67bdd0478d1cc'');">Click here to join the conversation.</a> ', 1491817141, NULL),
(37, 1, 5, 'CC^CONTROL_deletemessage_36', 1491817221, NULL),
(38, 4, 5, 'has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''5'' grp =''b61e9a2681b589c392c50e3a8f508857'' caller='''' mobileAction="javascript:jqcc.ccavchat.join(''b61e9a2681b589c392c50e3a8f508857'');" >Click here to join the conversation.</a> ', 1491818785, NULL),
(39, 4, 5, 'has started a audio conversation. <a token ='''' href=''javascript:void(0);'' onclick="javascript:jqcc.ccaudiochat.join(''b600e1fc6683565a42c67bdd0478d1cc'');">Click here to join the conversation.</a> ', 1491818962, NULL),
(40, 1, 5, 'has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''5'' grp =''6a11d42498a73f7038f2b3ba1b2d6f28'' caller='''' mobileAction="javascript:jqcc.ccavchat.join(''6a11d42498a73f7038f2b3ba1b2d6f28'');" >Click here to join the conversation.</a> ', 1491819046, NULL),
(41, 52, 5, '<img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/bomb.png" title="Bomb"> <img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/gun.png" title="Gun">', 1491822348, NULL),
(42, 1, 5, 'has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''5'' grp =''6a11d42498a73f7038f2b3ba1b2d6f28'' caller='''' mobileAction="javascript:jqcc.ccavchat.join(''6a11d42498a73f7038f2b3ba1b2d6f28'');" >Click here to join the conversation.</a> ', 1491822506, NULL),
(43, 0, 1, 'CC^CONTROL_deletedchatroom_1', 1491824786, NULL),
(44, 1, 5, '<span style="color:#6BB9F0">sdfsdf</span>', 1491824822, NULL),
(45, 1, 5, '<span style="color:#6BB9F0">gfdhfdgh</span>', 1491824845, NULL),
(46, 1, 5, '<span style="color:#6BB9F0">kjoljkl</span>', 1491824852, NULL),
(47, 1, 5, '<span style="color:#96281B">l;''</span>', 1491824871, NULL),
(48, 1, 5, '<span style="color:#96281B">l;''</span>', 1491824875, NULL),
(49, 1, 5, '<span style="color:#000000">kol;kl</span>', 1491824890, NULL),
(51, 4, 5, 'mbnb', 1491824915, NULL),
(52, 4, 5, ',jm', 1491824926, NULL),
(53, 1, 5, 'has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''5'' grp =''6a11d42498a73f7038f2b3ba1b2d6f28'' caller='''' mobileAction="javascript:jqcc.ccavchat.join(''6a11d42498a73f7038f2b3ba1b2d6f28'');" >Click here to join the conversation.</a> ', 1491825032, NULL),
(55, 35, 5, 'CC^CONTROL_deletemessage_54', 1491826778, NULL),
(56, 4, 5, 'CC^CONTROL_deletemessage_50', 1491826804, NULL),
(57, 4, 5, 'has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''5'' grp =''b61e9a2681b589c392c50e3a8f508857'' caller='''' mobileAction="javascript:jqcc.ccavchat.join(''b61e9a2681b589c392c50e3a8f508857'');" >Click here to join the conversation.</a> ', 1491826815, NULL),
(58, 1, 5, 'has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''5'' grp =''6a11d42498a73f7038f2b3ba1b2d6f28'' caller=''cometchat_embedded_iframe'' mobileAction="javascript:jqcc.ccavchat.join(''6a11d42498a73f7038f2b3ba1b2d6f28'');" >Click here to join the conversation.</a> ', 1491905680, NULL),
(59, 52, 5, 'hhhhh', 1492228629, NULL),
(60, 1, 5, 'has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''5'' grp =''6a11d42498a73f7038f2b3ba1b2d6f28'' caller='''' mobileAction="javascript:jqcc.ccavchat.join(''6a11d42498a73f7038f2b3ba1b2d6f28'');" >Click here to join the conversation.</a> ', 1492229558, NULL),
(61, 1, 5, 'lklkl', 1492229618, NULL),
(62, 62, 5, 'has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''5'' grp =''65e21f7601028e895870977b56a8c07c'' caller='''' mobileAction="javascript:jqcc.ccavchat.join(''65e21f7601028e895870977b56a8c07c'');" >Click here to join the conversation.</a> ', 1492232708, NULL),
(63, 4, 5, 'has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''5'' grp =''b61e9a2681b589c392c50e3a8f508857'' caller='''' mobileAction="javascript:jqcc.ccavchat.join(''b61e9a2681b589c392c50e3a8f508857'');" >Click here to join the conversation.</a> ', 1492412838, NULL),
(64, 4, 5, 'has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''5'' grp =''b61e9a2681b589c392c50e3a8f508857'' caller='''' mobileAction="javascript:jqcc.ccavchat.join(''b61e9a2681b589c392c50e3a8f508857'');" >Click here to join the conversation.</a> ', 1492412975, NULL),
(65, 55, 5, 'has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''5'' grp =''117657943d24425be599e5acf260fe3e'' caller=''cometchat_embedded_iframe'' mobileAction="javascript:jqcc.ccavchat.join(''117657943d24425be599e5acf260fe3e'');" >Click here to join the conversation.</a> ', 1492413357, NULL),
(66, 4, 5, 'has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''5'' grp =''b61e9a2681b589c392c50e3a8f508857'' caller='''' mobileAction="javascript:jqcc.ccavchat.join(''b61e9a2681b589c392c50e3a8f508857'');" >Click here to join the conversation.</a> ', 1492413784, NULL),
(67, 4, 5, 'has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''5'' grp =''b61e9a2681b589c392c50e3a8f508857'' caller='''' mobileAction="javascript:jqcc.ccavchat.join(''b61e9a2681b589c392c50e3a8f508857'');" >Click here to join the conversation.</a> ', 1492422261, NULL),
(68, 4, 5, 'has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''5'' grp =''b61e9a2681b589c392c50e3a8f508857'' caller='''' mobileAction="javascript:jqcc.ccavchat.join(''b61e9a2681b589c392c50e3a8f508857'');" >Click here to join the conversation.</a> ', 1492752427, NULL),
(69, 21, 2, 'has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''2'' grp =''1fdb01af0fbb68e9e5c05be67c94595e'' caller='''' mobileAction="javascript:jqcc.ccavchat.join(''1fdb01af0fbb68e9e5c05be67c94595e'');" >Click here to join the conversation.</a> ', 1494050101, NULL),
(72, 47, 6, 'CC^CONTROL_deletemessage_71', 1495013215, NULL),
(73, 47, 6, 'has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''6'' grp =''8089b5e985728389eade609a18311465'' caller='''' mobileAction="javascript:jqcc.ccavchat.join(''8089b5e985728389eade609a18311465'');" >Click here to join the conversation.</a> ', 1496136880, NULL),
(74, 47, 7, 'Hi', 1498045141, NULL),
(75, 47, 6, '<span style="color:#FFFFFF">Hello all</span>', 1498127199, NULL),
(76, 47, 7, 'Hi', 1498137041, NULL),
(78, 21, 2, 'CC^CONTROL_deletemessage_77', 1504723353, NULL),
(79, 21, 2, 'CC^CONTROL_deletemessage_70', 1504723358, NULL),
(80, 21, 2, ' has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''2'' grp=''1fdb01af0fbb68e9e5c05be67c94595e'' caller='''' mobileAction="javascript:jqcc.ccavchat.join(''1fdb01af0fbb68e9e5c05be67c94595e'');" >Click here to join the conversation.</a>  ', 1516517206, NULL),
(81, 21, 2, ' has started a video conversation. <a token ='''' href=''javascript:void(0);'' class=''join_Avchat'' to=''2'' grp=''1fdb01af0fbb68e9e5c05be67c94595e'' caller='''' mobileAction="javascript:jqcc.ccavchat.join(''1fdb01af0fbb68e9e5c05be67c94595e'');" >Click here to join the conversation.</a>  ', 1516517594, NULL),
(82, 21, 2, ' has opened a document. <a href=''javascript:void(0);'' class=''accept_Write'' to=''21'' random=''21f4af90198154362cd836293bec37b7'' chatroommode=''1'' room=''21f4af90198154362cd836293bec37b7'' mobileAction="javascript:jqcc.ccwriteboard.accept(''21'',''21f4af90198154362cd836293bec37b7'',''1'');">Click here to view the document</a> ', 1516683142, NULL),
(83, 21, 2, ' has started a video broadcast. <a href=''javascript:void(0);'' grp=''2'' class=''join_Broadcast'' mobileAction="javascript:jqcc.ccbroadcast.join(''2'');">Click here to view the broadcast.</a> ', 1516683399, NULL),
(84, 21, 2, ' book ', 1516683449, NULL),
(85, 4, 5, ' has started a video broadcast. <a href=''javascript:void(0);'' grp=''5'' class=''join_Broadcast'' mobileAction="javascript:jqcc.ccbroadcast.join(''5'');">Click here to view the broadcast.</a> ', 1517823908, NULL),
(86, 4, 5, ' has shared a whiteboard. <a href=''javascript:void(0);'' class=''accept_White'' to=''5'' random=''0'' room=''8f8dd6e350253a78704ee1a7d5104c10'' chatroommode=''1'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''5'',''0'',''1'',''8f8dd6e350253a78704ee1a7d5104c10'');">Click here to view</a> ', 1517823931, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_chatroommessages_archive`
--

CREATE TABLE IF NOT EXISTS `cometchat_chatroommessages_archive` (
  `id` bigint(20) unsigned NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `chatroomid` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `sent` int(10) unsigned NOT NULL,
  `custom_data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_chatrooms`
--

CREATE TABLE IF NOT EXISTS `cometchat_chatrooms` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastactivity` int(10) unsigned NOT NULL,
  `createdby` int(10) unsigned NOT NULL,
  `createdon` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `vidsession` varchar(512) DEFAULT NULL,
  `invitedusers` text,
  `guid` varchar(255) DEFAULT NULL,
  `custom_data` text
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cometchat_chatrooms`
--

INSERT INTO `cometchat_chatrooms` (`id`, `name`, `lastactivity`, `createdby`, `createdon`, `password`, `type`, `vidsession`, `invitedusers`, `guid`, `custom_data`) VALUES
(2, 'senthil', 1516683449, 21, 0, '', 0, NULL, NULL, NULL, NULL),
(5, 'helloWorld', 1517823931, 4, 0, '', 0, NULL, NULL, NULL, NULL),
(6, 'StudyCollab', 1498127199, 47, 0, '', 0, NULL, NULL, NULL, NULL),
(7, 'StudyCollab123', 1498137041, 47, 0, '', 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_chatrooms_archive`
--

CREATE TABLE IF NOT EXISTS `cometchat_chatrooms_archive` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `lastactivity` int(10) unsigned NOT NULL,
  `createdby` int(10) unsigned NOT NULL,
  `createdon` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `vidsession` varchar(512) DEFAULT NULL,
  `invitedusers` text,
  `guid` varchar(255) DEFAULT NULL,
  `custom_data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_chatrooms_users`
--

CREATE TABLE IF NOT EXISTS `cometchat_chatrooms_users` (
  `userid` int(10) unsigned NOT NULL,
  `chatroomid` int(10) unsigned NOT NULL,
  `isbanned` int(1) DEFAULT '0',
  `custom_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cometchat_chatrooms_users`
--

INSERT INTO `cometchat_chatrooms_users` (`userid`, `chatroomid`, `isbanned`, `custom_data`) VALUES
(1, 2, 0, NULL),
(1, 5, 0, NULL),
(4, 1, 0, NULL),
(4, 2, 0, NULL),
(4, 3, 0, NULL),
(4, 5, 0, NULL),
(4, 6, 0, NULL),
(21, 2, 0, NULL),
(21, 5, 0, NULL),
(24, 2, 0, NULL),
(25, 5, 0, NULL),
(35, 5, 0, NULL),
(35, 6, 0, NULL),
(47, 2, 0, NULL),
(47, 6, 0, NULL),
(47, 7, 0, NULL),
(48, 2, 0, NULL),
(48, 5, 0, NULL),
(48, 6, 0, NULL),
(52, 1, 0, NULL),
(52, 5, 0, NULL),
(52, 6, 0, NULL),
(52, 7, 0, NULL),
(55, 5, 0, NULL),
(61, 5, 0, NULL),
(62, 5, 0, NULL),
(101, 5, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_chatrooms_users_archive`
--

CREATE TABLE IF NOT EXISTS `cometchat_chatrooms_users_archive` (
  `userid` int(10) unsigned NOT NULL,
  `chatroomid` int(10) unsigned NOT NULL,
  `isbanned` int(1) DEFAULT '0',
  `custom_data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_colors`
--

CREATE TABLE IF NOT EXISTS `cometchat_colors` (
  `color_key` varchar(100) NOT NULL,
  `color_value` text NOT NULL,
  `color` varchar(50) NOT NULL,
  `custom_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cometchat_colors`
--

INSERT INTO `cometchat_colors` (`color_key`, `color_value`, `color`, `custom_data`) VALUES
('color1', 'a:3:{s:7:"primary";s:6:"56a8e3";s:9:"secondary";s:6:"3777A7";s:5:"hover";s:6:"ECF5FB";}', 'color1', NULL),
('color10', 'a:3:{s:7:"primary";s:6:"23025E";s:9:"secondary";s:6:"3D1F84";s:5:"hover";s:6:"E5D7FF";}', 'color10', NULL),
('color11', 'a:3:{s:7:"primary";s:6:"24D4F6";s:9:"secondary";s:6:"059EBB";s:5:"hover";s:6:"DBF9FF";}', 'color11', NULL),
('color12', 'a:3:{s:7:"primary";s:6:"289D57";s:9:"secondary";s:6:"09632D";s:5:"hover";s:6:"DDF9E8";}', 'color12', NULL),
('color13', 'a:3:{s:7:"primary";s:6:"D9B197";s:9:"secondary";s:6:"C38B66";s:5:"hover";s:6:"FFF1E8";}', 'color13', NULL),
('color14', 'a:3:{s:7:"primary";s:6:"FF67AB";s:9:"secondary";s:6:"D6387E";s:5:"hover";s:6:"F3DDE7";}', 'color14', NULL),
('color15', 'a:3:{s:7:"primary";s:6:"8E24AA";s:9:"secondary";s:6:"7B1FA2";s:5:"hover";s:6:"EFE8FD";}', 'color15', NULL),
('color2', 'a:3:{s:7:"primary";s:6:"4DC5CE";s:9:"secondary";s:6:"068690";s:5:"hover";s:6:"D3EDEF";}', 'color2', NULL),
('color3', 'a:3:{s:7:"primary";s:6:"FFC107";s:9:"secondary";s:6:"FFA000";s:5:"hover";s:6:"FFF8E2";}', 'color3', NULL),
('color4', 'a:3:{s:7:"primary";s:6:"FB4556";s:9:"secondary";s:6:"BB091A";s:5:"hover";s:6:"F5C3C8";}', 'color4', NULL),
('color5', 'a:3:{s:7:"primary";s:6:"DBA0C3";s:9:"secondary";s:6:"D87CB3";s:5:"hover";s:6:"ECD9E5";}', 'color5', NULL),
('color6', 'a:3:{s:7:"primary";s:6:"3B5998";s:9:"secondary";s:6:"213A6D";s:5:"hover";s:6:"DFEAFF";}', 'color6', NULL),
('color7', 'a:3:{s:7:"primary";s:6:"065E52";s:9:"secondary";s:6:"244C4E";s:5:"hover";s:6:"AFCCAF";}', 'color7', NULL),
('color8', 'a:3:{s:7:"primary";s:6:"FF8A2E";s:9:"secondary";s:6:"CE610C";s:5:"hover";s:6:"FDD9BD";}', 'color8', NULL),
('color9', 'a:3:{s:7:"primary";s:6:"E99090";s:9:"secondary";s:6:"B55353";s:5:"hover";s:6:"FDE8E8";}', 'color9', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_guests`
--

CREATE TABLE IF NOT EXISTS `cometchat_guests` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `custom_data` text
) ENGINE=InnoDB AUTO_INCREMENT=10000002 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cometchat_guests`
--

INSERT INTO `cometchat_guests` (`id`, `name`, `custom_data`) VALUES
(10000000, 'guest-10000000', NULL),
(10000001, '93221', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_guests_archive`
--

CREATE TABLE IF NOT EXISTS `cometchat_guests_archive` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `custom_data` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_languages`
--

CREATE TABLE IF NOT EXISTS `cometchat_languages` (
  `lang_key` varchar(255) NOT NULL COMMENT 'Key of a language variable',
  `lang_text` text NOT NULL COMMENT 'Text/value of a language variable',
  `code` varchar(20) NOT NULL COMMENT 'Language code for e.g. en for English',
  `type` varchar(20) NOT NULL COMMENT 'Type of CometChat add on for e.g. module/plugin/extension/function',
  `name` varchar(50) NOT NULL COMMENT 'Name of add on for e.g. announcement,smilies, etc.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stores all CometChat languages';

--
-- Dumping data for table `cometchat_languages`
--

INSERT INTO `cometchat_languages` (`lang_key`, `lang_text`, `code`, `type`, `name`) VALUES
('rtl', '0', 'en', 'core', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_messages_old_1491809295`
--

CREATE TABLE IF NOT EXISTS `cometchat_messages_old_1491809295` (
  `id` int(10) unsigned NOT NULL,
  `from` int(10) unsigned NOT NULL,
  `to` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `sent` int(10) unsigned NOT NULL DEFAULT '0',
  `read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `direction` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cometchat_messages_old_1491809295`
--

INSERT INTO `cometchat_messages_old_1491809295` (`id`, `from`, `to`, `message`, `sent`, `read`, `direction`) VALUES
(1, 4, 1, 'hi', 1490250736, 1, 0),
(2, 1, 4, '<img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/smile.png" title="Smile">', 1490250802, 1, 0),
(3, 52, 4, 'hi', 1490251029, 1, 0),
(4, 4, 52, 'hello', 1490251069, 1, 0),
(5, 52, 4, '<img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/sunny.png" title="Sunny">', 1490251075, 1, 0),
(6, 4, 52, '<img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/clock12.png" title="Clock12">', 1490251127, 1, 0),
(7, 52, 4, '<img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/x.png" title="X">', 1490251178, 1, 0),
(8, 1, 4, '<img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/blush.png" title="Blush">', 1490251232, 1, 0),
(9, 52, 4, '<img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/heavy_exclamation_mark.png" title="Heavy_exclamation_mark">', 1490253077, 1, 0),
(10, 1, 4, 'hi', 1490332993, 1, 0),
(11, 1, 52, 'hi', 1490333010, 1, 0),
(12, 4, 1, 'ijk;ol', 1490333053, 1, 0),
(13, 52, 1, 'hi', 1490333286, 1, 0),
(14, 52, 1, 'dsfds', 1490333300, 1, 0),
(15, 52, 1, 'asdf', 1490333310, 1, 0),
(16, 52, 4, '<img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/flushed.png" title="Flushed">', 1490333326, 1, 0),
(17, 4, 1, '<img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/flushed.png" title="Flushed"> <img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/flushed.png" title="Flushed">', 1490333338, 1, 0),
(18, 52, 4, 'adsfsdf', 1490333342, 1, 0),
(19, 4, 1, '<img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/flushed.png" title="Flushed">', 1490333347, 1, 0),
(20, 52, 4, 'asd', 1490333348, 1, 0),
(21, 52, 4, 'asdfdsf', 1490333391, 1, 0),
(22, 52, 1, 'sfdfsg', 1490333400, 1, 0),
(23, 1, 61, 'hi', 1490852087, 1, 0),
(24, 52, 4, '<img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/sunny.png" title="Sunny">', 1490852140, 1, 0),
(25, 61, 4, 'adsasdsa', 1490852342, 1, 0),
(26, 61, 4, '<img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/smile.png" title="Smile">', 1490852362, 1, 0),
(27, 52, 4, 'sa', 1490852385, 1, 0),
(28, 61, 4, 'sfcszxc', 1491538191, 1, 0),
(29, 21, 4, 'can we skype?', 1491543061, 1, 0),
(30, 4, 52, 'zxcvxvccx', 1491559555, 1, 0),
(31, 4, 52, '<div style=''display:none;''>has sent a file</div><br/><a class="imagemessage mediamessage" pluginname ="filetransfer" filename="Capture1.png" encfilename="5150c9d0dea31f5d0bde944688aac21c.png" mediatype="1" href="//www.studycollab.com/cometchat/plugins/filetransfer/download.php?file=5150c9d0dea31f5d0bde944688aac21c.png&amp;unencryptedfilename=Capture1.png"><img class="file_image" type="image" src="/cometchat/writable/filetransfer/uploads/5150c9d0dea31f5d0bde944688aac21c.png" style="max-height:70px;"/></a>', 1491559831, 1, 0),
(32, 52, 4, 'fgsdg', 1491560372, 1, 0),
(33, 52, 4, '<img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/zap.png" title="Zap"> <img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/zap.png" title="Zap"> <img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/zap.png" title="Zap"> <img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/zap.png" title="Zap"> <img class="cometchat_smiley" height="20" width="20" src="/cometchat/writable/images/smileys/zap.png" title="Zap">', 1491560401, 1, 0),
(34, 4, 52, 'olk;lk;;l', 1491560940, 1, 0),
(35, 4, 1, 'hi', 1491561046, 1, 0),
(36, 4, 1, '<div style=''display:none;''>has sent a file</div><br/><a class="imagemessage mediamessage" pluginname ="filetransfer" filename="images.jpg" encfilename="8412367dbb82582e40c091cce5c174ba.jpg" mediatype="1" href="//studycollab.com/cometchat/plugins/filetransfer/download.php?file=8412367dbb82582e40c091cce5c174ba.jpg&amp;unencryptedfilename=images.jpg"><img class="file_image" type="image" src="/cometchat/writable/filetransfer/uploads/8412367dbb82582e40c091cce5c174ba.jpg" style="max-height:70px;"/></a>', 1491561080, 1, 0),
(37, 4, 1, 'has invited you to join chatroom helloWorld. <a href="javascript:jqcc.cometchat.joinChatroom(''5'','''',''aGVsbG9Xb3JsZA=='')">Join</a>', 1491561205, 1, 1),
(38, 4, 52, 'has invited you to join chatroom helloWorld. <a href="javascript:jqcc.cometchat.joinChatroom(''5'','''',''aGVsbG9Xb3JsZA=='')">Join</a>', 1491561206, 1, 1),
(39, 52, 4, 'dsvaa', 1491561284, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_recentconversation`
--

CREATE TABLE IF NOT EXISTS `cometchat_recentconversation` (
  `convo_id` varchar(100) NOT NULL,
  `id` int(10) unsigned NOT NULL,
  `from` int(10) unsigned NOT NULL,
  `to` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `sent` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cometchat_recentconversation`
--

INSERT INTO `cometchat_recentconversation` (`convo_id`, `id`, `from`, `to`, `message`, `sent`) VALUES
('3067421298d43b4d47a696f1d88e588c', 1985, 21, 46, '@weather What''s the weather in New York?', '1516683063'),
('312b2962e4be6ccb1861b2e47be7098f', 223, 1, 61, 'hi', '1491822269'),
('4f1b76831c9217997ee60b3c579f7693', 138, 4, 35, 'has accepted your audio chat request. <a href=''javascript:void(0);'' class=''audiochat_link_b594acb683ed3257f925e1d50aa0b47d accept_fid'' mobileAction="javascript:jqcc.ccaudiochat.accept_fid(''4'',''b594acb683ed3257f925e1d50aa0b47d'');" to=''4'' caller='''' grp=''b594acb683ed3257f925e1d50aa0b47d'' >Click here to launch the audio chat window</a>', '1491817499'),
('694f7ba36a22f62a82e9d6d36795aba2', 2033, 4, 101, 'has successfully shared his/her screen.', '1524638812'),
('73403dad9016c965b7752d8f4346ad27', 1967, 21, 4, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_66f8b6aaf63014cc857ead64aa69bab0_0__2', '1516517458'),
('92efd458e815a7c11cf13fbbcda34c03', 1943, 4, 61, 'What''s up there', '1509527518'),
('a5f77d720e4e9e02be970c69469af4e2', 1991, 21, 25, 'has shared his/her whiteboard with you. <a href=''javascript:void(0);'' class=''accept_White'' to=''21'' random=''1517632443'' room=''9ff5150c47325cb7e381476b09a79565'' chatroommode=''0'' mobileAction="javascript:jqcc.ccwhiteboard.accept(''21'',''1517632443'',''9ff5150c47325cb7e381476b09a79565'');">Click here to view</a> or simply ignore this message.', '1517632443'),
('b6c36e50466b99158006b50a324bf415', 21, 4, 1, 'CC^CONTROL_PLUGIN_AVCHAT_INITIATECALL_ec23fc99fbd87b2ffdeba936c32b01db_0__2', '1491823239'),
('c86ec2c4f1c83abf692558e9ebfaafd5', 1933, 61, 52, 'is now viewing your screen.', '1509527410'),
('ce2af73b6795d7e4640ecff05f90ae36', 2015, 4, 47, 'is now viewing your whiteboard.', '1524283196'),
('dffd0cc6d45b7a4550126bc36f40e4e0', 1, 52, 4, 'CC^CONTROL_PLUGIN_AUDIOCHAT_CANCELCALL_2565ed9ec11960dbb60436ad6d85534c', '1491812972'),
('e8313c52ef16333e042d264895f2d57e', 2002, 4, 5, 'CC^CONTROL_PLUGIN_BROADCAST_ENDCALL_dc84633716d4f879f40e535e6192f2f4', '1517823923'),
('f30d45c72f4971076a14d37f4d24357f', 222, 35, 1, 'hi', '1491822257');

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_report`
--

CREATE TABLE IF NOT EXISTS `cometchat_report` (
  `id` bigint(20) NOT NULL,
  `timestamp_start` int(10) NOT NULL,
  `total_no_of_users` bigint(20) NOT NULL,
  `total_no_of_guest` bigint(20) NOT NULL,
  `no_of_active_users_last_24_hrs` int(10) NOT NULL,
  `no_of_active_guest_last_24_hrs` int(10) NOT NULL,
  `no_of_messages_exchange_one_on_one_last_24_hrs` bigint(20) NOT NULL,
  `no_of_messages_exchange_groupchat_last_24_hrs` bigint(20) NOT NULL,
  `no_of_group_created_last_24_hrs` int(10) NOT NULL,
  `active_users_from_last_15_min` int(10) NOT NULL,
  `active_guest_from_last_15_min` int(10) NOT NULL,
  `data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_session`
--

CREATE TABLE IF NOT EXISTS `cometchat_session` (
  `session_id` char(32) NOT NULL,
  `session_data` text NOT NULL,
  `session_lastaccesstime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cometchat_session`
--

INSERT INTO `cometchat_session` (`session_id`, `session_data`, `session_lastaccesstime`) VALUES
('', '', '2018-03-09 04:03:19'),
('1b4kothi758upha14kte1dt764', '', '2018-02-06 06:42:56'),
('21va1e46d58pn02j4b7ll5dku7', '', '2017-11-02 11:50:49'),
('26daro8b25b6tctqcspldrnhv5', '', '2017-10-16 03:28:08'),
('2a30ilms78gsqbn6uuuga927k5', '', '2017-10-17 03:48:13'),
('2crpavm448g0eqlj0gi8o3jc05', '', '2017-10-31 05:59:45'),
('2cunqqtmurcf8u6e7jv8ehsr24', '', '2017-10-25 06:01:46'),
('38jqi47t5or8d4id60jpt8ao03', 'cometchat|a:4:{s:20:"cometchat_admin_user";s:11:"studycollab";s:20:"cometchat_admin_pass";s:14:"studycollab123";s:13:"VERSION_CHECK";i:1;s:6:"MsgCnt";s:4:"1794";}', '2017-10-07 03:57:43'),
('5r427sog6gar6iv3nq40omfpt7', 'cometchat|a:0:{}', '2017-10-13 05:51:11'),
('79qreua1id7jjfs480jj4bhm46', 'cometchat|a:6:{s:20:"cometchat_admin_user";s:11:"studycollab";s:20:"cometchat_admin_pass";s:14:"studycollab123";s:13:"VERSION_CHECK";i:1;s:6:"MsgCnt";s:4:"2073";s:6:"hashes";a:1:{s:5:"6.8.2";a:2:{s:13:"directoryhash";a:45:{s:5:"admin";s:32:"d5116347445d3a216eaf8860bd8db075";s:3:"api";s:32:"063da18d18d041fe582ca924e74fa815";s:6:"colors";s:32:"dea056217796b90a1ba5687ff8c317a1";s:2:"db";s:32:"3cd7d9475b9ae76ea51e0e7d01e31670";s:14:"extensions/ads";s:32:"94834c243f49bfdd4bd84c0542fb0698";s:15:"extensions/bots";s:32:"17e3ac0ca9e84b0fe1656e146e7302be";s:18:"extensions/desktop";s:32:"40ba28b6309719002b12ae072dfeb4c0";s:20:"extensions/mobileapp";s:32:"77433fcfa9240f8e5b33bcd6eac9eeff";s:9:"functions";s:32:"314add69508bcac1cebac5e9f804c9d0";s:6:"images";s:32:"8940ab3bfa2aca35eb4a67f4660e1475";s:2:"js";s:32:"9127c42fa57cae9d3bb25744012e99c0";s:7:"layouts";s:32:"dfd415f9f51d2085e56a8c36534c067d";s:6:"mobile";s:32:"d41d8cd98f00b204e9800998ecf8427e";s:21:"modules/announcements";s:32:"533b06f5fc0e6e61f39db145d554bb67";s:24:"modules/broadcastmessage";s:32:"1b92c6f7e0fdf02d970de449f06d36db";s:17:"modules/chatrooms";s:32:"2a2d296d8759eba1e9e7ba7803be5008";s:16:"modules/facebook";s:32:"1950764855bcbf94d9249af073aab1ca";s:13:"modules/games";s:32:"e2c4321ad24f3932a0c09953ad772c40";s:12:"modules/home";s:32:"3e5b32881133f7b363d9007430e6c256";s:25:"modules/realtimetranslate";s:32:"9c586631b6ea62bbbfaa2a2ce5b2318b";s:19:"modules/scrolltotop";s:32:"e0b8b34c8a2638a1d57ec1e3f9804e52";s:13:"modules/share";s:32:"82f13eabf9d33e8da197d085019c402d";s:17:"modules/translate";s:32:"eb0a7c4cd6bed5c60685dda78aeb4240";s:15:"modules/twitter";s:32:"7d046a73476e608918dd4695eef7a47b";s:17:"plugins/audiochat";s:32:"2d96b18c373ce8f82d2e223cb5c58617";s:14:"plugins/avchat";s:32:"838386c51544c0decf695fb9a1bf5eb6";s:13:"plugins/block";s:32:"2e8313e2bb2140413ed736b660c39bb0";s:17:"plugins/broadcast";s:32:"00cb25701f5383207136404b610d8925";s:19:"plugins/chathistory";s:32:"12cdb1b64ee35c9bd5fca56c8d8d51ec";s:25:"plugins/clearconversation";s:32:"ac2f4e4d025e80c554aec949e4b1f50d";s:20:"plugins/filetransfer";s:32:"e509650b576a3072084a608c07f474a7";s:17:"plugins/handwrite";s:32:"8695703ddb8897d470a18897a2f6076f";s:14:"plugins/report";s:32:"4296bf172585347a5124c39fd5159c44";s:12:"plugins/save";s:32:"0f684b773a4321cec83fbba7616c8091";s:19:"plugins/screenshare";s:32:"60670d665fdf4bfe3664c73896dabd27";s:15:"plugins/smilies";s:32:"9ab5d923fcf09d20eb1cfa0335d422ec";s:16:"plugins/stickers";s:32:"8851ffad7cdaf8f2c865e3c00bfba35f";s:13:"plugins/style";s:32:"d3e115fd3c13c4a65bc73f9218e6db96";s:21:"plugins/transliterate";s:32:"1e1518490cadaf6a97fd6ef2d09b1df4";s:18:"plugins/whiteboard";s:32:"dbb653df63f1ea0219bae205ed16f8e1";s:18:"plugins/writeboard";s:32:"d8acd46a3efb79972a1944d007da9dcd";s:6:"sounds";s:32:"d41d8cd98f00b204e9800998ecf8427e";s:4:"temp";s:32:"d41d8cd98f00b204e9800998ecf8427e";s:23:"transports/cometservice";s:32:"bb46026bd057b7f7ea2c0ff2d13f251e";s:7:"updates";s:32:"78f737c708440c5161582de3f650f7a2";}s:9:"fileshash";s:32:"72643e3a472346355f970f08a76fffae";}}s:11:"old_version";s:5:"6.8.2";}', '2018-02-06 06:44:36'),
('8oc5fo53krk5544g0nn0iv1qm4', '', '2018-03-09 04:06:27'),
('8p9o88hrcfesfkag6meevv9p34', '', '2018-02-06 06:42:33'),
('9g5rfdd5po0ft1mqmrqj7e32e2', '', '2018-02-06 06:40:38'),
('ae5cfhe7q6rjmniee6gpkqm885', 'cometchat|a:4:{s:20:"cometchat_admin_user";s:11:"studycollab";s:20:"cometchat_admin_pass";s:14:"studycollab123";s:13:"VERSION_CHECK";i:1;s:6:"MsgCnt";s:4:"1794";}', '2017-10-24 04:11:13'),
('bgb99adulm6tasg3pusmn3i071', 'cometchat|a:4:{s:20:"cometchat_admin_user";s:11:"studycollab";s:20:"cometchat_admin_pass";s:14:"studycollab123";s:13:"VERSION_CHECK";i:1;s:6:"MsgCnt";s:4:"1794";}', '2017-10-14 06:02:22'),
('egc2vur80r9pvhnq5f3phra9h6', '', '2018-02-06 06:48:24'),
('ekodv438keir7925ctfs02flh2', '', '2017-10-14 05:50:48'),
('f8f2lpgjgvppt1hie1c327vge0', '', '2017-10-14 03:56:44'),
('f9bro95jqo9tmq510lp965k9e5', 'cometchat|a:4:{s:20:"cometchat_admin_user";s:11:"studycollab";s:20:"cometchat_admin_pass";s:14:"studycollab123";s:13:"VERSION_CHECK";i:1;s:6:"MsgCnt";s:4:"2054";}', '2018-01-23 07:34:04'),
('gfb00pnnhpi9gq0inmsh3gt451', '', '2018-03-06 09:40:53'),
('gttp7dgf8cc09jgg9b3sss4ae2', '', '2017-11-01 11:18:18'),
('h279obogsb9qq8bc3ljd6ka1h4', 'cometchat|a:4:{s:20:"cometchat_admin_user";s:11:"studycollab";s:20:"cometchat_admin_pass";s:14:"studycollab123";s:13:"VERSION_CHECK";i:1;s:6:"MsgCnt";s:4:"1966";}', '2017-11-01 08:02:53'),
('hqrf7v5516r5j8kndk7b7jnt06', '', '2017-10-26 06:30:41'),
('ifcr7s4phvubf6a1j5hbmmv1e2', '', '2017-10-19 03:29:25'),
('ii53o3lbf5t01sh6ch98qutf86', '', '2018-02-27 11:34:49'),
('jv4vjvibr6qe2ad8t4kdh3rfa1', '', '2018-02-06 06:43:14'),
('k4rmg98lrsc7n3qmi97aji2bh1', '', '2017-11-01 08:01:59'),
('kt90kor0ufpsr9snh7ip1qfov6', '', '2017-10-13 05:29:43'),
('nfth14hgd0tvm2bnq53lvm1eq3', '', '2018-03-06 12:12:06'),
('ngmsg5elkaupgee61n6lda9260', '', '2017-10-21 03:42:43'),
('nqakudp0ovukcp0vk3r3cea104', '', '2017-10-23 03:36:14'),
('okegphqms4e5eppubh5fgpt3h6', 'cometchat|a:4:{s:20:"cometchat_admin_user";s:11:"studycollab";s:20:"cometchat_admin_pass";s:14:"studycollab123";s:13:"VERSION_CHECK";i:1;s:6:"MsgCnt";s:4:"1699";}', '2017-09-20 04:18:45'),
('p4ei6mimhem7dn8eveprcb0387', '', '2017-10-27 10:51:51'),
('q7pq8beq5tjn5mln2mqf80ac83', '', '2017-10-30 05:52:44'),
('qjro8i23nm6ssmtoab2rkht5q4', '', '2017-11-01 08:04:11'),
('s01ns5pt36ldf7caae5pl9dg66', '', '2017-10-20 03:32:40'),
('v59e8qls4gsrf0alvisf9d9157', '', '2017-10-24 03:21:58'),
('vpqip2to8lv2sdcuofo5cs4g37', '', '2018-01-23 04:03:32');

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_settings`
--

CREATE TABLE IF NOT EXISTS `cometchat_settings` (
  `setting_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Configuration setting name. It can be PHP constant, variable or array',
  `value` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Value of the key.',
  `key_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'States whether the key is: 0 = PHP constant, 1 = atomic variable or 2 = serialized associative array.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Stores all the configuration settings for CometChat';

--
-- Dumping data for table `cometchat_settings`
--

INSERT INTO `cometchat_settings` (`setting_key`, `value`, `key_type`) VALUES
('ADMIN_PASS', 'studycollab123', 0),
('ADMIN_USER', 'studycollab', 0),
('announcementTime', '15000', 1),
('api_response', '', 1),
('apikey', 'c495a59c0fd768769401d075b02e5e08', 1),
('armyTime', '0', 1),
('autoPopupChatbox', '1', 1),
('BAR_DISABLED', '0', 0),
('BASE_URL', '/chat/', 0),
('beepOnAllMessages', '1', 1),
('blockpluginmode', '0', 1),
('CC_SITE_URL', '', 0),
('ccactiveauth', 'a:3:{i:0;s:8:"Facebook";i:1;s:6:"Google";i:2;s:7:"Twitter";}', 2),
('color', 'color1', 1),
('CROSS_DOMAIN', '0', 0),
('crplugins', 'a:13:{i:0;s:9:"audiochat";i:1;s:6:"avchat";i:2;s:12:"filetransfer";i:3;s:7:"smilies";i:4;s:5:"style";i:5;s:17:"clearconversation";i:6;s:11:"chathistory";i:7;s:10:"writeboard";i:8;s:9:"handwrite";i:9;s:11:"screenshare";i:10;s:10:"whiteboard";i:11;s:13:"transliterate";i:12;s:9:"broadcast";}', 2),
('dbversion', '30', 1),
('desktopNotifications', '1', 1),
('DEV_MODE', '1', 0),
('disableContactsTab', '0', 1),
('disableForMobileDevices', '1', 1),
('disableGroupTab', '0', 1),
('disableRecentTab', '0', 1),
('DISPLAY_ALL_USERS', '1', 0),
('displayBusyNotification', '1', 1),
('displayOfflineNotification', '1', 1),
('displayOnlineNotification', '1', 1),
('ERROR_LOGGING', '1', 0),
('extensions', 'a:2:{i:0;s:9:"mobileapp";i:1;s:7:"desktop";}', 2),
('extensions_core', 'a:4:{s:3:"ads";s:14:"Advertisements";s:9:"mobileapp";s:10:"Mobile App";s:7:"desktop";s:11:"Desktop App";s:4:"bots";s:4:"Bots";}', 2),
('floodControl', '0', 1),
('gatrackerid', '', 1),
('guestnamePrefix', 'Guest', 1),
('guestsList', '3', 1),
('guestsMode', '0', 1),
('guestsUsersList', '3', 1),
('hideBar', '1', 1),
('hideOffline', '0', 1),
('idleTimeout', '300', 1),
('lastseen', '0', 1),
('latest_update_token', '6aa3f1758fb2d83e22b5208c0bb0f6ba', 1),
('LATEST_VERSION', '7.0.6', 0),
('licensekey', '3ZKUF-8ATZR-4KLXK-0GUAM-9XKDZ', 1),
('lightboxWindows', '1', 1),
('maxHeartbeat', '12000', 1),
('MC_NAME', '', 0),
('MC_PASSWORD', '', 0),
('MC_PORT', '11211', 0),
('MC_SERVER', 'localhost', 0),
('MC_USERNAME', '', 0),
('messageBeep', '1', 1),
('minHeartbeat', '3000', 1),
('modules_core', 'a:11:{s:13:"announcements";a:9:{i:0;s:13:"announcements";i:1;s:13:"Announcements";i:2;s:31:"modules/announcements/index.php";i:3;s:6:"_popup";i:4;s:3:"280";i:5;s:3:"310";i:6;s:0:"";i:7;s:1:"1";i:8;s:0:"";}s:16:"broadcastmessage";a:9:{i:0;s:16:"broadcastmessage";i:1;s:17:"Broadcast Message";i:2;s:34:"modules/broadcastmessage/index.php";i:3;s:6:"_popup";i:4;s:3:"385";i:5;s:3:"300";i:6;s:0:"";i:7;s:1:"1";i:8;s:0:"";}s:9:"chatrooms";a:9:{i:0;s:9:"chatrooms";i:1;s:6:"Groups";i:2;s:27:"modules/chatrooms/index.php";i:3;s:6:"_popup";i:4;s:3:"600";i:5;s:3:"300";i:6;s:0:"";i:7;s:1:"1";i:8;s:1:"1";}s:8:"facebook";a:9:{i:0;s:8:"facebook";i:1;s:17:"Facebook Fan Page";i:2;s:26:"modules/facebook/index.php";i:3;s:6:"_popup";i:4;s:3:"500";i:5;s:3:"460";i:6;s:0:"";i:7;s:1:"1";i:8;s:0:"";}s:5:"games";a:9:{i:0;s:5:"games";i:1;s:19:"Single Player Games";i:2;s:23:"modules/games/index.php";i:3;s:6:"_popup";i:4;s:3:"465";i:5;s:3:"300";i:6;s:0:"";i:7;s:1:"1";i:8;s:0:"";}s:4:"home";a:8:{i:0;s:4:"home";i:1;s:4:"Home";i:2;s:1:"/";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";}s:17:"realtimetranslate";a:9:{i:0;s:17:"realtimetranslate";i:1;s:23:"Translate Conversations";i:2;s:35:"modules/realtimetranslate/index.php";i:3;s:6:"_popup";i:4;s:3:"280";i:5;s:3:"310";i:6;s:0:"";i:7;s:1:"1";i:8;s:0:"";}s:11:"scrolltotop";a:8:{i:0;s:11:"scrolltotop";i:1;s:13:"Scroll To Top";i:2;s:40:"javascript:jqcc.cometchat.scrollToTop();";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";}s:5:"share";a:8:{i:0;s:5:"share";i:1;s:15:"Share This Page";i:2;s:23:"modules/share/index.php";i:3;s:6:"_popup";i:4;s:3:"350";i:5;s:2:"50";i:6;s:0:"";i:7;s:1:"1";}s:9:"translate";a:9:{i:0;s:9:"translate";i:1;s:19:"Translate This Page";i:2;s:27:"modules/translate/index.php";i:3;s:6:"_popup";i:4;s:3:"280";i:5;s:3:"310";i:6;s:0:"";i:7;s:1:"1";i:8;s:0:"";}s:7:"twitter";a:8:{i:0;s:7:"twitter";i:1;s:7:"Twitter";i:2;s:25:"modules/twitter/index.php";i:3;s:6:"_popup";i:4;s:3:"500";i:5;s:3:"300";i:6;s:0:"";i:7;s:1:"1";}}', 2),
('notificationTime', '5000', 1),
('OLD_VERSION', '6.4.0', 0),
('plugins', 'a:13:{i:0;s:9:"audiochat";i:1;s:6:"avchat";i:2;s:12:"filetransfer";i:3;s:9:"handwrite";i:4;s:11:"screenshare";i:5;s:7:"smilies";i:6;s:13:"transliterate";i:7;s:10:"whiteboard";i:8;s:17:"clearconversation";i:9;s:10:"writeboard";i:10;s:5:"block";i:11;s:11:"chathistory";i:12;s:9:"broadcast";}', 2),
('plugins_core', 'a:18:{s:9:"audiochat";a:2:{i:0;s:10:"Audio Chat";i:1;i:0;}s:6:"avchat";a:2:{i:0;s:16:"Audio/Video Chat";i:1;i:0;}s:5:"block";a:2:{i:0;s:10:"Block User";i:1;i:1;}s:9:"broadcast";a:2:{i:0;s:21:"Audio/Video Broadcast";i:1;i:0;}s:11:"chathistory";a:2:{i:0;s:12:"Chat History";i:1;i:0;}s:17:"clearconversation";a:2:{i:0;s:18:"Clear Conversation";i:1;i:0;}s:12:"filetransfer";a:2:{i:0;s:11:"Send a file";i:1;i:0;}s:9:"handwrite";a:2:{i:0;s:19:"Handwrite a message";i:1;i:0;}s:6:"report";a:2:{i:0;s:19:"Report Conversation";i:1;i:1;}s:4:"save";a:2:{i:0;s:17:"Save Conversation";i:1;i:0;}s:11:"screenshare";a:2:{i:0;s:17:"Share Your Screen";i:1;i:0;}s:7:"smilies";a:2:{i:0;s:5:"Emoji";i:1;i:0;}s:8:"stickers";a:2:{i:0;s:8:"Stickers";i:1;i:0;}s:5:"style";a:2:{i:0;s:15:"Color your text";i:1;i:2;}s:13:"transliterate";a:2:{i:0;s:22:"Write in your language";i:1;i:0;}s:10:"whiteboard";a:2:{i:0;s:25:"Share Whiteboard Document";i:1;i:0;}s:10:"writeboard";a:2:{i:0;s:28:"Share Collaborative Document";i:1;i:0;}s:9:"voicenote";a:2:{i:0;s:16:"Share Voice Note";i:1;i:0;}}', 2),
('recentListLimit', '30', 1),
('searchDisplayNumber', '10', 1),
('startOffline', '0', 1),
('theme', 'docked', 1),
('thumbnailDisplayNumber', '40', 1),
('trayicon', 'a:4:{s:13:"announcements";a:9:{i:0;s:13:"announcements";i:1;s:13:"Announcements";i:2;s:31:"modules/announcements/index.php";i:3;s:6:"_popup";i:4;s:3:"280";i:5;s:3:"310";i:6;s:0:"";i:7;s:1:"1";i:8;s:0:"";}s:5:"games";a:9:{i:0;s:5:"games";i:1;s:19:"Single Player Games";i:2;s:23:"modules/games/index.php";i:3;s:6:"_popup";i:4;s:3:"465";i:5;s:3:"300";i:6;s:0:"";i:7;s:1:"1";i:8;s:0:"";}s:11:"scrolltotop";a:9:{i:0;s:11:"scrolltotop";i:1;s:13:"Scroll To Top";i:2;s:40:"javascript:jqcc.cometchat.scrollToTop();";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";}s:5:"share";a:9:{i:0;s:5:"share";i:1;s:15:"Share This Page";i:2;s:23:"modules/share/index.php";i:3;s:6:"_popup";i:4;s:3:"350";i:5;s:2:"50";i:6;s:0:"";i:7;s:1:"1";i:8;s:0:"";}}', 2),
('typingTimeout', '10000', 1),
('USE_CCAUTH', '0', 0),
('usebots', '0', 1),
('windowFavicon', '0', 1),
('windowTitleNotify', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_status`
--

CREATE TABLE IF NOT EXISTS `cometchat_status` (
  `userid` int(10) unsigned NOT NULL,
  `message` text,
  `status` enum('available','away','busy','invisible','offline') DEFAULT NULL,
  `typingto` int(10) unsigned DEFAULT NULL,
  `typingtime` int(10) unsigned DEFAULT NULL,
  `isdevice` int(1) unsigned NOT NULL DEFAULT '0',
  `lastactivity` int(10) unsigned NOT NULL DEFAULT '0',
  `lastseen` int(10) unsigned NOT NULL DEFAULT '0',
  `lastseensetting` int(1) unsigned NOT NULL DEFAULT '0',
  `readreceiptsetting` int(1) unsigned NOT NULL DEFAULT '1',
  `custom_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cometchat_status`
--

INSERT INTO `cometchat_status` (`userid`, `message`, `status`, `typingto`, `typingtime`, `isdevice`, `lastactivity`, `lastseen`, `lastseensetting`, `readreceiptsetting`, `custom_data`) VALUES
(0, 'hey....', NULL, NULL, NULL, 0, 1517395801, 1517395801, 0, 1, NULL),
(1, '', 'away', NULL, NULL, 1, 1505881724, 1505881724, 0, 1, NULL),
(4, 'I am available', 'away', NULL, NULL, 1, 1524649179, 1524649179, 0, 1, NULL),
(21, NULL, 'away', NULL, NULL, 0, 1521772795, 1521772795, 0, 1, NULL),
(24, NULL, 'available', NULL, NULL, 0, 1516835154, 1516835154, 0, 1, NULL),
(25, NULL, 'available', NULL, NULL, 0, 1523063850, 1523063850, 0, 1, NULL),
(35, NULL, 'away', NULL, NULL, 0, 1495542820, 1495542820, 0, 1, NULL),
(47, 'I am visible', 'available', NULL, NULL, 1, 1524284517, 1524284517, 0, 1, NULL),
(48, NULL, 'away', NULL, NULL, 1, 1509531943, 1509531943, 0, 1, NULL),
(52, '', 'away', NULL, NULL, 0, 1512129414, 1512129414, 0, 1, NULL),
(55, NULL, 'away', NULL, NULL, 0, 1510217993, 1510217993, 0, 1, NULL),
(61, NULL, 'away', NULL, NULL, 0, 1509538979, 1509538979, 0, 1, NULL),
(62, NULL, 'away', NULL, NULL, 0, 1492409956, 1492409956, 0, 1, NULL),
(73, NULL, 'available', NULL, NULL, 0, 1494327347, 1494326457, 0, 1, NULL),
(74, NULL, 'available', NULL, NULL, 0, 1500899498, 1500899498, 0, 1, NULL),
(76, NULL, NULL, NULL, NULL, 0, 1504160576, 1504160576, 0, 1, NULL),
(77, NULL, 'away', NULL, NULL, 0, 1504594675, 1504594675, 0, 1, NULL),
(97, NULL, 'away', NULL, NULL, 0, 1505543236, 1505543236, 0, 1, NULL),
(99, NULL, 'available', NULL, NULL, 0, 1505882106, 1505882106, 0, 1, NULL),
(101, NULL, 'available', NULL, NULL, 1, 1524283345, 1524283345, 0, 1, NULL),
(109, NULL, 'available', NULL, NULL, 0, 1516810830, 1516810830, 0, 1, NULL),
(116, NULL, NULL, NULL, NULL, 0, 1524218623, 1524218623, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_status_archive`
--

CREATE TABLE IF NOT EXISTS `cometchat_status_archive` (
  `userid` int(10) unsigned NOT NULL,
  `message` text,
  `status` enum('available','away','busy','invisible','offline') DEFAULT NULL,
  `typingto` int(10) unsigned DEFAULT NULL,
  `typingtime` int(10) unsigned DEFAULT NULL,
  `isdevice` int(1) unsigned NOT NULL DEFAULT '0',
  `lastactivity` int(10) unsigned NOT NULL DEFAULT '0',
  `lastseen` int(10) unsigned NOT NULL DEFAULT '0',
  `lastseensetting` int(1) unsigned NOT NULL DEFAULT '0',
  `readreceiptsetting` int(1) unsigned NOT NULL DEFAULT '1',
  `custom_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_users`
--

CREATE TABLE IF NOT EXISTS `cometchat_users` (
  `userid` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `displayname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `grp` varchar(25) NOT NULL,
  `friends` text NOT NULL,
  `uid` varchar(255) NOT NULL,
  `roleid` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `custom_data` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cometchat_videochatsessions`
--

CREATE TABLE IF NOT EXISTS `cometchat_videochatsessions` (
  `username` varchar(255) NOT NULL,
  `identity` varchar(255) NOT NULL,
  `timestamp` int(10) unsigned DEFAULT '0',
  `custom_data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_name`, `isActive`) VALUES
(1, 'Afghanistan', 1),
(2, 'Albania', 1),
(3, 'Algeria', 1),
(4, 'American Samoa', 1),
(5, 'Andorra', 1),
(6, 'Angola', 1),
(7, 'Anguilla', 1),
(8, 'Antarctica', 1),
(9, 'Antigua and Barbuda', 1),
(10, 'Argentina', 1),
(11, 'Armenia', 1),
(12, 'Aruba', 1),
(13, 'Australia', 1),
(14, 'Austria', 1),
(15, 'Azerbaijan', 1),
(16, 'Bahamas', 1),
(17, 'Bahrain', 1),
(18, 'Bangladesh', 1),
(19, 'Barbados', 1),
(20, 'Belarus', 1),
(21, 'Belgium', 1),
(22, 'Belize', 1),
(23, 'Benin', 1),
(24, 'Bermuda', 1),
(25, 'Bhutan', 1),
(26, 'Bolivia', 1),
(27, 'Bosnia and Herzegovina', 1),
(28, 'Botswana', 1),
(29, 'Brazil', 1),
(30, 'Brunei Darussalam', 1),
(31, 'Bulgaria', 1),
(32, 'Burkina Faso', 1),
(33, 'Burundi', 1),
(34, 'Cambodia', 1),
(35, 'Cameroon', 1),
(36, 'Canada', 1),
(37, 'Cape Verde', 1),
(38, 'Cayman Islands', 1),
(39, 'Central African Republic', 1),
(40, 'Chad', 1),
(41, 'Chile', 1),
(42, 'China', 1),
(43, 'Christmas Island', 1),
(44, 'Cocos (Keeling) Islands', 1),
(45, 'Colombia', 1),
(46, 'Comoros', 1),
(47, 'Democratic Republic of the Congo?(Kinshasa)', 1),
(48, 'Congo, Republic of(Brazzaville)', 1),
(49, 'Cook Islands', 1),
(50, 'Costa Rica', 1),
(51, 'Ivory Coast', 1),
(52, 'Croatia', 1),
(53, 'Cuba', 1),
(54, 'Cyprus', 1),
(55, 'Czech Republic', 1),
(56, 'Denmark', 1),
(57, 'Djibouti', 1),
(58, 'Dominica', 1),
(59, 'Dominican Republic', 1),
(60, 'East Timor?(Timor-Leste)', 1),
(61, 'Ecuador', 1),
(62, 'Egypt', 1),
(63, 'El Salvador', 1),
(64, 'Equatorial Guinea', 1),
(65, 'Eritrea', 1),
(66, 'Estonia', 1),
(67, 'Ethiopia', 1),
(68, 'Falkland Islands', 1),
(69, 'Faroe Islands', 1),
(70, 'Fiji', 1),
(71, 'Finland', 1),
(72, 'France', 1),
(73, 'French Guiana', 1),
(74, 'French Polynesia', 1),
(75, 'French Southern Territories', 1),
(76, 'Gabon', 1),
(77, 'Gambia', 1),
(78, 'Georgia', 1),
(79, 'Germany', 1),
(80, 'Ghana', 1),
(81, 'Gibraltar', 1),
(82, 'Great Britain', 1),
(83, 'Greece', 1),
(84, 'Greenland', 1),
(85, 'Grenada', 1),
(86, 'Guadeloupe', 1),
(87, 'Guam', 1),
(88, 'Guatemala', 1),
(89, 'Guinea', 1),
(90, 'Guinea-Bissau', 1),
(91, 'Guyana', 1),
(92, 'Haiti', 1),
(93, 'Holy See', 1),
(94, 'Honduras', 1),
(95, 'Hong Kong', 1),
(96, 'Hungary', 1),
(97, 'Iceland', 1),
(98, 'India', 1),
(99, 'Indonesia', 1),
(100, 'Iran (Islamic Republic of)', 1),
(101, 'Iraq', 1),
(102, 'Ireland', 1),
(103, 'Israel', 1),
(104, 'Italy', 1),
(105, 'Jamaica', 1),
(106, 'Japan', 1),
(107, 'Jordan', 1),
(108, 'Kazakhstan', 1),
(109, 'Kenya', 1),
(110, 'Kiribati', 1),
(111, 'Korea, Democratic People''s Rep. (North Korea)', 1),
(112, 'Korea, Republic of (South Korea)', 1),
(113, 'Kosovo', 1),
(114, 'Kuwait', 1),
(115, 'Kyrgyzstan', 1),
(116, 'Lao, People''s Democratic Republic', 1),
(117, 'Latvia', 1),
(118, 'Lebanon', 1),
(119, 'Lesotho', 1),
(120, 'Liberia', 1),
(121, 'Libya', 1),
(122, 'Liechtenstein', 1),
(123, 'Lithuania', 1),
(124, 'Luxembourg', 1),
(125, 'Macau', 1),
(126, 'Macedonia, Rep. of', 1),
(127, 'Madagascar', 1),
(128, 'Malawi', 1),
(129, 'Malaysia', 1),
(130, 'Maldives', 1),
(131, 'Mali', 1),
(132, 'Malta', 1),
(133, 'Marshall Islands', 1),
(134, 'Martinique', 1),
(135, 'Mauritania', 1),
(136, 'Mauritius', 1),
(137, 'Mayotte', 1),
(138, 'Mexico', 1),
(139, 'Micronesia, Federal States of', 1),
(140, 'Moldova, Republic of', 1),
(141, 'Monaco', 1),
(142, 'Mongolia', 1),
(143, 'Montenegro', 1),
(144, 'Montserrat', 1),
(145, 'Morocco', 1),
(146, 'Mozambique', 1),
(147, 'Myanmar, Burma', 1),
(148, 'Namibia', 1),
(149, 'Nauru', 1),
(150, 'Nepal', 1),
(151, 'Netherlands', 1),
(152, 'Netherlands Antilles', 1),
(153, 'New Caledonia', 1),
(154, 'New Zealand', 1),
(155, 'Nicaragua', 1),
(156, 'Niger', 1),
(157, 'Nigeria', 1),
(158, 'Niue', 1),
(159, 'Northern Mariana Islands', 1),
(160, 'Norway', 1),
(161, 'Oman', 1),
(162, 'Pakistan', 1),
(163, 'Palau', 1),
(164, 'Palestinian territories', 1),
(165, 'Panama', 1),
(166, 'Papua New Guinea', 1),
(167, 'Paraguay', 1),
(168, 'Peru', 1),
(169, 'Philippines', 1),
(170, 'Pitcairn Island', 1),
(171, 'Poland', 1),
(172, 'Portugal', 1),
(173, 'Puerto Rico', 1),
(174, 'Qatar', 1),
(175, 'Reunion Island', 1),
(176, 'Romania', 1),
(177, 'Russian Federation', 1),
(178, 'Rwanda', 1),
(179, 'Saint Kitts and Nevis', 1),
(180, 'Saint Lucia', 1),
(181, 'Saint Vincent and the Grenadines', 1),
(182, 'Samoa', 1),
(183, 'San Marino', 1),
(184, 'Sao Tome and Principe', 1),
(185, 'Saudi Arabia', 1),
(186, 'Senegal', 1),
(187, 'Serbia', 1),
(188, 'Seychelles', 1),
(189, 'Sierra Leone', 1),
(190, 'Singapore', 1),
(191, 'Slovakia (Slovak Republic)', 1),
(192, 'Slovenia', 1),
(193, 'Solomon Islands', 1),
(194, 'Somalia', 1),
(195, 'South Africa', 1),
(196, 'South Sudan', 1),
(197, 'Spain', 1),
(198, 'Sri Lanka', 1),
(199, 'Sudan', 1),
(200, 'Suriname', 1),
(201, 'Swaziland', 1),
(202, 'Sweden', 1),
(203, 'Switzerland', 1),
(204, 'Syria, Syrian Arab Republic', 1),
(205, 'Taiwan?(Republic of China)', 1),
(206, 'Tajikistan', 1),
(207, 'Tanzania; officially the United Republic of Tanzania', 1),
(208, 'Thailand', 1),
(209, 'Tibet', 1),
(210, 'Timor-Leste?(East Timor)', 1),
(211, 'Togo', 1),
(212, 'Tokelau', 1),
(213, 'Tonga', 1),
(214, 'Trinidad and Tobago', 1),
(215, 'Tunisia', 1),
(216, 'Turkey', 1),
(217, 'Turkmenistan', 1),
(218, 'Turks and Caicos Islands', 1),
(219, 'Tuvalu', 1),
(220, 'Uganda', 1),
(221, 'Ukraine', 1),
(222, 'United Arab Emirates', 1),
(223, 'United Kingdom', 1),
(224, 'United States', 1),
(225, 'Uruguay', 1),
(226, 'Uzbekistan', 1),
(227, 'Vanuatu', 1),
(228, 'Vatican City State (Holy See)', 1),
(229, 'Venezuela', 1),
(230, 'Vietnam', 1),
(231, 'Virgin Islands (British)', 1),
(232, 'Virgin Islands (U.S.)', 1),
(233, 'Wallis and Futuna Islands', 1),
(234, 'Western Sahara', 1),
(235, 'Yemen', 1),
(236, 'Zambia', 1),
(237, 'Zimbabwe', 1),
(238, 'SAMPLE', 1),
(239, 'Test', 0);

-- --------------------------------------------------------

--
-- Table structure for table `county`
--

CREATE TABLE IF NOT EXISTS `county` (
  `id` int(11) NOT NULL,
  `county_name` varchar(100) NOT NULL,
  `state_id` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `county`
--

INSERT INTO `county` (`id`, `county_name`, `state_id`, `isActive`) VALUES
(1, 'Alameda', 5, 1),
(2, 'Alpine', 5, 1),
(3, 'Amador', 5, 1),
(4, 'Butte', 5, 1),
(5, 'Calaveras', 5, 1),
(6, 'Colusa', 5, 1),
(7, 'Contra Costa', 5, 1),
(8, 'Del Norte', 5, 1),
(9, 'El Dorado', 5, 1),
(10, 'Fresno', 5, 1),
(11, 'Glenn', 5, 1),
(12, 'Humboldt', 5, 1),
(13, 'Imperial', 5, 1),
(14, 'Inyo', 5, 1),
(15, 'Kern', 5, 1),
(16, 'Kings', 5, 1),
(17, 'Lake', 5, 1),
(18, 'Lassen', 5, 1),
(19, 'Los Angeles', 5, 1),
(20, 'Madera', 5, 1),
(21, 'Marin', 5, 1),
(22, 'Mariposa', 5, 1),
(23, 'Mendocino', 5, 1),
(24, 'Merced', 5, 1),
(25, 'Modoc', 5, 1),
(26, 'Mono', 5, 1),
(27, 'Monterey', 5, 1),
(28, 'Napa', 5, 1),
(29, 'Nevada', 5, 1),
(30, 'Orange', 5, 1),
(31, 'Placer', 5, 1),
(32, 'Plumas', 5, 1),
(33, 'Riverside', 5, 1),
(34, 'Sacramento', 5, 1),
(35, 'San Benito', 5, 1),
(36, 'San Bernardino', 5, 1),
(37, 'San Diego', 5, 1),
(38, 'San Francisco', 5, 1),
(39, 'San Joaquin', 5, 1),
(40, 'San Luis Obispo', 5, 1),
(41, 'San Mateo', 5, 1),
(42, 'Santa Barbara', 5, 1),
(43, 'Santa Clara', 5, 1),
(44, 'Santa Cruz', 5, 1),
(45, 'Shasta', 5, 1),
(46, 'Sierra', 5, 1),
(47, 'Siskiyou', 5, 1),
(48, 'Solano', 5, 1),
(49, 'Sonoma', 5, 1),
(50, 'Stanislaus', 5, 1),
(51, 'Sutter', 5, 1),
(52, 'Tehama', 5, 1),
(53, 'Trinity', 5, 1),
(54, 'Tulare', 5, 1),
(55, 'Tuolumne', 5, 1),
(56, 'Ventura', 5, 1),
(57, 'Yolo', 5, 1),
(58, 'Yuba', 5, 1),
(59, 'sfdfd', 52, 0),
(60, 'rter ber', 53, 1);

-- --------------------------------------------------------

--
-- Table structure for table `district_master`
--

CREATE TABLE IF NOT EXISTS `district_master` (
  `id` int(11) NOT NULL,
  `district_name` varchar(100) NOT NULL,
  `state_id` int(11) DEFAULT NULL,
  `isActive` int(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district_master`
--

INSERT INTO `district_master` (`id`, `district_name`, `state_id`, `isActive`) VALUES
(1, 'Eureka Union', 5, 1),
(2, 'Roseville Joint Union High', 5, 1),
(3, 'Buckeye Union Elementary', 5, 1),
(4, 'Roseville City Elementary', 5, 1),
(5, 'Rrttyt', 52, 0),
(6, 'Test', 53, 1);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE IF NOT EXISTS `grades` (
  `id` bigint(20) NOT NULL,
  `grade` varchar(6) NOT NULL,
  `percentage_from` decimal(10,0) NOT NULL,
  `percentage_to` decimal(10,0) NOT NULL,
  `isActive` int(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `grade`, `percentage_from`, `percentage_to`, `isActive`) VALUES
(1, 'E', 50, 54, 1),
(2, 'E+', 55, 59, 1),
(3, 'D', 60, 64, 1),
(4, 'D+', 65, 69, 1),
(5, 'C', 70, 74, 1),
(6, 'C+', 75, 79, 1),
(7, 'B', 80, 84, 1),
(8, 'B+', 85, 89, 1),
(9, 'A', 90, 94, 1),
(10, 'A+', 95, 100, 1),
(11, 'F', 105, 110, 0),
(12, 'G', 50, 54, 0);

-- --------------------------------------------------------

--
-- Table structure for table `group_chat`
--

CREATE TABLE IF NOT EXISTS `group_chat` (
  `chat_id` bigint(20) NOT NULL,
  `chat_description` text,
  `group_id` int(11) NOT NULL,
  `parent_chat_id` bigint(20) DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `active` char(1) NOT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `sent_id` varchar(60) NOT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_chat`
--

INSERT INTO `group_chat` (`chat_id`, `chat_description`, `group_id`, `parent_chat_id`, `timestamp`, `active`, `duration`, `sent_id`, `status`) VALUES
(1, 'hi', 4, NULL, '2016-12-07 11:09:28', 'Y', 0, 'bala', 'Unread'),
(2, 'ba', 4, NULL, '2016-12-07 11:10:05', 'Y', 0, 'bala', 'Unread'),
(3, 'test', 4, NULL, '2016-12-08 04:04:15', 'Y', 0, 'bala', 'Unread'),
(4, 'hi', 2, NULL, '2016-12-08 04:13:37', 'Y', 0, 'sangeetha', 'Unread'),
(5, 'hi', 2, NULL, '2016-12-08 04:15:16', 'Y', 0, 'bala', 'Unread'),
(6, 'test', 2, NULL, '2016-12-08 04:15:45', 'Y', 0, 'bala', 'Unread'),
(7, 'test', 2, NULL, '2016-12-08 04:15:49', 'Y', 0, 'sangeetha', 'Unread'),
(8, 'hi', 2, NULL, '2016-12-08 04:23:05', 'Y', 0, 'bala', 'Unread'),
(9, 'bala', 2, NULL, '2016-12-08 04:29:26', 'Y', 0, 'sangeetha', 'Unread'),
(10, 'hru', 2, NULL, '2016-12-08 04:29:50', 'Y', 0, 'bala', 'Unread'),
(11, 'asd', 2, NULL, '2016-12-09 06:41:01', 'Y', 0, 'bala', 'Unread'),
(12, 'sdf', 2, NULL, '2016-12-09 06:41:05', 'Y', 0, 'bala', 'Unread'),
(13, 'fgh', 2, NULL, '2016-12-12 05:30:41', 'Y', 0, 'bala', 'Unread'),
(14, 'sdf', 2, NULL, '2016-12-12 08:46:53', 'Y', 0, 'bala', 'Unread'),
(15, 'dsfgdfg', 2, NULL, '2016-12-14 07:28:10', 'Y', 0, 'bala', 'Unread'),
(16, 'vbn', 2, NULL, '2016-12-14 07:28:15', 'Y', 0, 'bala', 'Unread'),
(17, 'Hi', 9, NULL, '2017-02-16 10:44:15', 'Y', 0, 'bala', 'Unread'),
(18, 'Hi', 9, NULL, '2017-02-16 10:46:45', 'Y', 0, 'bala', 'Unread'),
(19, 'Hi', 9, NULL, '2017-02-16 10:52:21', 'Y', 0, 'bala', 'Unread'),
(20, 'Hi', 9, NULL, '2017-02-16 10:54:07', 'Y', 0, 'bala', 'Unread'),
(21, 'Hi', 9, NULL, '2017-02-16 10:54:23', 'Y', 0, 'bala', 'Unread'),
(22, 'Hi', 9, NULL, '2017-02-16 10:54:55', 'Y', 0, 'bala', 'Unread'),
(23, 'Hi', 9, NULL, '2017-02-16 10:55:58', 'Y', 0, 'bala', 'Unread'),
(24, 'Hi', 9, NULL, '2017-02-16 10:56:28', 'Y', 0, 'bala', 'Unread'),
(25, 'Hi', 9, NULL, '2017-02-16 10:58:19', 'Y', 0, 'bala', 'Unread'),
(26, 'Hi', 9, NULL, '2017-02-16 10:59:05', 'Y', 0, 'bala', 'Unread'),
(27, 'Hi', 9, NULL, '2017-02-16 10:59:23', 'Y', 0, 'bala', 'Unread'),
(28, 'Hi', 9, NULL, '2017-02-16 10:59:37', 'Y', 0, 'bala', 'Unread'),
(29, 'Hi', 9, NULL, '2017-02-16 11:01:25', 'Y', 0, 'bala', 'Unread'),
(30, 'Hi', 9, NULL, '2017-02-16 11:01:38', 'Y', 0, 'bala', 'Unread'),
(31, 'Hi', 9, NULL, '2017-02-16 11:03:43', 'Y', 0, 'bala', 'Unread'),
(32, 'Test for group message', 4, NULL, '2017-03-01 09:30:29', 'Y', 0, 'bala', 'Unread'),
(33, 'bala', 4, NULL, '2017-03-01 09:32:19', 'Y', 0, 'bala', 'Unread'),
(34, 'guna', 4, NULL, '2017-03-01 09:32:38', 'Y', 0, 'bala', 'Unread'),
(35, 'sangeetha', 4, NULL, '2017-03-01 09:33:13', 'Y', 0, 'bala', 'Unread'),
(36, 'bala', 4, NULL, '2017-03-01 09:33:36', 'Y', 0, 'bala', 'Unread'),
(37, 'Test', 4, NULL, '2017-03-01 09:35:11', 'Y', 0, 'bala', 'Unread'),
(38, 'Test', 4, NULL, '2017-03-01 09:36:29', 'Y', 0, 'bala', 'Unread'),
(39, 'hosadkasdj', 4, NULL, '2017-03-01 09:38:13', 'Y', 0, 'bala', 'Unread'),
(40, 'ksjdfksd', 4, NULL, '2017-03-01 09:39:39', 'Y', 0, 'bala', 'Unread'),
(41, 'sdfkjskdf', 4, NULL, '2017-03-01 09:39:56', 'Y', 0, 'bala', 'Unread'),
(42, 'hdfsd', 4, NULL, '2017-03-01 09:41:05', 'Y', 0, 'bala', 'Unread'),
(43, 'dsfsdf', 4, NULL, '2017-03-01 09:41:14', 'Y', 0, 'bala', 'Unread'),
(44, 'ksdjfkjsf', 4, NULL, '2017-03-01 09:43:26', 'Y', 0, 'bala', 'Unread'),
(45, 'skjdfks', 4, NULL, '2017-03-01 09:43:30', 'Y', 0, 'bala', 'Unread'),
(46, 'fb vv', 4, NULL, '2017-03-01 09:45:14', 'Y', 0, 'Tara1', 'Unread'),
(47, 'hi', 4, NULL, '2017-03-01 10:00:33', 'Y', 0, 'bala', 'Unread'),
(48, 'hhhgh', 4, NULL, '2017-03-01 10:01:21', 'Y', 0, 'Tara1', 'Unread'),
(49, 'vhjhjhj', 4, NULL, '2017-03-01 10:01:29', 'Y', 0, 'Tara1', 'Unread'),
(50, ',bnm', 4, NULL, '2017-03-01 10:01:54', 'Y', 0, 'Tara1', 'Unread'),
(51, 'skdjfjsd', 4, NULL, '2017-03-01 10:02:04', 'Y', 0, 'bala', 'Unread'),
(52, 'k;l;;', 4, NULL, '2017-03-01 10:02:07', 'Y', 0, 'Tara1', 'Unread'),
(53, 'zm,dnsad', 4, NULL, '2017-03-01 10:02:11', 'Y', 0, 'bala', 'Unread'),
(54, 'mm', 4, NULL, '2017-03-01 10:02:13', 'Y', 0, 'Tara1', 'Unread'),
(55, 'l', 4, NULL, '2017-03-01 10:02:17', 'Y', 0, 'Tara1', 'Unread'),
(56, 'mlkk', 4, NULL, '2017-03-01 10:02:18', 'Y', 0, 'Tara1', 'Unread'),
(57, 'aklsdjkas', 4, NULL, '2017-03-01 10:02:19', 'Y', 0, 'bala', 'Unread'),
(58, 'llllm', 4, NULL, '2017-03-01 10:02:21', 'Y', 0, 'Tara1', 'Unread'),
(59, 'jkashd', 4, NULL, '2017-03-01 10:02:24', 'Y', 0, 'bala', 'Unread'),
(60, 'lmkk,.', 4, NULL, '2017-03-01 10:02:32', 'Y', 0, 'Tara1', 'Unread'),
(61, 'hi', 4, NULL, '2017-03-01 10:18:05', 'Y', 0, 'bala', 'Unread'),
(62, 'jhgdsf', 4, NULL, '2017-03-01 10:24:48', 'Y', 0, 'bala', 'Unread'),
(63, 'jhsfj', 4, NULL, '2017-03-01 10:25:23', 'Y', 0, 'bala', 'Unread'),
(64, 'sdkfsdf', 4, NULL, '2017-03-01 10:31:06', 'Y', 0, 'bala', 'Unread'),
(65, 'nbb,m', 4, NULL, '2017-03-01 10:45:46', 'Y', 0, 'Tara1', 'Unread'),
(66, 'vbbnmj', 4, NULL, '2017-03-01 10:46:05', 'Y', 0, 'Tara1', 'Unread'),
(67, 'asdjhajs', 4, NULL, '2017-03-01 10:46:07', 'Y', 0, 'bala', 'Unread'),
(68, 'vvbgnn', 4, NULL, '2017-03-01 10:46:19', 'Y', 0, 'Tara1', 'Unread'),
(69, 'jhjh', 4, NULL, '2017-03-01 10:46:31', 'Y', 0, 'bala', 'Unread'),
(70, 'ftvyhjhhjklkk', 4, NULL, '2017-03-01 10:46:32', 'Y', 0, 'Tara1', 'Unread'),
(71, 'jbhjj', 4, NULL, '2017-03-01 10:46:41', 'Y', 0, 'Tara1', 'Unread'),
(72, 'jjhkkjhnbmkjjjjn', 4, NULL, '2017-03-01 10:46:57', 'Y', 0, 'Tara1', 'Unread'),
(73, 'iusrsd', 4, NULL, '2017-03-01 10:48:22', 'Y', 0, 'bala', 'Unread'),
(74, 'kj.l;lk', 4, NULL, '2017-03-01 10:48:42', 'Y', 0, 'Tara1', 'Unread'),
(75, ';;', 4, NULL, '2017-03-01 10:48:52', 'Y', 0, 'Tara1', 'Unread'),
(76, 'sdfuisd', 4, NULL, '2017-03-01 10:49:03', 'Y', 0, 'bala', 'Unread'),
(77, 'hgh', 4, NULL, '2017-03-01 10:49:18', 'Y', 0, 'bala', 'Unread'),
(78, 'bn', 4, NULL, '2017-03-01 10:49:29', 'Y', 0, 'bala', 'Unread'),
(79, 'nmbjn,.', 4, NULL, '2017-03-01 10:49:44', 'Y', 0, 'Tara1', 'Unread'),
(80, 'hgfh', 4, NULL, '2017-03-01 10:50:02', 'Y', 0, 'bala', 'Unread'),
(81, 'hjghg', 4, NULL, '2017-03-01 10:50:40', 'Y', 0, 'bala', 'Unread'),
(82, 'l;jjhkhk', 4, NULL, '2017-03-01 10:54:17', 'Y', 0, 'Tara1', 'Unread'),
(83, 'sedfjksd', 4, NULL, '2017-03-01 10:55:55', 'Y', 0, 'bala', 'Unread'),
(84, ',m.lk;l', 4, NULL, '2017-03-01 10:56:07', 'Y', 0, 'Tara1', 'Unread'),
(85, 'skdfksjdf', 4, NULL, '2017-03-01 10:58:08', 'Y', 0, 'bala', 'Unread'),
(86, 'kuhlkjjkl', 4, NULL, '2017-03-01 10:58:24', 'Y', 0, 'Tara1', 'Unread'),
(87, 'hjgkl', 4, NULL, '2017-03-01 10:58:36', 'Y', 0, 'Tara1', 'Unread'),
(88, 'jkhh', 4, NULL, '2017-03-01 10:58:45', 'Y', 0, 'Tara1', 'Unread'),
(89, 'fgjkjhl;', 4, NULL, '2017-03-01 11:02:59', 'Y', 0, 'Tara1', 'Unread'),
(90, 'kl/l;''p;k', 4, NULL, '2017-03-01 11:03:20', 'Y', 0, 'Tara1', 'Unread'),
(91, 'hjgh', 4, NULL, '2017-03-01 11:07:46', 'Y', 0, 'bala', 'Unread'),
(92, 'bvgf', 4, NULL, '2017-03-01 11:08:21', 'Y', 0, 'bala', 'Unread'),
(93, 'tyhhhhhhhhhhhhhhh', 4, NULL, '2017-03-01 11:08:46', 'Y', 0, 'Tara1', 'Unread'),
(94, 'yfhgfghfgfghfghf', 4, NULL, '2017-03-01 11:09:02', 'Y', 0, 'bala', 'Unread'),
(95, 'sdfkjsd', 4, NULL, '2017-03-01 11:14:09', 'Y', 0, 'bala', 'Unread'),
(96, 'sdfsdf', 4, NULL, '2017-03-01 11:14:41', 'Y', 0, 'bala', 'Unread'),
(97, 'fdgdfg', 4, NULL, '2017-03-01 11:15:14', 'Y', 0, 'Tara1', 'Unread'),
(98, 'xcdzxf', 4, NULL, '2017-03-01 11:15:27', 'Y', 0, 'Tara1', 'Unread'),
(99, 'sdhjas', 4, NULL, '2017-03-01 11:16:31', 'Y', 0, 'bala', 'Unread'),
(100, 'sdkjfksd', 4, NULL, '2017-03-01 11:16:42', 'Y', 0, 'bala', 'Unread'),
(101, 'yrtyuruy', 4, NULL, '2017-03-01 11:16:53', 'Y', 0, 'Tara1', 'Unread'),
(102, 'kjhjsfd', 4, NULL, '2017-03-01 11:19:14', 'Y', 0, 'bala', 'Unread'),
(103, 'lkjdfkg', 4, NULL, '2017-03-01 11:19:33', 'Y', 0, 'bala', 'Unread'),
(104, 'sathish', 4, NULL, '2017-03-01 11:22:27', 'Y', 0, 'karthi', 'Unread'),
(105, 'dgdfg', 4, NULL, '2017-03-01 11:22:46', 'Y', 0, 'bala', 'Unread'),
(106, 'Hi', 4, NULL, '2017-03-01 11:23:48', 'Y', 0, 'naga_test', 'Unread'),
(107, 'hru', 4, NULL, '2017-03-01 11:23:54', 'Y', 0, 'bala', 'Unread'),
(108, 'skdfjksd', 4, NULL, '2017-03-01 11:23:58', 'Y', 0, 'bala', 'Unread'),
(109, 'fss', 4, NULL, '2017-03-01 11:24:33', 'Y', 0, 'karthi', 'Unread'),
(110, 'cvbc', 4, NULL, '2017-03-01 11:24:36', 'Y', 0, 'bala', 'Unread'),
(111, 'hh', 4, NULL, '2017-03-01 11:28:59', 'Y', 0, 'bala', 'Unread'),
(112, 'hi', 4, NULL, '2017-03-01 11:37:35', 'Y', 0, 'naga_test', 'Unread'),
(113, 'skdjfk', 4, NULL, '2017-03-02 12:13:22', 'Y', 0, 'bala', 'Unread'),
(114, 'sdfsdf', 4, NULL, '2017-03-02 12:13:28', 'Y', 0, 'bala', 'Unread'),
(115, 'dsfsdf', 4, NULL, '2017-03-02 12:13:35', 'Y', 0, 'bala', 'Unread'),
(116, 'hi All', 7, NULL, '2017-03-13 08:28:49', 'Y', 0, 'Jenny', 'Unread'),
(117, 'hi All', 7, NULL, '2017-03-13 08:28:50', 'Y', 0, 'Jenny', 'Unread'),
(118, 'hiiiii', 7, NULL, '2017-03-13 11:51:31', 'Y', 0, 'naga_test', 'Unread'),
(119, 'fgfgdfsg', 7, NULL, '2017-03-13 11:51:44', 'Y', 0, 'Jenny', 'Unread'),
(120, 'hi', 7, NULL, '2017-03-13 11:51:55', 'Y', 0, 'karthi', 'Unread'),
(121, 'jk;kj;lklkj', 7, NULL, '2017-03-13 11:52:04', 'Y', 0, 'Jenny', 'Unread'),
(122, 'ggggg', 7, NULL, '2017-03-13 11:52:06', 'Y', 0, 'karthi', 'Unread'),
(123, 'dgfdg', 7, NULL, '2017-03-13 11:52:39', 'Y', 0, 'Jenny', 'Unread'),
(124, 'gggggggg', 7, NULL, '2017-03-13 11:52:52', 'Y', 0, 'karthi', 'Unread'),
(125, 'kjuhbkjbh', 7, NULL, '2017-03-13 11:54:32', 'Y', 0, 'naga_test', 'Unread'),
(126, 'fdsahjfgsdfsd', 7, NULL, '2017-03-13 11:57:33', 'Y', 0, 'Jenny', 'Unread'),
(127, 'hyutyutyu', 7, NULL, '2017-03-13 11:59:37', 'Y', 0, 'Jenny', 'Unread'),
(128, 'hhhhhhh', 7, NULL, '2017-03-13 12:00:08', 'Y', 0, 'karthi', 'Unread'),
(129, 'jjkytyty', 7, NULL, '2017-03-13 12:03:02', 'Y', 0, 'Jenny', 'Unread'),
(130, 'ukjyutyutyhgh', 7, NULL, '2017-03-13 12:03:30', 'Y', 0, 'Jenny', 'Unread'),
(131, 'dgfhfghdf', 7, NULL, '2017-03-13 12:03:33', 'Y', 0, 'Jenny', 'Unread'),
(132, 'ttttttttttt', 7, NULL, '2017-03-13 12:03:36', 'Y', 0, 'karthi', 'Unread'),
(133, 'fgdf', 7, NULL, '2017-03-13 12:03:39', 'Y', 0, 'Jenny', 'Unread'),
(134, 'uuuuuuuuuuuuu', 7, NULL, '2017-03-13 12:03:44', 'Y', 0, 'karthi', 'Unread'),
(135, 'dfrgrhsterw433rewde', 7, NULL, '2017-03-13 12:03:46', 'Y', 0, 'Jenny', 'Unread'),
(136, 'hi', 7, NULL, '2017-03-13 12:03:50', 'Y', 0, 'karthi', 'Unread'),
(137, 'hi', 7, NULL, '2017-03-13 12:03:50', 'Y', 0, 'karthi', 'Unread'),
(138, 'hi', 7, NULL, '2017-03-13 12:03:50', 'Y', 0, 'karthi', 'Unread'),
(139, 'hi', 7, NULL, '2017-03-13 12:03:50', 'Y', 0, 'karthi', 'Unread'),
(140, 'hi', 7, NULL, '2017-03-13 12:03:50', 'Y', 0, 'karthi', 'Unread'),
(141, 'hjgjghj', 7, NULL, '2017-03-13 12:05:01', 'Y', 0, 'Jenny', 'Unread'),
(142, 'fghdfg', 7, NULL, '2017-03-13 12:05:11', 'Y', 0, 'Jenny', 'Unread'),
(143, 'hgg', 7, NULL, '2017-03-31 04:53:48', 'Y', 0, 'bala', 'Unread'),
(144, 'sdfsdf', 7, NULL, '2017-04-02 05:45:19', 'Y', 0, 'bala', 'Unread'),
(145, 'sdfsdf', 7, NULL, '2017-04-02 05:45:22', 'Y', 0, 'bala', 'Unread'),
(146, '12313', 2, NULL, '2017-04-07 10:57:29', 'Y', 0, 'bala', 'Unread'),
(147, 'adsda', 6, NULL, '2017-04-07 11:00:45', 'Y', 0, 'bala', 'Unread'),
(148, 'k', 10, NULL, '2017-09-15 23:11:53', 'Y', 0, 'SacredSource', 'Unread'),
(149, 'k', 10, NULL, '2017-09-15 23:11:54', 'Y', 0, 'SacredSource', 'Unread'),
(150, 'k', 10, NULL, '2017-09-15 23:11:55', 'Y', 0, 'SacredSource', 'Unread'),
(151, 'k', 10, NULL, '2017-09-15 23:11:55', 'Y', 0, 'SacredSource', 'Unread'),
(152, 'k', 10, NULL, '2017-09-15 23:11:55', 'Y', 0, 'SacredSource', 'Unread');

-- --------------------------------------------------------

--
-- Table structure for table `group_master`
--

CREATE TABLE IF NOT EXISTS `group_master` (
  `id` int(11) NOT NULL,
  `group_name` varchar(100) NOT NULL,
  `image` longblob,
  `imagepath` varchar(100) DEFAULT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_master`
--

INSERT INTO `group_master` (`id`, `group_name`, `image`, `imagepath`, `created_by`, `created_on`) VALUES
(1, 'test1', NULL, 'uploadImage/group1.jpg', 'bala', '2017-02-28 11:15:42'),
(2, 'test2', NULL, 'uploadImage/group2.jpg', 'bala', '2017-03-01 05:23:44'),
(3, 'test4', NULL, 'uploadImage/group_default.png', 'bala', '2017-02-28 11:11:51'),
(4, 'test5', NULL, 'uploadImage/group42017_03_14_10_04_44.jpg', 'bala', '2017-03-14 10:04:44'),
(5, 'test6', NULL, 'uploadImage/group52017_03_01_07_15_03.jpg', 'bala', '2017-03-01 07:15:03'),
(6, 'test7', NULL, 'uploadImage/group_default.png', 'bala', '2017-02-28 11:22:56'),
(7, 'Holi', NULL, 'uploadImage/group72017_03_13_08_27_05.jpg', 'Jenny', '2017-03-13 08:27:05'),
(8, 'sdfsdfsdfsdf', NULL, 'uploadImage/group_default.png', 'bala', '2017-04-07 09:58:05'),
(9, 'Admin', NULL, 'uploadImage/group_default.png', 'senthil', '2017-04-14 15:40:12'),
(10, 'Helios I', NULL, 'uploadImage/group_default.png', 'SacredSource', '2017-09-16 06:11:43');

-- --------------------------------------------------------

--
-- Table structure for table `group_member`
--

CREATE TABLE IF NOT EXISTS `group_member` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `add_by` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_member`
--

INSERT INTO `group_member` (`id`, `group_id`, `user_id`, `add_by`, `status`) VALUES
(1, 1, 'bala', 'bala', 'Active'),
(2, 1, 'naga_test', 'bala', 'Active'),
(3, 2, 'bala', 'bala', 'Active'),
(4, 3, 'bala', 'bala', 'Active'),
(5, 4, 'bala', 'bala', 'Active'),
(6, 5, 'bala', 'bala', 'Active'),
(7, 6, 'bala', 'bala', 'Active'),
(8, 1, 'karthi', 'bala', 'Active'),
(9, 1, 'sangeetha', 'bala', 'Active'),
(10, 1, 'jack', 'bala', 'Active'),
(11, 5, 'naga_test', 'bala', 'Active'),
(12, 5, 'sangeetha', 'bala', 'Active'),
(13, 5, 'Guna', 'bala', 'Active'),
(14, 5, 'bala123', 'bala', 'Active'),
(15, 4, 'Tara1', 'bala', 'Active'),
(16, 4, 'naga_test', 'bala', 'Active'),
(17, 4, 'karthi', 'bala', 'Active'),
(18, 7, 'Jenny', 'Jenny', 'Active'),
(19, 7, 'bala', 'Jenny', 'Active'),
(20, 7, 'Guna', 'Jenny', 'Active'),
(21, 7, 'naga_test', 'Jenny', 'Active'),
(22, 7, 'karthi', 'Jenny', 'Active'),
(23, 8, 'bala', 'bala', 'Active'),
(24, 6, 'manish', 'bala', 'Active'),
(25, 9, 'senthil', 'senthil', 'Active'),
(26, 10, 'SacredSource', 'SacredSource', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `postquestion`
--

CREATE TABLE IF NOT EXISTS `postquestion` (
  `post_Id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `datetime` datetime DEFAULT NULL,
  `subject_id` int(12) DEFAULT NULL,
  `sub_subject_id` int(11) DEFAULT NULL,
  `sent_to` varchar(50) DEFAULT NULL,
  `usergroup` varchar(10) DEFAULT NULL,
  `user_Id` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postquestion`
--

INSERT INTO `postquestion` (`post_Id`, `title`, `content`, `datetime`, `subject_id`, `sub_subject_id`, `sent_to`, `usergroup`, `user_Id`) VALUES
(1, 'What are Atomic Structure related equations and constants?', 'E = h?\nc = ??\nE = energy\n? = frequency\n? = wavelength\nPlanck’s constant, h = 6.626 × 10?34 J s\nSpeed of light, c = 2.998 × 108\n ms?1\nAvogadro’s number = 6.022 × 1023 mol?1\nElectron charge, e = ?1.602 × 10?19 coulomb', '2018-01-22 22:57:49', 9, 68, 'All', 'User', 'AjithSenthil'),
(2, 'Question related to Cell Potential in 2014 AP Chem Free response question 3. d', '(d) A nonstandard cell is made by replacing the 1.0 M solutions of Cu(NO3)2 and Sn(NO3)2 in the standard cell with 0.50 M solutions of Cu(NO3)2 and Sn(NO3)2 . The volumes of solutions in the nonstandard cell are identical to those in the standard cell.\n\n(i) Is the cell potential of the nonstandard cell greater than, less than, or equal to the cell potential of the standard cell? Justify your answer.\n\n(ii) Both the standard and nonstandard cells can be used to power an electronic device. Would the nonstandard cell power the device for the same time, a longer time, or a shorter time as compared with the standard cell? Justify your answer.', '2018-01-22 23:08:34', 9, 68, 'All', 'User', 'AjithSenthil'),
(3, 'Can you please give me some useful links for AP Chemistry exam preparation?', 'Here are some useful links to help you prepare for AP Chemistry exam:\nCopy & paste in your browser. I am working on displaying hyperlinks here.\nhttps://apstudent.collegeboard.org/apcourse/ap-chemistry/exam-practice\nhttps://apstudent.collegeboard.org/apcourse/ap-chemistry/calculators-and-commonly-used-equations\nhttps://apstudent.collegeboard.org/apcourse/ap-chemistry/exam-tips\nhttps://www.nthurston.k12.wa.us/cms/lib/WA01001371/Centricity/Domain/589/ap_chemistry_prep_book.pdf\nhttp://www.chemmybear.com/groves/apchem.html\nhttps://www.varsitytutors.com/ap_chemistry-practice-tests', '2018-01-22 23:16:49', 9, 68, 'All', 'User', 'AjithSenthil'),
(4, 'Amphoteric and amphiprotic substances have the same underlying concept. Explain.', 'Substance that can both donate and accept protons are amphiprotic. Example: H2PO4-.\nSubstances that can react as both an acid and a base are amphoteric. Example: Al2O3.', '2018-01-22 23:48:29', 9, 68, 'All', 'User', 'Ajith Senthil'),
(5, 'The atomic radii of three elements are listed below. Chromium 117 pm (forms Cr3+) Silver 144 pm (forms Ag+) Nickel 115 pm (forms Ni 2+): ...', 'Based on coulombic attractive forces, arrange the oxides of these elements in order from the highest lattice energy to the lowest lattice energy.', '2018-01-22 23:49:22', 9, 68, 'All', 'User', 'Ajith Senthil'),
(6, 'Define a hydrate and give and example.', 'A hydrate is a substance that contains a fixed number of water molecules. The water molecules are written separately from the formula itself and connected to it with a dot in the center of the line between the chemical formula and the water molecules. For example, cobalt(II) chloride hexahydrate is CoCl2*6H2O.', '2018-01-22 23:49:59', 9, 68, 'All', 'User', 'Ajith Senthil'),
(7, 'Define alkali metals', 'Alkali metals are the elements in the first group (column) of the periodic table (1A or 1.). All: have ns1 electrons as valence electrons, are extremely reactive elements, have low ionization energies, have low electronegativities, are metals that form 1+ ions.', '2018-01-22 23:50:44', 9, 68, 'All', 'User', 'Ajith Senthil'),
(8, 'Define alkaline earth metals', 'Alkaline earth metals are the elements in the second group (column) of the periodic table. All: have ns2 electrons for valence electrons, are very reactive elements, are very reactive elements, are metals that form 2+ ions.', '2018-01-22 23:51:20', 9, 68, 'All', 'User', 'Ajith Senthil'),
(9, 'Define and describe the four quantum numbers', 'The principle quantum number, n, indicates the shell (or principal energy level) of the atom in which an electron resides and is rough measure of the distance from the nucleus. n can have any value from 1 to infinity. The azimuthal quantum number, l, specifies the sublevel (or orbital) that an electron is located in. This number may be any number from zero up to n-1. This number specifies the shape of an atomic orbital. The magnetic quantum number, m1, indicates the orientation of a sublevel in space. The value of the m1 quantum number can be any number from -l to zero to +l. The spin quantum number, m3, indicates the spin of the electron. An electron is not actually spinning but it is a useful way of visualizing this property. Acceptable values for spin are +1/2 and -1/2. Each electron possesses four quantum numbers. Each electron in an atom must have a set of four quantum numbers different from all other electrons in that atom.', '2018-01-22 23:51:47', 9, 68, 'All', 'User', 'Ajith Senthil'),
(10, 'Define Bohr atom', 'The Bohr atom is the model of the atom developed by Niels Bohr. This model viewed electrons circling the nucleus like a miniature solar system. Each orbit had a definite energy and electrons moving from one orbit to another and either absorbed or emitted the energy difference between the orbits. This theory replicated the Rydberg Constant to less that +/-0.5%.', '2018-01-22 23:52:42', 9, 68, 'All', 'User', 'Ajith Senthil'),
(11, 'Define chemical formula and give an example', 'A chemical formula is the representation of chemical substances using their chemical symbols and appropriate subscripts for the number of atoms. A simple formula is CA(NO3)2. This formula indicates a compound with one calcium atom, two nitrogen atoms, and six oxygen atoms.', '2018-01-22 23:54:00', 9, 68, 'All', 'User', 'Ajith Senthil'),
(12, 'Define electron, neutron, and proton.', 'An electron occupies space outside the nucleus. (Mass = 0, charge = 1-, symbol is e-). \nA neutron is an uncharged particle in the nucleus. (Symbol is 1n, mass = 1).\nA proton is a positively charged particle in the nucleus. (Symbol is 1p, mass = 1, charge = 1+) (Number of protons defines the identity of an atom.)', '2018-01-22 23:54:29', 9, 68, 'All', 'User', 'Ajith Senthil'),
(13, 'Describe where on the periodic table metals, nonmetals, and metalloids are found. Describe their properties', 'Metals are found on the lower left of the periodic table, nonmetals on the upper right of the table, and metalloids are on either side of a staircase line that starts between boron and aluminum, aluminum to silicon, and then to the bottom of the table. Metals typically have a silvery luster (except gold and copper), conduct electricity easily, and are malleable and ductile. Nonmetals have none of the properties that metals have. Metalloids have properties in between metals and nonmetals. They are semiconductors of electricity.', '2018-01-22 23:55:17', 9, 68, 'All', 'User', 'Ajith Senthil'),
(14, 'What is the concept behind the atomic number?', 'The atomic number is the number that specifies the position of an element in the periodic table. It is also a number representing the number of protons in the nucleus of an atom. The atomic number defines the identity of an element. The basic idea is that each element must fall in some sort of order. Medeleev originally based the order on atomic masses. It was later found that the order should be based on the number of protons in the nucleus of an element.', '2018-01-22 23:55:50', 9, 68, 'All', 'User', 'Ajith Senthil'),
(15, 'What is the formula for aluminum hydrogen sulfate or aluminum bisulfate? What are the symbols for the ions that make up this compound? What is the oxidation number of the nonoxygen element in the polyatomic ion?', 'The formula fro aluminum hydrogen sulfate is Al(HSO4)3. The ions that make up this compound are Al3+ and HSO4-. The oxidation number of S is +6. The HSO4- ion is often called the bisulfate ion.', '2018-01-22 23:56:19', 9, 68, 'All', 'User', 'Ajith Senthil'),
(16, 'What is the Pauli Exclusion Principle?', 'The Pauli Exclusion Principle requires that no two electrons in an atom may have the same set of four quantum numbers: n, l, ml, and ms. This also means that no two electrons with the same wave equations can coexist. Another interpretation is that now two electrons can occupy exactly the same space at the same time.', '2018-01-22 23:56:55', 9, 68, 'All', 'User', 'Ajith Senthil'),
(17, 'Describe the three states of matter.', 'A solid retains both volume and shape and molecules are relatively rigid in a crystal lattice. A liquid retains volume but not shape, molecules move freely in close contact, and strong attractive forces are present. A gas assumes the volume and shape of a container, molecules are almost totally independent of each other, there is little in the way of attractive forces, and it is highly compressable.', '2018-01-22 23:58:19', 9, 68, 'All', 'User', 'Ajith Senthil'),
(18, 'Define and describe the four quantum numbers.', 'The principle quantum number, n, indicates the shell (or principal energy level) of the atom in which an electron resides and is rough measure of the distance from the nucleus. n can have any value from 1 to infinity. The azimuthal quantum number, l, specifies the sublevel (or orbital) that an electron is located in. This number may be any number from zero up to n-1. This number specifies the shape of an atomic orbital. The magnetic quantum number, m1, indicates the orientation of a sublevel in space. The value of the m1 quantum number can be any number from -l to zero to +l. The spin quantum number, m3, indicates the spin of the electron. An electron is not actually spinning but it is a useful way of visualizing this property. Acceptable values for spin are +1/2 and -1/2. Each electron possesses four quantum numbers. Each electron in an atom must have a set of four quantum numbers different from all other electrons in that atom.', '2018-01-22 23:58:50', 9, 68, 'All', 'User', 'Ajith Senthil');

-- --------------------------------------------------------

--
-- Table structure for table `postquestion_comment`
--

CREATE TABLE IF NOT EXISTS `postquestion_comment` (
  `id` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `post_Id` int(11) DEFAULT NULL,
  `parent_comment_id` int(11) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `user_Id` varchar(50) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `volunteerHours` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `postquestion_comment`
--

INSERT INTO `postquestion_comment` (`id`, `comment`, `post_Id`, `parent_comment_id`, `datetime`, `user_Id`, `rating`, `volunteerHours`) VALUES
(1, 'E = h?; c = ??; E = energy; ? = frequency; ? = wavelength;  Planck’s constant, h = 6.626 × 10?34 J s; Speed of light, c = 2.998 × 108 ms?1; Avogadro’s number = 6.022 × 1023 mol?1; Electron charge, e = ?1.602 × 10?19 coulomb;', 1, NULL, '2018-01-22 22:59:39', 'AjithSenthil', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_notification`
--

CREATE TABLE IF NOT EXISTS `question_notification` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `status` int(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_notification`
--

INSERT INTO `question_notification` (`id`, `post_id`, `user_id`, `status`) VALUES
(1, 1, 'AjithSenthil', 1),
(2, 3, 'AjithSenthil', 1),
(3, 10, 'Ajith Senthil', 1),
(4, 15, 'AjithSenthil', 1),
(5, 4, 'senthil', 1),
(6, 18, 'senthil', 1),
(7, 18, 'bala', 1),
(12, 1, 'bala', 1),
(13, 4, 'bala', 1),
(14, 10, 'bala', 1),
(15, 16, 'bala', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE IF NOT EXISTS `ratings` (
  `chat_id` bigint(20) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `comment` text,
  `timestamp` datetime DEFAULT NULL,
  `refute` char(1) DEFAULT NULL,
  `refute_comment` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE IF NOT EXISTS `school` (
  `id` int(11) NOT NULL,
  `school_name` varchar(64) NOT NULL,
  `district_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `county_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `isActive` int(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`id`, `school_name`, `district_id`, `city_id`, `county_id`, `state_id`, `country_id`, `isActive`) VALUES
(1, 'Greenhills Elementary', 1, 31, 31, 5, 224, 1),
(2, 'Oakhills Elementary', 1, 31, 31, 5, 224, 1),
(3, 'Ridgeview Elementary', 1, 31, 31, 5, 224, 1),
(4, 'Willma Cavitt Junior High', 1, 31, 31, 5, 224, 1),
(5, 'Granite Bay High', 2, 31, 31, 5, 224, 1),
(6, 'Barbara Chilton Middle', 4, 31, 31, 5, 224, 1),
(7, 'Blue Oaks Elementary', 4, 31, 31, 5, 224, 1),
(8, 'Bradford Woodbridge Fundamental Elementary', 4, 31, 31, 5, 224, 1),
(9, 'Catheryn Gates Elementary', 4, 31, 31, 5, 224, 1),
(10, 'Crestmont Elementary', 4, 31, 31, 5, 224, 1),
(11, 'Diamond Creek Elementary', 4, 31, 31, 5, 224, 1),
(12, 'Ferris Spanger Elementary', 4, 31, 31, 5, 224, 1),
(13, 'Fiddyment Farm', 4, 31, 31, 5, 224, 1),
(14, 'George A. Buljan Middle', 4, 31, 31, 5, 224, 1),
(15, 'George Cirby Elementary', 4, 31, 31, 5, 224, 1),
(16, 'George Sargeant Elementary', 4, 31, 31, 5, 224, 1),
(17, 'Junction Elementary', 4, 31, 31, 5, 224, 1),
(18, 'Robert C. Cooley Middle', 4, 31, 31, 5, 224, 1),
(19, 'Stoneridge Elementary', 4, 31, 31, 5, 224, 1),
(20, 'Thomas Jefferson Elementary', 4, 31, 31, 5, 224, 1),
(21, 'Vencil Brown Elementary', 4, 31, 31, 5, 224, 1),
(22, 'Warren T. Eich Middle', 4, 31, 31, 5, 224, 1),
(23, 'William Kaseberg Elementary', 4, 31, 31, 5, 224, 1),
(24, 'Adelante High (Continuation)', 2, 31, 31, 5, 224, 1),
(25, 'Independence High (Alternative)', 2, 31, 31, 5, 224, 1),
(26, 'Oakmont High', 2, 31, 31, 5, 224, 1),
(27, 'Roseville Adult', 2, 31, 31, 5, 224, 1),
(28, 'Roseville High', 2, 31, 31, 5, 224, 1),
(29, 'Woodcreek High', 2, 31, 31, 5, 224, 1),
(30, 'Blue Oak Elementary', 3, 91, 9, 5, 224, 1),
(31, 'Buckeye Elementary', 3, 91, 9, 5, 224, 1),
(32, 'California Montessori Project-Shingle Springs Campus', 3, 91, 9, 5, 224, 1),
(33, 'Camerado Springs Middle', 3, 91, 9, 5, 224, 1),
(34, 'Charter Montessori Blue Oak Campus', 3, 91, 9, 5, 224, 1),
(35, 'Oak Meadow Elementary', 3, 91, 9, 5, 224, 1),
(36, 'Rising Sun Montessori', 3, 91, 9, 5, 224, 1),
(37, 'Rolling Hills Middle', 3, 91, 9, 5, 224, 1),
(38, 'Silva Valley Elementary', 3, 91, 9, 5, 224, 1),
(39, 'William Brooks Elementary', 3, 91, 9, 5, 224, 1),
(40, 'sfrygdftuyfhu', 6, 663, 60, 53, 239, 1);

-- --------------------------------------------------------

--
-- Table structure for table `school_link`
--

CREATE TABLE IF NOT EXISTS `school_link` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `link` text NOT NULL,
  `description` text
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `school_link`
--

INSERT INTO `school_link` (`id`, `name`, `link`, `description`) VALUES
(2, 'GBHS MASTER CALENDAR', 'https://www.rjuhsd.us/Page/1827', 'This is Granite bay High School Calendar.'),
(3, 'BLACKBOARD RJUHSD', 'https://rjuhsd.blackboard.com/', 'Welcome to RJUHSD Blackboard! You need an active account to login.'),
(4, 'AERIES Portal', 'https://rosevillejuhsd.asp.aeries.net/student/LoginParent.aspx?page=default.aspx', 'This is a Student Information System for al Roseville Joint Union High School District Students. You need an active account to login.'),
(5, 'Khan Academy', 'https://www.khanacademy.org/', 'Here you can learn anything. For Free. For Everyone. Forever.'),
(6, 'Wolfram Alpha ', 'https://www.wolframalpha.com/', 'Great resource for computational tools/help for Mathematics and many other branches of Science. '),
(7, 'College Board', 'https://www.collegeboard.org/', 'College Board is a mission-driven not-for-profit organization that connects students to college success. You can get College research, admission resources and register for SAT/PSAT, etc.'),
(8, 'College Search', 'https://bigfuture.collegeboard.org/college-search', 'Here you can save all your college planning activities and create your roadmap.'),
(9, 'College Board - Services for Students with Disabilities', 'https://www.collegeboard.org/students-with-disabilities?navId=gf-ssd', 'This site/link helps students make special accomodations for tests such as SAT/PSAT, etc.'),
(10, 'Naviance', 'https://connection.naviance.com/family-connection/auth/login/?hsid=gbhs', 'In Naviance, you can plan your courses and get subject information.'),
(11, 'Xoom Learning', 'http://www.xoomlearning.com/', 'Xoom Learning is founded by Ajith K Senthil and is a Volunteer Tutoring Non-Profit Educational Organization for the Under-privileged.'),
(12, 'GBHS Math', 'https://sites.google.com/a/rjuhsd.us/gbhs-mathematics/', 'Main site of Granite Bay High School Mathematics Department.');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` int(11) NOT NULL,
  `state` varchar(100) NOT NULL,
  `statecode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `isActive` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state`, `statecode`, `country_id`, `isActive`) VALUES
(1, 'Alabama', 'AL', 224, 1),
(2, 'Alaska', 'AK', 224, 1),
(3, 'Arizona', 'AZ', 224, 1),
(4, 'Arkansas', 'AR', 224, 1),
(5, 'California', 'CA', 224, 1),
(6, 'Colorado', 'CO', 224, 1),
(7, 'Connecticut', 'CT', 224, 1),
(8, 'Delaware', 'DE', 224, 1),
(9, 'Florida', 'FL', 224, 1),
(10, 'Georgia', 'GA', 224, 1),
(11, 'Hawaii', 'HI', 224, 1),
(12, 'Idaho', 'ID', 224, 1),
(13, 'Illinois', 'IL', 224, 1),
(14, 'Indiana', 'IN', 224, 1),
(15, 'Iowa', 'IA', 224, 1),
(16, 'Kansas', 'KS', 224, 1),
(17, 'Kentucky', 'KY', 224, 1),
(18, 'Louisiana', 'LA', 224, 1),
(19, 'Maine', 'ME', 224, 1),
(20, 'Maryland', 'MD', 224, 1),
(21, 'Massachusetts', 'MA', 224, 1),
(22, 'Michigan', 'MI', 224, 1),
(23, 'Minnesota', 'MN', 224, 1),
(24, 'Mississippi', 'MS', 224, 1),
(25, 'Missouri', 'MO', 224, 1),
(26, 'Montana', 'MT', 224, 1),
(27, 'Nebraska', 'NE', 224, 1),
(28, 'Nevada', 'NV', 224, 1),
(29, 'New Hampshire', 'NH', 224, 1),
(30, 'New Jersey', 'NJ', 224, 1),
(31, 'New Mexico', 'NM', 224, 1),
(32, 'New York', 'NY', 224, 1),
(33, 'North Carolina', 'NC', 224, 1),
(34, 'North Dakota', 'ND', 224, 1),
(35, 'Ohio', 'OH', 224, 1),
(36, 'Oklahoma', 'OK', 224, 1),
(37, 'Oregon', 'OR', 224, 1),
(38, 'Pennsylvania', 'PA', 224, 1),
(39, 'Rhode Island', 'RI', 224, 1),
(40, 'South Carolina', 'SC', 224, 1),
(41, 'South Dakota', 'SD', 224, 1),
(42, 'Tennessee', 'TN', 224, 1),
(43, 'Texas', 'TX', 224, 1),
(44, 'Utah', 'UT', 224, 1),
(45, 'Vermont', 'VT', 224, 1),
(46, 'Virginia', 'VA', 224, 1),
(47, 'Washington', 'WA', 224, 1),
(48, 'Washington, D.C.(DC)', 'DC', 224, 1),
(49, 'West Virginia', 'WV', 224, 1),
(50, 'Wisconsin', 'WI', 224, 1),
(51, 'Wyoming', 'WY', 224, 1),
(52, 'ztest', 'ZT', 239, 1),
(53, 'fdsfdf', 'Fd', 239, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `isActive` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `name`, `category_id`, `isActive`) VALUES
(1, 'Chinese', 1, 1),
(2, 'Spanish', 1, 1),
(3, 'English', 1, 1),
(4, 'Arabic', 1, 1),
(5, 'Hindi', 1, 1),
(6, 'Bengali', 1, 1),
(7, 'Portuguese', 1, 1),
(8, 'Russian', 1, 1),
(9, 'Japanese', 1, 1),
(10, 'German, Standard', 1, 1),
(11, 'Javanese', 1, 1),
(12, 'Lahnda', 1, 1),
(13, 'Telugu', 1, 1),
(14, 'Vietnamese', 1, 1),
(15, 'Marathi', 1, 1),
(16, 'French', 1, 1),
(17, 'Korean', 1, 1),
(18, 'Tamil', 1, 1),
(19, 'Italian', 1, 1),
(20, 'Urdu', 1, 1),
(21, 'Political', 2, 1),
(22, 'Diplomatic', 2, 1),
(23, 'Social', 2, 1),
(24, 'Cultural', 2, 1),
(25, 'Economic', 2, 1),
(26, 'Intellectual', 2, 1),
(27, 'Algebra', 4, 1),
(28, 'Calculus', 4, 1),
(29, 'Geometry', 4, 1),
(30, 'Combinatorics', 4, 1),
(31, 'Logic', 4, 1),
(32, 'Number theory', 4, 1),
(33, 'Dynamical systems and differential equations', 4, 1),
(34, 'Mathematical physics', 4, 1),
(35, 'Analysis', 4, 1),
(36, 'Topology', 4, 1),
(37, 'Physical Geography', 5, 1),
(38, 'Human Geography ', 5, 1),
(39, 'Environmental Geography', 5, 1),
(40, 'Regional Geography', 5, 1),
(41, 'Tropical Geography', 5, 1),
(42, 'Economic Geography', 5, 1),
(43, 'Political Geograpy', 5, 1),
(44, 'Historical Geography', 5, 1),
(45, 'Zoo Geography', 5, 1),
(46, 'Social Geography', 5, 1),
(47, 'Life Drawing', 6, 1),
(48, 'Emotive Drawing', 6, 1),
(49, 'Sketching', 6, 1),
(50, 'Analytic Drawing', 6, 1),
(51, 'Perspective Drawing', 6, 1),
(52, 'Geometric Drawing', 6, 1),
(53, 'Diagrammatic Drawing', 6, 1),
(54, 'Illustration Drawing', 6, 1),
(55, 'Astrophysics', 7, 1),
(56, 'Classical Mechanics', 7, 1),
(57, 'Electromagnetism', 7, 1),
(58, 'Optics', 7, 1),
(59, 'Quantum Mechanics', 7, 1),
(60, 'Relativity', 7, 1),
(61, 'Thermodynamics', 7, 1),
(62, 'Aerospace', 8, 1),
(63, 'Acoustical', 8, 1),
(64, 'Manufacturing', 8, 1),
(65, 'Thermal', 8, 1),
(66, 'Production', 8, 1),
(67, 'Vehicle', 8, 1),
(68, 'AP Chemistry', 9, 1),
(69, 'Zoology', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tutor_appointment`
--

CREATE TABLE IF NOT EXISTS `tutor_appointment` (
  `id` int(11) NOT NULL,
  `tutor_userid` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `schedule_datetime` datetime NOT NULL,
  `schdule_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `appiont_type` varchar(50) NOT NULL,
  `location` varchar(200) NOT NULL,
  `req_date` datetime DEFAULT NULL,
  `accepted_date` datetime DEFAULT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor_appointment`
--

INSERT INTO `tutor_appointment` (`id`, `tutor_userid`, `title`, `schedule_datetime`, `schdule_date`, `start_time`, `end_time`, `user_id`, `appiont_type`, `location`, `req_date`, `accepted_date`, `status`) VALUES
(8, 'Tara', 'test', '2017-08-16 10:00:00', '2017-08-16', '10:00:00', '11:00:00', 'bala', 'Audio / Video', '', '2017-08-07 11:12:30', '2017-11-03 01:27:56', 'Accepted'),
(10, 'Ajith Senthil', 'Math Tutoring', '2017-09-01 18:59:00', '2017-09-01', '18:59:00', '19:59:00', 'senthil', 'In Person', '123 Main St, Granite Bay, CA 95746', '2017-08-09 22:08:51', NULL, 'Pending'),
(11, 'bala', 'Calculus Help', '2017-08-22 18:56:00', '2017-08-22', '18:56:00', '20:56:00', 'Ajith Senthil', 'Audio / Video', '', '2017-08-11 07:57:29', '2017-09-05 04:14:02', 'Accepted'),
(14, 'bala', 'Math Tutoring session 2', '2017-08-31 18:00:00', '2017-08-31', '18:00:00', '19:00:00', 'senthil', 'In Person', '1900 Birkmont Dr, Rancho Cordova, CA', '2017-08-31 00:31:56', '2017-09-05 04:14:43', 'Accepted'),
(15, 'tut1', 'Calculus help', '2017-09-01 16:20:00', '2017-09-01', '16:20:00', '18:20:00', 'senthil', 'In Person', '9700 Village Center Dr, Granite Bay, CA 95746', '2017-08-31 21:59:52', '2017-08-31 22:00:24', 'Accepted'),
(16, 'senthil', 'Science help please', '2017-09-02 13:05:00', '2017-09-02', '13:05:00', '16:05:00', 'tut1', 'Audio / Video', '', '2017-09-01 05:35:06', '2017-09-01 05:36:22', 'Accepted'),
(17, 'senthil', 'Physics Coaching', '2017-09-02 13:05:00', '2017-09-02', '13:05:00', '16:05:00', 'tut1', 'Audio / Video', '', '2017-09-01 05:39:41', '2017-09-01 05:45:19', 'Rejected'),
(18, 'senthil', 'Physics Coaching', '2017-09-02 13:05:00', '2017-09-02', '13:05:00', '16:05:00', 'tut1', 'Audio / Video', '', '2017-09-01 05:39:41', '2018-01-22 21:31:51', 'Accepted'),
(23, 'bala', 'class', '2017-09-20 12:50:00', '2017-09-20', '12:50:00', '15:50:00', 'naga_test', 'Audio / Video', '', '2017-09-04 04:51:25', '2017-09-05 23:15:23', 'Cancelled'),
(24, 'Tara', 'class', '2017-09-13 10:30:00', '2017-09-13', '10:30:00', '12:30:00', 'bala', 'Audio / Video', '', '2017-09-05 08:45:52', '2017-09-05 04:15:28', 'Cancelled'),
(25, 'bala', 'class', '2017-09-13 14:30:00', '2017-09-13', '14:30:00', '16:30:00', 'naga_test', 'Audio / Video', '', '2017-09-05 02:45:53', '2017-09-05 04:23:12', 'Rejected'),
(26, 'bala', 'class', '2017-09-30 17:45:00', '2017-09-30', '17:45:00', '19:45:00', 'naga_test', 'Audio / Video', '', '2017-09-05 04:54:31', '2017-09-05 22:05:34', 'Accepted'),
(27, 'Tara', 'call me', '2017-09-15 13:00:00', '2017-09-15', '13:00:00', '15:00:00', 'bala', 'Audio / Video', '', '2017-09-05 21:37:36', '2017-11-09 20:45:13', 'Cancelled'),
(29, 'bala', 'Indian Polity 5th Edition', '2017-09-20 10:00:00', '2017-09-20', '10:00:00', '12:00:00', 'Tara', 'Audio / Video', '', '2017-09-05 22:09:56', '2017-09-05 22:14:35', 'Cancelled'),
(31, 'bala', 'Radon Potential in the Palos Verdes Area, California', '2017-09-20 10:00:00', '2017-09-20', '10:00:00', '12:00:00', 'Tara', 'Audio / Video', '', '2017-09-05 22:17:37', '2017-11-09 04:10:09', 'Accepted'),
(35, 'tut1', 'Math Tutoring new 1', '2017-09-07 13:25:00', '2017-09-07', '13:25:00', '15:25:00', 'senthil', 'In Person', '9700 Village Center Dr, Granite Bay CA 95746', '2017-09-06 08:20:09', NULL, 'Pending'),
(37, 'senthil', 'Science Request 1', '2017-09-08 06:25:00', '2017-09-08', '06:25:00', '07:25:00', 'tut1', 'Audio / Video', '', '2017-09-06 11:30:10', '2018-01-22 21:31:55', 'Accepted'),
(38, 'Ajith Senthil', 'Min/Max tutoring', '2017-09-09 13:25:00', '2017-09-09', '13:25:00', '15:25:00', 'senthil', 'In Person', '9700 Village Center Dr, Granite Bay, CA 95746', '2017-09-06 18:14:30', NULL, 'Pending'),
(39, 'senthil', 'awd', '2017-09-07 09:10:00', '2017-09-07', '09:10:00', '10:10:00', 'sd', 'Audio / Video', '', '2017-09-06 18:17:19', '2018-01-22 21:31:58', 'Rejected'),
(40, 'bala', 'Calculus help 2', '2017-09-12 09:00:00', '2017-09-12', '09:00:00', '10:00:00', 'senthil', 'In Person', '123 Main st', '2017-09-06 21:58:01', '2017-09-06 21:58:33', 'Accepted'),
(42, 'Tara', 'Class', '2017-09-21 13:10:00', '2017-09-21', '13:10:00', '15:10:00', 'bala', 'Audio / Video', '', '2017-09-14 00:10:43', '2017-09-14 00:11:09', 'Accepted'),
(44, 'Tara', 'timezone check', '2017-09-17 09:00:00', '2017-09-17', '09:00:00', '10:00:00', 'bala', 'Audio / Video', '', '2017-09-14 00:31:13', '2017-09-14 00:31:46', 'Accepted'),
(46, 'bala', 'Class for Maths', '2017-09-28 17:20:00', '2017-09-28', '17:20:00', '19:20:00', 'Tara', 'Audio / Video', '', '2017-09-15 04:09:08', '2017-09-15 04:09:31', 'Accepted'),
(47, 'Tara', 'timezone check', '0000-00-00 00:00:00', '2017-09-28', '09:00:00', '11:00:00', 'bala', 'Audio / Video', '', '2017-09-15 21:14:48', '2017-09-15 21:17:16', 'Accepted'),
(48, 'bala', 'Math/Phy coaching 1', '0000-00-00 00:00:00', '2017-09-18', '22:00:00', '23:00:00', 'senthil', 'In Person', '9700 Village Center Dr, Suite 50-E, Granite Bay, CA 95746', '2017-09-18 21:43:02', '2017-09-18 21:47:20', 'Accepted'),
(49, 'senthil', 'Test for timezone check', '0000-00-00 00:00:00', '2017-09-19', '10:30:00', '11:30:00', 'bala', 'Audio / Video', '', '2017-09-18 21:43:55', '2017-11-09 20:45:32', 'Cancelled'),
(50, 'bala', 'Senthil test 1', '0000-00-00 00:00:00', '2017-09-20', '09:00:00', '11:00:00', 'senthil', 'Audio / Video', '', '2017-09-18 22:02:45', '2017-11-09 04:17:10', 'Rejected'),
(51, 'bala', 'Senthil Test 2', '0000-00-00 00:00:00', '2017-09-22', '05:00:00', '08:00:00', 'senthil', 'Audio / Video', '', '2017-09-18 22:11:59', '2017-11-09 21:16:35', 'Accepted'),
(52, 'shoba18', 'Class', '0000-00-00 00:00:00', '2017-09-30', '17:20:00', '19:20:00', 'Tara20', 'Audio / Video', '', '2017-09-19 03:07:19', '2017-09-19 03:09:31', 'Accepted'),
(53, 'shoba18', 'Test', '0000-00-00 00:00:00', '2017-09-29', '06:10:00', '08:10:00', 'Tara20', 'Audio / Video', '', '2017-09-19 03:07:19', '2017-09-19 21:25:39', 'Accepted'),
(54, 'Ajith Senthil', 'TESTTT', '0000-00-00 00:00:00', '2017-11-16', '05:10:00', '07:10:00', 'bala', 'Audio / Video', '', '2017-11-06 20:51:38', NULL, 'Pending'),
(55, 'Jenny', 'Class', '0000-00-00 00:00:00', '1969-12-31', '01:05:00', '03:05:00', 'bala', '', '', '2017-11-07 02:18:16', NULL, 'Pending'),
(56, 'Jenny', 'Class', '0000-00-00 00:00:00', '1969-12-31', '03:00:00', '05:00:00', 'bala', '', '', '2017-11-07 02:18:16', NULL, 'Pending'),
(57, 'Jenny', 'Class', '0000-00-00 00:00:00', '2017-11-09', '01:05:00', '03:05:00', 'bala', '', '', '2017-11-07 02:28:59', NULL, 'Pending'),
(58, 'Jenny', 'Class', '0000-00-00 00:00:00', '2017-11-11', '03:00:00', '05:00:00', 'bala', '', '', '2017-11-07 02:28:59', NULL, 'Pending'),
(59, 'Jenny', 'Class', '0000-00-00 00:00:00', '2017-11-12', '01:05:00', '03:05:00', 'bala', '', '', '2017-11-07 02:30:50', NULL, 'Pending'),
(60, 'Jenny', 'Class', '0000-00-00 00:00:00', '2017-11-13', '03:00:00', '05:00:00', 'bala', '', '', '2017-11-07 02:30:50', NULL, 'Pending'),
(61, 'Jenny', 'Class', '0000-00-00 00:00:00', '2017-11-15', '01:05:00', '03:05:00', 'bala', 'Audio / Video', '', '2017-11-07 02:31:51', NULL, 'Pending'),
(62, 'Jenny', 'Class', '0000-00-00 00:00:00', '2017-11-16', '03:00:00', '05:00:00', 'bala', 'Audio / Video', '', '2017-11-07 02:31:51', NULL, 'Pending'),
(63, 'Ajith Senthil', 'testnantha', '0000-00-00 00:00:00', '2017-11-09', '10:34:00', '11:34:00', 'bala', 'Audio/video', '', '2017-11-07 21:05:03', NULL, 'Pending'),
(64, 'Ajith Senthil', 'testnantha1', '0000-00-00 00:00:00', '2017-11-10', '06:05:00', '07:05:00', 'bala', 'Audio / Video', '', '2017-11-07 21:22:20', NULL, 'Pending'),
(65, 'Ajith Senthil', 'testnantha', '0000-00-00 00:00:00', '2017-11-10', '10:34:00', '11:34:00', 'bala', 'Audio/video', '', '2017-11-07 21:23:55', NULL, 'Pending'),
(66, 'Ajith Senthil', 'testnantha2', '0000-00-00 00:00:00', '2017-11-10', '16:53:00', '17:53:00', 'bala', 'Audio/video', '', '2017-11-08 02:23:33', NULL, 'Pending'),
(67, 'Ajith Senthil', 'testnantha2', '0000-00-00 00:00:00', '2017-11-13', '16:53:00', '17:53:00', 'bala', 'Audio/video', '', '2017-11-08 02:23:44', NULL, 'Pending'),
(68, 'Ajith Senthil', 'testnanthatest', '0000-00-00 00:00:00', '2017-12-12', '16:53:00', '17:53:00', 'bala', 'Audio/video', '', '2017-11-08 02:26:03', NULL, 'Pending'),
(69, 'Sathish', 'haihaitest', '0000-00-00 00:00:00', '2018-01-10', '16:00:00', '17:00:00', 'bala', 'Audio/video', '', '2017-11-08 02:30:12', NULL, 'Pending'),
(70, 'Tara20', 'hainanthatest', '0000-00-00 00:00:00', '2017-12-08', '17:05:00', '18:05:00', 'bala', 'Audio/video', '', '2017-11-08 02:37:07', NULL, 'Pending'),
(71, 'tut1', 'ree', '0000-00-00 00:00:00', '2017-09-08', '17:12:00', '18:12:00', 'bala', 'Audio/video', '', '2017-11-08 02:42:32', NULL, 'Pending'),
(72, 'Sathish', 'oct11', '0000-00-00 00:00:00', '2017-10-11', '17:19:00', '18:20:00', 'bala', 'Audio/video', '', '2017-11-08 02:50:07', NULL, 'Pending'),
(73, 'Ajith Senthil', '12nov', '0000-00-00 00:00:00', '2017-11-12', '16:23:00', '17:23:00', 'bala', 'In Person', '', '2017-11-08 02:53:31', NULL, 'Pending'),
(74, 'Tara', 'Test', '0000-00-00 00:00:00', '2017-11-10', '10:00:00', '11:00:00', 'bala', 'Audio / Video', '', '2017-11-09 00:43:42', NULL, 'Pending'),
(75, 'bala', 'testtt', '0000-00-00 00:00:00', '2017-10-10', '14:50:00', '15:50:00', 'nanthanantha', 'Audio/video', '', '2017-11-09 01:23:58', '2017-11-09 22:32:09', 'Accepted'),
(76, 'bala', 'teatttt', '0000-00-00 00:00:00', '2017-11-12', '15:17:00', '16:17:00', 'nanthanantha', 'In Person', '', '2017-11-09 01:47:17', '2017-11-09 20:51:24', 'Accepted'),
(77, 'bala', 'testthree', '0000-00-00 00:00:00', '2017-12-12', '15:47:00', '16:47:00', 'nanthanantha', 'In Person', '', '2017-11-09 02:18:05', '2017-11-09 22:34:51', 'Rejected'),
(78, 'bala', 'testfour', '0000-00-00 00:00:00', '2018-01-13', '15:55:00', '16:55:00', 'nanthanantha', 'In Person', '', '2017-11-09 02:26:19', '2017-11-09 20:58:15', 'Accepted'),
(79, 'bala', 'testlocationn', '0000-00-00 00:00:00', '2018-03-13', '16:05:00', '17:05:00', 'nanthanantha', 'In Person', '', '2017-11-09 02:35:14', '2017-11-09 03:34:12', 'Accepted'),
(80, 'Jenny', 'Class', '0000-00-00 00:00:00', '2017-11-20', '01:05:00', '03:05:00', 'bala', 'In Person', '', '2017-11-09 02:39:26', NULL, 'Pending'),
(81, 'Jenny', 'Class', '0000-00-00 00:00:00', '2017-11-30', '03:00:00', '05:00:00', 'bala', 'In Person', '', '2017-11-09 02:39:26', NULL, 'Pending'),
(82, 'Jenny', 'Class', '0000-00-00 00:00:00', '2017-11-21', '01:05:00', '03:05:00', 'bala', 'In Person', 'Salem', '2017-11-09 02:48:46', NULL, 'Pending'),
(83, 'Jenny', 'Class', '0000-00-00 00:00:00', '2017-11-28', '03:00:00', '05:00:00', 'bala', 'In Person', 'salem', '2017-11-09 02:48:46', NULL, 'Pending'),
(84, 'Jenny', 'Class', '0000-00-00 00:00:00', '2017-11-22', '01:05:00', '03:05:00', 'bala', 'In Person', 'Salem', '2017-11-09 02:50:16', NULL, 'Pending'),
(85, 'Jenny', 'Class', '0000-00-00 00:00:00', '2017-11-26', '03:00:00', '05:00:00', 'bala', 'In Person', 'salem', '2017-11-09 02:50:16', NULL, 'Pending'),
(86, 'bala', 'testafterlocation', '0000-00-00 00:00:00', '2018-02-20', '16:25:00', '17:25:00', 'nanthanantha', 'In Person', 'covai', '2017-11-09 02:55:43', '2017-11-09 21:12:22', 'Accepted'),
(87, 'bala', 'notifitest', '0000-00-00 00:00:00', '2017-11-23', '05:05:00', '07:05:00', 'nanthanantha', 'Audio / Video', '', '2017-11-15 19:37:28', '2017-11-15 19:39:54', 'Accepted'),
(88, 'bala', 'notitesttt', '0000-00-00 00:00:00', '2017-11-25', '11:16:00', '12:16:00', 'nanthanantha', 'In Person', 'salem', '2017-11-15 19:47:27', '2017-11-15 20:27:47', 'Accepted'),
(89, 'bala', 'notiiiiitest', '0000-00-00 00:00:00', '2017-11-15', '17:25:00', '19:25:00', 'nanthanantha', 'Audio / Video', '', '2017-11-19 22:23:06', '2017-12-21 02:13:27', 'Accepted'),
(90, 'bala', 'notifyscheeventtest', '0000-00-00 00:00:00', '2017-11-24', '09:33:00', '10:33:00', 'nanthanantha', 'Audio/video', '', '2017-11-23 20:04:04', '2017-12-22 02:21:05', 'Rejected'),
(91, 'Ajith Senthil', 'Calculus help', '0000-00-00 00:00:00', '2018-01-20', '23:00:00', '00:00:00', 'senthil', 'Audio / Video', '', '2018-01-20 22:25:39', NULL, 'Pending'),
(92, 'Ajith Senthil', 'Physics Help', '0000-00-00 00:00:00', '2018-01-20', '23:00:00', '00:00:00', 'senthil', 'In Person', '1 Grizzly Way, Library, Granite Bay, CA 95746', '2018-01-20 22:27:54', NULL, 'Pending'),
(93, 'Sathish', 'Lunar', '0000-00-00 00:00:00', '2018-02-02', '11:35:00', '12:35:00', 'bala', 'Audio/video', '', '2018-01-31 22:05:21', NULL, 'Pending'),
(94, 'shoba18', 'lunar', '0000-00-00 00:00:00', '2018-02-03', '12:40:00', '13:40:00', 'bala', 'In Person', 'hotel vasantham', '2018-01-31 22:10:50', NULL, 'Pending'),
(95, 'shoba18', 'lunaar1', '0000-00-00 00:00:00', '2018-02-03', '13:41:00', '16:41:00', 'bala', 'In Person', 'meeting hall', '2018-01-31 22:12:01', NULL, 'Pending'),
(96, 'Jenny', 'test', '0000-00-00 00:00:00', '2018-02-07', '12:31:00', '13:31:00', 'bala', 'Audio/video', '', '2018-02-06 23:01:39', NULL, 'Pending'),
(97, 'Ajith Senthil', 'Integral of Logarithms', '0000-00-00 00:00:00', '2018-02-20', '19:00:00', '20:00:00', 'bala', 'Audio / Video', '', '2018-02-19 22:05:57', NULL, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tutor_master`
--

CREATE TABLE IF NOT EXISTS `tutor_master` (
  `id` int(10) NOT NULL,
  `tutorType` varchar(100) NOT NULL,
  `isActive` int(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tutor_master`
--

INSERT INTO `tutor_master` (`id`, `tutorType`, `isActive`) VALUES
(1, 'Not Interested', 1),
(2, 'Teacher', 1),
(3, 'Volunteer', 1),
(4, 'Student', 1),
(6, 'Test', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE IF NOT EXISTS `user_master` (
  `id` int(11) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `f_name` varchar(64) NOT NULL,
  `m_name` varchar(64) DEFAULT NULL,
  `l_name` varchar(64) NOT NULL,
  `email_1` text NOT NULL,
  `email_2` text,
  `telephone` varchar(32) DEFAULT NULL,
  `mobile_num` varchar(32) DEFAULT NULL,
  `screen_name` varchar(32) DEFAULT NULL,
  `auth_string` text NOT NULL,
  `tutor_id` int(11) DEFAULT NULL,
  `tutor_type` varchar(15) DEFAULT NULL,
  `school_id` int(11) NOT NULL DEFAULT '0',
  `image` longblob,
  `imagepath` varchar(100) DEFAULT NULL,
  `avatar` varchar(200) NOT NULL,
  `created_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `isFirstLogin` tinyint(1) NOT NULL DEFAULT '1',
  `isForgotPassword` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`id`, `user_id`, `f_name`, `m_name`, `l_name`, `email_1`, `email_2`, `telephone`, `mobile_num`, `screen_name`, `auth_string`, `tutor_id`, `tutor_type`, `school_id`, `image`, `imagepath`, `avatar`, `created_on`, `updated_on`, `status`, `isFirstLogin`, `isForgotPassword`) VALUES
(35, 'abi', 'Annu', 'Sri', 'A', 'annu@gmail.com', '', '546456546', '4545454545', 'Annu Cute', '827ccb0eea8a706c4c34a16891f84e7b', 4, 'student', 0, NULL, 'uploadImage/default.png', '', '2018-01-23 07:24:40', NULL, 'In Active', 0, 0),
(95, 'after', 'after', 'after', 'after', 'after', NULL, '1111111111', NULL, 'after', '632a2406bbcbcd553eec45ac14b40a0a', NULL, 'Student', 0, NULL, 'uploadImage/default.png', '', '2017-09-16 05:13:36', NULL, 'In Active', 1, 0),
(25, 'Ajith Senthil', 'Ajith', 'Kumar', 'Senthil', 'ajithksenthil@gmail.com', '', '916-813-9966', '(+91) 681 399 66__', 'What', '32ff1b8b6287ee2e79c7e4ecd37d8aee', 1, 'Not interested', 809, NULL, 'uploadImage/default.png', '', '2017-05-11 09:59:24', NULL, 'Active', 0, 0),
(24, 'AjithSenthil', 'Ajith', 'Kumar', 'Senthil', 'ajithksenthil@gmail.com', '', '916-813-9966', '(+91) 681 399 66__', 'Ajith', '32ff1b8b6287ee2e79c7e4ecd37d8aee', 1, 'Not interested', 809, NULL, 'uploadImage/default.png', '', '2017-05-11 09:59:24', NULL, 'Active', 0, 0),
(4, 'bala', 'bala', 'Murugan', 'selvarasu', 'bala1@bmassociates.com', 'bala7@gmail.com', '4545454', '(+91) 900 372 3111', 'Balamurugan', '202cb962ac59075b964b07152d234b70', 2, 'Student', 1, 0x89504e470d0a1a0a0000000d49484452000000d7000000d70803000000bea3348700000300504c5445dda169393939a05c1fcc591fe67c1ed4965df7931e42424274b64aabd39181bd5b8fc46d9dcb7f22222277b74ea7d18ca0cd83594736a4cf887ab95285bf6096c87692c6713a3a3ad0935988c0643c3c3c40404099c97a7ebb57e7c8ab8cc2695543323e3e3ed99c64cd8f562e2925564432ffffffdb9e662423232a2a2ad5985febc9a8323232343333af6d31ce5c1fdca068be7e44363636a35f22d698602c2c2ceccbace2761eee871e272727c7874d46392ef48f1e303030373737b67539262625d6671ed79a61d1601e2e2e2eb37136e87d1ee9c3a0a86529a7784eec841ee2b081d2945b212121b17f50ad6a2d4d3e30c98b52dc6e1ed29a65ea801ee2ba967a5c3feac6a4292522bd8a5c372f28de721ee6c6a7cc8d53e4791ed96a1ec39872f5911eeeceb1f18b1ea597584b3d303b3229ae8157584534ba7a3e804d1fd3945cd4631eab682cc98a50c18348abcb89504132db9d64a36326b78456a27a3b68513c7f61448a6848634c37689e46c18045b9895bc4844a926c47e0ab79d58248c4906097714eca915d322c27a27952bf88555c493634422b9b7450bc7b40b7a56642362a292c26745a42b9773ccb612674573ba8b574523e2d9f5b1eb07744856140484943c1956dca672cc3773b609142cfa7826daa4753793a8b8935d6b08e4058319c7149ab7f553f4a3872ac4da16a2ddbad83cd5b1e6e543c4a5343906945e6be99dfb691d16d345544344e5f43536a45564739acbc7bbb995aa9c482a07433cba079e1bc99a48c4ca6a6669b5e21597946d76d27e5b78cdca6735c864091772cf28e225f7054d5a06ea4764a839c3fdd7726afc382455f3589ac738c5321b6895fa7af6b5b4f446c805e6289494b6c36524233704926d164249a6926c17f4294b57ebc8d4ed3773d9b9445b3b4747d5d3ecea47ee7d6c7d9935b7f986f9c843c93a654768d6896b866f59322e98628b5ac6de2842e3b36312c34277dad5e7aa842b75a1ff7f1edb96a2889b256d7bba2c56f346842207fb65c5e3d20ae5b1fee8d27a4c986bb8049a4c98ca57c55ec8e2cea8a2cbe591fe6c8ac6e7c1337000033904944415478dac47d69701bd7956eab694846a317a8b110eb2004a111c010b4488ab6299a4b18b242d9a444863143332327e5589434b1366b5f3dda97688914594eecc8ab6c97ec64e22d9e78a9d82e2f2fb1e32d7e1e67e22493ad6a5e9699979949a666f9f3ce3df75edcbe688000254befab8a14b4d0e8fbf539e73b4b5fc0cae51786bbee6b370ca3ad253eab3ce2b3aa47dd8cbe5c7b7b8ea233362b5e577b76eb79acab2a5e9aa6055c07534160751048653be395161bab8e1ab088cd28466d255a262caf4a5e41537a994c5ecef1ce5d85f76867ce02ab1c98aa22e2b5b5b5b1baba2acce56215fb816b75019f7c97b56495f632fde24401db863f66c50ede4d6fe09977b3e080b555fb17052188009af1cac4ea6675e28d9490d405118170c0cd2b99d04ad193ad164d115eb35a0ce32001b115b0aa1671e16102c011d8a103522f247fd416fe150ec68c336010bdd47d0e98725c44ddbccc44a0c479b6cf7df09159b36adb0c826c1bfad585301336042ef0bfda380b4702fae9b983c4d1744141c0ef2b250521c14b50d64af9ad64f4e7a745c52d0b84424b2ed7d7c5ed8547b8795c6834ee9294ca896829b2012be9e2655afe12eff4799db67c100c76c1a8cb19d93ca1d255c19163d936a186496fa8d4f2ec92f49412329894ad664b56dc7ac1c44800e5d09373f919f129ed0b79f18ead45cb338bc4d0cf962b3b5e093dd4bdec9df2e91ab7d8f3b36abb2ec0176b899d88947611825312a369af4810437a09fb44e59baf21af604ab6a1e656c333cf7f10a6f5c5ddf71dec69397f5a543b7a8c16aeeab1cae73cffa0b4665f09c7d3bc61e935f24a784b99d2eb73d07afceea30643ee7c5909496ceb89890355a8ea1d779588fa849cd3d01441ae2ca6428ea1814cd96aa61d9665b0a52f0768ac3b5f4e22353576c69d54ab39f5b1ad66aabc8184f0a1c6c97a18f2464be88aaef3bc75618883a0f31aa2ae886d551ff0c8af7f5f6a79325b5fca44d24e5e493d5c228bdbde20558bc7c062b0820b0c2c148af3c5e3ef3c088a205bcdeb0e36882bcd551f6a45498279ac2f78f98bb57d1766313458ec7c69d5517ffcc507725148e32a24b10d813428603bd940b4660914dd01fbf2c7b292b92e35ba1a1f2378f9e5c75e2c6e5c4cddab4baf03c40fbdb21a9ab45ef4caf60e07ceb44be6baf4c8dd87892a808d8a9cae82d8b82445194878e9f43dc9a2b0d28b72fb7d46ecff2fafbaec7da208e46a28afd9361dbc02c8cab602f21dc03f6dbdd0ef1bb9f25704ad034c2774eae0fdd375eb46a3402c95a2d1256941d46bd368435e3c5b797dc240221d14b4ff77466d7939a0a85a2ee3f97683203f4d62edc67da6ac0f5e69b9b8564db74dc18be9a7cff6cb491dabc260f4f2bb8ddc943d55be2fd7592dad5823455f3606141b1bbbaa4e1559e35dd940d86f468345b9d987bc64dda3e92ae0bc032138f83b2356a67e404e5923572d2b795055db08e7b655ebc02d8670452c9be8f2aca41442f84ae615b482e4cf84e5b477c0ab3f6f3496282028a92c1d089c3f5a7a72d5beb5366bdc77464b615889e579536ee1435e225d99cc403ee9cc3347b3256e69beafbd1d49f501ab0b42635fd5aed86e1c7c1dc34ac0a711567eafe6e215f4fbe53b80668b5a8182c6e7cbaa1acc242e1cb1ceaa5db7cd38fa362e2f9928d2b8908b57180d244c994a62a3e20d718d6f9f66aa398f52bffac2a3c738b815a54056f984491884820e5e011496404832a5e9e72dce41a3767a1d71ddf94848f568ec39faee1928795105024556b3028ef80ad2fe1faa400ede96993efb65a3737ab4a064bfc868c91d7df7f73e1397a74bb1662592586d212f519d903b20cb4de803231b9f0e2d18987db424e2a506c3b17ceebe17b1780235143099f0e11c803f54d06858c97213383b2d2facabaac3bae3adc6cec627deaafa334b7b76ececf3cfbffc01da42f39b4e4ff3821f9a616f487651fa3ac9b5b0739add636cea14d4d846aaa8ccb15dca0fa7e1038c9a1b77b3100a39d3550a78258b0c94f247d11969fb72b7d11e9fde0c2d365505450bc3b51b972980d1e97c302056825acbbbb41bb67c26049b1575e87c8a56b75a50aebdb053d96a6463d3f2c1f2b4ea3a7b8052c7b1ddbb14865d774c8f185a0d119f1567773bf7ae986927bca253c1f842b590cbac803711055a478dd8f42e5dc65be22dc45207082781ed5dd30a5c0171a15ae34529846cccd841e0256a776f8257255cfa6168d8329de9b468c15c19072cb57b542942db793f8ee19adb73569a7604c91f7ee2698a20ab6145c5450463eb68cb14b1d252f44092c9b11b79607560bbe24647dd79cd1fc5fdcb1f7d3d09be150e3b67187e12570a19e9888301149117cf98417876ec8aadc67c2d45be2d6b34565dae8350a0ffb970ac6ffab90c1017a301a286e1d7ffdba28c98a779fd01e045f29a809e4805cc077f77f6ec41a3444f05514291adb68b8cb583ad9629a5b1af6c6aac93c99471854e08aeadcf3ff2b2177530603103d1be925654c9b0a361899207e2a59f2ec4f28d806aa32ede67189382950b995cb949414fa7339a5acaf07fec1158d1d13f85484515b6bc41673def8b26cd842e0f4e53bf7eb9820e565b7a67762b53e098d155b635ceb6753156f9dc5439317bb749d70c99092d1374d4bd5e3868f2f1dc3b174847b44ac6b151652a8c1a3df172ebed31801a20d79e8f976f6d6ab367a5892ef4fa21c68b75605e2bec0be15ceec10af9b2ea9ebd035d706a83b595f7e19c6110ab95cb2b719cbd1d351329a617bc53493a7859ba0efac83a95c750f41a73b9b6f3f7c63e23b349a988d10eee89d356fc3a14a5a3bfc7224340f75a092d60f27d0e5cf9c98e14dfebec215ef53b19dc5e84c6aa8c65c213a73354c57aadd1c8356e4d5a505010ddd0182f1f61c278e93aab39745a79fc1ae4b0b1e5fc8dd568189b94eab0c9c84d73ab042ba3626d9d75e4a17a888490aedb36ab9b0a73eca4cff6fa59940558d5ff8ba3a8f3ee0fadeada396372bb522d3a8c7c85aa53ec3d2a6cf5a0367e642ba96ea1e635535ed65f4635ce8b32d630e698d9123edf8307c1649d4e2582d16c6d55130a78d8bf7154a91adb3346ac424b27a3ab93ade36dc7f3741b8941a7e2e065da187b66c24b793db8151f50f618805c5b1f22d7d35737b5fcc50b3e98d9a74c07fb8cec5b53a68bf65c5b679e25e83ce83ed2bae3ed0f50bc835420bc56ca4481083be76c51640ca0139ec767b5c4eae043c8809a20dbde96afb433265ff0c18e5dcaf4b0d168bfa3427a17e8698c83033ebfd54be087ccc412709095b75692eddf109d242004ae0aa67c3c966dec928c1fab145271ae8342302e38c404b33e4aadbd93ade3f13338f24cea2cac74561bfac39a4688202f061b1233f0c7ee79eb41b2cb279f67f69f7222580702d3d6c8aa1fa89ba68f5d19e80ea6873b7efd9f268bab904f4b7975790e0fbccc6882356041567958514dfbd363670d42ad022b401e12503e1ba7b9b863bb723ed86e40035b3db8cdb095d4b49405c648325ae88d36f08263580feb7e7690c17ae707446271e3e314e834baa01b6f445f441d3c2f2c0362d39e26def1f85d944992841aee0ba0731b2fa937128c0737258940cd4fd8be534d6d0b94e25962ae78bbb159396fec36b2d5126bec6ba1755e635f0fdbc6e7b7a39a19d62d5a064675cccbde100d2b9bda8ba53238f0e0cb950ae0da1e63a3a21c306a092dc8c51780cd46b6abe8494d8c833cb511a5416c461bca74fe91777eef6772a1615f89d6d1bd6cbe91e005bd466b29135f936dc089fffe4585ed9144fd761b6d84d681f3f4415150191231d7f4298ee506c5ebbc4e0fd0093c7f6c0cf5140921c22b1ae509db4a691af093a61d6f97cf58ac17de9e01e18867372b178acd728c39b6d2c7e24513a91771f44eec43e6d7499baa4638c13d2d0cbc58a30c730d323705e0088e4e8043b6eff1324e9e336823329a817d38f14ee183171263f2cc9c6f608ecbfe3923f66230c9f45cf705c3c46e09a4804c90431278510af44f9ddc822058cd472d1bbd7c6bccbdc7bf853878363f4a14ba2307d67ae2c27c505454465fbc9ae4f50b163261d65d61f914e0c2e70511015e4821c5aa7cc23960f35e2d044344f720bb0bbaf3be9619c7883e1ffb9f1ffef087ffa37c44d83e69c06daa028f3c8873eb004b57106cb66ef959a918c2fa10b892b032c5c4144baa042467d296bd6bb889cd403ca07cd4c0feb9a79a5ee86d13a39f35fb681159f814e85f7c6049e6784c3789f4872d7cd27937f1b878095e71e56260f400ea7d05bc1c8a0689f205c44657932c37486c821c58bf4c89c1bccd7107825807df6564b3464fbe4e7e1c05d8785178a1de3756f2c23fb1ae31010a1ef5336948689a065613bc7027221cd451f90149934a3f760247b333c824342faac43aecee762b1709cb321576e0dcf13a3710820bba897f1263684437c426d1a4454bc580df3102d1de36da66c4dc1d6cdb2ee56261fb5aa3a76b2a2ff489e5f9b0ffc03d89ac11b3a12bb1348516204c0d415842099def6a0ed1be2c6fe4e5e75a24ebb7ac552e22364d350beb7c9d2e2c451749c32ae9a7bcb41012015e29cdcf852565226326221a1bedbc0ec2c14625c25cb9ddcac5c4b2c9b2a9accef062d4a4344a042b0e4ccde2bb39a6c6eaf9287d0fbb0328fd292b4cf341f8072089d060e2032e56ccb46446958b8ad14d1923db588a59df592f45d0b17d2dc5eb245b7cdf01077060d4404263b959daa5e24bbe68f4b403daf26036867654c38bcbec18c930ee0a2efbb8498b25363c1399299ad0597f99c4f8b2481d6c15ac1666651656545ac20b0fcfdb7057a840ded8a55c7cecda08138d6201e932ee4603d1e505fdc88e25de60a152045e7cf46bb1e229c9cbaca806a7a17d71df571c6b4e66aee1b47229b0acc3c5acd3a0ad241956442ddea9444dca0e3313d4199ac2b962ec5950667899ca53e9c7db72d0101999a0d35898562e0d36f3d11a47ce60e3335ef0f99360288b3f6d650731be98816c425ae7ee9862ef84064e7fdc8849b3d7ec84e752f11a8524ddd9e898341b67e948832d0f47f384087de99847150600bccc6285303b91a8cc8bbce1ab65e67af412f1c2a169de5916c48db3c4403e668b44908d9a483165fa7cfcbb46506f70b209de81c1743ec1ad66a2379ee1151b3357c673e9782d3372cee4596b3c4ee2870f00a23c3351bb850b9bff9117a162793551669936cbe2097a070ee6684a64e61abb84bce61e31ba1cf3e6162287498b443d10f0b3cc640768d76899689a24f24a31c6689a286b94bd0cb464f98121c2ab2b9bd97329793d6a74f2474328877715962732539267261ba45f2785b04275cf2c2824e3659bac7d49d1da3756e0d507d1752979ed377a6620981c9e21cbf3338da3fbe275919bd147d10f9929f91411df83a6447704b630d0fac0c81778a1b93cf32f192fcf16232f764419bfc37505a4e5f12922a65fec2f413782d494613e454ce09330a68651d6d21c6de3bc3a8d739e4bc92bedb91f1a251e615dc663b8579e3752583af0ccc42d64e9d0a7709622612302f43ddc471fcf72dd6833eebfc4bc3c992c8e466978fdc2d14aa22d9285ccc47925d93e2274407607c814d1c7f34188bdd3f2bd63d4325eed86e752f30247e4bcb24769d487705f3c27a2d3cc9410dfe325ba610b039921ca8ee703e6a351287d3b59fe328e78100aa0a11e31f89193a9a748232f70c41c938dbc711f2b1d2c52a947f990931dd4c12d61d1949749e6c03c1f04f91dd052f89cb350081fec61f58631cc790df6ab129a10dd870f6f5b524c352dbf7291d8d67cb81fcf5ea94a5891567ae15a13c411b147394a8a5edd0febc721360d13934b0382f3421e1c2c7f8730d47821ac6306eb22c221783574ab2eb8783637378f90dbdee4e4d1d04d0c3dd2dcbc02dea14e8dd6e641b8d6394861b598940f60219be48f8d13d0feda3a0b96243b6869821779e46073954fda8591367f68018ed847032c4b79ad808b0e2c5ebc58ad8cd54abd2ad9a7359dee562ba2153e7d1dfcb5c3e35968b421af36e325a27bba28f8fc0511f1879cbaa721af1066e11092252168e341e800784b93044734e2c82b9701560b06d4d6fe051144fd8e1ddb8e1fef5ebceeaf8bf006b51ab8e4ca5627af417585a28c0ca8ea73ee33e0561d3f7e7cc78e1d118a6d60d0a67a5044e4651cf909591ee3e5e7cfbc1249f2258000f3bc9016c5fe2b004d96ce8ea5341a57517c19643d28e2d758fb62efe539dc3a707c095c75fdab6380a54b971e191a1aca669c18070c0d8d4fbeb75d4977b78e284e34abffb5ef40c7d090318e709c041f93818fdb029ffae8ab94d982ee75ad3b961b2db5a4e6fdf77bb0c4c5a8f706e5b08ab297585191fca50367bafd3ccc278ba4f8b0e044fa1eea94f8dd36f81117e34453d3b655abf63f3a67683c3309e8e8e858fab112f82aa06362bce3c4fee2127dce78a66378f657095c67ad858f3b029fba373334716e5124b26ad5aae6a6f720c0c88e97bf7ecdd4a99c25d9f27c6479513fdd66086a424d447885bccc94409512b1a195c4837862e8f23fdc73cf3d37dfbcc568a4c2d1b100ae75627cef91b51fab8ce5dfeec8746c96a69e1bf74e0ecf06cca974eed289f123eb5711bc0a015607e1a59295009e2c2c4f4f8987fd081fe705e36a0e137959016edf14e9b07ff3be8a786edca823bcda2796ac5a757aef70e1f2274e9cd849b1c889fb779e3e00bc66cf06666bf789f9d9d0dea5b311e776ee5ce83ce1d59d88d3274e6c297cf6e4d2d5406bc463b403af9e0995e3a1efa0a0a3b99088852326c63648e70085b00ab116d4a92c27d7a94dcd007406140e6370d5aaf18eaf12463b17ad8f4c8591fb372385c9f18e63db81d4ee03990964b5f1d00d4a7aaa1317bdbaf9002196f929f08a788e6467c4403654be1675dd49675899f817d6c1583d212f7f82ca1f9dd887f8a8c00a4621c6de54d5668562f5780f19dcb4198f9e38308e91b113d7e079e5954864f4fa223cfcf0c3afbc321a990bc408964e66405a263a7e84afb6c098eeb6dbe02ddf2a3e0b3e09ce426ac8ebc8c4899f2ef178868d19b198f1e795e982f4a8bfa206b292e2376f7c44fa75a6f3294644f650d3227f25bfb34eed2ee49daf4217560b82389cd99b21bc0e8c441ebefebb7f0188445ef98b92f8ee0b0a121360b4aebbe9a69bae74bffffa48e461f8ebafaebf7e34b293f0ea189f1cf29012b12b067228f27bb7fadc1f68d768912cc678f9d1d3282f5e6448a1c7bf36fb4b75a5a813de335a8057de189eec405e9b91cd94bcaefcf86dca4617af0794eb81962026f36277243282bc321f23bcc68c7c0ce4b0592960a5fa12a6269d064c528ca3829c17b24c5949291d505ecfa98ed4f30628620c780d012f72cdf5914f55e075e54d377d5cd9074c96cf1e5e4af06d34175a4b3073f142bc1019fbd89c391d99398c579dcc6b447d0e96eb0ff07a22059d1817f4a0097514eb5e98296d92f4342e22afa9038ac04aa38f0807f09a0358be25fd02711902e0f557c500565792a5dfb60768cd99ccac25c812629b954fc171ce8c502b9c4478e1c940314d6e085c88f01a365a80d71bf58ac080fa5a12a5dbb40a9949e3de08bce484eda7ad273bf40c8faefae6e6fee601d8621c17bcc694ef5d49f1f174fa858f4bb852e03a85f01aa203fd634760ad8794cf5e5906df54f04311ca0d9c17b6969096d56e5845733d8fb05fb235eb85cc640589e3e9c88b190800f99a8595468405d4700375c3741354a1500192add384d75ee4b553b99ed30075fb7839105e733a26d80e8dbdc8eb53e5de4c78f1ffffc228b921738681d77ea3ad96f05a0cab68559bd2d4113778bdc8480f53ade7a0f6120612dd4b140be114f0c29bb3e2d4f108dcb41dc00b84c3583e9c1d066287946f7e960152d3bdf77e43e0de7bbff55dfe6f2f105e131b595ace22afef7dd689ef0a7c4b51aee3876f4343ef1d5aeef1c0ac2d36ab2bb3d803881c3fd58d2ea43e24bea441e0b54d464423bc9881c80804c90648c9e1a3ef7c486dc04fe8f6101c36fa90d79867b803795dff298a7bbbd5955f70e11bf7927f030bc0eac6f7a5e713a4d72e25bc6efb143ff31b3f93ced9aeaedc05a72128afcc426cc0bae0372d264f1dc775ec5017280055f5fa6958598c023a25ef53a2b42b3379ed6e91f7325e2a364efd8b3d0491534623f2ba9ff3fa1e5dc0cfbea6aa2bbff685bfbbf75b1c0fffddd7087e86ab1b9dbd7cedd0a887626c72f6ec9d8af24da4fc337c179cc9f185f5aa7afbd7bef60dfce71704afe11ed2a64c2e3eb5c343d0344079f9b9a785313399c884cc41c3c00bfb4c6e4a8b4d16a91f325eadf4d3b63d47796517715e2f5c47b0fff6db5bbbeb6fbb4ec26d7b6e07ecbfee3a05c27ff9918e5e4f436fbab7c1b328337bf618842379cb0de42deb471d67bef04a737f131cbc81bc508803535ef429fa9f47d63531830d222f3449422e6fc37cff061a88f20ae0743759e82fbdefa31faa0be85d7a8356f4ed1eca8b3d395fa1368d286ee0f8a3959c7e68f69cbd9b1a7ae7a102356440e9f989f08612a78e74b7a20c335eaf927e197fd1edbdf4b653b89205a7ea91179fe806351f66269384109f6f04137c281060894df7723cadd60b7bb5be4a797d5be63558761cb5ba19856b6cf69cf1078020e2d6e51db367df404f5c4997ef46bab9a9c1c96b0cc7e8b3d7290da756515e70cdb4ba2e80ab156165130b715ebcc8c047cc9c973f88e38e0d18a14d18aebd6a7d478ef03ae6f12c3f02bcaadc280f697969a6b797bd9a777a2f49cc55611791f9f1458417d07ae2b96eb011f2da710ad56c833f59f8052f1f0e06f93e652da0b0d2d08f07b91f86d8c0e7662ce69b073c80796afdee76c26b33897ee07542a90a50354c6c6c98cb5fee1ffa36145255e106c26b280297cbc2e6a1e7c83d56eb3d80fe7e2ce99f411a7c1e90444d74ce6da228ee018b3e0923d63369df9c7a8d94bd607d08b0b432503f6a105e0f202f00acb532a0ec5d3ebed3237c6ca28314bed5e010e7751a8697cb5422166a439a08f3022c7c7fe50b8bcc44b7a53879450b94392c1cd011e957d53471c47e8f67aed2bd403910073ddc0f793243786dafeea6cf1eceec1163efb9637b51112b0203130a9508d18d598716a8ade07b4df07cc5739cc87c1a652351c84c36fbfa4dd424520f7ea88b0d89764a0b595e3670c479e34b186083a7ea1bc06c2b94cdb5c00b1c61d138e155559840fbb5770b585b118e08d38d3d550526f03a3207782deb390603cb7e50a27a5846a49588d90295cc12359e9978ec44e9463c56f75249f1d3b4cde11705fde1fef944809543c0eb2d0f20d341883d50d5e27e34b408ac5d40eff289aa9463f40471c3cc6918f8eef9edfd9e0198af2a447ae71f47156d525fc3d55245606ac81e26eb84979fd5f2215e64d81a76d8282281a7b1f29dd78f7522f925109043c0e9ec52e0357bd30d157d09546379fd7c4560eea2a11f81d45762756823568713fbc9207bffb908092f84a7a9975687381b2cce4cc25ee2982e7ddf0145d23a491be6f42a05f1d62c904340fd962c48fd72b8f1532e7014682d1d5a549f96e6f3cb33d05b4e69eb3d0f6093bd766f66d1922f79000bb7153ac1fa5e6aae677100c0798503d4d3ac20917e1b79415841c2a68f2a832237db3a4d61ab911893a859208780c892d3994cc7721c2d95a336ba6ff31698b2657f5a5f2f67dd3d994938efc4a11bca9182bb01f8f6647678ff92251e84c8e16956cc5bba5f64263679e7405edc761c261d7e04a9f4c3e4a64111782b76d803185cb264ffb9cc7807f6f5b0c69d87d6dfe0c00387368dd1b1c68f325b3c91064542c3a2cc117aded8d8ce433738b1efd0a62db311c313d98e57eb972ca9a7bc5a211ea466f9575266f2154a5e9fc5745e2f76d110b6313a97fe67d52645e0bfde18c0eb2c01ec3f716468a26329444b49e02d3f720e6e425ae675ab67d1f05e10c5b258ba74723c33fb8141729108ad0821e14813fe5f9a5266d291026a628af3e2019532533613167fe10e5861ed25e7ad6a5069caff523db9e897f69f1e1e1e1a2f496e78e9e464660c2b309917489a079865263b708ce3a20483f9e12df7374010232d44b7daef3478ebba4461799a8dc470db7580e5663b097d0ace726c8c40d32f5cd4e4bf62f907b535ed9c6f1df6202285ab2e1c0372f010c289ecd0f096b1857b3c80f4adc585c9bc0692031f1d1b9e18ca481822941eddefa1002704d140ac833c2ad0a4deec4dd2e5a1d64b2164622a13731be678092e8616b82abd03f7a82b1c45ba3ae061188459afc0a2854e2023c4adee2d19cabcf915ce0234cc8f002b8a11e1866cb2c164cd640662f3a810b00d816a085e38023143f49d41f9f144f0215528da203a22c7bc5b7be73778caa3213d0fb3a98441c2add7330560603057498bd7fd4e374cb7aa4f3ab763049088698b60435e89200c360458cd613361011f4d6112931d91033d6c6e1ac9b9d7068b43132b32a83ece2d7b1a735b07f356a71bae002fe44d893f49060051ae86228414baed52208559dc9f948e6ea09ed8803d9f7044699bd4bcb94e88e36e5e9efaaa4ef320981a46d2787d9abad684f9e449ea547cdcd3ac10f0e25f7ee0292c4cb27888f9ad456fc1776815533fd80b2aa5aa23c2cf94caa85fa0c8e85d12a96a63947043bc95bd0d0ba8689c440399a80109d1a9f81d8d0a9903e0d3be14b5248765e27b120196c49fc1243677f1024fa4fb94da2d39622540b92123bd046aa18a106e1869554f2d8e78ea07be44db64f69b35d84f013bdea960b079a9f413ddb06dc64bf3921108b5af5fd3a218802633187af88e538b5b5bbbd556c911a7c460ba14af48a4f21e1d117adb60b3c3bad6c5adc7b9b9b08f8ac2a2453dc177d1d0272b49e025624da365965700a7c4b815e797b4ee5c70f8b0073aba1d22cc95a9905e3d08d4561473ed850f5a50bd1b0e406d38bff9f0b6796401c45c1c5a61799628280abf2b12e2dd8b9ff5615866d13b80537aa00cc9596d16cfd49ac44595a9d05d4f56783cadbce0da47d45f2134b9ca6340d73b0ac3dfd092906981cf16994990d550378a3a150b5523e1947ec033a2ea201792d26e39a49b145296ac0641bcee7bd7dd06407e6970b1f448f3d4bce67b38ba798b42bbe410aa46c29599f4a8162a64264dc152de0e8181e4324b93a53ff51dc75d1b702847ef54bc1647d88e3770a1ef016e230ba687b64dcd6b9e3379753b52f26f4a2e2f814a675a626e836fd12435e4960d9bec6082c8e9af0ac91902acb53a471c58525fbf7af5ea1df59134afe50757c101e0d53f52c90d45f25207454a16cb83094d422c2f8c21845b11292f08209b0f3658160f2549056ccb6d59ea1e952558b23f6f5b558e38d20f1b8176ac583cb02332d8301f3018e95ed77dfcf882c882a66add905c6d25f7c2a7b1b60b90e585e4fd2809aca52c2c8791178fb5301091b27888f5341a93fef0fbd413e1063ead0e547244fe9c7310f72c2cee8e5034f5d7c39f83ab16a42bb9a1508d6755ea8983adcf81174a930c90b670d8e621e4e77d18e76507b5301071abbcc6b21de22426b1d5aaba81a4b3ca8e8880da7d10d07d789060d500fcf125520c57ab862b40d89f811d96783f5f73d476368d1d531243db441fb302a29ea72e6a626ea6a75bbe30ef44b113b09e55114faf8182b1bf626a16cc48e9b07845c413d9b66e84bfbf5a376c853cbce66915710fa110d2d8f2fc64797e5e51c1f2583da193453b7959410c2bf7ecd7a42118f522b10d6bbc641b4e7de5d42c98a5e7e3aed9eec1f9dc5655bae1367cdaba062c06d682da9dfa4f58b25a80ba5ac8d15d21af8454bbf311084979a2bf64debce6e4c927f1e0fb0e8355b5d2742f016355bd1bae539f4d5d1ed0bd4f9e3cb946a4587c7aa2d3d7d8eb07e4dc6c99849726e99e052f35576ee60f5a349afc88e5ea85237ed4982f447e9d65128b0844f9f2c0b70ae03b7e1df98be6033f7db28e283c1df37905c2c46c16b2433ca4ae10cdca470c511b2e566fc608c24697f160b5bbdc7f24f8d44213bc4268c3a42c863a92255b7234e920be09acf6acda1a11cdca478bb4c35c6b60796602c3c3f4ca064aa0f1525e8120e3a527856e0499ee71ab8549e24e2011a9a8f451a70caf1306ebfd68698916a5497dc65903e9b85fc3a61aa785b86a0824304cac8034b7d1d01b93e86952754cb483cf40743f3be8bbd961b08be2869893bf23c20a65d994e288fb680a4b07796e930a5a5e01bf6420befd32e9ae44f4350e83a52f8e6af483b940f8b8ff583c10047cf894c194352e84f6426111d030d8525254b20a5a204162d861b0868b66aeb029ad8495175610c98a1c26bf09c64e8a7c0cb3b8cdad261b08de2db5ddfff99cbae2622847da21866ca02be0475966c593eca3962f693a74dee70be33f99614958500d897a8a0e3b24df0234d8052bc76059d54031f40631a0a06fd765ff497a79e9c067bf51f97b1c055372b27ccf1e069b2ca3540df92d8008eb2e5773a4abd2bdfa91fef494e6e23b30cc22a7c2ce5027b22c8f6d74ec1a2dc10b933aeda1e5924a630f6ec5de9500be552e3adccad1b4a2a19c85ea010b60b3782b768ce5cdf590a40f36eab860c7676838e4e43e4a6f4198f0b2455821119f2c982194fea89c12933437af7948ed2fa71ce9956a19dcbe7efdbdf7feebcf7ffe2f7ff9af6a5379d558a7bec9aa748015f5b3f52464bdd0d1ff7459f874c2cbb4e44e254c925fd0cfd826dcd29fd0823abd860e061b29ab1cddc0e15ffe722af4abf565457e9bba01cb8254913ee8845fd8a2cb43d6b4b613f0c3da4d8592159d0ac966ccbeb2f4fbc341614a6eda0deae272dd0a76a0bba66005e6ea2e6bae083e340916453df6c6fe80ac8626ca851e703a15c95ff0d6440ade28c0bcd1167e6bd122c3923ad3a48d2d7479a9af1f507f569ed6cf0756a6cb4eafbb5134a23494715a264547d4b93c8dfd007140e2a57322021a5a2d84a74b62882443cefae425755d19a9df4d820c76c9acdf75efbd24988a70d37a7ca6b5cf652e2e1a6bd877195cb20cd92b60bb9667b2be398c6c597dc8943f2125eda4ec040978fe8ed7909ce08f2239cf9569ada5ea061bd4f1dba040d089017500636bedb252d11559a79e946b3b0dc3892753cc61f2f2fc3816f50367072f1fa16e15652b1f2d59b0f162e0bcc435f45fa174b823ec00e12540945d0213f8b5c74a99ab49bd2724a7611dd793906e3b66269896c9c267725e1c7691b058a1b04dbdd996af410b61f1dd81d648894962067955c4da8e12b9ebb0fa3ea160434f22aa1dabc853ac60d09d99fcb83adc97e20c2bd38f9a18900da4f1b48fc0bf8562c2b0886b6283a3e8589673f1821f4a7ce28903a345bcda76b94a8d1175dd1f5334a2c3b22c8749492bb1a3031bb1bab02ee636e8af38abb29880cbb518939b8267884be2c8946567593a367716f362bfed7d4c3efa44cbee622fac6fa5c125a71b349fe55a9e05b26c312f1208135e09534ebbd4f1742c4038fca5aec16fd69338d696a5636dd7a44c607b2de5f55bf970ae6e6391684406d46759809be88d30ce940d64da5891fb65e9d724cd63bfc3e93c16a2f9407e670aafa1930f7539818df37ad913f7ceca95e6d557c44b104d735a2f49b57bc894033ca531e9d7241109905ba08140887a3e88bcc2664077e78384b886eca36206e20dbc2f88f1f0ea035e326294d713c5bc3af7495ed8049a21df7b7fc0f4b2325d9eb6b1dc2c17c28297a31395ac162406c2d3a5e1af4d5c23288d0e5e525b919808b18d5d2e5ee7e28456ed7b238483c2d137ab6badd85b844f4f5e625a4d3309afd74d5944a0f348b872b3056643a5f4212f316a62e2eece071c96ee778b480214711b273617cdd53eab9857fdfd5d402cdeb71eb6a334085ef04d831e4ccdbd9c96fa34c9b028057671990ecbf349074508c9a2e6d479bf4d3d4d936f4bc8ed04a83ec209b0faddd62a886dcfd416f382af13e56be3f1da49ce5df0ca67b6b3e08a2c560754280c0974d7ccc28fcb930e2602a60f9d325954de423d1f92662041ee04c271dd4e6087e19570025ad58fb4aaa7c7ee87105bb6d16811022144e1a72df0bb89e40d0e5adb81d7acb6cce6071602c6de539b22c08baf24495c3e199096278245166bbf3ca2a1df0b90caac204a013aaacb09c04ab213085e406cdd1b46b61d9043e96b5c56d406ef99ecea3a00e5967364b0ac91fe6736c9693de36f401e445e923e04e42ad08f47a55833b189b4c3c294829764205bdc01d90942a59c2070b3aa5289fe7356fc3657d73eb95287ef488d9df6cc97abe34d2d8e5f62fd7792de55280dddbc2cdd9697674a16d36d39eae9ef3978dd060a6929f437cd96af116242253bc14f8017125b99c99115c671adc71419625f97c081dac2cf0fb64c1ef6505e9aab4885e545652b627f18d5a4c248e665cb0672bb1f07f7c380181db038407b21f047c798c1962a959111e6da7bbb87f14a88bce936907c9f8372d453ad8f222fdd61a070407e3684bcc435e42815405e14c3ed0583f56daf486b775bc15c9da73d001e5f3aba9f4098fe16802646d3421c1330ed9047348217422e9e78d0616e96afe1f3e25368bb04affd469e1b0c2abf4a585bcbcdd5f5238f935788f1f2eb72a72b672b9b2dcfe73c96bc3c85bc8aa480dc9754d05f2237fb2df70c44f0e2383d0d83edcb15cc35b15fe2c5769244e5dc9c3093e87f52d487ddd22ff1923c2de8cecd2139ac5226fa04e6ff0dce2da4c30583c53ae4666bd766f9f5b2bd75dc5c9df78b29ef06490ac2aee5858a2baa202ec4d4645ef40ec8f6364325ab13b7b2e8780dcc5f1cfbf776718375752c73d23a175f3a2ad18a717375cdf694e4a507c90049d7a2ba7c4dbbc2f290171ac8574a6e247b5b619dee3c755acd466dc58e5978625be1d70a5bb293bb0b1a018d656dc72ef1b3c39de2374bf7ee77f1923d2d518a882c0574ba29bec7e165018573789957d272fba87002311b52d5e30d1e81e59d859f2bacebcc660e6c029c9b5187affbd6ee5b06d8b731df257e6236b7509c0c5362afcd771df001618a0d9fe5e505bc659787bc3882b2dc5096ba29df2c4db3e5f20437c9363b77bbef99c8836b8193216a099014654affc39e71feaf84d669716e6fb3aaae412f70a148fa751f7d1291929c3240bd3129ef234ab9b53524ac26fba878f1268cdab050e258940162b0f4caa86b015a5bc4f6ee5bc9a6cd935eba1f149f120868a582250464dd08cafb886c96ed2447a30e6b8574b9c00f4869b9816e8312c4882b56a6156b9cd1e5a0d50b7556ba50f8da2e01c7a32989881db6695849568b22af44b8a899f6ba601539818d25880f950564a3955580f30bae38dc9eaf6cb158df8c96764e8bf72f035c382c0d65d9adc025c32a2a2f1778c13b75497ea8b0c84e00144a16687e0caf7ef74e9985c02c5fe13fc9d739239f1d2bde53b00202cceb40226afaddcbd364ad2e1674c6cb5f2137f36e3a25b37bf327bfc181aff3db23e98602b3c95ce754266be9ecca4d7025141bc20699237effcb1fc29f38642a25cb3211cb2f079b632e1a105613f6b2c245d26fd219ef874ffdf8ceafd4d4d47cfde4cd400b766a0bcc13cc762fedc975953556be2fbb658fcc0ad1045b0137dcfce6d7e1e3bf72e78f9ffa708d8dcb0bc811a459b8bc44516e16bc44d3192a2137c522f2e6874fadbeb386e28a4f7cb2e69f5540b322e3d6429c2d3b37919b112fc1aaafb36def39caaa219d1e949e3fb7aa807faef9e427ae6017ba73f5536fbe864ee56ea424abf974e41ce5bc84bcfb83927d7547d5f5e15377fe5b0d022e79d58dd75e3373e6d53535ffa1b6ae505c982b8cb67ed3d2c63ad901fb72ed7bb7d08a703e795851b42960b0bf69e03f6a6aae9e39f39a6b6fbc0a6e1ec5bfddf9d487ba262721d357524474e4259bd2f4baf1c79f3cc58df409b88b9f9949f1c5abaea8b9e21fcb6d9be975507be2b7319aaf6af37dedc3271e5d44759dfadf48bfebe47fbca2e6aa991c9f01cff804bbfcfffde597bfef92fe405096b328d1c34058221bc497b62354ffe9c7e0ea805b3e7d15b1d1cc6b6baeb81a2ff77938764bcdd7cb6c34870929f9365f41457efac4131bc7366ddab79f3a1f7c7d6d1eff1628ca8ee4c870c54f5e051723b8fa8a9a6b6712db5dfb7ffe17bae6d77ffc4f924fea6e5b00af92c98f0bcb9a2fff3d75bccf5df6c5991c37d6dc72cd173f07a6faf4d533aff9df357f5b9a57447c71cd0da75d9b507624fc6dcd1597dd029f7f0de1734bcd8d3305aebef1f384dbdf7f798dd4fe62e56b3b79e9f84a1ea15960594e0a3efe46b48fc0a76b3e090e79d935ec6efe43495e4baadbca7beb36941d09ff801e71ede76bc8756fa9f9f4cc227ce6733532354410a55fd643db9dc59f5c4d84bce6d3104c2ec0bd2c980faef13725ed3558d5e6b57a9125b881ffa6062258dcc35b6696c08d24e0beb2fa49a9a4b2f8444ed4bde12291ff3e9aeaf3681337be7805bb89d75cf549b05d4962f37754436bfe4a97b98016b86181d615b80437201288d18a55242c7e275040e39de86a8ca9929fc863f932aa87b75c36f33224e6e6d55b9956c37175a5db5a975dfbff5a397fd7468e280043decbc05d429ae3820377047c45c08597e08359c482190f1661311cb76cb7dc2e622b933536e90daaed46adf417a852e36bd5a8b1ff001777690e02f6b9499b6b9290f766365e8db59656b2bf42b2c196f7f39bf76347ab2d409b90a1ad51f50429b780436a5acec9daf7b35e3f521727cea84fa958cc231c421a01a85010ffd4e5d8ebaf4f165e54bff1cedc62cacd2d4016d2a0e66b31684aff1f4f5c2a2f97d31e8027eea393fb618cc8a94bf5d0720330ba5beee912a78d455af4e664cbad22a3db2528333eec7647ccc1e786aa7ba78dbc4e8150b581cffdb88d2511000a4beae94be87f9ab98cf064b1d6bedb8efb70e94f472342c4761cfa7e9ed7260540c1394862cf9ece7af174e26a4152172497086c63c91524c164ec24d94f665ba0d59aab457b34db331563e26a55b0601c92a09882feb4b0623f7c53e7f5625a2b0c01d2ba20cd8a454248d026c9ce0146efd6e8d3f1ebebb743c6f6de3cad5d57eb13adc173af0884e59cb5ea89297e9db2c9483e444d6265adaf5987cfc9ee8c7b07929b1ba47a1280b1e6572e4b17d078bff566737fff55e9b5b6bdde54eb370ad6f88bf04bb1600cc304e712935a0c4999676756e1598d178df2477d48380410080ad242e410e0fa7f2d8563ae4e74e77fbe8bfbb1117bbb794f8167add6b4558f827525442936b984a1c40584a40faa1cedfa47f3eac6007460e624d1c126480dde8dfd8f29fef612a04769b6f7f3019dbeac91d8e1e63d97c8ef4edf2290ac4071669562371e68890ba143d53a2c136d30b36fc354c965c62425726c04cf33e3091f4cc747e29cccbc2ed5fc8dc35fbeda6d514d3c58afd1faf56073a38a95077089533ddf23cb1417e30b91013d1239c0a93bcff3de40c9450f941d26a4f0b121c910bcd42c9e4ec84bd78c3723ae8d7bf489eae38d6d23e6b6805707fbb7a11a01c0f85a545cf738b59ad0e60528edac27a177e17abdf8ae5a8540f29d36472dc4a6480dfc7b4c981933c513dea8bb4337ebd87a737c576c67676d77cf7ed51d794079f5b7a8e086a12536231721245c40080d03c7cb598519878bcb460797201a0244131e870b91c7bc3a330d4cef63f7646b736bd77d9bb9f59617dfc71e3063bc9ab64a00861136859206327e224280df9fd7783d7dd2b77b0a9880aed2ab719679322fb43911f4594db21ad3fff7cfbf065343d6eb41b73b1a8141a513679e9136b39ad311aa30712332e8d7c6eb3d40c4e1c28c9e435c0e590011df8e2726d53061b97a940c85cb554a5685c4e6b0901c9a56664bc77b3bbd3b5e473d809cb38bbc901e9725f2ca49b89a53582e4d924c69af12f2b48a309c99f6be9c73aa45b81cb1084172652c4bc791193a8cd74cb850419ee30a249af325a64376e49c061f87760472b94265375196261010d96742970133f7abacc2e5d970a1d622c695900a882c164b716d5a8392b802be50ca068e400e983b6f703194365ca8a30eae445509b5cc452372697f3e4b712562916a64721bb0d3bb5e7dbb91c06bc68b737c00891a0251f08ef05c82302d8018aa0457a6935baf763926def1fa6cc365842008f161a451018c8a58ae5e2952e56e6b8a0f2117051a7c7e590f3ebb5e031bae18892840e2e16a1a0c9e52d281b7c20d9aa51e482cda68303b0612068ed745152e32f7f171905ce2a116adb244e26310f868f16d0fbb28bdbe653e54e122f3363e26923a984342468f47e863091b28f8c03e2fff037f7085ccd8b45a7c0000000049454e44ae426082, 'uploadImage/bala2018_02_06_09_23_17.jpg', 'uploadImage/bala2017_03_30_05_35_59.jpg', '2018-02-06 09:23:17', NULL, 'Active', 0, 1),
(43, 'bala123', 'Bala', 'Murugan', 'Selvarasu', 'bala2@bmassociates.com', '', '900-372-3111', '(+91) 900 372 3111', 'Bala Selvam', 'd003e7c8fa343f6e3b1fb272625f61f9', 3, 'Volunteer', 1, NULL, 'uploadImage/default.png', '', '2017-05-11 09:53:51', NULL, 'Active', 1, 1),
(73, 'balabma', 'Bala', '', 'Selvam', 'bala@bmassociates.com', NULL, '121-312-1132', '211121212', 'balabma', '202cb962ac59075b964b07152d234b70', 3, 'Volunteer', 0, NULL, 'uploadImage/default.png', '', '2017-05-09 10:42:07', NULL, 'Active', 0, 0),
(83, 'balakarthi', 'Bala', '', 'karthi', 'balakarthi@gmail.com', NULL, '900-000-0000', NULL, 'balakarthi', 'cc012c461fadab13a472ea97ab7e0b9e', 4, 'Student', 0, NULL, 'uploadImage/default.png', '', '2017-09-06 11:52:58', NULL, 'In Active', 1, 0),
(98, 'balraj@gmail.com', 'ball', 'thanraj', 'k', 'balraj@gmail.com', NULL, '1111111111', NULL, 'balraj@gmail.com', '7e21e90533361e50e29a813cba2b56e0', NULL, 'Student', 0, NULL, 'uploadImage/default.png', '', '2017-09-16 05:44:38', NULL, 'In Active', 1, 0),
(89, 'bbbbb', 'bbb', 'bbb', 'A', 'bbbbba@gmail.com', NULL, '1231231230', NULL, 'bbbbb', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'student', 0, NULL, 'uploadImage/default.png', '', '2017-09-15 11:25:42', NULL, 'In Active', 1, 0),
(109, 'Ben.cadden', 'Ben', 'D', 'Cadden', '13caddenb@gmail.com', NULL, '916-666-5563', NULL, 'Ben.cadden', '7a5d6f99fd35b5393a93aeb8ef7c367f', 4, 'Student', 0, NULL, 'uploadImage/Ben.cadden2018_01_24_08_19_48.jpg', '', '2018-01-24 16:19:48', NULL, 'In Active', 0, 0),
(111, 'carsonfrench', 'Carson', 'Gregory', 'French', 'carsonfrench12@gmail.com', NULL, '916-300-0252', NULL, 'carsonfrench', '239d6eaf2ccfde267021089503c9d454', 4, 'Student', 0, NULL, 'uploadImage/default.png', '', '2018-01-24 19:24:20', NULL, 'In Active', 1, 0),
(90, 'cccc', 'ccc', 'ccc', 'A', 'cccca@gmail.com', NULL, NULL, NULL, 'cccc', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'student', 0, NULL, 'uploadImage/default.png', '', '2017-09-15 11:27:10', NULL, 'In Active', 1, 0),
(65, 'comcom', 'test', 'user', 'me', 'testcometchat@ins.com', NULL, '999-999-9999', NULL, 'comcom', '5a105e8b9d40e1329780d62ea2265d8a', 4, 'Student', 0, NULL, 'uploadImage/default.png', '', '2018-01-23 07:30:00', NULL, 'In Active', 1, 0),
(91, 'dddd', 'ccc', 'ccc', 'A', 'dddda@gmail.com', NULL, '1231231231', NULL, 'dddd', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'student', 0, NULL, 'uploadImage/default.png', '', '2017-09-15 11:28:51', NULL, 'In Active', 1, 0),
(113, 'ddddfff', 'Dddd', 'dd', 'kumar', 'dddd@gmail.com', NULL, '', NULL, 'ddddfff', '1c982a0ac1d6f3ab2f8a4336ba330f8d', NULL, 'Student', 0, NULL, 'uploadImage/default.png', '', '2018-02-06 11:15:45', NULL, 'In Active', 1, 0),
(81, 'dgrgr', 'ererer', 'ee', 'rerr3r', 'ezhil9@bmassociates.com', NULL, '312-323-1231', NULL, 'dgrgr', '78302615c8b79cac8df6d2607f8a83ee', 3, 'Volunteer', 0, NULL, 'uploadImage/default.png', '', '2017-09-05 04:52:48', NULL, 'In Active', 1, 0),
(92, 'eeeee', 'ccc', 'ccc', 'A', 'eeeea@gmail.com', NULL, NULL, NULL, 'eeeee', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'student', 0, NULL, 'uploadImage/default.png', '', '2017-09-15 11:29:26', NULL, 'In Active', 1, 0),
(78, 'Ezhil4', 'Ezhil', 'A', 'A', 'ezhil4@bmassociates.com', NULL, '134-234-2342', NULL, 'Ezhil4', 'd47a636375a1cab29075c01f29b62a3e', 2, 'Teacher', 0, NULL, 'uploadImage/default.png', '', '2017-09-04 05:45:46', NULL, 'In Active', 1, 0),
(79, 'fdfsdf', 'sefsf', 's', 'dfsd', 'ezhil55@bmassociates.com', NULL, '232-323-434_', NULL, 'fdfsdf', 'fc1c6297c98f9cc0f48c854a36108e62', 3, 'Volunteer', 0, NULL, 'uploadImage/default.png', '', '2017-09-04 09:56:24', NULL, 'In Active', 1, 0),
(20, 'govind', 'Govindaraj', '', 'M', 'mgovindaraj@gmail.com', '', '056-456-4545', '(+54) 545 454 5454', 'Govind', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Not interested', 3, NULL, 'uploadImage/default.png', '', '2018-01-23 07:23:28', NULL, 'In Active', 1, 0),
(17, 'Guna', 'guna', 'guna123', 'sekar', 'guna@gmail.com', '', '111-111-1111', '(+11) 111 111 1111', 'Gunasekaran', '202cb962ac59075b964b07152d234b70', 1, 'Not interested', 1, 0xffd8ffe000104a46494600010101009000900000ffdb00430001010101010101010101010101020203020202020204030302030504050505040404050607060505070604040609060708080808080506090a09080a07080808ffdb00430101010102020204020204080504050808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808080808ffc20011080080008003012200021101031101ffc4001d000002030101010101000000000000000006080405070903020001ffc4001c0100010501010100000000000000000000060203040507080100ffda000c03010002100310000001d766d94e33e6ba9976b33c7525e44f5339723db2897e33b7ac30cc3b55c6f68ac84bab545a10f11e2f9e0ee88368567a39a10db525e49f26ca5c185327d678ff0036374ad69b2bea257578741551a314f01f59cc8b83fb731b1adfb4be60051b391b54305193c176d6f35a7cd9bdf7cfdcd9a9909bc594ade5bd37b9add44bcd61041f291457e39d69db81746d179b0346cc46dead0d1737166fd792ce1da2ddf69be333c7413166b04338e8552955e9522a33a22a502d6caceb3b06385c2db071f8b8e148d78d8c8a178a256f059d5d97ab9f32be578b9d0e5798be998173a9fae7605750624dfaa2ebdce44ee0b5853e95cd1463b7438b8f4a2e4230d38ef58d09778f7f340399e3fa8c25659d4cc235828465e75985cb39972b51f4b48041d0e429efb90c1c14d0c04df1e1a1c9b424204eeb56a4bb747a2c0a731ca46f5526c90f3e624a5fb222d140931c90aa0383615d80131b53150780e776420988274be551a4f3fbe6e5a40dcd068fa32e7b27d8e692266a1c6abf3945abad7ac8118d9b1b98ecf6700b942db30d2416ad5f0971a8f1efab2b6ab48c47ffc40023100001050100020203010100000000000003000102040506071211131014222132ffda000801010001050288d3093093097997a1b183ce48928c7fea5f0eebfc67f196dd0dde4c8244122851048a3441a88d30d30d30d79e051908c329a35f0356cb9797d512b142c577f0ada303b22891068a3451a28d120a30511a88d30974a697913b8cef1ce36486f67c02da405a6083cf1efbf2bd1d2b41d3a04822c11608b04482841460a235ab3956caf12608ea63195c0408b780f057eb15a7a152451f882e9b43c7e5822c51628b1458a845460a3145aec70f012fd2e3f5fa5d8a4f53687a8dd9694eba2675eb32aa18565e2acca99bc29628b1448a2c5162a11518a664ccad0b7c9d2f540ee87818ba7d3d1cedcd3d9d0dbd4c5f77ab9709cfc7b56ed4e108c8ac891458a2b28328b28b26656847a5a7bfa58c51e564e66d07cbb9ec3d41eb0ac04120cecce0d019591591191591594145326fc5c87f757da917cabab518d965faeb64d795ed63a2a2a2a2a2a8a8a64df83333adeeaf1725753b928428dd6b51f18e0cee6d99d15151515154545d33a67516949ed43eb7dfc3c7b26df3521aa95214c5e3beef173730776a5f015d15d11d15d15d45d33a1fb4debe21e489fa1cee5e05c9ddcad107b43b5a45b0d7d8cf3a9078ae63a5b1cd68586f8999a4c89244922c9464b3689b46c0eb55cd1c1d8add0558eef35cec4d9b9760b09c7a085b9c34706d3d806745df2b09af5ebaf161462b421f5489344928cd73d51aae6fd4e45ab63f4a967124f93ae01e7d8b3f1f1760ceaed76593e3ebda94f3e9e6e3c7586d0a166d302b6c3fad4991126abb7da7f68c5e3168c774e279f3858cc37e11af09dbab1b167fa5660c853003273f3e24276ee310c932483d0d86885c9fe4caa815daf395dae14cc30355bdfb594ffaa3d9cf06de5653be25e97acd5caefed96379e3520b41749a2f7f527f10afb36de75fedfe665599ed3d3b64714ac5a9887f43b8ca198e54de7ebd1de93f7595724653abf6ac6f91e7f4bbce2053a3f58f7f4ec5b96899e755e73669488bffc40029110001030204050403000000000000000001000203041105061321071231416110142251718191ffda0008010301013f0101342c9d001440b46e53692422e02cdb876ad2971eaddd140a8de8289b736596f0b6d3c0d6b5446e163546d7b4b5c362abe9f4a5747f455d35c9a131617898f691c8eee3b27620047b5f7533f981b058abaf50f3e4fab534ae1b4daf41ca7ab0a742391c0ac45a1b4fa8e3d93ddbaba0534a0570db129a2abd36b4963faf8f2b0ea312425cdb6dd6eb3acf51ecdd1d38e6276fd2a889f19e578b140a055346f95e2360b92b09c911b7e5546e7ebb2cbf4b146c2d8c5946e52d26eb336174f2d83db758de4dd2619698dc0ec82e1dd18748f9cf6dbfaaca9aa0c6ee650cdcc2eb15ad7c6df829242e377277452476790b86f7d194f909dba69513be20ac5b788279f4a880eabbf2bfffc4002711000104020103040203000000000000000100020311040512102141061314222332516171ffda0008010201013f01e9b07fe4a28e4b01ab5ae9befdbcaa45a8854885b9cb32c86d305396b320b6942ee4db45a88e8565e09390e6050eb4fb97da82632aaca81b4c1d08e94bd551719eff0090a390f36d2c5172f1015765488442a5ea9c563e0e64d10b1a188b6fcad4c70fc8e4e34146e6b85b571442790d165646d49ed1adf4af716dae45a6d7c9b6ad465cad16d2b0379c8864a8adf494d0c1e513d965c0246712b222a3c4ad2e1b2479e7e17b21acec83934d80b7ff00bb506a214cda90b5697b4c7fc529e5f509dfd28bf40bffc400391000020103020206060904030000000000010203000411122105311322415152611014303271a106202342628191b1c1254392e16382d1ffda0008010100063f02ae5e98ad2d0bc73de49d1eb1b69403adfad36d8771fe23d1bec28d70d82de52d7567125bce8def29039fc0fa4fb0fa3913ecbae46fcb028f45139d4dd828086c2e5bfe868096074a219734218e608b35bba321fee76fcbd9c9c26dd7a4e0fc37316af1c87de3f2f950d16e1df1dbd9455136a395144601ae15c7d232c90cbaa441f79791f955adfdb92d04a81d72307147d8712b845d4e9048c3fc6ad7894883a7b88fa773e22d4d91526718a7c5674d37577c5708e9d833c2d25b83f855b6f633404643a15fd452a4d13bdddbcf25a3463996438c51e9b80452dbf7c73ee2a575b4bab56f0c94f1c18f593b0068cfc4789483cb554caf71aa1c1f78f2dab854569731ddea2f24b220383213b8dfbb97b2fa611f0cd10d8acf1348063998c0d4079e37abbe3cd76744571d11b6182fa7c4401caa6e2cef04b04463e99248f3d56206d8ed19a95f89d9b5b69dd635caeaeee75c2ae2292ea769066ec9538877e43f2a315d8730efe4715f45e1e21198af3d543303cf7248f91147ea1faa789c36725e5acf0086e847bbae924a385fbc3acc0fe5460274f9490b29f98a87845bdbc971c284eb737b298cc68da3acb12e79e4819f206a1e2f0423ecce1b1da3ba874505f2a1ff00873423f549194f57ac74d222eca1401e83e93f59b0bd6a13cf6d3dd3b3ec436d18f853e985ae2263d648c671f1eeabb290986263a913c1567101bbcc8bf3a3ecf246f5eab75790a5d9fed6b1ab157a96d6f35c5bce49633478d1dd584653d871497cca7d5ad7ed58fe3fba3f9fcbd9855059bb3152412756e146593b573df525dddf0cb5ba9cae96caeee3b37efae216ebc31dae09007499fe69a59880fef377549c3389eab3632991650990d9f16296eac6e60bbb66e4f1b6a07d805452cc7b056ab97100f0f36ff557fc5d9068b7b77b8724e4b00338a87884e755d5c7dbccde276dcd6a8c8cd74b24219c1efae8dc688c725a5a8dfdfe113b85ba8fbbb3a41e63e6286e34b72359e63ea8821d87366f08ae86dd7ed31bc9f78d00a3cceafdcd717e1b11c8bab3921523bf1ffb5676f3a332e81474165a74d10bf9e28c92e4af701582a7156962622f1bcabafc93b49a8c30c7deff0054c54f5457603fbfd484b0c4b2f5dbf8a76ec15269f79baa2add13ad3a2749b76efca95c27f4bba25e26ec8e43ce3fe47e747028f234dd5151f1196eacf87da36f86ddf478b15259f0e59ae6466cbcf22e0bf9790f2a5d7b9d7422404ccfb0f856b61891707d30c3e260bf3ae8c6c062a4f3a8a26cbcb8d90765742ca7a871fad5cf09be8fd6b864d92a5bb0777c455d59d97105e296d11d2271c9bcb3da472cd1a22b85dd438324b6c817f0e063f8a4931bc8d9391d95696d1e06f5d2323054385f3da8ae493ead9f8d0f45991cfa54fde88ec2b524b8d785d58efaf59bb62f39eb63c24f65303b13d626a7b095dd048980e87ac87bc1efabefa3d2b0636b2987578bceb6f47000ca4a746ea3e3acd34c44791e5ca98f345db6a66958aa7307b8d5d12dbf47a5687c3d160986de64fdeade7df19dea211ab33375450e9b4b498eb1c601ad0d9d3d94cba89c57d289543e3d71872eeda9010dfa506d3564855fa8d2607e7ce9ed2dc3eb2314f7775909cf7a2238a64b71c877d05d2fd6201da8755ff4af75ff004affc400261001000202020104020301010000000000010011213141516110718191b1c1d1e1f0a1f1ffda0008010100013f21f09063c53c52d8d02ec02fe07b5c77b08bfe3985986afee6d0643d06a2934b3443c80c3f1c4cae26dc4e81376261d4db89e09e29e297d4cc48a7c2c3df89904bcd983410905de23dda9f5abc5ee0e49728e1b4a15e517f73e1657730389b26ec4cacbf8f43c330731550ce984533d687cb989bab2a303a31c1d4a2c4d8c376dc147e4694112fc9f9891f5f202f2713ad30b03389bb1374f04c3af41310eeeb224ccd9c62da8517e250695462c1e04ae5fba9df367130ae67c94d6d8cfc835f04fae6cee6dc4dd36dfaa78611a431e6c3f7178f078abe951aab1caf7ca851d34d57f15b822cf831ee5f41c8697ed1c02ecdd934c761190c46a0a616d35364dd374de4dd347a1afd308c5f420860da336b04b15cd6bae312580c77ac421dbe1695746e38e7334295b4572bbb4ee64a479bdb7e5d2bb7a8823b7574daf661b786c1901ae54fcfa6dbe962665c2699a7d48dcb3f6fa800232640e6101c9c457f24b55f6a90081d558c87246f2718afd2f104cc8bd1f71f170b6e38ba32ef588037b1202a6cf41dd31b324708310c3354d730f06f16ae178f90ca7cadcb1b6bf0070f943b99e1bd33f7b872eb07b921041a9ca7fc4f026ace7e958f58855444c45b5a08ec9b8aee6f06560f9cefa8e310a5dce0dcce1a57db70e08b2c557145b9ba711fa1abd06533005ac5a005c0463c2f75be659552957ca3a38f7842d13769c630d4dd9e068f44bc01dc60637095bea6a739bdac9c9d40ccdbeb9ba6bf4c69e705ac30a0ae9a3cf1f2975ab530743c5d71dc7f6655b47fc2e8f00466206425b3d320f8a8588bc2dfcaf3123d6d836446f56c3af15f453c515cdf03d6ff00996d47b099e0673364cd28d032f5dcff0011d20d953fe7a8c34b46e1f92763d7a5e1f60962085f193528194fa618ac985fde0c566f0095c7e90bcc942f3fb42ae1451b8e8bc11850d94e884b6edb16fa74199bb2ff009074fafcc36dc94cadd11fb2566d0adc3310d35a2ed9bab6fe2710ebded328a3cc682de862918ad9b5a745945b6ca18c945d1434e5f7663d5eb5b5cfbc5e2c27e52cd03b7b14fe659ccd93bebefc1388480f104062e893b9b573fc4c3113e3089fe49953c6c1f99b444ffb78b6430bf315c77a8852ee193ae6c8d87ca231078907ff0025e68e7504658e7953fded18bb0fb71f897a3d7a5950087d6598bc6bec658407a3a9a98452a1afd44cf0558788ea0f48a18e30890cb02b07f2333030f12d11b80acf20f7653c91cf64cca653ca73c6c6616b3173a17fb8f27840ee3315703c62a12683b2e611a318cad1157ae670ece88c80a6924c133010851da0597fa26149ee962c257502719460a6dfb4c998a86a29ef9d3e09a052c354e672ab13eee1571f78ebfcf9ffda000c03010002000300000010b2922d9e7b1058dd09a91a5011008dfd0133c9e22eda8dac64b55009bb2a24a6998444936dc70a564271aa7d7abdd0abffc400231101000201030403010100000000000000010011213141611051718191a1b1f0c1ffda0008010301013f10e919760af34d1f44b21af10ada61735a8fae823a17956376177a1af3bbed835bacb76023e13319fde3e1a84d0f41d2310e382e9758262cb0335dfbf682151ce5bbfb837d779aeef2e7144b835a75808d927aa13f6bd4ba784d79c5457a14e86d2f6bd461e8bec404184689d0ecf9e26559a8dc1dc37fa8177a11a8b543c6dccb6bed223f0f55bc12a03bc14e066879757e8f309382b015fd7bc631b32dbba47c6b19c7e3a8f88ec990ad437a77aedaf2f48df75079b5bf057b6346e56dece2529d181dddbc6cd6b08a2525a0bfb320fe063147ba8abf707ea3bdcff8ca085dcd07bbf67fffc40023110100020202020202030000000000000001001121314151106181b17191c1e1f0ffda0008010201013f10a998f64c152f837f995932308ca79f5172c863a8d45e2208650770664f1a305952ad36edfaa9629e85f5f99690bac012a69c1f52a70449589d627e79ff007b8b619bd7a77981d88e61238787a2134a1a77cdec85d3637dc0110e73ab352d409e9bf21bbd06e618a3b77fd4604a37fbc44911a14c48a29956e97166be4e21e62fb31f8d4c8a81f074f4cb7d862006a2ea28681a266beaa5a9e895c1d3f7e004a652da16a541dff2263469a87bde0fa9ffc4002510010100020202020203010101000000000111002131415161718191a1b1c1f0f1d1e1ffda0008010100013f101a49611d602563d4c01c5831be9697ba1d7d8778270a70bb797cd5f80bce5173651d8c5a98bc611773a5260937eeddaf68e0d2b6b041d8cd7126481d8f59d70cc01019c61e9b9cf1969d300f6c7e20c0ec3e7ac5076f71d2c3cad57571ac512ca8691e0fd189e26b57d8b07edc494672d877b98deff61f7c602a6de0a966ac1bd7bb8c0d3f807e720521d1822cf9b91e09fd61c8e587c11e7e7283f4ce21267025981bbbdf30c287d512faa6ec674f02f0821873a26bb6bbc0830f6420f0631eaa0e8f930362e89a77afc6083f49c7810b15d4194f5d5e302ad478dfcbce4fb278c32a2facb297933a70efeb1c6c3de553a7bc38232d34e45b35577ce9b0c7a966c850db4600e8dc3972840e82f784335c4a69ef269645264bc60c1ba005ddd9ef08793136c0e4f38ac48808409e02df713bce6d7938fcf7ec69c8bb8f5335bf6fd615847009acd7261f960543604105c1d925a40d5dcb75e0bd18b62c374bc320d4df1ef10c52483c54a077bffdc88994689abf830e42153f19d7ae0c0fe7ad146ba47f998bb598e4e0c19cd94a383471def3c3f3d718a34b7244b8f79c181f590993eb9cd452197e17fac8893af19676ce6e21f6844a7cf271aee09c52eeaecba3159aca5cb0294e808e314ea4b24030e0b43beb9cb208f200c1c2d0a23d26590b6e05929780537e37835d47009ba0d07268eee1441de74f8eb1abd7d62ab1723444f3940f79a341cd638742612a22fcf2012ce510013d88ccfe4090f0608e79d4a05b58a37025aafc08b41f1400d6893570e88c16ac8c2c97de3f9a9113deaca93b037d24206978507d019d3ef37e9acdb76c01027c63e875bfce00394c74337938a6f37261a2580bbeb87f9c72ede27f23e3ce5372c2a42d214eabbc781e8d609b205576b66b0a08cbc741ad6d60d17160099b8defde711c50f81c1be44c555231bcda806beb11ca6f0ef5d2fe30ef63eb023ac66b398e324e7cdef0f3423ae47bc3e30af7507b031802b34658492a69a640a876f838baa1a40529185fac7351398caaf3b078f7c206baef0caf5971ba99c9849da6afac7a0e381df39a36d7c604861e70a8862b351227c01b71ebb9eb680946206e9201147d82bc8c1a8ea27a4633399415c46a0020436e37d8a5823c1cf004f18131d005695c4e12a6a6ee102d48c146269511d2197191ca20e77ce4eb5c076a7ac06063bdf8c3555b81069310d2463e086f1bff00466c0ba587b5f59aab581b4c80646018e71c58bf5225f081742683291a5dc5ee3d1eb37ca63a27b1a3fae30c03b54bf94ff19c582947097d752a13ebb5e11b05815703511e03c8903d8e1860bff43acf3a1f18e1fbf380b2bf9c98bff30d218279f3d8f4767edc696f528a86de8ec1a3f78a18d92d4ad3913be2719ce4304b9a79fd964034d2c45f82349e7384f5129f03a995d6020ebcf02e6833d053e0e4fce1a8d42226a632c13620571c269747cb8169dd40b8bcc1a9e033405b01b386be38c3d02003a0de3d990256fc66d77f585653b701a428201f8897e562ae0534d80ebe6eff005822744f5b0847d738bc0551db50f213ef19046ad95ce0b05e69ec983dd36a46b148a9d8afd7ce5034a93970cd5935a8928a902a211294c29973c2b8668aa52842017dfee57f4d1a84c93120e840c1ca20efcbe9c456ebb698b7a8a7f18c15165c1557ff00b8c037937fa2e3aa84234703f00646973fc570eed18a3b89f459dbbc8ef54bc722338d8f1def0b3271f6eb2a3462406cc058b7c44a839e34b191010144a83c622a16bd7ac7a7eab1745c0600db3e3b6504bc5fdb173aa3430daff3d64a4602b62479951f9c2a054ad7621d08c1500a1fc994793479cd0d18f38f22d256e93477ce40794755401dd61f79d127d296cdded29e30afd6205e014afcfce539633e7a26e68ce75133959f35288e9411e5734341e46c4cba90e8397025420c0e91f11c686c01c70b0601c7ef1195cdc4aebd7f19a72ac38ca1eb8fef38ac1cd2bc7aa8c40f8c7f4612dd8c4120b99aa3d7ac7bf2d83479fce30b6f14695e879f55eb274b04b1241ece17e5c1f744c859dcfc6587c7207cfe71089192104d9fe5c5b6f0343003682c7beb1999245134d7050277ac604a44b5a766c78980b98a42f941ef8e2e51bd8ae8e47eb0b2896d1e264f51988324227a3c4cb85aff008e33ffd9, 'uploadImage/default.png', '', '2018-01-23 07:22:37', NULL, 'In Active', 1, 0),
(116, 'Hamed', 'Hamed', 'Muhanna', 'Alrajhi', 'Hamedrajhi@live.com', NULL, '999-999-9999', NULL, 'Hamed', '868726b8081dc705ac189300947205bd', 4, 'Student', 0, NULL, 'uploadImage/default.png', '', '2018-04-20 10:00:57', NULL, 'In Active', 0, 0),
(60, 'Hema', 'Hema', 'A', 'A', 'ezhil633@gmail.com', NULL, '123-234-3423', NULL, 'Hema', '827ccb0eea8a706c4c34a16891f84e7b', 3, 'Volunteer', 0, NULL, 'uploadImage/default.png', '', '2017-05-11 09:53:51', NULL, 'Active', 1, 0),
(93, 'hhh', 'hhh', 'hhh', 'hhh', 'hhh', NULL, '1594826123', NULL, 'hhh', 'a3aca2964e72000eea4c56cb341002a4', NULL, 'Student', 0, NULL, 'uploadImage/default.png', '', '2017-09-15 12:17:22', NULL, 'In Active', 1, 0),
(107, 'huhuhu', 'ghghgh', 'gfgfgf', 'rtryhv', 'ghjklj@gmail.com', NULL, '1111111111', NULL, 'huhuhu', '1c982a0ac1d6f3ab2f8a4336ba330f8d', NULL, 'Teacher', 0, NULL, 'uploadImage/default.png', '', '2017-12-27 06:11:13', NULL, 'In Active', 1, 0),
(108, 'huihui', 'haiia', 'testt', 'kumar', 'hairest@gmail.com', NULL, '1111111111', NULL, 'huihui', '1c982a0ac1d6f3ab2f8a4336ba330f8d', NULL, 'Teacher', 0, NULL, 'uploadImage/default.png', '', '2017-12-27 06:19:18', NULL, 'In Active', 1, 0);
INSERT INTO `user_master` (`id`, `user_id`, `f_name`, `m_name`, `l_name`, `email_1`, `email_2`, `telephone`, `mobile_num`, `screen_name`, `auth_string`, `tutor_id`, `tutor_type`, `school_id`, `image`, `imagepath`, `avatar`, `created_on`, `updated_on`, `status`, `isFirstLogin`, `isForgotPassword`) VALUES
(5, 'jack', 'bala', 'bala', 'bala', 'bala@gmail.com', '', '044-231-6465', '(+91) 900 372 3111', 'bala', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Not interested', 1, 0x89504e470d0a1a0a0000000d49484452000000d7000000d70803000000bea3348700000300504c5445b4aea4666666c7653ce8af92515151ffffff393939424242f0c1a8eab397333333ec383e2222223d3d3de4a5874040403a3a3a3c3c3c3f3f3febb69bd17c57eebea3edbba1db9372e5aa8d2a2a2a3636362c2c2cedba9f3232323737373d281c3030304141415b5b5b3b3b3becb89ddf99792e2e2e525252262626d78a67565656e8af93272726d88d6a343434464542c96941595959efc0a6494949cf7852d68763282828242424c96a42efbfa5e1a080c277565549435f5f5f62626261605fd4815dcb6e47df9c7cb88e794c4c4ce7ae91e3a48554463e4f4f4fcd734de5a98bf1c6af6b6863e09e7f464646f5f5f52323235a5a598f8b83f2d8ceaba69c866b5ceab59a646464eab39873706bfcf5f2bd8970c46f4ad58561bf8063a39e95e3a486da906fc56942f2cbb7bc99864f4d4a473e39ce7650dc9574fbfbfbeebca2f5d7c72e2b29dea98f98938b434242e5e4e3f2f1f1f3d0bdd4d4d45454543b3a3a897165b6a497bd8e76fefbf9e9b195a19c93faede67b787253514fcc7049b7a090b89b8ab6aa9e70573a816543644c32f1c8b23d3c3a5e5e5e5856529c968e4b3425745b3d6b68647d7973605e59bb927d7a61416c5539fcf2ed535353f6ddcf939393f8e2d7f3d4c4636363e7ac8f87827b343332938f87d1a088d9d7d56d584dc17b5cb99783796155785e3e717171f0696ea8a8a8bdbdbddfdfded6ac96e4b79f837f794b4a48a07b6acfcac7f9e8dfc8c8c7edc1aaf59b9efdf7f4a28575705e54e6aa8d3b3430eac4b7c59882a38e74cfcfcf927363957b6dc9a28de4a689ab8572bf84697b695a43302559432ded444aebeaea61524a8b8780dea0866049315f3724f37f83facdce9d9d9d7a7a7afce6e6b2b2b2b8b3a9f0c2a9f4e2daca6e48e3b29d9d5435c5bfb7edcec2685236ee5056f6a7aa878787fbd9daec5d62e7bcaa875b42b65f3b432c1eaa9881523b2d724730825839ee8f92d4d1cbd78966dddbd9bdb8afe1aa92998d836a3f2d91867fb47b61cd99808f6b5adf8588828282ca6d459d9186b2a392623925d8bdb1857871d8957898938cafa89e197750f200001c024944415478dacd9c097c1bd59dc7f1601d338cacc3b2ac912c211f92856539767cc6e0d84eecc4479cd8399c38949c247682032121810442203427500a241048484203942384a340817216cadd8b526869b7dddee77677dbeebdfbf9ec3b66f466341a69643d49f97d3e80657bdecc77fee7fbcf98f3a6acfd21535ab25a1cd297e59546497ede867e5827fe5280e7e79d97577d89b798a62cbbc45587b94c76bff413813fbe30af60c743a64cc088bd903c7693285b0b3fedfabc1acc9e0198057355f292a1eaac2649feb0309647b0fd822903596d082cec33890a98887cfcfe2b730b73c7b498f75f29f832012b47be288462a0f2d5ece11ce78f692dadc70f1e5bb838334fc47200ae409858b04e6e4e2f7f70712eb902a180d0ca6385c3d60cb050c2f7f316c212902f17e2d7e5922b640df88da2eca196ccc04c169b103069821dcc21976072843c1258a5b7350357c4ce17967f8cb7d8b469775c991bae56586c021298cd13f69832934df1c9679731b7f03e6fedf0fe5cd4e975281e2c014e22b398e8aace2e43e605d09284852f659f6b9e5848ed9ccf23faa2952e985f76a7041e9cc4df92839c7f8cf7c5dcc4e1f164c36436bf499287471eefcd7e67b5981714f9ccea00a26c317b0ccccab718a1b861612ccbd56c3f0f28b22c5b2c97b4b48afdb17738cb497f8cf7649d8b34c1022fa5a7435976c4eb79af29fbf2c57105e6e520d35b35c2c24edf138561918b5f777d76cdb5708cf769dd642b454f14b96a8d22d830bf7fda3ceadbb2850bc7e6ad9b769c6f6df1722dea6e97b477b4240671ab373609f17abd3edade786c3f1f1642210e75bc9ee18056171ba0c665b123d716bbfd72071af51ccb429fd1eab3db3d36232e9336adca13a20666455613c89ec6629b969d71461d6c053c75004c7bdfe5f1e08b48134197ca03c85ed4430c5bc9e2f71beb86bd729751c43b02b358d222b3db1dbaf843d767c562a295ac165b6038244351dc54018295db8c766b5a13019b1e34cfc1eccc6cbc6437c887ac317b79149718801fadb0d1d76304f908d86e49752fc25766a5e73d4e4c636b6db193e6402e3b0043f341cd2b75582c1647b9c6a4d466b70069007ad665a7280b76e2ec02efb3243258b93110925f27b9c6b8f97c65250020bb016ba591c8a165301261d4434c925fe0bd1e8bbad17018ebbcc01ab8266002857908b4b62c1a79327007459a2be7cd9bb7506c0ebd8acbf3093e9ca8e2aeda1fb2c0dc218ad059f58259d0e03441e61468badfc1e33c7f1c85ec1d216f22d7f7fb4d44888833aac124ef83b2a5e6b2db1239e231aa19e38e502beaa81b4d428b2545cb8bb3a1c763256069cb821671d07644b5eeb3065af969c74092f0b626ba8fca96d782837fea6016149f95093c633fede265b2f8c2708b02860d3e75fdb1d425480c766be594b9ec89d3a2955f4cb9781d942a97d153dba23259a54d0986816c56cb14b91c4624753bd6b290667e070365bf9f9802f451165527a47045c9052d5301ab0b0f1bb1d429d14b710f7690e70521cc5b3081381f0a296d6603b4761518244b3bc842c3ef8535c7c9be833477cbbb9404984cf0c4a58a3aa3b2abc0b255a667ac16fe35f3a45f0bcc3f8deeb446ee7258fe402d1ff25b250cb495aeb3281f486255ea25e302de5afe92d7cde6f702464971f5d2d64295cba7ca0918ad85177c3e9fdf66b3210a259985fca28a8c2c0160906a5b5b5b5af9179f3703bd261835c0ec3cd56c18880de52d164513643b7e092f2a5c0bd41216049f0467b54957dfe2f524b31314e0e3f9ed4f98a19e18f66b35c1fc219a9b659fc4151f0dd31e379b2fbf7cf6f6f72e89693d640cf96d56f9ab355c6bd81bf06b8161d34fbe0516c37a21a4d5ddf334f76063bec41d6be00573023d7ef96bc8882d42c057c749125a012e98d325b257a885e7d73f8f6c85f57aabfc1e58b3c535afce94c860c26b660d41236ec746c406241aaead05d114907043205500a8b75e571ebedd6b5481d1e79a664b940c84e7cdfa7539d06bdbb76f7f211e74f285e71f37abb5dea302a3cfb59f7095935ca0c64a87134b3293da99437e1518752e3209b5c6fa0761bb39ab7a3e6c94ab3c2b5c76324f16e57dc19c656d171405a59c3ed7425eec8c8802eb9f30675b2f28c02a713e6ea53aeb8dcff19ec9d7cd59d713977855c31c9b4075381f9fe3c32067e4006c7d48913b6873cde3e33a43ef25e69ce8f149d200e399bfc74f934b501665cff0e3e6dce8653ea0dc61fad6d11c6e08ca3d55ed92b21c71159f1dae43d910ce56a9734d131095d46a70939b36e688ab8c3d05ca1899dd97fb6ea7cde54005199b8b2dc919d7a6170559aeb70a6334b9bcc80589b972c6b5916567f30159a617ced0e4f2c9b7f5b5a758d69c2395b02c3bb7d54f0a9870255d2e20b133ace35fce2dd7093e848791e8cd8743b4b9a4ded0bb9ecd25173218ce1a0e68aff3288af7c9f65dadafe6906b06e43acb7ba422660dd0e5225801fe04cb169b7325c8b5890fc59e463c49978bf450c27a36d75cec5c016301ae1be972917df2f0abb9e75a522ba58dba7994b9a4e690e35fce3dd7ab90ab1282f976d1e4da4ffcd0cbb3b9e79add2abdfaed5b48f7af5262538ddab9f9e0aa8db51b74b97c56898b3f9d07ae973dd2b652584c974bda7a79f857f3612f2f7a5c8dca325d2e29be387e76beb88c360768a3a87359c4b4f1729ee20b07184ff7a95ec8ea90b8d8fc71559a2873cd13c026258f5c273057397d2e87926b596eb9581e7b217dae72c285940f2e2b75ae6361932def5c3613e6a23bc7b6e495eb450e648dac708901c6f19b72ca350373cd055c16c245f33911e6aac375999d6e961471030d95620db9dd11b35243abcc717275b9e2be01562815b50a2e477e5e12c7759c32974deae7f93759a812f18a82bb19b5da9ccd80d0857ea194e932c79332ce517c4b008d739c49a0e65125d77b5eccb56e1a5daefd1e29c05a96102e57691b934ce34e27f805c95e44e09b4ef4236d2174c2b544e4b2112eca8d6fe8548ccb3dcea4163117d12a4687da4ad15c34bb5c0743d2fb5e9e174fb040e0b94329a347519759ada13646879c2e38c7467ab316bf9d329f32d73c21f6b4323c1b71b99c0c54d34541f7f940ee59b366452f026a02ea96058a39a12232307844173c142cd17e3e54fb45ce7a64b288c4355be43ab88ef68bf3b101622de2ea1d875714054c6a614e2cb759034cfcf9f95a9a751944738b5c2786b11f6e83631bca0f98cb655c03dd4c7d57d1f93a64d6908e434bfb19a69dc5e23197117051150f679231aedefeee5260aa4cb876ea39b8bdab7e0ee65aefc7799e3697609302ac169ca52b38aa8f4a9b6b99aea347bfded52b1666c845731c75d30a06e8d63ae945511e78213851953eac9d5a5cba8e8fcc8027833a85b9267f04aee5e29b2860ddbc8681fa179f146052e3bb5317d732cdc64fcfd1656656d49210e27a1b72316b6ece9ceb62505941dbf64b417a63f94516a9a4241297c02e52a854ba322d414f76c71d53148f5522719df5222e1e5c4a17b058c658d7324c10bd7d1696deb7992b72994b88c58a9a1895ba2f6b878ea4dda9df5fea4c70d445c485379a09d76cc475070f8f0c32ccb599725dc7b4a186e1095e7c13db2f72b9c095558926bbace9f3457fffddef7fffd1471ffdfac25b6fdb7be16683e125a63f58da5ea26d2e777082e95a6e30fcefad77edbdf0c25b3ffae877bffcfd7fffcfa24ddded90891d459676c5b86a2197ed12f4cd36e6ba4cb91e649c66a4491b0e30ee348b54866ffa4657d59cfeff5b6eb8faed9fdcf2f685481fdef2e1bf1a0c86cf98a83615bebc4f01163cf0d7f8c0bdb7c1033ffff4a2b219e4750049b5b0dfb0222eb3937930f3f02a35235de2c701c62d6191aa624d6cff2f00c553df02771d0918ecae170c401f30eea45cce4f7f080ffc2d39f0a15b4e83efdc1025fbb32a25970fbff2589a79807d41e2daeec30186b9c8a42dd805ae0e71ed311c922eef2d03027326c3727f2a1e78e782ab6f551ef8d9b8b4fd2a8e71f1902bf49ac8f5854cb9d6402e5794617e24e000f3ce66e593b6a14dcb0d509b01d75398ebc3876ef9670352d49dcc5c8b0c50577febad934fcdc57ef8d02dc7f0818b2e7289d53bc6351772093f6a2b455c6b32f643b87f6a0689ea57302196632e32e118f8dc20eaadbb6e037182eefa433f79ca80b47c9536d6e84b06aced77814403f5ad2fa203f1919b3018abe4e27fc5c0fbdc95b91f5e0cf306d3c638a393e8ed3fc20563db75c42069f35db7ddf9c5bd7bf7def2c53ba1b9b07668731d911f78e7877bf73e040efc4f83a4e79e456949c96599849501983a73ae15709d7127d3c5ceb5c10043eda16cc2b1e586e506ac934b0018d09db7ed3188baf78836d7da7bef96c0a403ef5c2959ebb97b07a52900e1b29afc739d8c733c6266981599d72f26323aba8aa96797a077530897d4490c3e7bf40603d28f7ff38d6f7ce3377bae968cb5d69c5c4f4bfce040a0ff120f3cba6f90a47919174887a7c1b464d41d6132af5f3733cc900b4e5a06667b019755c5051571fd651162235afef41583e6545afb3446235af4526427389d069770966903ce3fc430993788782b1f65da3785f1ff17801555acec8a063ed8f4d9e78bb05e7a221231eb926b20f28bcf5ec247fde22f1fac8a6b938b955caddf64a26694c668f4bdbb61b16182ec7a2b0c309e15359aa837427299d353041f962869cab86c26fb641495fadd206d64ac4b1906de7b26ca9e861d870573a53fcafe644ac379a2f595a6ba535106de0686b994c2b692411d87730e7b16bd9c42b8f4bf5a5905d3cb9486f3447ca5c97b36ea445599a1b1b15c831c31fa067b42300111ae8dfa1d0dfcb36faa2fe961f5f29556fe44340add10741b14b4023962d00d1ed620ae132421ead51b6520f7a503a44e877fe32dfef5ecac2072c31534b8be821cd11d0133061be49a4d12a24e55154d91ab8a70fd95b7844eb3bd6ee4865fa1c1b50739a21be4dc37eb0057cb599210756a27e01adc920e903acdff326c697d932d712337dc731e2547749b5de0249b6080094bd24e88f74f958b25fa5d6d1d8fde0277d37143dc7234a39b872a58e854da09b1a8689979f06846e970ce6f6b4373d1199b49b391f9de92c14f369678408f369795a4b3feba8a8a58f3e015537a775ed2ea5bbd61e028603186ec2929f4be43880bb6889e4936cd845886b9324a87ceda16fc76fb10e97969ccdac6f16808ecc16cfca63413228bb90633491bddfcf08b688f3e4e61c6261b4a311154244f79e4897e996eae8879ed14b8c8106080e1f953f0468e32641445a5840511d7d9169329fc2a491c7ab9ee875c19a48d09c0f526e0a255bc482fe5344f472fb25b4cded369268efb45ae0cd24617e0da04677be3ca1e8aca340075d5017942acd2cbc59ab700aea9a78d7ae6b773d1c35f58bc28eacba034a3cdd0ab61937f924d2f717cbda8a86a2a5cc5a47a31f573a1976c5c45cb0dc9666508756b2778bb8d6763d259968b5ce62d473f1193c1ce92b4d3c66ac639f9261c81451966cf7934057bdf12d111f9d9e9248ee2fb01973c1b14157dbd2ccd4d8a93590dabd7a8d9098a326d2eec18a7c3a6d6d9fa2bb30b500129cc07b4534f9b42b818660086974b3638a4d64a35e33bf84dde222cd11d6091d2a2845cc1f1481ae115046506ed1fa87291b1afd9358b61deae0b012e9d9579f704e6fa64edda7d8383836b111794b3348df0ea628082c5d3b3c635da061e34b7f80097be007333ed98cbb5efe815575cb16530c67599338daadc0db9da46d10b63dfa4cbf520e810e1bcbf2df83a2fe772a5e00208389e0681c53e11bbe0819dbd9775e90faf3960181a6c63e011aa491485691b1c4ab581fdeadbc00f7556e68864af374a64d58c05c6681ad23f0388c2d85ed5e6cc1e57179c4afe5df82bab37c09c7f1a281e2a9d0552fb8c58b33800bf6c4a23bcfa19781386e8da8b6cc1807fa3c7597fabed66f506d868d72af3aadd8c3306b6aca8681c78942ba2bf7a0dc05d2d9ccaa319c097e972ddcc9087c5bf62da59dd152c02e982000cceda66448a8ac09bc0a369358751f2666610ce00a86a0f0327fe58cd4c179b668bb82a5a044c066b74248de690b821167ee040bb30ef2659ae9e2532eb52f04f387fec4c6f4f49dc10bf18013795d4032c28ae0e9acf099d014614fd8f7167343223fd09f66aa6ad54040b520c2f321dc560912803e494677a9d7295cd4873ef458a7273046181ae97ba6e0260a2c0dcad972553df6c68941465e6bad899d790e72834f7965817df0c824de68833b280359df48620a4f65cca40612fa4af6b575c7cf18aeb6e4255ba5bde4ad1d746d904e02bf0d4d7c1736b0ed8280e14e7e8cff4993c48098290caa11e9497b0e9fad246b0b474c8956e966fd2d338511d28f6a63da677bbd376c38154d35dfa653a4a1c317b6ed80cb2462ea5cc1cd369732d2359e3e6dc725dbb8699a092115dc9dc70227759834c80bb9396e651572cac4abb9c4011b1b92c753a9b8764470cb9b47bde6e75c5ca41aa6fd72ecda35dd15224d91faf350300b017c3dadd1c7483cf1177303aae39d968cfa5b9c824a729498fe8720f353b4561c271a62dea64ba82a3f06da355801829bacaaddd1b36e5d45c64a7d99ed683b0d16057574467d620e6ca97c1e8f7522e622ed042e5c5601369192ccd9d7290cc40f397124b2841911d656f3d79bb2be7297135e93968efbc9c60b49b275d2a6beb37d28a2ed2c8efc93910e912fb6311a6af9972bbddc1a1641bca6579f542d24d45750d12dd512710a8c7fdce687b998eb9467f9ebc90ec572674a58ee9a3925d8b4b74248df4ffa081fef8ad5dd700677ad928a4aa9aa1276944f3175c24d9d74bb9a38ad6be6b423178ca3f988bcab48660e51f8c4a759e817361bb6a9e9677b065530623a9654e7ddeb14819ab0f8ab9637aa67de104056bd1ebec41bacf14ac4a1cd4c80a57feb9eaeb99aeccc0ca626f345c7a0e7135cde966fa7b330073a1e6a99fe9a7c045b3ff6507c035cd216053c142f7e65ce3627b810fad2660e9634d205f3e87b87e701de0020ad6334dbd5301ab1233c6048bb8fee91ce1faf30f9b185c7afa99fa765cc7d2c56aef67bae7b088ebf10de706d88f0d86e55db1771298e6def4c0a617e3e3ba70da613e3018de3d27bc708101803d8bb960ec77a31aed4aa3cb18e887851d0bfdb5f61fcf01ae9306a81d5ba4714b3383136395ae202b59c60e34a3b8c4ba17adb6e107f937d706031604c32673e2c4383a5d5768adae67ea57b3040be964deb9fe48fef498bc72010c30070659ead01a68925155dd20adb521ef5c0b0c31dd4b5ed56ac2f9c395dc07477ba10b0ec4b0ee266b3d93ff64280323ef0c06bb811d7ad9e224be5806ec8a3d16ebd9e506a2c7f28bb5f8a441aebb2118c91fddabb57d71c6e8443f32aaa4b53be42b6d18d9f5409e98569eb9fd496eb3410b8c1d7002b2a086c9ca6675338c73808d690bc2222ae038eec6b1f717e796e9d0ae91abc0891d0506b97021236aef87365bb6519d0683c003fb832cd1a2f8853eaee83379c0299eec3cb332374cef8fddc841a69e868282af1ae2b5632d2b53102490fae63794ce188902aa263955d5d3aa755e2900aae8337240db46c60e65d94e674638207b0fc715407d6c50eb082bd71c34e59de82593df71f83e1c6a23d51983e864019283ebeb3319215be7fb2bb305753bf43d534fcdcc820291eb1e4302ddbd514136d0dc8dfe17b1480c035d738095eb68a2451eedbc0f7335807f775437daa14fee5a991d28474f0dc289717dcf90483bc42023466bee674435ad864d96960f12dd533842b8a06656371a69a31d1a0350a6ea996079c28584f3a1da17cb96c5a1f5b623b1712adef75ce2152a0a6b242ea28e3e3bc89294d016ef22502aaeef1a12eb867d2555a36c722dab2a9b7e6447e2e39f299473a9d0ce645ea5c6409ae813a188ec5c05faefc8020db01d5b40ffb7b1aa588ba9b8ac64ba79eddd060d7dafb0b01aaeefe1a4531355347ab86d67166744d50982aa46b532b98f3524d3ab4c36889bdb92043223016369686b2110f10b957a8cdcb6b129933d000a95115dbf3657c5bb9a603b92ff89f93e602c6d73012d255c6af581a2ddb9724a71d509a8aa35963571f827858528d56b46993616de6a6945175427e6d2d0cc1e40b62b7dac5ddb08955a3d5c8fc855b8d59044f70e26a63afa9c415b0b0a24ae0610058535151d4b13923572dc550fa499d9415fd1a8c1b4b4b3a2c684b966c23058900cecb92309a8b6dc6048a6af162255202efcf5e1868e02b53a406ebc7d713ac602991d2da45eaae11a789e46ce013f75c2af71ead0268b0fb3b5844a3b6960ae6ace541853cd01b5d9aa4102d16db2079ee41c15890cd5d1500dd6c75c76f89d03e8c356432ab2413db6225e883502ddbd91704134f5cd066136a22f7f8c719ebe4496aa2924eac3015d816fec02430aed785acc2057dc6d48a5efc6200a0a1ab9f985711a99197f5da06dd063b295db38bbaa18de37822c45c4a182d9803ffccc905a771fd97294982a452ec45ca89d2f54e97085d21f6b40dba8830beeaeec4affabb846b5b80d153068421c6229b5fc6bef3cf21d434a2da81097440d871173a9c90a881a38a0b1d4db466e7e85919b2f3355c5e142b52c1cf4d518ef338614fa87772e007ae4fb86147ab89008962fe4116a5557dc27657b0f37bf83db962ac4166ff3cc2ca8f090ed81c6c2265406621f51dba1ad9f3f7201d63b5f4b195c444b2b384f4da1961ab037ce8736e8e16e4cc1753b682450dd4007756a2e3b1ffd06f9fc705217bc80e8919f1bb4f5a8e21c9d359c037b84b6cd3a70323072ef274ff122d07cae0151690a4d023ac9e724b9e33b3fbd40216d933d56a8e422695e43234b1bb9061c64db92d6e727b90e9c3cb9f9f76950918408b988beab1d5971fac3020dac0ae5292ae6733d85c955edb1178886b83d69e9ea8935ec2956f4831ba5bc8e470d09f47d14594afde32b57272bc884cbc169bba1d41f54c7d2c7a12449c3186b5052b9809debc35c448f1954bafadf080e09b1c75ed99c00eb61959771dc480a2e93472ab53549524727a6c78e78558a15411e22b952a3efd8fcca4b044716600bb69edca08d4562d8539182cb66028548f430cdae6325e7901a41b0d3b7a6f2007bc1480d50b52c292ac136fcf9e402c34fd55cdf073fdabc35ee26fc0c59a8cf666abce64067e74cec338e545cfeea82a58747f07840d360b77335a24dc194a6d1967cc53ed4497534d4f4343a1c1cd7d3d979a05a09b661eb66980dd5e6c21eba551164f7e034d059cd41394c3d7d0d1d206dd4a4e0e22a60301c10f7ba0f68984b8cae11d89b555b52260ebb9113e5013704602976cf0bc40bff437cd690b05190112cac11d0ec10f5803593ca53b014fc0a3003caf5231ac9b01a87163ce0408323c592560eca66f380dbdb51b014df590246ecf16d05d64f97c7ec4982ec63b2ec359d268e9b3fdf64b781d50b53a8c78173d735628425eca6ae42b905de00a0c333532dda78556323704780d7032af4e142650bfcee2b31975cfe8ec25ccb89a33eb67583bacda8ee002ede58015dbd31155763e3526cd10a148f09dbdf33b0d1223d7a87bd50877afc9cb102efc314605f7d145d31b117d1b7e5f912199560115fb41f80d79192abef80f8153289675bc2fd4903f642ac86f93ad6bd0ab8cccc82fbae89afcff748fe48b088e4bb95771f7e8c744fc4170f98384f8f9ef33748a74619af913ba39535964a0e55dda7635d2bb471677c707ffc3038cf02a98d529765c52eb2e2d104b9bc1374f27ace6f22c71ed048f5bbf0fc89fc223182b6faeab80e14906a3d23f65117a825ebe8ff5d751cbef90e3000d0632f7291870b808ceacc7115ec78e5d798d4bfc976c5a4882e22f111d22389fa0d125f8957edece36c857a446c8a5347a3d4fdfe3f4e70815b1c97ea2c0000000049454e44ae426082, 'uploadImage/default.png', '', '2017-05-11 09:59:24', NULL, 'Active', 1, 0),
(75, 'Jeevan', 'Jeevan', 'Babu', 'Venkataraman', 'jeevanbma@gmail.com', NULL, '978-862-0377', NULL, 'Jeevan', '867f79a1cd0d442635581ab0ac286a9c', 1, 'Not Interested', 0, NULL, 'uploadImage/default.png', '', '2017-08-17 06:38:29', NULL, 'In Active', 1, 0),
(49, 'Jenny', 'Jenny', 'M', 'M', '1233@gmail.com', NULL, '343-434-3423', NULL, 'Jenny', '827ccb0eea8a706c4c34a16891f84e7b', 4, 'Student', 25, NULL, 'uploadImage/Jenny2017_03_13_05_28_26.jpg', '', '2018-01-23 07:26:45', NULL, 'In Active', 0, 0),
(36, 'jimmy', 'Manish', 'Kumar', 'Dudeja', 'jimahuja@gmail.com', 'jimahuja@gmail.com', '999999999', '900000000', 'test', 'c07711a6109c9d6f208f29a1a7e1cbb9', 4, 'student', 0, NULL, 'uploadImage/default.png', '', '2018-01-23 07:20:11', NULL, 'In Active', 0, 1),
(26, 'john', 'john', 'kennedy', 'j', 'john@gmail.com', 'john@gmail.com', '242-325-3456', '(+91) 248 735 6897', 'john', '6e0b7076126a29d5dfcbd54835387b7b', 1, 'Not interested', 98, NULL, 'uploadImage/default.png', '', '2018-01-23 07:24:57', NULL, 'In Active', 1, 0),
(28, 'johnc', 'john', 'n', 'john', 'j695432@gmail.com', '', '180-031-3505', '(+91) 042 832 2584', 'john', '6e0b7076126a29d5dfcbd54835387b7b', 1, 'Not interested', 24, NULL, 'uploadImage/default.png', '', '2018-01-23 07:23:16', NULL, 'In Active', 1, 0),
(27, 'johnm', 'John', '', 'Mason', 'senthilbma@gmail.com', 'senthilbma@gmail.com', '111-111-1111', '(+11) 111 111 1111', 'John the Great', '3d2172418ce305c7d16d4b05597c6a59', 1, 'Not interested', 284, NULL, 'uploadImage/default.png', '', '2017-05-11 09:59:24', NULL, 'Active', 1, 0),
(16, 'karthi', 'Karthi', 'J', 'Jeskar', 'karthi@gmail.com', '', '123-456-7890', '(+91) 995 223 3321', 'Karthijeskar', '81dc9bdb52d04dc20036dbd8313ed055', 1, 'Not interested', 5, NULL, 'uploadImage/karthi2017_03_13_10_38_19.jpg', '', '2018-01-23 07:22:48', NULL, 'In Active', 0, 0),
(103, 'karthik', 'karthik', 'sri', 'sai', 'kdhan99@gmail.com', NULL, '1111111111', NULL, 'karthik', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'Student', 0, NULL, 'uploadImage/default.png', '', '2017-12-19 10:42:00', NULL, 'In Active', 1, 0),
(49, 'Kavin', 'Kavin', 'S', 'A', 'kavin@gmail.com', NULL, '546456546', NULL, 'Kavin', '827ccb0eea8a706c4c34a16891f84e7b', 2, 'teacher', 0, NULL, 'uploadImage/Kavin2017_03_01_07_23_53.jpg', '', '2018-01-23 07:26:45', NULL, 'In Active', 0, 0),
(45, 'Ksa', 'Ksa', 'S', 'Ahu', 'Ksahuja188@gmail.com', NULL, '9168827288', NULL, NULL, '2cd1c6ecec2c6d908b3ed66d4ea7b902', 2, 'Teacher', 0, NULL, 'uploadImage/Ksa2017_03_02_06_14_21.jpg', '', '2018-01-23 07:25:30', NULL, 'In Active', 0, 0),
(110, 'Kyle', 'Kyle', 'A', 'Rock', 'kylearock2@gmail.com', NULL, '916-704-4373', NULL, 'Kyle', '09d076b4ae3318a8c079fa5a47d638a3', 1, 'Not Interested', 0, NULL, 'uploadImage/default.png', '', '2018-01-24 16:21:00', NULL, 'In Active', 1, 0),
(47, 'manish', 'Manish', 'Kumar', 'Dudeja', '87manishkumar@gmail.com', NULL, '9876543210', NULL, 'manish', 'e10adc3949ba59abbe56e057f20f883e', 3, 'teacher', 0, NULL, 'uploadImage/manish2017_06_30_15_29_54.jpg', '', '2018-01-23 07:20:50', NULL, 'In Active', 0, 0),
(22, 'michael', 'jackson', 'k', 'n', 'michael@gmail.com', 'michael@gmail.com', '784-368-2458', '(+78) 253 587 2489', 'michael', '0acf4539a14b3aa27deeb4cbdf6e989f', 1, 'Not interested', 36, NULL, 'uploadImage/default.png', '', '2018-01-23 07:24:24', NULL, 'In Active', 1, 0),
(40, 'mkdudeja', 'Manish', 'Kumar', 'Dudeja', 'test@test.com', NULL, '9876543210', 'Hello World!!!', 'Hello World!!!', '99c2cec3c74b20d5341f242cab09e5de', 4, 'Student', 0, NULL, 'uploadImage/default.png', '', '2018-01-23 07:20:35', NULL, 'In Active', 0, 1),
(33, 'mkdudeja1', 'Manish', '', 'Kumar', 'test1@test.com', '', '', '900000000', 'test', 'e10adc3949ba59abbe56e057f20f883e', 4, 'student', 0, NULL, 'uploadImage/default.png', '', '2018-01-23 07:21:37', NULL, 'In Active', 1, 0),
(34, 'mkdudeja2', 'Manish', NULL, 'Kumar', 'test2@test.com', NULL, NULL, '900000000', 'test', 'e10adc3949ba59abbe56e057f20f883e', 4, 'student', 0, NULL, 'uploadImage/default.png', '', '2018-01-23 07:21:50', NULL, 'In Active', 1, 0);
INSERT INTO `user_master` (`id`, `user_id`, `f_name`, `m_name`, `l_name`, `email_1`, `email_2`, `telephone`, `mobile_num`, `screen_name`, `auth_string`, `tutor_id`, `tutor_type`, `school_id`, `image`, `imagepath`, `avatar`, `created_on`, `updated_on`, `status`, `isFirstLogin`, `isForgotPassword`) VALUES
(1, 'naga_test', 'Admin', NULL, 'Admin', 'sundari@gmail.com', 'sundari@gmail.com', '123', '123123', 'admin', '202cb962ac59075b964b07152d234b70', 1, 'Not interested', 1, 0xffd8ffe000104a46494600010100000100010000ffdb00430006040506050406060506070706080a100a0a09090a140e0f0c1017141818171416161a1d251f1a1b231c1616202c20232627292a29191f2d302d283025282928ffdb0043010707070a080a130a0a13281a161a2828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828ffc00011080249041003012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00fa7b34e538a68a70ab311e29e2a306941eb48687d14d069437ad21dc5a2937519a02e3a8a4cf1499a07714d1494b4091c1fc41f195be95751e8a215796e90096695774702b12a188efcf38af08f13e9eda75b3fda6e5e1b98c9b3bbb79ca92ac1811e5e3aa1041fc2bd4be35f856e6e6ec6b70a34d69e52c33a464868f1bb0e7d5412b9f4ac2f8d9e1b9049a7ebbe52ee96dd12e30778f31703af7ca9ebfecd26ae992f6bb3c8e481a39441b9b3c3828065876603f887d3debd67c39f0ba4d434488dd5e436d2a2ee49ecd83a04cee05f230e4f5c03d300d797583b5e4ccd0c52c96f6a87cc7f2164f2e0270cc4107a6783dabb4d5bc41a96876a9e0ed0f51f3ed96617516a11a1819e32bbf681d08ce482339e00a54d5816c713e29468358b8b8bab8b89be40f2cb3eddcc5b183851d40da0f5ef583088e481ae7630560ed827a73eb5b3af9fedfbef399628c90a644822288a7a900678c1e3dead586950dc3c76d6062c3385f2ee80201638196ec33dea25257d3726c645b5d5bf9a5a005e18650be7b8c3c8a0e5548ce3a0fd6aeeafac98da136528997ecde5c89d57709081bbfe03c8c1fe21ef56f57d223b5d43ecc61264838786d581f2e35691a65c80413ce437231d71d2aa5dc56f0c734514924a1511e3694fcc63dd8e7b70a074e2a9ab6a2657f0a4e65bd6139f942fca58f41d303d0569c1aac0f3b45a8655c7eee43827775e463be6b12f231657779031f2a44c9193f7948cff5ab970971a2ea302ea7650bddc616528f86495194329628dc9c375073d3d28f67ccee244be34b7d4ac35592c3544d970888c4a9e8c5410dd3bae323d47b735b4eb717d079b751c4d240a1772204dc3b6718c9031db3cd7b3d9f8174ef885a669faadb35d698e07953234e6ef9538da7277230f7ed8ae4edbc01ac47e17bad52d635bab7fde47342808923746c640ee38edd39f4ab9c5256897cad6c71ff00d990194663ce49030c41cfa03fa8aee7e146b5a7681ae4fa7f881049a76a76e2d04ce00118c9e1c7a1ce09ed8e78e8ef14781b52d07c3f1ea572d048f1344b708b92363ae431fa37cb9079c56a782fc00be22d334dd5f59ba67d36699e1781176b26772ab07eff003ed1c8fad6708c93d4a5069dcddf8bfa959d9789e0be36ab35de98914884c60c6d96f943e393c863edb7deb1ae2e2d9fc0fa85e882e21bf951cc8a1984263965668cae31bf25db05ba00dc6715dbeade0889b4c9e196e8dede496915942a40cb3c6e5a391b3c671f7bd79f5ae53c49259e9de178a09de61a5db49b45a593284f381f336b6f19280b700107073ce0e37b7607b33ca74196c593fe26eea91f9e91878d889e0ea448abd19460861d7a631c577ba9082f174eb6d02f6e0596aca2691255f3312440a7c9bbe63c27193e9eb5e57ae6997b61ae7d8e58278ee64946dde0ee60c7e538f7cd6f7c35b5bfd4efbc9d2501d4ed985d40a6709c2e321548c139da783d01e0d4b8b51b129df43b7b5d2edfc3bab3586bcff69b0bb88c71ddc2bf32b103076e0e43295fc1bd56a8f8bbc2d369d73a9d9369e64bc8e3fb5a5ca018922123ef6393c921949ea4118a7f8ff549a3f11693e6d9c91f9091cd00298745621fcbe7aec7dc07d315d65d6a7a8eb1e11d62cafae12f664815d2f63888923859832bb01f7e260a3247208208e3353657b0f73caf48d1c5f5cdc5a5bea304860dbe46de0ce0bec1b077c0c123ae2be9ef8776b79a7e80ba7ea30ec9ed18c5bc1c8914743f96073db15f3b787b4796e3c4b35cb0fecf538d42de7870520cca02923aecdc707182319e80d7d1de19f11ff695e5d69ba8db9b2d62d79920272aebda443fc4a7f4a125ba2a0ac74545145068701f14f56b7d12d96482d209b55b91b124917798d07719e9edf8d7936b505d6ab6966da4dcc0d791a1678a7996318ead80f80c01f4e33f5adaf895e221abea92b470988425add493962aadc9f4ce73f95728d2c30ed696e5a2950889c03f7772f0777653c11ee07719ac273f7acf6309331b4bbdbad5f572b71641278d72b2c5f2888af39cfa7f915a1717dfd851148a2f35e58312ee3c82e481c1ed8ce7df1e95661d485bc71e9f6f692c81f779cd16376d6e14839ea0a83e845653dfbbac51ea96e8191d48917952fd3763f878c640e0d637b91e85eb72b2886e02b19df6b2796c39078ebd8fb1ad06babfd2b54925b0bdb98b7aa328598f538dc4e0f3deb29ee9a794fef0b3280ca4f718ce3f2fe46ac437b12da0b878d66917e43131c2e0a91b81ea0f23f102b3839434037b40f1878aec6496fa3ba9ef2de27549d2725d39e9d7919c1e95ef5e1fd546b7a625dc6ad0124a49130f9e3707054d7867803c5ba5595a5de9fac5879905d1c493819655c0e197a9008c8c1ef5ee9a2476535a25d584e2782645c3a37caf81807eb8e39e78aeda4ef1bdcd69bec5fc46a793b9bdf934ecb1e8bb7dcd395428c28007b52d686a33667efb13edd053d405180001ed485828c9200f534cf3777fab52defd0502243d2be44d4d2d6eef6fae6fa764b9df712b998168e5656255411ce48c8e7b81eb5f5b15720977c0f45ff1af90afe6864d51e19148b49e4922c1f98a939c67d78cd293b233991c7a8dc4ba01b487ec6f676c87684b4579252240c41939230bb8eee3851eb58f269b24b144c91486e27569970a0af95f747b83b830fa115d07813c1d77a96a9a9c115cac105940cf7058e01383b179e393dfd8d7a16a3a55e7863e1ce97ab69ef6ef771228925c0628b2fde4fa7dd1c74201f5a146eae425dcf03b1b29246bab764612ca8d8007264041031eb5ad657173a208e68d23173e5a3847527e5620871cf3e983ebed5db43069361a7c1a9d93ceb7f1aa5c3c713ed6d8ce0178c918dcac0a10720839c547e16b1b6d5f50d027923966d463bf46b9121de92db864008ff773823be49fa2e5ea0606afaa1bfb65d424d8d753192310c8a59238f61cf96a78503764f3c1c1c543a2e91e6dc5a4126e8aebed296d26490cbbd86c703b639fc87ad74baf595ce81e2db8d33fb323934fb7b89e4b6b59f2bbd1d4fc9bc741b39c7fb35d3fc35b07820bdbcd76c27d474cd42de02b73678b8689930577053b811c76ed5566c71473be2c1e30d060b51a85ecb3796b2c6a64e5e35478f772792a5b61e73900763cdef869369da82de68de23bc5d39e7259d5fe58ee5dc30dc41e15c061d300f18ae93e2af8974cd7e1b916132bcd616eea914f6b2ee95a55c30e83685001c9ef8f4a8350bff0878a348b8bff00ec1d6ee6e3ecd1c53dcc100fdd3a2f52738ce08cfae05696635b9cb7823c429e0e97c5504b7118b88ece4b6b762df7e54936ae3d7ef13f4069bf0fbc63178534cbc934db5177af5e3f961e40764318e9eec49c9c74e073dabcfb52b4f2ae1d53cc10924a798304ae4e33ef8c57b87ecdde1cb0b982fb54ba8567b8b795521dc3210e324e3d7f952bd9591bdbab377c3fe0ad6fc5e8ba878f6fee3ecee018ec63fdd8201c82c074ebc77ae8b55f04693a4787f5e9748b38e29a4b73243b47cd14891b00cadd73cff3f5aef7a0a6b00ca55802a46083dea6ec9696c8f21f0b69f369da269d651b24cc0c96dba71f23c81c930c83fb8ca72a7b1fae0cba55fedbfba1a45edf5b5b79e6192364170f0945198d4b370bdfe5cf4ef8e3d47ec16d993f729890ab32e38caf43f5e07e42bcf5be1ebd96b37571637522c17570d72761c3a39390c3d48c9fa824552910e27a059bdade5b5b5c5b9492351989c76e31c572de36b2115edbdf2459dc3cb62074c7435d46936ad6b6db242a64272cc83018fae3b6699af5a0bdd2e7888cb6372fd456725756348e9a90785eecdce9a037df8ced3f4ed5af5c4784ae8db5f98a438f3be5c1f515db726941dd0de8c3340c9a5000a426a8916909a6e68a62b81349d7a52e2968110f4b823d57fad60ebd6d225a2dd498df05f2ce31d973b7f956eb9c5d47eeadfd292fa017569340c78914afd0d34ecc46078f34087c43a54304a81b649919f465653fcff4af35d1bc209e24f823636685a2bb05f047472b33fde1dfbe0f6af5c1761469d03ffad9c9047a6d524fea07e759de13b43a6787ad2d42ff00cb797f006476fe556b444bd4f9b2e3c526df5ef09ebb0dbc97177656d1d95cc0cacbe6c89be375048e49565e99e5803e95cc78f6c2c74ef12f9f66be7e96e56e6346ca911939f2db1c8230ca7bf15bbf12f4f9fc39f102f92ccb235bdd1bfb6247ca858ab83f40557f2aefbe23e8365e2df87d178b74588279a8b3dd4083a372aff882581fa7d69c9f35c88a49f2f91e47e1e4b8f0b789a46bb8ff00d26c879e14f219930e3eb9c57ac78fbc45168df16f43d774f900b7bcb18659d81e248cb127ff001d03f2ae2be2446f358784fc423efdfe9890ccdeb2c63631fa907f4ac0f17dc968fc3c7ed1e7795a35a0c9fe1077e41fa1e3e98a69f25d02f7fe68fac7e20e909e23f04ea764a03b490992223fbebf3291f88af913527b2b5b6d3e58cbff0068adfef618201876263d81dc1bdf9f6afa8fe0f6b0daefc35b0694b1b9b788dac9bba9da30adf8a956fc6be5cd56d95ae36c8a01891d8eff00624526ada0d36e373a7d66186ea3b69cdbc72cf266049647d91a97528acedd82b306e78f948ef5a9f09355d33c33f12218e74923b69a2fb2333cbb912e3206f18e19490d82791e61edcd6cfc52b0874ad76f2254db6970ab2a051c2961fc89045795ea08171215286300153fc43a5669a8bb31b4dec7baf88b4db28ed3c5da4ea3690bcb0caada54b2109b5ae18ba856ea30e18903a818e6bc8f50d266d1a6b387c5ba6dda58dc2098089d52708c08ca38cfae4a64024007b576be05f8816773e26f0cdc78891dee2d51ac9aea4650bf37114b8ce5987ceacc785df9e33cf43f153c3e35ed5f42b532b24cd1ddd8db127e433210f1abfb32023f115a35ccf9a3ba1276bc5e870be37fb4e9d6ba2ea90c765a95808b30eb1676e55e58c61045729f74100e33d73c607358fe02d386bde268eca1758c5e6e40506022939723fbb84dd8ae7de7bcb08efb4c9ef2e2dfca7dc6cd9728f20f91b773f290a4f3839c60f6adcf08efd2dedf58d16e1e4f2add5eea3c633bf2248c1ed81c67f1ae4abef54bbd0da1751b1d87c43d1160d42e06971c91e9d2baa34233e50da084507b900127dcf1d38cf9ecb4ed33c2b79612dd6f4be8f16174ce3cc8e45e7c991474524923d327b9a935df16df78966d26ca586148adcb32a47fddea41ff006b0393fe35c96a931686597526088c705cf201f4e3ad44aac23276d6e6ca9ca51bed638e9e79e7cc371bbce80e141fe0f51f4e98ab96b7172fa6c8374ab6d2828e11b07dff00cf7abfa9e9775a9cb6d7293c36f1c56e6313143b1f682c0640e49181f88aedbe08e97a66bfae35a6b712c56d6f119a6b43f2f9d22e00181ce30738ef81ef59c5372d08d37661f873c297faeda34ba7a15d32dc1dcecc150123059d890338edd6aaf852c2c6e3c53a6d96b6d22e9e67f2e52870c01cae3247ae3b74aecef74fb8d2fc417f0f876ee4b6b5ba9596d2ca370cf237f1302784d833f39e9d064826b8abfd0b50d1e77b7bd8e77bb894cb216524a8e0e5bd3a8e4fa8ad3d9f2ebb84a775a2b1d7fc4ff85f79e178df51d16696e34576077231df17a6ec751cf045731e15beb1d39ad6f21d46eadb5981d98c9711abc38c1c01804e4f03918e4f22b6b55bff001a6a9e0a138bf9a6d21498a68e2607cbc11c4831919c83e9cd7019fb48756063987f083f7bdeaa6d2774895768f459fc4973e23bbb8b6b4f0de9f2dcea076493dbc4a1e38f080ec0dc03843824ff00157aee963c19a7e9f6f6babf867fb37ca50a5ef74d0558fbc8011fad7cc761acbe8edcf9eac7e512a9c63f2ef5af36bfabc4f0b9d5efdad9f0d88ee58657d89c8fd2942b5be206bb33d17e20f87340bad5ad7fe10dbcb2093c6aa63826dca1f78504f248cee1f974ac89f51bad1b409bc39aec97d6d3893f7292046b69537fcdd5770c60f43cd71fa86a5a75d5ec32d95d5fbdc970a0de15dc9efe62fbfb56b6b2fabeb97cba1cb3b5fdc2a968a35944aabd5b76f279e093c93d7152ea5dbd012ea9963c17ab5bdb066171027db543ba47f34b02a3fca48e003d719cd3fc45e268a7f16dbdee8a93acea5514deb02ece33f3301fc246062b8cb54fb15a18ae6111c170c00b9518c8cf4cfd47e95a515cacb2a3dc469711ed01c483ae06339ea0d3752cad0254399be7649a9788b50d735d6935496dfcd5cc588a211aae0fddf53f89ac2d46310a8754230e51f383f29cd5ed52ce3b76966d38bca8b82e98c320f71dfeb5516592f2c49f2d8a38da180ee3dab92a4e52973c96a74420a31e55b0f8a12110a9c9182314b3465650eb9007cd9f4352e9db65812263b642080d9ced23a66af189e446f3e311c8bc151db1569d9dc23a6e66c977beea2ba461e78c06c7a8e87f118fd6a7d43530fb16ea332c5d8ff127b03e94d5d3cc914d32373091bc63a82700ff009f5a8a681248b69c9f4fad5bd4be55d0865860950b42e1d7df823ea2b2277712795b8988ff00093c03ede95bcb6d950760dc3f8ba565eab0ed1f2050ea73f5aa846497bc89855849f25d5c8ede3cc6dfecf35a16ea38c8acf84b275cf35a16cdf29079c1a66a6f69904371c4aa0ed52a3f1aaac862768db8c1c5470dc3dbe5d07239c66aedd2312aef8cc8a18fd6a36762dabab9143d3a77ab91ae54d57894038c7b9abb18c638aa22c44f1ee461dfb55fb13e640a0f6151a2f229d67fb99a4888ef91f4356b5443dcd2b74c0e6af463e53597777515a41e64cc02fb9ae4f53f1ab8668edc0451c649e4fe555183623d05a3dc3727120fd6a84b3b437b0cb27cac8d823d457984be2dbe2e446eeb9e9b4e47e35a1a06a5ad6ab70b02db4b70879cedcfe554e1626cdec7bcdab6e895bd4573372c61f10478ef211f98cd69f86ae4cda6a2c991227cac0f515cef8c609db5383cab830c65d4b320f9bd38349099a5e289edede18da799109dca013c9e3d3f0ad174179e1ab69d7fb80fe18ace9f46b1b5b54b88e20d36e19964259ce78ea7eb5a5a2ca1fc33220f99941007d0d1d03a9cb5ca654f20e2b1eedd6152d232a81d7356e74d46677dbe5c119f6c9ace6d2e30dba77695c7f78e47e55299af2a5b9f50f863c77a26bef1c36d7260bc6e3ecd70363e7d0763f81aeac720d7cf7a9781ee48d6d2d03adde8f3a047524196dd865187fb6806723a8247502bd7bc057d7d3694d65ad96fed7b16f26e370fbe3f85c1fe20c39cfd7b8aea57ea702474c38a703c533834e1ef4843c502901a09e2818ea05301cd283d6801d453739e94b400b45251f8d0029e783cd7887ed0b75324ba659c1218a18a3332a8e01624a8c0f600fe19af6dcd61f89f4cd22fe189b5afb3a08dd59249582e39e9cf62091f8d1603e56f00c1753f8d34a8a00ed235ca310a7968cb0ddd08e304e47a67b66b0352b3bd3757c215678ed8fef4a0caa0ddb463d06480315eff00e14f02699a3f8e269e4d6accfd9e557b08d2e3f7aa33f32b29e304120f7ef5b171e04f0bf8574dd42faf04ad6f3db3db5c6e3b99f7c819768e8181000fa03eb971b25a8ecac7cefa569b7ba5eaef65ab2340db3700c7af420e470411ce6bd7fc2df092e2f160bdbfb8486296db85504b82dc80c08edd08f7ed591e29bb7b2f0ce9169269d15c3c0a4dadeea1680bbdb9ced5e095181ea7d318ad6f007c4f82dd92dbc51a9ea30cd18197c2490b8e801509b97f027eb59f2c5cae2d36390d27c21afd86ac7557b2630dbc92c7282413831331c8fee953d7deb17c1be14bdf18ebe9670cbe42f91cced1965540a571d475c11f81af73f16fc4cd3ec888f448adb5149635f3242ffbbc30385e3a9c75fae2bce8f89f54d0912d344fb1d844d023a18205ccaa46ec96393bb9e467839aa7522b40d0e1b4df036a7a85cdf1890cad633ac5751a65a58d4920b84eea3691d78e3b735afe20b5b2d0bc4d7da6dd992f2daceda186132fcc19a368dc81fecb0de073c0602ba4f08f8deff45d68de5c247770dc4a5e70c079996c062adc60e141c1e0e077e6bd9aebc1ba2ebb77757d7b025cc1786298232e0abaa3213f8a95e3b119eb551a8a4b41a4ada1c9fc1ad2a2d3fc43ae369ad27f65491c72da15e5258642593764e772fccbf983d2bd5e1863810ac28a8a58b10a31c92493f8926b1bc1fe1e87c33a6cb6168ecd69e73490ab758d5b9299ee036e233eb5bb4a4eeca38bf8b40c5e0cbf992289d5905bca24242847206e38feeb107f3af3ff00809ac25fd8eabe1bb8760c54dc42739c1380e47d0ed61f535edf71045730bc371124b138c323a86561ee0d7cf3ade9d1fc3bf8a3697d6bbe3d2e593cd503a794c4ac8981fddc9207a6284f41aec58bef01ea5a96a97b25aeac0eb3bc4f6ccf7582c10ed689b8c8742a30dd081cd749a4f81353bbd0751d3b5d10dc7f695badc2cf1b29105d47900f1c1dc0af23d08ad1f16f85617d6ed758d1f50874ad6582bdadcb91e5cbf2ed68981e0e410477e5aa878234bf13f827c4f1d9ea6b36a9a4df0c0b8b76764b761ce4aff08edd31d307a8ab6fb13be879e78d7c13afdb58d9ead3c1722e2ced11ae2591830478e411a00476d815bf3350697a14dacea97777e1b0b06a00c77b032164da2560ac3239063909c7aaee1ce057d4b2c31cf0bc5322bc6ea5595864303d41aa9a768da769b2cb25859416ef21258c680673cfe59e7f3f5a9e61a89f275fa5f6a5673ddb4b2dc3699284dee3713033b6d90e7a8de0827d5b9af5df83769737fe1ad2afa1602eb4eb992ca607a4d6ce43953fee96c8fa1f5aed57c0ba75bdfd8ddd8a224b04936f0e095962958b32119e7af19c8f6adcf0f68967a0e9eb65a721481492173d32c4e3f0ce3e80526d7408c2c63a781b48835492ead205b78a6b596d658107c8c1c83c0e83bf038e6b7edf4f8227b699d15eea087c95988f9b6f19e7f0ab4cca8a59c8550324938005422ee164dd1b8917ae54e47e7d2a4ad1139201009ebc0f7ae7bc79aeb787fc37737d10065055149190a58e3711df1d6b84f885f102f6cefee6d3486446b6e0b34792b27b93c7439e98e4735e6dab6bd75a8bc8da85ccaf216dce64ee08c8c63804638c5672a8a3a19caa744375596182f9adad6437770fb98baa657c9c02af83f3024807fdd6fcf92d3f4b786e57ed3bd250a8449202d194ced65623d17a7ff5abac4963114ce30bbd4297e8481f283fcab2e7668e196121bf7c1e2c28ced62a723f2e6b9dd47d0c596f49960b2b590ab178e3223c13f32673c7d0135491a286f14dd8510961b77e42ee07946f453ebdb8ac5fb4de8fb55b4ab1a8b8818139e19b1ea7a138c01dc9c54d3f8726934e55975693ce2aa1d08251483c02d9e7eb8aab456ad826750f3f872dd26feceb29e51770b5bdbb5d4eade5306e36853ce3764163c003ad6788208a289848f20279038078e98fc735cd41bb4d6cdd928500cc68461c8fe3c7f9fe95adf6cb697165e6ec33a6639738c48a718f63ff00d6aa92e6d81b3a6f05b694fac8b1d72193c8b9cc304f1f54663f21fcff000e4f6af70f87fe1bbef0d3dec135c46f65236f5503827fbc3d3a72bf4e6be6d86fecafaca29659521ba2a7cd8f76ddacbd48f6efff00eaae8741f1d78861bb5fb2eb325eb2af9a20b87f355d470ca73dc7b1cd3a768ee542563ea0f341fb80b9ff0067fc7a52012b752107b726b27c2dae8d6f4d8e696d9ed2ec05f36ddfaa1232083dd48e41feb9adbadce85a8c58941c91b9bd4f34fa28a0607a57c99f11fc3d368be23d66dc965b686413c4e0e3687c94c7e3c7d457d675e7df11f408aeef05ebdb89e1bbb4934f9d71c827e68987b871d7dc516be844d753c3bc11ad5c5ff8a2e753d5f712220d35d8855e38bf843cb1e3053d48c11d73d6b535cf1a496b16bf6b77a15b2ea3790840f1c60430427e556403aee0c0eee396f418a9bfe112d66cfc16f7165062f6da36590c4a774f673a07e477da723f035c7d9f87eff54b249659246252dd2db7b920a3cbb001eca73c7635576958cacca177a44c6ca3bd99234b72238f73e78df16f538e78386fc6bd2fe10e83657f247a8ea1a7dc4d05b6d92dfcb94b81b41578f6f7c31de31ce08ed59961e126d52e3c37a7ea5e55bc5716b2da25c431e192e6366f925f52304678241f6af54f85be1ed4bc2d0c76f736fb609f293a86ddb265240907fb2ea07d081eb52a362a2ba9cafc448d35ef17412f992da4505c2c424f288e57c9c3303827fd7b7fc045765f0cf43b5d285c5bc76a2096399c89236208391be26fef0070573fc2c2ba9d73c3761ac5bc8973100ee59b7af077326ccfe58fc8568dada456f24cf1ae1e521a43fde20019fc80aaba2945a22b8d3a0923bdfdd82f749b643ebf2edfe5581e0cf09c3e1d86f6d63890d9dc14731b7cc378182707d405fcabadcd2134ae53479afc69f05dbebde1c9afed2051a95926f564183220eaa7d78e45707fb3a6b62cb5dbcd1e66da9789be307fbe9dbf104fe55f42328652ac3208c115f2bf8bec66f03fc48792d01548675ba833d0a139c7d3a8a2e52d743eaacd0066b33c33ac5bebfa1da6a7681843709b8061c8392083f8835a79a44a168a4cd20e681dc76693d73470290b5017b1c2eaf6bf63d61b69c7cc1d0fa576b697027b68e55fe219ac1f16dbefb64b900e633c91e952785ae4490bc44f4f987d2a12b481bbab9bd9a314b4568489481812403d2a8ea3782da48d09c6fcedf723b545f693e6432a0011c6d71e8474feb458469b305ea45417374b095cf20902b966d65ee352b984640899460fd651fd0573379e3488ebd7963b8cd1470a04684eecc871c64527251dc573d36561e75bb0e8491fa7ff005aa7240eb5e65078dee66974d2d691c365e798cc8f26e724061d00c01d29b6fe2ebfd4bc44b144512d232329fde2c76a0cfb939fc0fa50a49ec17b1e92618964f38a8dca090dfddcf5fcf029d1a2ac4800e147154f5298ff0066cde5baa92b8dcdc003b9fcb358dad78aec6cb722cc19c00dc1e31bf67e87ad589bb1e69f1ef4f824d76ca5b739bcb8b3923950778d4ef19fc57ff1da97e0ec7268fa9eb7e0ad4e4f3ad67885e5b31180c8ea03803dc1538f5dd4699a8dbf8abc4fe24d5eea263636ed1da5b9ce70a81f71fc72c7f1157fc5d736fa76b7e1dd66d4b0bab365b594e301e2e55891d7a87c0f6a1349b77d086eff00239bf1af869ed7e10cb68d969745d4e500f7f2d9cfe9f3a9af054cbbcf172404f97d8020ff008d7d67e329edb52b1f10e8c8c6292f2c5ee550ae199d000dcf4ff9e678f5af98fc151c0fe31d361bc056deecbdbfcdc03e6c6c8a79edb9969cb5654745e87d15fb3ece5fc2b6047dc920685c7a3c121407ea51a3ff00be6bc5bc7369f64f1deb1629c61dd148ed96cff5cd7abfeccd73e6681aa5abe77dade89403d84918047e6a6bcebe362259fc4fd48b640729212bd7e68fb7e54e52ebe82a71bc1a3baf8f70bf936378ea02aa3da4eddb701be33f8f3f9fb578e39fb558ac8fba4d982c1480597be09e32477e6bbaf8b1f11f4ad7f428edb4e69da760893b320037a1055c67b105c5707a7cdbbce99df292b9ddc6064b1fcbafe958d5dcb8ea43afc16765771a58cff6bb0914491b9c7ccac3a30ecc3a11ea2b6afbc73ab0f0cc16b2dc996f6d2fe2beb5bc6e645d88102f4c1fba0927af39ae79ac1d75886c554dc2cb7088a10ecde5f8032471c91fad686a7a2df6877b73a75fee8aee20637553d432e08c8ea08350e7283e6816e1192f7883c70b7ba9341e209c9f3f504f3c92ca4c8303270bd3f2f5eb8a83c21aeb5ac92698fe4c705eb22f9b29c246d9eac7fbbcf5fd2bd274cd0f4bbaf81525c5b42a759b7ba64f3397762189000ec36107f9d78d08c32c88005911880beddc7e149c5dbded4abe9789ed107876c740ba9a5d52717b35bcfe45cd9db29dd246cb90c8ddc1e73d29de39f04449e1687c49a888e09279152d34d83e68ede2393f3b757931d4fe1cd72bf053577b7f1fe946fee49563f660f33160a0a9555fa67007d6bda3c65a3c6daf699a3ea0eeda4cf702489cfcb1c67aba1ff808c0ff007bda9aa71717641ed25d4e1fc45069fe17f0af832dbecd09d51775f4cd8191dc063df0c578f6ae674db39f58d3e0b5d1218575a1712ddc9a8abb218e1031b5d80c9ed8c679600739abdf1ab5eb5d7bc610c1a0b7da2dece1313c910ca1db9276e3b0ee6a7f08bea3a07826e75db3d891dccaf6043f3c1e43afb83b873f952bfbcd74137d0b9f06edad7495bf9eebcbfed5bcbd834e456e59236605d81ee18743dc0a9be335f3d9f8bdb55b04927b79e2304a92a9486620953183c6e1c0e7919c75c62a2d7e4b686ebc29a5bdc5b5bdf5b27db2f6f9ced0acdf36d665e71c15c76c0ae7755d56efc5a416d32492c6dad85969cb0be2312bb0fde13c64fa0e9eb55ccadcaba0ac59f86be33b6d1e6b812caa748ba531dcc13a17c9038181d09e99c107f964f8e354f08df5f5d4da75adf444b6e89a1802ede3a633d339ae62eada416cf3a32acd6bfbb75503122ee3dc75209383e9c5745e1eb2d27c45141652dac5612c51e5eee3948327b953c7a572549a51f7ba1b524ef65d4e660b4babb495a5d3ee36443cc633c2402bea6a4d3e03238b38acd7c866032d36e2589006d53df3d8569f892da3d2a516316b8f75129ca247219369ff0074671597a7c8259530f224a47cc00c330fef28ee47a528bbabc762649c5da47647e166b0f6cb7c20b70a1c472411925a339c64a8c1cf3d89e0d53d0bc0fa84dac5c59a6a10e9f749f2c6f26f8c39248da1bb1f63cd761e0bbdf17db23deb42be22b68c028be780eaa070c101c9e3d4135a1e15f13e8b7375a97f6e69cf15cea370d2833e11003c050ed8e78ef8adad112575b1e69ae695af786e71637ed88232d0aab61e2901018afa91f303cd67dfc6b6a4ab34727ca36c904808f6047723a7ad76bf13aede1d4ecadae16e22b58c89e01332caccbd3ef2939181c679acdf134fa7eab76f3da078de68c36db981a3f9bb751d3e86a5ae838a49dcc0d356e5ee1ee846ed0347b19d57233ef8ab9a65948ad74a216f2197cd42304061d78edc53347d35ad2fae67bfb668536001b79c7fc0581cd4579334335bdcda96bb83240775daca0f0413c67f11f8d67285e162e338c7564290fd9ef2640010c7728ad549d4c6a928e5718f423d0d674314b246d23cb1b3af2142ed2a3d3a9cd3048c48c64f1d0d6b46836ad2dce0af98d3a7ac55d13585c8b4bfb84913cc5c11b338dc87a7e5fd2a1f9413b147f3a82fd0ba473a1fdec7d7e95ada35849a8de436b1615e438c9e83d4d7461e3157e65aa3ccc7e26b4f97d9bd25b5bb9502b303d141aced5a18d007721548c67debbd9f40b196dae06977ed71776e0b3c6cb80c075db5c5eb76de658b9c7cc9f30ade569c1d8e6c24aa60f131f69b4b4f239c81c8f909c8535a509da4107835951121949e770c1fa8ff00eb55b8c95e73d2b86c7d845dd5cd60720f35ab0869acd5dcfcd1f18f6ac386401793c7bd745e18b2935295923476c29036a93594d6ccd61b344311f9f1d3157947cbf2d2c3a26a61989b0ba38efe51a90c1341f2cf149193d9d08fe756b43304c9c52df38b645b927841cd3a20cd8551963d001cd5cd73c3da81f0b5fdd4b1ac11c71ef0263866c7f757d7eb5516ae4b8dcf2bf105f9b9bc324af2151caa118dbef5cc5cde2062b1f4cf5ab1accd24927ef0e33d00c7158920c9e0d765ac62e4cbd0dc82e00e057a27803c497167a8c496e320809b7bd72fe16d1adeeb4cbbb9955a4990808a188c0f5c0eb5abe1c91f45d695e788157c00474c573ceac758f53ae9d09d94fa33dea09ad84ca636cdcca373c68a481ee4f41589e323c2483a000e7e86b4bc09e29d2ad679641146257187320cd7a46a1e16d0bc57a3f9d7b6c4248a5b7292b81ea7158d3a9dc2b52b3b9e4fa86b768da7bc7033dd4db41d90296c1f73d051e16d5a2b3d1ef24bf5316d91be4ce49f6ab7af5f68fa044f61a6bacea8bb004c63f122bcbf5fd6da4de3200feeaf0053955496814b0ce6eef63b6171f6846953e58db95fa5509f040e739ac9f095fbdce931ab75462847b7ff00aab46e6e36c8a81082dfa55c5dd5c8946cec7d7bb54e7201cf5f7a50881f78501f1b738e71e951c6e1d0323065619041c822a40715da79a3853b34ccf34a2a6c03b3466928a402e68cd2519a2c03969ddaa30dcd666abe26d1b48c8d4751b7858705376e61f50324527a00fd735fd37438d5f53ba4877e76a7259b1e8073f8d62e87f10741d5efcd9c33c904ff00c22e17606f60738cd78ff8aee53c49e2dd4ae62bcdd6c59844ea0b06555c280072339fd6bb2b9f0ae81ac69b75abdb5fdb82f12079986d4864523ccdc3ae48c9da4753f4a88c9c9bb0ce9358f893a4dadbdc9d3526d4a581599d615c0500e0b73c900f5c03eb5e19e20d6e5d6ef12f754b892459a75477c636c6072abd875e94c7916066b8b19d6cdd2dc6049275050a48dc8e41249e327e6e9e9950deda5daa459fde344efb61046e97385dd91c6396c8ce4601c76ca6dc897a1716ed7114cd6b1332cbe486946f05ce4e08f7dd8ff80e6af3f8d6fee3498f4bd4dde5b7b756685c7ced8206064f5e3383d7e6ae5eec4b269d756d190a0dd6e6278c60360fd3e63f97b54f15bdba69e50dcb33c236289632a79e55475eff00a66b24ecad715cdcd62f1b56b0b4835679ae6da0dc210ccd8887193b41fe7c802b221d22d21672eedf23028a5cb468a41cf1d48c904738ebc54b6f3dd3592b5a4889240dca6d2dbd483dba7041ef599a95f5cceb2f90e88ac7e40aa4ece3eee46383cf073d69293ee173a0b4d36e2e2df658dbc8f1ca42c6b0c2486206ec2f1c9c738eb54e5b8482f196e08091aefc1e4c2db8673e839cfd0d72092eaab3b08679474651193b571c000f6c67f5ae9f4fb78e5f0bc865b9ff00899c8efe5c92dc90d148aaadb76ae708c3780ec7195e40add524f6635a9dd7c39f18d9e91a9c96fabd95bcba6dd108f23c419e021769078e546707d8e79e6bd0ef7e2ce996e8d1e9d613cbb7023de446aca33d3193db818af9f34c4b79ac670d1ed89a532db4a25632aa7f0ab64ed65daa79c6793535cdfce914371122cb1dba05daa3046d3924fb8efedcd4fb471f7621ccd687d4de1df1ae91ace972ddfda62b6302869e391c6631d8e7b8391cfe1d6acda78bfc3f752ac70eb164646e8a640a4fe75e1da1f8aec8f84962b0b0864bec3cf3acd1fcaaaa42a8c721ce361278fbb5c89bb9b56d6f125c411cd7520c3cc0244accd9cb6d1c039c1f4ce7b568e76b229caccfabf58bf8f4cd2ee6f64059214dd81dfd05783fc4ff0014db789aca1b192c8db5cd9cc76ceafe600bb70cb8c0cf6ce0ff000f19acbd4b5cd774f88e877d792182d5c46f1a49b941dc7e5cf56036f435ccc4d25d487739662ccbb8f671d73f5feb512aad6884e7d8d4d4b5fd524f06496b792adf692cd1c49e69cc962eb8dbee5590919c63f2e7a3d1be2fde69ba0e956420692e91446f3dc64a11b8803ef73c05e78ebedcf070dac52c126e52ac995043636b67a37a73ebc735d47812c74f6d76c65d66ce4b8d3bca658f622f972372b87047272f8ce720edab85472d07195f73d87c33f14342d562b48ef263657b30c14914ec2c18a9dafd08c83fd6bbcdc319c8c7ad7ce1e3587c2baee893cde168e2b2974b8964098da6e91d8e40cf24afdeeff7b15d8fc11f11efb37f0f6b52335f5a80f6a24049784804003dbaf4fba47a5696344cf5bf394ffabcbffbbcfebd293f7adfdd41f99ff3f9d01a461f247b47ab1fe82b1fc612dc5a785756ba825713c56b23a143b7690a7918e7f5a10376573c77e2a78dee26d4f51d25659a0b48098b0b8dd2b82324e481b7ef7e5df35c26957aff00d85e5ef91a3cee6567271ce00acbb891ae2737129662701cbe48248ee7df07fc8a65c5cc89e5088011e0642f6dbfe3935849b91cedb365a65ba47d92849b704109046f5db9c83d3803906a948939fdd4e4ba27cfb88e5571c018e08eb8aaa8d2dcea89187f2118a1eb92ac0fca727a77fcea58efed521d8eab1c904823724603af6feb58f27615cad7f7922dc4d66ce21b590b42cf8ce4371ce7a76356b49d2aee7805c4f75309b01b3e710eb229e08c707e556eb59ff688e6ba4d810f9815b6b0ced746ee3b8207e55d7380bab40b6cf88e6b7caf1fc68dbbfa9aa95d2b21239ebb95edf73c98991d866551b761cf391e87dba54d25c1595c307651f3b85e77290338fa75a66a5e4dd5a09157cbf301276f40ddc1f6ac0bfb79eda5b371e64d6ec9b95973953dc649f534a11e80b52d6bcf6f35acd15ccaa9776ef846ff009eb1b0c823fcfa5624d64eb6e42b9215db0339e78fe7815b3a5588ba2ab1b3fdf55718dac013d467838fad492c6979279573985941c16232b8e79e993c7e26b58cb9744558778226b113a0d4d77c2c5a29c919608ea55997dc039fafd6bd0f45f09e992f88e5b1d0eeed2e258636bab3956407ed041ff56483c6e4603db06bcacdacf16d36e8b960785cfcdce7f31d2ba5d2b541fd9908d3e29ad750b65733491c8433027f871cae067eb9a24d5eef604cfa03c016da9e9d7fe449be7d12e6d967b29243992dcf19889f407b74f4ef5e86a722be66f0e788fc4de14b80639e7bbb4882cb25bcf928f1bf4719fbb9c8e47193debe8ed2af5350d3ad6f220ca93a070ac304646707deb58c949686b165d5a5a404504d334d843d691e359176b8c8c8383ec7229db80ef4df306481ce3d280d06456d1c4a0228002edff80e7a5640f0b6971ef36f690c4c5485da83087706040edf3283f5adb0d91c51cd02d0c5b7f0cd8c1ab4f7f1a61a7759de3fe113018f317d091907d6b728a4cd03d85a6e68cd2502b8b4a05251405c5e2bc67f68cd1fcdb0d3b568d46e89cc1237b1e47ea0fe75ec95cdfc47d2bfb5fc19aa5b28dd2088c89fef2f23f95009d9dcc0f80f7cb75e048edc1f9ad6678c8f62770ffd0abd1315e0bfb3deabf67d66fb4d7384b98c3a83d997fc413f957bc160050872d18ea42c39a8cb8e72714cf3114125874cd3b19f3126e26802a2fb4c61b69383923f2a943024807914c4477700b8b69226e8cb8ae3747b9363a8796f9055f69fa576f9af3df1b5ddb695a88b892545497008cff174c544bb9a45ad8ef5ee00385f98fe82b3078874e6d5ce9697d036a1b777900e481eff008738af11f117c48be99e282d26786085833b5be32474c9241cf2473c75ae4e09d06b4973f6d9da59d3cd6920970c0907396ebd01079ef49d58a21fa9effe3cd4b4b874e29a8dda2de4644b0242c3cf561d0aae79fc78ae5a1f19ea57508834ed302391bbcdba6c0c8ebb507241f722aaf866eb4a86cf779491c841f325c6493df2deb93d7b552f136a715ade674c6495e118740dd7232083edc5129bb5d06871b6f7973aa5fdc1b9b89e533069d9132899dcdc951d47cddfd6b63c3b0297d4ef2280f971c8db55470bb5700fbf320ac1f0f452e9fa8cf0dd9d922a18e55742c40c8247078e95d8783668ec342966660b972e793fc3b9ba7e118fc6b952e7d190b439d96fe55b59518b02b32c8aa7f8477c7e351e83af4b6daa0bada8f1db335c3ab3e0cac148000ee0027f335a3e3b58225b631155f2a2f2e4c1032c39271d4924b7e18af3c92e4b65831e3e50a3a8ae753951972a1b3d0f59f19ea57496b399c7971bb093692ab960464f1d0824e0e7a526b1a84935b4bf3c85da48ec3e618db2652476e79e5831af3f6be26d268428db205eb9e083d473f5fce961d4af2f2e2cad55e599ccc0a463259dc9efea793571ad295d3ea4357669d9788e6b3d3069ba7400978c46ebf7bcc93ccdccf81c93d140ec057a0f86bc0faeeb122eabafa2c6be504b6b62fb40c2ed5271d000338e724e4f4c1d6b7f0ce8de10f099b8bb8e34d52458ccd2ee0cc0ee048049c0191cf6a83c67f17f4fb5b716fa029bd9d460cb9db1ae38e0f53fcabae349a579b2f9629dba9575bf086b3a8d826bf36ab651cb66f2345b4328dbb82302f9fbac17049cf1c9cd78ff0089eda3d1e7f0d4c6e14dd5bc4c1a28befc6524678c938c725c7e0b5d6de5d788352d2ecec358d5a2d3f4e58e38d2ca13f3caac71968d727b9277915cdfc42f222d574c64b5994acaac5ee80c3a83d36631b783dce455dd296855ae9dcddf03788bc436baef88bfe113b07c6a12f9ec1d013047b99958b1f95787ea78f4ae37e23cb7bfdbd349ab5fdbdedfbaa995e0984a15871b4b0e3200e838aedec343b6b1b8b3b7bbbb96f25ba8b17315aa1caba921632abd785cf38f53507c4ff09496de13d2f52fb2c76b681700470f97f33a823249dee783c9007a0a6dc9ad4a828ad8e2bc0be1797c4b7561684a5b43732496be7b31399554b818ec48c003a5769e05f05c3a8e95e2981fcc3a9d8156442dc6d190dc7ae47e9587e058b53b982e2df4480cf761e1d4a045270924601cf4f4254f4eb5e85f0935617bf18b5d0c7ca8b528647f2d7d72adb79f62d4e0a2fd41c99c2789619e3d26c4baec922224471c3056c1fd0f3edcd773e3cb71e26f09e93e2fb5818cad0886f8fa48bf29e3ea0f35b7f10bc1d1c3a75efd9e3e2d72e33ce62249239f4dc2a87c0bd52278f59f0a6a63cc82743710a9e8c3eeb8ff00d00fe269a56bc589f47f23cffc0be225f0cf8961bbb8f31b4c95825d46bd76f4dc3be47b75031e95ce7c4bb3b5d27c637a9a54a9258c8c25b792339564619183dc60e3ea0d6878e74c97c35e23bad3ae558c25898dbd54f4c5729ae094d825bca59c4437dbb6738527257e99391e993593972fbac354c9fed502d9c1716d1b2cab9129dd9dc73d40ede98af52d1f5cd47e27a691e1bbabc8ade4b58a595ee89dcf31030bc71838e09e7ad787d9def971988eef2a43975ec7fcf357745b8963b890413b472c6372ed24161dc823fce2a2ee377d0a5ae87a37f6ac56d7fac5bc5616d68f0d88d3fca4fe16dc03ba91d720753f99efd06b979ab0f0c687a55c5a41a5d8dba99834f200f3151b8b63b64f4ff7abcb2eb500d7293f0b2001250bc065fef0f5f7ad5d464d5b58d512ca579eeefe455547918b79684673ec318a8f6b75a14a367a8fd7a5b7d56fc9827b99f6af9d7b2cca0179724951ea071566c2fae6fa36d1de62963044cd144000439e792393c6eebea6a94fa749a4daeb2b2c80a868d15db8ddcfcdfcaa9f876295f516d52e0b2a264a76058f07f0009acf9acee68b5562c45672da2225f850668b76d439e0e703d33c0351c167f657b5beff00479955b6ca92442531f3d4a1ea31cd4fab6a11b431431a95dadbc367bf031f92e3f0ab4fa55c5cc326a09751011c912b167dac9bd4e0e7d32a56a9c799684c65666aeb1147696f1cba87876ca4b794652fac372273eaa0f1f9d77ba57813c09e27b0f3742ba9a19828fb931dd1b7a956e6bcaf47b8bbd4a75b1bad43519ac88e6d6de758b70f4036e0fd2ba1d560f0bdb68ef3e8d6fabdbdda653e7ba89989c7478f39dbc7502a70eb9538cac695a777ccb637eff48d53c1986bbbb3f6639f2af2d9b0508e7763b11d4af423247715b7e1ef154d6f1347e20d2e3bbb395c23dc5ba2b286200cba1e3e6eb9ef5e750f8fe54d224b5bfd0f4b991d762cad6a108c8c672bdff2acef09ea467f3b4c376ca1930a4311951cec61df1dab76eda1cf1a916fdd3bdf8809e1985efe659ade1596dd16deda1e0990312d95fe1ede95c859f89a6b8b49acb47658ece4728a92aef78c11d1324819ea0738aafa969c93ac96ea21fb503958de4f284a7ea4706b0b4cd1e4b3b8749dcc6d2648b67e4a91d791d69a845bb9cf5ab544aeb4fccbcab776b24d1dc79ea4b1c238238fa1e94b1962183676375527357669ee62b482def9649a02b9864237e07fb2dd31ed9aca99da252669a38549e39c93f4ad614e3285a48f2ab56a94eb39465a76dff02d32a452a90c320f7ef4cb88e7daae8988a41b95db81efc75aa22e5a47cdac249181e74bc7ff005cd52f10daead1dbab5cc932c6c0ba2ed280fae07f8d6918f26eee4723ab776e45f7fe1d0d98e1f2817964cf1ce78503e95b3e1bd4534fbf8af00f3917208538dc0823afe35c67866e1b51d3ee6cae1cb305c024e78adfd22c7ec56096e64326dee462b751525ea79959cf0f3d65ef45e9fe64c754bbb499ee6ce6585165114a14e5d4367f4c54be50951948e0ae299756a2e6c258d70188ce71dea5d225f3ac237e338c1fa8aa51b686552a29c6328e96fcce22ee16b792589865a36c81f4ff00eb55fd0f4eb8d5eebecf6caa588c966380a3d4d5af105b08efd650a5bcd1c8f7aec3c3f15a78734a6989492f1d70cde99e80579d28da4d1f6f82afeda8c66ba9b961a0691e1d859b31cf3b00be64cdb9bf01d056ae9baf461c842b88f8c0e067d2bc8bc41e2196eae1a42f86c741d854361e205b1832efb89cf04f7ee69a89d2d9f415a6a8f710ed2dbe5c64ede3fc8acdd68c3796acba9caf1c51306ca8e40e98cfa578d69be3a9a3bd730bb056c2f1e82bd16d75cfb6e92eb736e64475c364763532561c35674f616f0d9c2069b6b1c51b0ff5edf33b7d33497164d72920f28c8cea54bc87775f6e95e636f7f269fa8986c6fe546183e533120ae78e0ff4aebec7c6e62052fad9a0007fac4cb863fcc571f3eba9d3cb6d8f9f3c5fa65c69bae5e59dca1592272b8c76cf07a7a573b2281ef5f477c4cf0c59f89b459358d1f64b7d6c9993cb3b8c8bdc103a11ea6bc10e992c9c853f4af4a9d4e78dce69d377d0ddf07de49648935a9db2af5cf423deb6f5ad623bb92291eda38997192a3393eb599a369d7314491c76f33b1e06d8c9fe55d7c1e0d8a2896ebc45379512f22dd0fcefec4f6ae29c3df6cf5a33e5a4a3d4afe11b67d42f8cc108b25c1999be55c67919fe95dd78d3e22de6a76e34bd39d6d74e8804db171b801deb8bd5356f3956decd56dac621858a31818f7f5ae7eeef76290bc715374b62552e77cd22cea9a96c52b19c93dcd6668fa6ddebfa8adbdb2ee6279623803d699a669f73ac5fa5bdb2e59cf27b28f535e81e1fb21a0f89ad2d2370782aedfde38cd108f3135ab2a6acb73a2b5f0b5a685a0e22c34e0ee791bf88d62dc2c49ba4908087b9af44bb8d2e2d248dc6415af34d51e38a631c880aab743cd6eb45a1c4b5d59f5cc6a1542af414fae0355f89fa459c92a5a433deec04ef4c2ab6319c13c91cf5c53347f8a5a4dd315d4a37d3c9e15d897427d32071d7d2bb79e3b5cf30f431417555cb1007a938af0bf16fc4bd53fb5e65d1ef238ecd32b1b468086c1c16f9baf43f8638ae0752f156afa9df0babcbdb8372872ad9f957d801c0fc2b296222b6d4573eb45756195208f514aa73f4af972e7c61adea9a6c705ddfcb2243f2c623c2066247dec75e334d6d7afb45d7e6baf0d5edcc76a65cc6aedc10790aca7a8edc8f4a5ede2c699f5467029319af20d13e33c32ba2eb1a6490c7c0926b76de10f4c953cf5f7fcebd5f4fbcb7bfb38aeace649ade550c9221c8615a45a6b41985f11afe7d33c1ba9dd59b98e75454575eabb982923df04d780787743d57599ae4d8c4cf3c11adc346fc17cb1f5eb907f106be99d5b4cb7d5b4e9acaf537dbca0075fa107f9815e55f12b5387c170c7a77871fcad46e6d921967ddba448d3e55fa139c67d862a2a24f57d04acb56798eb51ae91e21bad3e2cc51c72ca923c801544f99381df820e3db35bfe1eb76d47c31ae335f88879645c41732950ecaa4a956c6490c0707d6bcff00509bccf3ae59a60a2431cb39dccc84f1b8824e411d73eb5b6de25bf4d1534abe86d2f3cc93f7378773b3718c0ea0b740188c800807bd611924db608a1a94f35f5bd8437e1654b6429954547214eeda0f70371eb59993672cb76a8f1b34e8f082a4a8421b0bb941032ab81ee47d6a49ae2499da28c9598389a3c8fc08fd3f4a6dc6977b2148a690416b13ef02360c573d31ea3d292693d4966c2b0fb0f94496910175320c190063f98e5aae6b9a3df691656eb7f6f2235d46ad03e5798f19dac73c95f97df9aced7ee2e358b992e0dc4df6875f24b29038c71c01fc59278f535b9676dadf886eb46896e5ae246b67b45dd7065f2664dc559830f903111f078e48a718292761a5733d34eb9b658d1e074b5b9876c571fc21e324b03ef965fcc5446c15278656692d1633be6c8561275e060e3b77c62bb5f1a18ad7c2fa05a4d7663d456d15bec0c3e6dec374aefe8770181e80e38e9e7e978d73692c4cdbe44e76b752bd3f1ebd6b971129d2972c472b2d0835e682d0897cb28ae791d51bd403d73c9e0d5d636a004f2559beeb3b72c78ea4d470badde9b35b5d805546c7f6c7dd61efc7e9546264b4be104a54a3aa463e6f986405c9cfbd44653a8bcd19bf22e930dbc21f07c8042301cb2819047e44e3f1acd5bc649a5fb2b07625a19941dbc73b245cf4e3f0ea0d3ae3528ec926983072932829d72412187e59aa5e20312ce8fa7c824b57895c3291c0249da7dc1e2baa926d6a08bfa2c9711423c80a921dd1e11b3c30c11cfb122a55864379f67ba8dd5a37dae0632003f32fd473f95668d4e0b692730cacc18ee8de35e413db1c723afe63d29f35f5cddde7da352bab979660256778b2589e99c75c8c1ffebd5b45235af7537bcf38cf746e2e5dc29765e7036b2be7d72181f6aa916b574b7534d6d6b081211b9319058743f5f7ac767861bb8c998b42cc37b88c920679eb8e7f1ab76915bdddd59dadb3cc259c88e412b285dece42ed3e9f77afa9aa5172421c2e2eee269a6689b6bfccc4a9eb9ff11fcebb6f14ebc354b4b1b1d2adc69d676b0feefcd6249c85dff39e4630307db9ae5ee609b4ebc9acf514d924676c910607600b86191c71c371e95774180de5d2d9cb1b5c1c87f2f7edf35320119e80fcc39fafa52e671d0b4eda1856d389a4646de64604ed8ce6394aff001152473c8c8f7c8af4ef86d6d3c3e1abff00126976b3a6b5a52161bb2d0ca31b70383caa060477041c8ae1bc4b268d1ea738d0c5d41fbdd882e080863c0c64766ca039efc838c73af3f8ace95e18d26d3489d6d5a4476bafb25c33898e40624718c80df2e7a83cfaee958a4cf6ef85bf1266f13c9f65d521b75b9627cb6b724ee1d412be9d4647008e71915e93730c7736f2c13a878a4528ea7a104608af8f3c29e2b9b47d5acafad3c85912762de7290a0b2f70b8c039ea3df835ecb07c62b0babdd97f9b2b03105608a6497cdee015c828077e33c633ce145df729c958e6be279d1b45b26f0f69921b9b958916798a0731042c635cf03387c13c9c60e2b8ef09e8125e5a1bcb912c76796f2af03298d244c129203d32bd012327033cd477174ba978a2e91a710c17b759f3e7190a59c10cd93c01903af00545e35179a75fc9a6452a259dd49e74b0c04fd9da55665cae7b0e7e9903b0a13e66dbd918bee41e2691ef757d62796d0c0c88cd2c2254f91176a2a8cf503e51f29276f4f5ae6608da75682324c93ba08bfdec803f5357da4952ed6e2e479a96ec8bb58fe000ce467d320d6ccf63a5587886d350f0e99b53b448d2f9e2ba53be1f988649197d0e3e6f71d7b91b4b512b313c3fa70b9b982482c23bc1711795129b831949f691b738c6e3f7803c30e33904559d2bc3bad6abac4f662536d77668f72f11528d1b280ac31d99bae33839f7af47f87de1ed035896fa382f18596a30b05b12db66b59236465c37aa166da7d31d79af25d5afaead9b504b99e637170eeb2c8cc73210c0904f71b87e94f952576395919f7664b4d4eeb4f82e566b7594c7bc7f105623775ef8ad48a286487cc9a5116e668a22c70370fe13db9c1eb5ce69f6ec662c4919c6dda3d181fe40d69de44d2c2d648ec17ed2d2a961c6e23a7b7a8ac67cade84234a3864b51218f05994950dfc58e48faf1546696dd6616d70f1c7f2e62766c6e53d066b2a66bcfb3496e6466547dde5b0f991b9e99fc6a8892eae5218994c8509d84af383ce3f4a71a771a3a1b9be4d34442685e56241383804766561d08e3f3ad1f0e6ae96fe208b54922f361fb92c78032a46d39edd0f5f5ae42deea611c7692282a858a657dba7d2b6fc337309b8412479457567898e37a06f9973eb8cd128f2a05b9f4ff0087b4bd31b47d02fe678ee55b4d1684052fe729da42e0727183f4adc5f1368b693c160d7b04537dd11b1c631c60fbfb571fe3276f07f852ce2f0dacdf63490b48ca4b3246c721377503730fd05793ea72cd22c724c00b832997631e570abe87bf071ed4ea5554d234b9eed79f11346b42a5bed6f1b3b2f989012a36f539fc73f4ad81e28d0cdb4370dabda2c530dc85a55191f4af9c23b898d8077b895f1c47131f973b4e4e3d76822a34866bd80ff67ab036ea6e255032426546e1ea06e3907b5671aedf40e667d5504b1cf124b04ab246e032b210411ea0d388c8e79f7c57cb767e23bbd1ee49d36ee6882851d7e5cfb03d8e08c57ad68bf16b4db86822d56d66b42ea33329f323cf7ce39033ed5a42aa90d4fb9e8d9707e6200ec7fc69c9212486201fd0d426749e18e7b6712a300e8c8410c0fa1f714fcabae76fd2b62ae4f93dff004a6eec9c2f5fe55545d6cf91f3ba9d0cbbb713c1ebd7ad160b9636fa924fd71414e0ed241fad3164dc48181ef49e692088fe7ff68741484026dbc49907e952a387195e9ef55d8b807cb5c91d4934c8a460c72705b9c11dfd29d868b609c648a47c3a329e548c1a8fcdda30ea463b8e68df93f28e0f7348573e688c3783be26b1fba96d7793ef1b1ebff7c9afa19efd080de7288d8641eb5e3ff1ef4afb3eb163ab220db3a796e47f797a7e87f4aedfe1b25a6bbe0eb3966691e545f265f9f1f32f1dbdb07f1a49d9b45cb54997ef7c451acaf6f1ca0391f21c75f7e7a8fe55c74be3786e268c23b2b2bb477119072abc86c7b8ea3d4103b575fabfc3fd1ef955f7dd5bcd19dc92a4c72a7f1af31f16f83355b6377369c57524f204734d10db2120f0597b9c771e82a67292d51934ce9b52f16f9096b36ece64c3fa10c84707ea99fc6bb08f5d8db5195600d3e1b242741f2e792781d07bd7cf32eab35c5b3c5792399b72908bc05209ce7be793f9d753a17896e23bb001f2d1d238cb905820036ee2a3eb5cd1c6479b95929b3d83c43aac5a6d8bdcea374005191044d8de73820720b77e38af9fbc71e219b5bbd9a423cb8e1726de3030bb3fda1d9bf5ede95a3e2ebf926ba8edee59ccaaeb2a5c4ff3606036d2b8c14e49c5616b9a8c6c8236805b6e01a5894673d407427aa9eddf9c7606aead4e64d2072390b8906ff95c88dc724751ea2b5bc3d633ea2d7061963b75081cf3d41380a3db9e73d2b9fba67795988fbc738c719aee2f346d46cb4bb792dc931f96d8291e1881f313c1e7bd7347408aea76465b14f035c4d6e9e5cb1439746720afcc3271eb8cd62de8b6377a84f0a792ae8a634da46d0547014d63ea33ea1970ad6e6210f9133290a5d76e012bebcf5e7a0a668d76d71a149f6856df6f0a42e7bb004e0f3df0d8fc2b672d0d37367c5c247d1a4bc4dd0ea1f6b103ca24c3b21504f0381c927f1ac1d16fae1ae56288968d3965c8e517e6209f4c0abd797e24bab689594ac32c9236f0a50aec1d863b2fe75cac578f62254da44928656ded80108c9fd09ace4f9992d753675cd693538436e2d2c6cd9c81939f7ef9fe95cc5bce04c4ed040eb443711c69279a36b3e0a056cb0f418f4a65c288955959493ce0562e3add90db1cd2b2c8d8fba7915e83f0c743b98ca788944263824263cbf29b701891dbef7f2af3d32a80aaca0023b57a3f85f59b8d1b4e5d3b542cba7dd40e633b40c6fc13186f42013f5aba4e2a45246b7c46d520bcb3754649d1ef0419320c9442c300ff000e4ae7f9d79d6b3a85bdd5dfd934c82dace150ee32814800bb0cb924b1c103b67038a8bc57733471476d3ec5b8b699d660a700be4f38fa77f7ae5e2592e6f5122cb3b1007535aca6e4ec3d4e97c317b7373ab45676b6d14ae6433e44637e4210003d8648fc6bd66ffe1b5c5f69d6175e2598acd2de45e7c517f0a1f91547a01b87e249ef58567e1c4f877e29f0e5f4f32cfe715fb5360154cf0c07b0ce7f0af66f893acc3a6f87a42655597292282704ed6078fc8d74528a8ad4d1ab2d4e5ef6c6d3454d3b52b38ed22863be54521c2aca244d8cccfd4e09cd50f15786b51f157800dd5e936d05959892d2dd5b7b4acabcc8c7b0233b47a75eb81d89d3fedb05d6a33c4c0c681ac6d9b81185c36e23fbcccbf80c56be9d7297ba340320473447e4f553ff00d6ad9dad6125a9e07f07b508749d43c35705523597cdb294af1b8990a8c81d4e5d39f6a76a9e5785be3d5a496636432dca718ed282a47ebfa571be209a5f0d5d6a7a4a8225b1d445cc0e3ea320ff00df319fceae7c47f108d73c5da5eb9656d716f04890b46d2ae0b303d47a807150a4ba1293d533e91f114f0c72db4b78d1f912131cbe61c0d84107f5db5f3b5a6ae9a278d0ea1a6159d2c6ee54501b0248f2ca467d08e87e95e916be0abad7592efc49aadcea0cc7708f3b6200f60a2b8af1ef853ec1e309a2d323f2e06b137690aaf0c1301d47be016a994ddf434947dd1ff11b4bf1078ca38355bad32decc8c43046926e79031caee3d01e78af2ab6b593ce96c2f43a4c990a1860823a822bdbfc03e226d67c332f873ed3e4ea36ed19b59db9fdd0604375e4a1c67d88f7ac9f897e1f5d6f456f16e9e3cabe8dbc8d42de307e5914e0b8efe9f5054fae6651b8d34d1f3fea7692595cb21c819f94d6b244b13e9fa9598c4321d8e3fb920fbca7ea0e47b1f6a8f5489e78599836f8fa9a3c3d3048a7b4b8f9ad2eb119ff00a6727f038fa1c8fa1a4be1b327a9bdaa5a882f60f281579572a08efdc73df07a55cf0b6aaba0cef724486e726270fcee8cf7fa8217f0ac69a4bab8b16f3a5cde5a386427a9c77cf7e95d7be956dacb588d24cd7973711c41768db99187cea47d4819c8e86b9e31ec5f318de2ad524d4f4c53147b544dff007d6145538b519ee7c3b024ccb10890a20e981b8f27deba2974b3a6e89ac5a6a6b9beb79c100107071b4018edc573fa769571accc90ed60176931c7c963e94a7a348a57b366c68f6897fab58b5e431456ff006af203953b148214b1ec4f3bb1efce2b43c636569a2dc341233ddc21a5b30d1c980c41f91ce38383dbeb53cfe17bcd3a2b8bdbd9d230594adb6ec9e720fb6460fe55817d77ff0012e8f4e58462195a447f4c9cf1f8935a4a4a3a114d36aef420b196d74c67fb7595cb60011c96ec17cb6ec464e3f0ad3d474fd4ae20377716c649255132b0994ee53c641071f5e6a1d1afd228a22db279532248986432fa1ff1ad6bdb5b0d36e21d6343b8cdb483f7b664e4c79eaa41ec7b73915cd2e5534bb9bc539d36df4febe671171737ba7b98af222f0371f3f55fc7b8abd6966f05c25dc4638c7de5657c823ebdea5d7964b7ba8d1809ec2ebe685c63701dd73d322a3b5b796dd97ca65fb106c113465963dc71f30ea3ea2babde76bbba38231509be58d9bd7c8e9a7bfbb369b2fe0df0e728fb7eefb7d2967865b8485e1cc8c08284f27d8d747a7e811dbd85c466e2e268674c27927ed11038cee1c6f51ef8c7158fa5ea53e91fb8bfd2db6c0e627bb88931ba9ecdfdd27b11df14dae45ab3569ce4afa14e0bcbed34dc24d681e024f9b014f909fa763ee2b4f41d374cbadd3d92405e5c97f3d8c8f0e7aa807b7be7f0a9355d652eefa3bdb5983b4a9b25381f3b29c6587bae33ef9a7d969561ad3cc9a7c2d63771a8732444ec7cf50476e9daada9a49c5dd1cb46a5255254de92473be45b596b9b267023c322be72a08391f9d6eeb3a0ea7af5bc31c76ae8a14112cc4280a47a75fcea4d3f51b7d22491753d2924bc0e552452020e71c8fe1f5e2abebde20bbd491a395c476c47faa8f85ffebd7441a9ea8e6ab2586a6e353e4723268da5785eed235d605d6ab24811e185728aa7d4f63d3bd6a0e38e79af3ff12c7241771cd10c7d3d41aeface55bad3adee17f8d01aeba7a6878b9b5aa461888f5562cda4723bb08f070327b002a75b59dec16f6188c968dd26c80a7e83393f95547546464907c8c306ac584375771c761a6dbcb2247f763405b19ee4f6a27cd7f230c2fd5dd16a777377b24665fc4f75e5944df2230200f41d6b99d5b5791ae4c5bb08a726bda342f015d2ca93ea770b0e391145f337e27a0fd6bc27c4fa73d96b9770cb91e54ad115ee704ff4ae5a9cb295e27d2e4d4ab50a0e3555b5d0cbbeb9deccca49159c6e1d982f273c53af67450e89194e7a673468d097bc89e7388b70cfbfe145ac7a8ddcec341d071651ddee52d9dc54f615e85a46ab1359bc71b472120ae33deb89d5ae5a4d0dd6dc18e34206071b8561f856e4f992426575392c8c3a835cd3d753a6942e779a9c12cd6cb106315c29c1976e72bed54e279f4f8b6b5e34c58f498eefcbd2ba2d477ea5e1859a23fe908bf395e3a57226da38977dedca27a02707f5ae3aab53aa1aa3a6f0b0b8d575286c2d83a3ce76111b101c1eb9af623e13f0e784ec4f936f690bc6b991f03713dc93d6b8ff00865e17b2d0d7fe125f134ed656650fd9e12e44f3e7be07207b719f6ae7fe2a78edb5c22cb4c856cb4b8b8489782dfed311fcabbb0e9508b94b7673bbd5972c7634754f192dc997ec20456abc06eed5e6faf6b725e4c46e240f4acdbbd488852188fc807e7ef54a39001b89e6b0ab373d59dd4a9c625d927db1fcdf9d45a669f75acdf476b65134b339f9547a7ad49a3e9979ae6a296b610b4d3b7451dbdc9ec2be8ff879f0eedf42d2fcc8a46935665fde9206dfa2d44284a6ae82a578d3d0e3b49f0b2693e1656b190457acdfbfb82a0b7d07a5723a95b8b2f1259dc493cb3cbbd72f237af1d3a57aecb6cd11d4aca6565c65c035e35e30b9823be81bce1bd4fdd1c9e0d149b8fbace6a91e6f78f528ee81894e4735c378a6202e9d87009cd5cb5d4b7411ed19240a87523f6b8f715f98510a979587ececae48f711dbdfaacb223bb068a35c855662ab803d88fe7550ea121b7445b27755c964c8e179ee719c301f506b3100912d0cd6ca62b2f96441c92d8fe2cfae3f2fa5585b5baba586e2385d95df6b13c2938185cf419da7bfafa5559f43c5f41638af1ed1d921568d216b89ca00de4a6e030793c65b1df15455ee67ca246a89b36b13d5b9c0e71c761f9f4a9efb4cb9b1be92dae0f973ae728edd769c15383d411f8f6a974e8eeb508b557b5b733126368c5ba9936052cc720738c2f27d4d5a4d896a74f20f0dc9a6c97ba5dc5dda5e467ce6b6ba024f30965044647a0f5f4a93c41aef85a09aee1d320b8d474c9a22a88ffbb7b69c8187463ced38c9523a8ae56d62492e6258524315e31649539114bdd1bd33e87d3eb59d2d899999e0648db7849537ae55b241c7b1edf955dfad8bd4e8fc37af6916babc13ea2977736cf118e6411aa920af5ea413903afd7ad7bb7c2d9348fb2ccbe19d40cfa79259ed25e2481f3d71d811d7b7191debe74b4f0f5e3d9dd5da47b12cf2ecf37cabb7a01ee491b71ea474ab3a6eb434ad422bed14cf6d2a852a7cccb23f56008fbc840276b7a9aa84b93a6809b5b9f606703ad7ca7e3cd546a1e2bd53517f30c267c26173c0cec1edc015eb9a67c61d1e6d123b9ba827377c2b24201463c8c862781c1e0f23deb86f16f88b4d93c397be161a29b0613a397f3b79f4de0e01c918c1e983f4aa9b8c96e26ae79359ddccaccf7d3b476b7726d752b85db9ddbbd7d87d6acd86a88f64890dac935dc572f2c4021611ab038271cf4247a55bbdbaf3d1556351180a0a638031d40f6ff3deadd9bb451aada47b205055460e38e403ff007cf7f7f4ae5e7e65b12b721d34de7972cd743f7b1905b9048f986391ec0fe7523cd3dc0312b6e08479c02824633f37d085cfd41f7ce9ae83a9aea3aa451d9b05b61b6665f98267236b77c1c1c1e8303d6b43c09e25d1f42b0bb8357b473ab7da10c72c91965c26460e39c8cb0e9ce474eb550a5ad9e83b5f73924b78e2b665fb4991e50f0901401c723fe043e6faf3577c37ac7fc233e22b0be3a79b97099deb33c409ddcb023e8786cf5f6cd62dfc9288e69248cc21a4324586dde5b039c1fccd23dd7db6d8fd9fa603af0498d8f55f4ebc0ff7bdea92717744a767a1bfaa5d19e79751958bdf5c133c92b3679662318e98ff001f6ac5b798199333a4170b210afb0b6d18e770ea7273d3f01daa03aca08e3c062511e3906012cad8dac33d3073546186e3507944287cbdc03cf9e171d0e7d7be28e4eb21ee5a8b57965b89a38a00ad74044aa4e369381df1df3cf6ef5ab7e973e229ee2fb50023bc970856288805d7e5cfdee0f1f4ae5e5b578ee013bd90b65887524283c938c81f9f5aeb2f9a4b7d5433cb2c504f183218c90718e180e995c76edf852b72690ea3d110dc6936377260acab308bcd29136165c12ace739cb700f18041e82b3aeacd2c2df317fa4d8b8dcc41c3467bff00f5c528d4eeadb54b245921b95b57290b22fcd221e704f3818fa1e4d5d174f33dd462130c773861131dfb4819241c0fff00563d2abde5bb24aa9642cadcc8787531a9f677c71f5039fa8a9274613dd2b8e6261edf291907f3cfe54dd42dee4da3dab6115a6fb4f999e40230bc7a024d47a9dd5c79ed72d6c086b6114abbb82d93861f863f334d24c0ad7d60d1cc248c121b93ce7f022a1915636e415efebc7ad748b258c37f1706e604c02c0ab65707d46d6383d7fd9ed9add3e0c92e9e1165b6ea5b9877da071f25e200777964fdd75ef1b7391c1ed571bec528b6716d23286e1780a5c75c81c03fe7d69653784dbbc73a6f800da18606de3a11d7815ad79a79b2bd9522c5c476b1ab3958ca853b46e56cf23e62579fd2b3a0ba01cfee95133b531f757b8f7c73512ba617b0db7896e2260c9e64f8dbb44bb64fbcc43c63d0055c838e587ad5b30dc699243637c91c91c312b26d182e8e37a9fc7767f2a9a6b5884eb284c5bcbd187de8bb638ec3f9577afafc375ad69fa7f8a746b5b6d323db1486d6231c91e10a2924f25416dd8edefdea36922e2ee6378fadf4abc9f4bd42d6ca181ef6d0bceb12951e7abb2b120f4e9d3deb0e011db468eaa11d622f81fc38e9f8e79cfb57bffc57f05c5aee8b6d7ba688e192c96598aaa8c48a50b1e9d49655e7dcf5af9d649849aabda48c3f7b198949e9bbb0fc7a539c5b224f515997edecb2ee2bb81d8a706443f5e33ee7daa78af6092f34f5433c8b6e595e3980f946f27e51d71ce71eb9ac9ca5c69c0c9c5cda9f2ce4fde5e707f0c5745a9e89a968d269b73aac12a4734224532481c142490ca41c6327247bf3d6a6d6424ba98e2167d3754c30def2091430c701b3fe7eb5d4782aee7d1ee23bf465b79a689e178990488f1b1190d9ec703df8fcda7c2cd63a2c3aec37315c5adcced1341821a29013953ea31dc7ad3ae252d3465ddc6d548dd9812aa48f94fd31d6b394a517642d986a70b69ba82269fa94d318d0c425894c2572c4e00eb83bf9fa9ed59d75a742d6e0bab3ce72edbdb3d7238fae0fe955e29c45e2c5f36331c7c32c6fd41d98c8e7a7bfa62b62ee786d751d35e461e4ce5eddbd065bfa1229c9c9b25b398016ce649154183ee824fdd3d707f5aa9a9df0babf56d3925937dbfef11573fc2589c0e72a39f6db5675ed42297ed31dbc404c242a011949006233db06b02d5a69af560645494160a5060f73d7bf1915ac22ad7909125dcaed1465cf99248e5fcd071b8718cf6e083f9d7aafc20d2ad757be92d759b78a07d3835d4f2b8c6f808e51c1e0ae4820f5c1f4af39b0b4b6b9fb45ab5c476d196dd034af801b9057763039c7278e2a4b36bdb04bc84caf1c8e9e43147f9644c8ca923a8e07b1c5689a5b949d8daf1cda7869356be4d0af659819d5ad8aa964652b96193ce437d41cfb562e9c23ba72f6c42ce3aa938cfb8f7aa9141f688a60db84a92718edc647fe827f4ae961f0e5cdae99a66acca122bbdc12543b86558a9c8ec723f235152575a151d773d2e4f89e2efc31269ba8e9514d78f12c51b363cbce3259813c104718f6e95c7cd7a5afa382eb4f370f701840b03ed9497fb920c0c67a75353f87342b2d76fc59c5728b75242cc0bfca8b2e701413f7b239e3d7dab360bcbeb0bc86f2781dd14c6a8222c5b647ba26553d4104230231c918eb59c54a6af2e8533b2b3b2d16caf227d46efccb358996ef0398a701947ca09604fa63a8e0915cb69be227b6b99a4b18e1c46af6f80a4078dd4ab6f19ebc827b67e949677424823f32cccd3c91a3b3cc7a9dc5b27d72a47eb542f6d2ce39e49114e1a42551093b467a63dba67da9a5ada2816a7ab69be00d1354d15b51b1bb7921b8b75f219ff81b3960def918f6e6b1ef22f0f787753be49ee96e2d5d5c476ea3e74247cbcf4eb5c3a6b97d67a6fd82deeda1b719fddab6020ea7e99ae6a6b933c8c031727920f5cffb47b5742a31dda2ac77f0fc46d52c2dbec5a2c8915a29c22950e5723e9c0ce6b0ef3c73e229a6df73abdc469c8e24da3f003f95724da82c0ed1c3fbc93fba9f741f73dff952db48d30492eae5829180210003ed9eff005031ef5aa560d0e9a2f1aebd0126db54bddb93f373827f3adbd2be27f8aad4f17a1e31d56555c01fd2b8e8e5250fd8ade38d78f9e56dec4fd33fd698eb76514901cf72a0633fe7de96a5d9763d9746f8d501511eb16ca48032d13ee19ff749aeeb45f881a46b2eb1d85c34d29ff96483e61d7b74edef5f2c2472c8fb6490003923a66a7899a176921675957952871d39f6fd4d4e81c87d8f67a95bcc5504caae463ca914ab9fc0f352bb1dca1b03ae33c7bff4af993c39f12f5ab1648ef258f50b707ee5d265ff0003d7f5af64f07f8d2cbc4168044fb65c0dd0bb0c824ff093df23a1f6fa51625ab1de2f3c4b9ce38c1a70c6414e1bf43f85501760a8025572c08c03d3903f0fc7d2a40f2ca14c69e5ff00b5dc5488e67e2e698352f05de0503cfb7fdfc60f272bd47e59af36f81fe2492c2eaf74e9ca8170be647bb81bc7603dc7f2af6ab88a1b9b79e0f9a5924528d8edf5cf4fc6be72beb07f0f78aa78186df225e3dd7b7e86a26edaa2e3aa68f638fc513cf833ac624576f959b2affdd553d33eb566caf65b8bc89a08a4b7bad87cc8df8ca919cfd3381eb5cff8874f9c699a63e9ba6446668c4c645f9997e5cf359da25c5f5ec124314af6cca76cccdb9cfa739e46483c0ef5973c93b320e7bc5fa52ea3764da4206acbb8ce53849883ce3dc640e3af35ccdb492da4a6370f15c21c1dc3054fd0f435d9cdae18b526bcbabc862b98171184407730e985ae3bc53ad58dcea4275331ba751e629c125bb9ebc571d5c3ba9ef47717237b193addc4924ec7e6cc6303273b475fc2b1f50bdfb544aaa0aa2f3b0ff01e84afd4019abd71796f212eeac928193e9edec6ab42fa64aaee5642dcfdd3c0233d3f43cd5c28d54acd13ecd99d0a92e464b10c00f43938af423e2133d8ad9b8d90a062801e5430c32fae33ebef5e7e2f6c165202c846393c0c8f6e6b4e0d46daeed4081d77a75cfde20fafd3154a94e3a9a460d6e6d24a2321c3b7cd8c11ea07ebc9fad58d0c4227951cec596328ec5f0b93d091d3ae2b8fb9170637309dcb9ddf2b7e5ef57749bd99e22856449830da9b3a8da46092738f5fad269ad58d2d6c5e9a411ce4b38e72a7073d78aa17d2437f2a3dd02fb4e1b03064c1c92c7b9f7aaf2dc2b7c823da72496c9cfe3edf975a80bb29dc990dd38192077c7bd61152429c93655d4a0b8942b4be4a4a58b14f31779c9ee074e303f0a6db4c1e3c48395e17dc56b68f6625f323861b73bc10cef1493bff00df4a3683f4fc6b27525f24b230024070154741f5ab6fa11cba5d0db69626bf459cb7920fce13ae07a7079aec75fd424ff844869f35bb0b8827f3964381989b254601ebcfe58ae0adae4db79ac8c43ba95047bf07f4ad35d6239ad5229a66677014bb9244600e067a9031e82b48c52b89233eeaf269ed423963f396cb124b13dff4aeb7c2363f655b698c68f39fdeaff7872304f7c0e300f735cbe82b6935ddc4b7eb234610901077e80fe647ad773a1acb94ba27cb4994843d0ed51827d875e7b735152eb443f24753e23bfbdd67c2f736ccb0ca617f3de62099081d541fd4fd2b274abcd73c431dbddc8c2e63b2c07f39c8deca30abc7618e4fab77a8fc47712db585bd858ee6bfbb0b16c8c618b37f09f7c638ec08cf39abbe0a5b8f0deababe8b7e2333c90075c1caf98b82403ee0fe9441ca525cc6f4ed2834fa1e8b7de28f15985d63d274d52c08cf9eefff00b28ae674793c6da9e9b02c1796d656b1314c471fce006208c9f4e7f2aee357f10d9d859348e148f2cbf032719da381db39e7dabce356f18b69535d4704aa6d659c5c4623705d838e76f3823703f9d764a4ec1748e73e22783e5b29e39ada492f0cf01b892694e59f6901bf98351eb621bdf83de1ebe564fb669d2b5aedcf276b703f20a7f1ae96fb5847f174ba65dcfe641059c7692f9639c9f99f6f6f45fc6bcd2399aca3d42c55375b5c1c6d273b483c1cf7e07e38ac3da283f525fbccfa63c17aa5b6a1a35a4d6edba368d36fa9c8cfe5dbf035078c2c40d73c37a9aa83e45d9b7938fe0954afe59c7e75e59f0c35d962d18dac51bcf359b984066c662cee5c9e70003d7d011debd3750d7a3d434f9ad2da0696e461e2546ce5948604700e3200ce3f4add493d4237b6a78df8cf41b8f0af8f636d354ac4f3acb07cdc10c794f71c918ef9c0eb5e89ab6a76b6b7906af2281a06b918b4d417b432e30ae7f0e09f400f61573e22787d3c41a25deaf2c6e924312345b4fce918e5b18ef824fe02aebf86a3d43c2f3d91956486f6104938203e32b22f6eb83f438ed44341ca3ae87cdbe39d226d0b57bcb3600989d90e3f894f2adf88c1acaf0ee9bfda2df62863f3a6ba3e5460b6c024270a73ec706babf16cbf6ad082debe359d15fec3728dcb496f921189efb1b284fa153deb90b39e4b178e784ed4deaeaddc11d0d292b333bf53d03c45676f7fe10b7bc8e011eafa615d3aea1880c175041f72085cfe26b99f016ad3e8fab7daec64db3db82a9b973f2b1f4fcff3abedafbdbf8b1755bb95a64bc8f7385c6c1305da871d3a71f8d64cd6f25bea5f6e8d408a66390a7a5435677e84caa271e54f5ff23add4e28df4f86fdee24bbbfb9b8226523a02781f9ff003f6ad7d19208b58bf9ec9974f8c0477c85630eec80064f0703af3d6b07ed6f6fa1c76a7cb6fb4379f1a63940840247d7fa1f5ab3a5e9ff00da1ab4b2ceede491ba56070428e38fce94928cef2d8cbeb32f64b916affe07f98cf165cc47508e7b4964b8327c88d23124e3ef1e79c75ae53559644914479dc33d6b73ed36cdabdc5b226213218e2791ff00d574dc49fc1ab175b5992f4dda2fee0b148cb291b8767c1ec7b5633929bbf637a5274d59eb7fccb3e1ed2244749e6f342e43ce53aac7b873fafea2badd48e996bad5c410c56fab5844cb21568d599a223e62a71f781f4e2b0749d6a48aeaf2751bad594c2f1f4df174e33d0f191ef4fbf92da0b3827b5590dc7984974cb7988401b3d460e7fc2ae56712e849c64d37a9a16da768faa5bb592bb4762d2978e453868cf62339e08ea3d6a3b8d322d32fd2db4d99f54b47c8dcf0ec6c76c7f787e02b99ba892da626d5a4822e0147762bf5041047e39af44f86d6d34d713c4755bcb39c47be228cb221f5cee5e9d2b6a728c93691cd2f6b092a7292d767fa191ae58eada1db4254ea565a64c3987ccdc8a79e47b739da6b474bd66fb4b8fed31886479231199648c3061d8f1c671c56d78c350f106971b69ba91b0beb7963dc0c916d62338c8c1ea2b86b19542b1b495bca0d83db6faf14a328ded62f1309c573465b7a0979631df5d497105cac33c877124045cf71c718fcaaf69175a8786f5349afe266b7997c9df10dfbc9390463fa5675ee6de4cb6d0c7d380df5f434d8aeb16e2459da320f4ebcf6e3b9e95ac69ad5d3767d8f1de22509a5595d3d135aff00c1feb635f51d4239efae248c2491498c83c1071fceb16f658a35f30bf969df71e87d2a196e2eee5cc858a92c55e411e5863a823d7eb5d8785bc0cfabc09a899e25b6ddccd2bef6fa2af6fd2aa95457ecfa955e8caa2707ef76b74f9ff99e7d3e9571acb8f26331c20e7cc93e51f80ea6bbbf0ff84750b8b386dec207302aedf35c6d5fae7fc2bd2b48f0f69b6112b5bd84b793f5125ce318ce338e82ac5ef8b6c74a85d2e665b9bacf115b0c85f6cf415b7b577f7512f030e44b132b4574ff008273fa47c3cb68b0dab4cd7322ff00047944ff00135bf77a868de1bb6113bc16aa07cb146bf31fa28ae075cf1ceab7cee96a16c613fdce5cff00c08ff4ae4a466964692566791bab31c93f89a3d8ce6ef36734b35c2e1172e121af7feb53b5d67e215c4b2797a540b0c79c79b30dcdf828e07eb5e27f11b5492ebc413f98c3cd621d9867938aecd85559fc2d078a27db233c32c319632ae0e54600041fad69ec16d02b2dcde73aad577bec78f4872debcf4ab766fb1c31ce0577f75f0f2085c62598fd453ed3c062e4f976cf28651b8b900a803b9fff005d5bc254b687b6b1d4afab3321d4a0bab0f26459324632b81cd6658da4906a89241b8b83c22824b7e1debd5f44f86da7dac0926a9a84d29c67642022ff0053fcab7d23d3b4d64b3d16d23b732e3cc9546642b9e858f3cfd6b28e06727ef688e896674a9c7ddd590780f489a3d1e49353530a4990c8df7b9e3f035a963a4e8ba149e6c16a8f75ff003d6501dc7e3eb50cfa9ed6644e2383e50a3fbd5cec97e67be94963b6218e47f11ebebd2bba9e12953d52bb3c9ad8ead5af776441e3ff00114925df965f21100ebebfe4579b5f5e49348df3715b9e350ed731ce0e5586d3cf423ffad583a6d94fa95e436d6c9be695c220c81927a0cd78f8b4fdb347d465ee3f568b45250f21039c2f535b9a1e897dac5c18ece077541ba4703e541ea4f415eb7e1df845a7d93675bd412eee62c192d6ddb6a29f42dd4fe18aded6f534d32da1d174db5b7b5b1639290c6149c11c67bd38e19cb59152c4a5a44b7e04f0edb787f445585419e5c1924c72c7fc2bac875192d5f86c7bd7356fa8111a2b700738ab49309c1c1c935d6a2a2ac8e3776eec9b5bbe9175040fb5e29b8f331ce2bc47c6fa647657f218a3550652776de4e6bdc6d4c72db98e7e6584e573e95e63f18ad2eaeaf2cce9d03c9bc64aa2f7ae5af4b9bdf37a53b6873961237d9202a71c739ad28a3fb48119959377706a7f0e7873ecfa7eed4c98ee3d1e4e17f015b5a1e8d6379782217dbd946e6f2c74af37954257b9d6a4e6ac91e7f777d2cf671dcc17e4dd2b18b620219c1e4ee038c71dfd6b3a29b5a5b24224bb5b6336e8f712b1b38e0e33804807f5f7ad5449e7f21e584042764676e01c01fcb22b56f2e125b0586e5b88f6b46b918ee3803a118ebef5b2adcbad8f0ec91c24ef2cb2cde74de63a90324ee24fb9fc315d1689e2dd4347b58ac22c0b4594c92c219904f900e1ca90c7b77aa17b05adaa24890caee5b77ccf905b3f4e3ffd7502b2dcdd4a678de0867e6166070307039f4c820915d30973ae65b06c757a478a534ed466bed2633a74b24e2658508923503a005fae0e4e0f638ed5eb3e0df10e81e39b93a76bfa269a97773195fb4c6811a57182147756033dfb71efe55e10b2d01f9d5b526b1bc8a68da21c88e501be71b80f9791d7a751ef593aa5cc76fa84b22e7c9799f187de57e6383b81e48e391569b5a87358faf6e34586e21b1b79cf9b15b3abb33f2d232a9085bd4827767d40af1bf12780753d3478665d16dd67bd5496da6888dab295323e0fb3a175fa565fc3bf1c78934dbe5b74fb4eb560a033db8ccae10903721ea0f3d3a7d3ad7d1d0ca93c492282010080c3047e1d8d6a9a921adae7c7d7f6f34520816da6813ed07cb8e6077e016014ff00b59e3eb5bd1f8535cd5bc369ab9125c5ad99f2d4bafce21524654f3bd4723d463a6315f425ff00867489b5382fae14add4571f698f6b60eef972303a82573f89f5ae3be207c4cb5f0bc8747d12ce396f11406de36c50839382a39271ce38eb597b28abb64d925a9cc7843c276be1bd32f353f1bda5afd8e6b5630c7238128209f94038c33020f5f4e95c4787946a3adff6669d1b98afa4f2d4c884ed8f706dc3a659429faf23bd66f8bfc537de23d40deea2fe61f2d0189321546dfe119e3927f3acbb0b8bcb59e1974a9eefcfcfee1e190a946390401c907a0e2b26f6515a05f53b6f8ab0ea5a64f6d03ddb0bebbb5413a405904a50ecc91df18c9cf739af39b3bffb26aed25e49f689981577c8c64f5fa9f7ae9352bc8ef6ce39a5b8bc69264303ee7dcd03120b127a91efdc123ad7257da5acd74de4398e1032bb9bee8eb8e9ce29dd498342c97e977b58f9ab70d108c8006d67ce01249e98fd715d58f0f476f0896e18cd3c8d9739d91ab1e8303a0ce467d71f871f0c7b35489766c54c32e4e7760e739f7c1aeb354d5596eada768a58d0c7e4dcac88429040646071ce43061f5a99a6ec913adb4237d02c6680ce0c893739894e411dce7fa7b558b3d91e9ce91ec896220283db77427d41200fc7deab4977108c1fb4ac2c2dd6785dce3715278fae3b7bd664bab453cb2a3d9c9e4cf1e1d09ff56f9fbca47f0e71c1f6f4acd426f7d4562c5e0292c4c811e12c0ca99cb211ea3be32703be4d4f15cc5ae4377135cc86e22066b70c9e598d5493b3af24001b3d7f234ad682dee1e36ceef2c3e0f52380df97cb59178a219d2555c61c2c8a3ae3d7f9fe55a455f41134b3db4a6ddad4471df796de69236a9623031e9c124fbe2b4eee648e5254e1e231dc463d54ae08fc707f0359f6b6f6b7912a348ab248aca0ff00b6a79fcc1cd75dab4b796f616fa2cc8af0c7224d0dc6374ad132282bc92a73856c11c1c55d9752ada18dad7d964d3ed6482e6360aeaff2f05a339ebeea78c7d3da9b6ad6f3598b88e369218bf737057911e4908ec3390ac7e5cfae7a64572af13c12b2152411c8fc47f85491c459018f76fe723d467fcfe554a925d45a1da7c3ed1a3d57ed2a6e228e686485a382490279eacfb5941241c8527a7ad7ac5a78464f0e8d574dbbd574b1a7b8171a7dc5ccca8d0ce0fca71d41c7523d3dc8af2cf873e188bc47abc96f2497090220763160ba2970bbb047201233ec49ed83eb37ff000abc31e1fb17bfd6351d56e2da3fbc9b80cffdf2b9f7ebdb9ab514b5368bd35384f17788618a3beb2b9b1d31e6bd904b717da65d195642148036b741b8e4e0fad707650d94b03cb71379691af94c5549f9bf8739f5c139ed5d07c425f0a431c96de1ab6bb6984bff001f72dc6f564ef85faf7f6f7ae662d233a7b5c4f1cd0c41fca69c46c622d8c85623a3639a8a9a90ed7d0ba1eeec32238e27902bf0df32ba0f6fa8c83ed5b5aceabad6bfa3584ba8c70e6d7fd1c5cc6b877da0101f9c1f94f070320fb573767e659ddc7e606952352bb473b90f5c7bf7addd1f5d92c6d6e16de14759edfc878e6191919d920f475ff1ac62eda0d2b9d0c3e38f105cf84edfc316692332ab46658b2f2cb1f2427a800641f603f1e2b53d1ae2d7527b39c013c076b143919ec41fc8fe35ee5f027c2f3436e9e2192601665786388c7c95c8f9b3db9047d07bd7a7ae81a72eabfda51da4497661303b85c6f4c8383eb8da2ba2376b52a71499f2f787fc3ba9e89aed94977a7492fce253104dff0071fe7461df8e48e78607a57d21e2cd234193c2af6fac40916996b1fc857831003036fbf6c77e95baf636ef2091a18fcc0e24ddb4677018ce7d71c7d38ac8f1d68d2ebbe18bdb1b6204eea0c79380581c806a92b10de9a1e19afeb56da9c9059419b3d1a265f31dd32cd3150be64a54f1903923a609e6b9ab9d474ebab19d42cf1deba2309d18ec528580ca9c6e1829d7b83d4673d7ea5e13d5fc3de03d5f50bc0f0cd76238a484104aa961cf1df207e66bcbee66f3252235316f2903458e7033bbafb935938bdd99bbdc54bbbab0d3a795c4d2589c2b8f95c29e83860769e4f4f5e2b367be86f24771bd6224b842fbbe7206e3f8919a65d3bde46eb2c88ac428249c671d38159f0ab449b724c7bf271df19ab8abad40b70dc075f2b6ed91b860464631d7eb5b105ac8cc9e4b18e44180e06493ea73f9532d34bf3d05d45fbc88c9e4c806415ce40c9c700f201f51f4ae9359d1b58f0c869f53d36586d2e19beccf31191ea0e0f5c735338be80932bf84348b5d4eeae20d5a48ada48ee239e42edb1648cb624c1ec7041fc4f15db78a60f0bf85fc2e74b7946ad77248f2c171074878da0b11c10405e3d73dab2fe1f7c40b1f0fdf4dfda1a72949994b4e016db818c119e9d4e464fd6bd67c47e1eb5f184106ad0c914d61711471288c06daa77ab36475ff00599f6d95708ab5d97d2c8f99aeefade4bf1796713594be6160b1312139cae09e7ffd55e89f096fadee65b7b7d415c3da0731c8cfe6423cc6c65a13e876fcc0f5c67d6a493e0deae9a52dd23db2dca79a258a63b1576b10086e841033dbad70ba0dc2596ac8b705cc2d98e5dac43052304ae3b8ce40e8718acf58bbbd8168cf57d6fe1b6a169a49bc4be49ee215696451f2b373bbe539ea3923ff00afc73626d6ff00b120beb6b97b6bcd3e6453b82e0a4aaa4332907fe79afae6babd3bc4d2689e1c8adf4d0d3ddef6865f398b463ef61d7be08e8338ebf8f9f78e7c5b25c318b4f2b1a240914ccb950fb4f008f45ce3f0ad21057d0bb5ccfd46fd60b682de24067540b34c1bfd6104fe58040c0f4aa0b725c150480bcb1e99e9c7b74ac486679a4c8230a325f279e71f8fe352dcdcf951963f2a7f74753fe7fa8ad2314b62b4486ea7a898c6d8d899243c63b7bfff005fe954e12d28fb340c79e646079f7e4fe39354a698a305900f3d867e99e4516d2b411f96846f725589e98eff00862b420d055823dde663ecebc945eb21ec09f4a74323197cc90069d86110e46d5cff00e3aa3f33552278d0a4acc182e0a0f53ea6a2fb682ec5896dc7736e39dc7dfdbda91491d1457be4c60c66391ce46f6fbbf80eff005fe552477c9202ce5ae1c6073c28fa0e00ae645d331da4e4e73d3ad3def0edc3c8d81fc31f19fc7fc2a4a48e8508770415c7708b93f9d452c8c0aa289720f5dd8ac16d49c6444bb727fcf3dea33a85ceddbf31cf1e98a43d4d94655cef9430ce769706b42cee248006b5b829c7382723f1ff00f5fe15cbc4f708773c8e4f6f9f1fa9ab76b7c4305080301d0f43f9739a4d35b149f73e89f867f1063bf75b1d60aa6a181b2463b564190037b1f5c7f4af594819cb79d2c9ea429207f5ff0039af8cadafe3763e68208390541f94fafb57affc3df88b7085346d6642e4fcb05c83824f4c38a9b9128db547ba174b54cb1458f6f07a00057877c428a0b8b8b6d4ed519964dd1bc801dacc09ee7be3f957a1cda8adccd04323921a2dd265ba0e07e79af37f88de35b15d35748d3e2f3a562246f939439ce001df3dff003a528dd1306dbd0b5a57c439340d29229d44e15711ef6c630381f4af3ed53c5f797725d4925cb22ce7cc36f01d8ac7fda3e9f5358b7025b92b25e31c0e3cbdc3f5f5fc29d0db02412aa2207396fe9ffd7a49d91b282084cb2234a5fcb77e411cec1cf4cf5278e7f9e6ab32c50664b6449a43d5a4619ab2d246b21772f313cee5c851fe354af7cab8c939231c714d3b956b0f8ae1b933bc039c60738aad33090e22962da7b33b60fe98aa53dbc4c36b36d3e80e2a06cc23f7329da0670c73ff00d7a761731a0012bb7cb89b68c6d46c03f5c8a72a340df32c519ce5b1939f6159d15c3ba92a4af3c9071cfe351b99f761ae015eb86208a0342e5d6d9a4020f2a365077739278ff3f8d6a697a9344b1b5cc71b48a40dd8ea3f9d602f9431e68562391b4e307d71dea39653f686733965278046368ec0628693d18ac777a4be8ba84ecaedb651d88dbc7d6ba683c2fa55cc67ca67048c821b23dabcbb4dbf6cb0995001cabf539e3f1ae8f4cd6aed5e248652a8085cbb606df4fa7bf6ae2af435bc593cb73a4b8d05f4d22560f305feec85587b8c5705e2842ec2e2312302c55a463927d8fbd755a96a5a8592ff00a6c735c86c98de29783c727a74ebfe79ae26fe6374d2c9196861243042d900fd3bf39aca288946c67db08ca162e4953f77a13ef50dc8569dcc6bb431c85eb8a8d7787272410738ab1627cc9d59d77a29c9cd68664fa6c0f3ea36f6841dcf2804018e79e3dbd2bd4ede486282444f2ced06187671b98919edc2ae18927bfe18f3a16a5ee05c8fbcac256d992768ebf4aec34cd4a059e48a712bb0f9155304aaf391c9e3033f527f0a1a02ff00869ada0f1545a95ddd174b18f642385769241c322fa633cfbe7d2aff008e1a54d4ad3534702473f2bee1f3a8fe20a3e6da4773826b88f0dcb19d6ad1a1845c3a48d3b8941f2db076a93ec1b6fb54fe2cd6d1f5c4594b308488a2c642f97cfcdcf4c80bc0ec2938fb9a1bd06a32d4bde30f12acf7521d3ee248edd635803ecdac157b0fae33f8d72facea867b989162b416f06760b5c80064f19f5fc3d2aaf8a6054bc4626430b8caaa9c293df3552c95eeee92082312163b5635e32ddbfc69424e71bf736a94d45d8e96c6f0c9146902937332b17ea59893c027a9e067f1ab9a6f87b56d427fb2e9f6c065007795c286279c0ee7f2e832702a9e9f19b0d42586628e62003c85589f65407a13ea47007be2ba0b6f1aded8ca05e5b490d901b56086d8b493679dbbdb0a14753c1cfa1e30469aea657b17bc19e13d460b98ae2caf34f13ccf341fbc76608f1b329c05ebc03c9e2bbdd374cf116908fba04954f59ecf73965f7ddf313f98ae7fc03319a7bd69aca5b6cde09d3cedb1361954857ddc93e9956f6c57a67dbf65cc68f2343bce7fd6efe3ea4e7f0add455b4123959fc6f6fa26924cc2eae886f2fca51f74e38dc49c0e3b7e95e75ab7c48d627b736d672269d6a090896f92e173c0de7d3a70057a978e3428fc53632c166a62b9041ddff3d5bb29f7ef9ed5e17abd959e9f70d6f672bcdb07ef1997690fd08ade92e879398cea43696863eb7673b411dfcece45fb3a36e6259c0c6589efc8efdc56768308b986e2c2e061e20c01f6e6bd5d7c07717da759a5d5d05b830964891788d793c9ee496f6af397b196d75813c38c0531b8349c5ea4aaae118a968edf96a6468ee2e6d6e34c9d49951b31be7dfa1fa1aea74bb77bab88629be548edd9e6dc3ee8df83fc87e75b90e95a658d958eb704f0c375136eda1f2ec4b7cd91d78e71ed547c417715d6a72be96d28170be4b17e0b02467f956356328c5dfa1db879d29353babb5a7ced7294ee5ee5665c98c5b0451df3b98ff515bd15f9b1b1586d555ee6f236817271b5988c37e0066b98b10e8d247281ba36dbc56ecb6e8d6715d124ccacdb41f4c0ff00ebd6d2a6aa5152ee7891c44a18c953e8bf4b7f914e4d2a16bab95840782d76330271bc0c06cfb9e73f8d59f1427db8dd6640e54e437638f4f6a9ed805d32e0b1fdedc123e8b8aa4ee23b42f2f0028cd67420a5194bd4e9cc2b3854a54fcd37f898ba6969e5d9818500bfb91d052cb712a6a2d6b18230a264753f7083c1fc4e6ad5845b2279586cdebe67155f45b79246b9bd9b21e67da01ecabc0ac146f47ccece7e5c4b77b2d17cf7346fa6b6bfd26d9fadd45088e68c756da719c7d0a9fcfd2a2d32f6ef436592da5324601f2cf465041e07af5a78d3e369959d8c3b9800e07ddcf193ed9ebed4cb78d4f9f6778a0346c411e9ec3e99fd69e1bdd938df52f3272708d551ba5bdb7f55e62cfac2dcbc7792c93342a71248c0968c74f9875dbee3a54b7975676b199a4c3acabf79149dc2a281d3494277868d9b08e403807b37a8acebae74c37ba6a08ed8b1fb4d981b91083cbc7e9f4ae89549455ac99c146952a9253526bb3efe5e7f99b31c89776a878742383ea3b562ded9476d2969a269add870ca70f19cf507a7a75ab9a737fa3edb39d664c6e40460fd2ac0b9ed73114f5ddcae297b6a5563697bafbf4fbce654b1383ace54bde8be9d7eeff23a3f863ad5b68a6ea09664b982f18969b68124648c67a7d322badbbd5341d3e49a4d1a077bd9082d347fba8b3feeff0017e55e546c521904b000f6b272421e57d194f7fa55e867920611ccfbd3f8641fd69c7dd7fbe5f3369e32a4e2de19eafa3dfd179f96e75dabf88f51d41765cdd15847022886c4fc87f5ac292400600e955c36e39ce4628ed5e8c6092d0f97c462ea5595e6f5099b773e9ef50114f94911b9519201e2b4fc25e1ad5f5cb48e7b9856c564e544b9dccbfde0bd71ee715a25d09a546a564dc15cc7c127001249c01d726ba6b289f46d3866199af6e0e1a208777fb2807aff009ed5d33e97a67846c1af1419ef588589a5da581ff647626b29af5225923571f6f2374b370c23c9e40f7f535bd385b567ad85c1ba2f9a7b984d697d3df4504d3442e08dd2c48015857fdb6ee7d80156a7d5ad20b016f6a3312ca914b21007987233d2b2b5abf5b2d3eebecd73e64920da580f5c8c7d7ad625ec457c3569220f985cac8e3d87f4e6b66ceb49ee75f77a934923aab6429db907bd67f9ec86ea50c37ae154ff002fe7eb58d657be74f71b8fcde61ebe956e794610f5dd264f3cf4f5acee6d6b96ae678edacb91908379cff11c5625b4e56d0b39fde484b9fa934ed6e73fd9e589c79ae1471d475359b0cca0348c71b0640cd44a5ad8a8c3a93dda7f68335b37423823b3553f86f1b378ef4e5943011dc6029f606afe8b11326f6cb3b7cd80327afb56cf81fc377a3c766f5ed5d2cd59a51238c0248c6003cf7fd2a1c60d393dceca13a8fdc57b1e9faaa9b5ba69e0250c87258773ef5cc788ccd3345741ff007f1b86040e2baed421692068dc123b5735710bc68c8e0b2fd2b95b3db48d18ff00d22ca39e224a951563489f64c15cd67f86a548fccb12d82d97407f5153dc2b412922811d25fa34512ddc23705fbe07a5731e3786eee74db79b4a772f27f73b0f7ae8b44bf574093728c30735435cb09ed92586d98f9727cd1b0ed586222e54da45d3972bb9e736be1cd4e763fda32aa21fefc9bb35d468f6b1e976c4432069df83b56b4ec3499ded83dfcc9044bfc4e6b43451e1e68e4b86b996458db6e554fcc7dbd6be7ed2674a9d493e6b591f3ddb5ccf64488dbcc77fbaa47ddf7adff0e69d2ea1750c529966b8775091043fbdc9e46474038ab1a4f866fccf04971a55f959986dc5ab90e319c8c0e78c9c574b61e09d71b528a7fecb9cc104a19765bcb0b4ab93c93b72ad8e9ce01c75e73e9aa4e4ef2479518b295ce8514de11d4e778a58af6d2fbcb9ede55da6257e5303823e60c0e735cac37f6c34d5d3754864932c3ec9725c836b96cb803386539c907183922be82bef024daf5fe9ba8ea57ab6dbbca96e630b992e761f9378e06f0acc09c63a71e9e29abf86c486ce192410b9b96b5b96979304aafb4b15fbdb4ab29e9d437a574b5c9b6c2e577d0e363bc5778e1b9f31a046c7c87040279c64707f4fcebd27c3fe04d4b56f09de5d5a2413ab04788ba65a55504e626ebbbef2943ea3d2b1edbc21198ee6c35178ec753b672de7ca0f94c840c06619c9cf4207afe1d2783fc53a9fc3ed2f55b58e38e66b92925b4e1bcc87009566001efc7e552a715ab609257b9dc7c22f0ceb3e13bd927b9b6df6b70be44c0f0616566c3fa95e0f61c3a9f5af60650a33717180dd90ec07fafeb5f3fe95f1075cd76e1916fa74b999b11f92eb1c687b00a783d3b9ce6b47c3be25f15d9eab2593ea104f7650ba4779183e781d551800778eea4f6229c6b425b03773da6ee736b6175359db12d1c6cf9236e4804f3dcfe55f32d9f84b5ed7924d461b19eed6e8be6707712ec48627bf53fcebba5f8afada5c4f25d58d94b6084abc6418c9073f286248ce01fae0d7a6780757d1356d0a33e1c0915b464e6dc0c344492c411ee4939e94ef1a82b5cf26f0bfc32416baac1e2566d3bec33465aed5b6acb0e0ee5dc782bf2a367b7e62a95a687e1eb0d35ee20d4eda57d3ae26bb8664f94dd90884200c0742b19e09fbe71eb5e87f1d63bc9fc256b6d6478b8bd8e1751fc59ced1ff7d62b986f06dbdfc9e2af0a5b6239eccdbde586f392c7cbdadc9e707807b0247a555ada243bbb1e2b36e5263fe019200e801c723f2148b1dc2d9cb32a6e00ec70debfd0e3f9576be18f025e78860bf6b79a38aead4f96d6f229dc5bd0e3a7f10f4cafbd76563f0af5587c27aa452cb0c57b7057285c32e11c10d9c1c71bce41cf23dc5611a72b91cacf1586dac91d0c91bb3e321cf014e7af073e95e87a30d17c45a5ead669a6cfa76aa962d2247681ae209d910853b583043d81edd01ae2752b57d327920be47b7ba8406f2e51b4862b9da4738c8ff23a5779f0066b6b9f10de58cfba2ba954dc5adc44e03c7b4fcd1f39dc84303b4e47cb9c679aba29a7a8e0eeec79af8aec869d7175a68560b03908198970379da4f182191d4f1dc7b9acdb4b69ae22333bc8eee7e6249e7af5fcabaaf88b6f3cbe32d6bce985c6dbb68d595b24aa92140fa0c0fc2babf853e10b7f10dbc51b2174599ccf34538cc2a636da1e320107728208c83c835a4b5d222b5f63cfccb7aeb66e3064b7046e3c9914f63ebffd7a9aeb46d41f4f1aa9092db46fe448e9ced3d4061e84743ed5dc78d3c317fe1cd752cee609b514bcb751626dc60a480850b8c73c0c7fc081af54f873a42eb5e068ad35cb28f618bc860cbb64e18ee471fecb72bdc647008e54216776350ea79ecdf0be79eeb43d4749905ee97776cabbd1562746d876ee5ce0e70bb88ee18e2ba2bbf861aa5cda585bc72421ad9da2f3dcf2d016dcad8fef0dcc08ff006462bd874ed3edf4fb6fb3d944b0db862cb128c2a64e4e07619c9c7bd5a00d5492636cf923c51e10d4346f128b6d5a35884ce0fda154b4655880597819c1278eb5ceb791a6df5c40e1240a0ab15e40607ef29ee3f983f4c7d45f16b46bbd77c3f058d8dac53486e0485e438112aab3120f627007e35f2b5c29859a3c068786dbf9e0feb59b8a449f4a7c15f0ee956fa3c3acdb3a4b7d223c123c726e5dbbf3b48e99e07e15dbf8bf486d77c397da6c73185ae102870338c1079f638c7e35e17fb3f5d4917885e10d208e44e4a3707d03af71e8dd8f1debe8caa8ec533e70b1f839ac282ba808d550bc8044dbb7a82981ec4e5b8f6aeeed7e182d941e20d3a09e49b4cbfb6430099812b3af42dc75cf71d8915ea479a4c734d2480f9fa2f849ab7f63c923b2437b64efb17a860ab952a7b83d3ebdbad797b2c6da83989046a4e0203c2fd3dabed655c8af92fe23e93fd87e38d4ed94623f3bcd8c7fb2df30fcb38fc2a3912d51ad37aea7d4fa0d85be99a35959da8c430c2a8befc75fc7ad5ee2b9ff0003ea8baaf84b4abc0725edd437fbc06d6fd41adb0d9aab1127ab1e4e68a154e0d28534c9b3651d674db6d5f4bbad3ef537dbdc4651c77c1ee3dc75af957c5be119ac3c6379a5daac92ec98b441b9674c6e1f538fccd7d7413d6b1756f0de9fa95fc37d342a2f2128d1cc07cca55b70e7d3b6293d5581c0f93e4f0addfdbe3b28e2134922a3a140486565dc0f4cf4ebf43e955fc4ba55cd95cc3a7ea768b6b7d0a1864e305f072ac4ff001704007b815f613e91626f96f05b462e15022b818c00723f5cfe75f3cfc68d0354bcf88974f15bc922cb144f0b00482a0043f4c37f3f7a56b26c971b688e83e1d7c3b8a5d26d2e9c5dc324bbed753b29861248db04321fc237073d41f7af50f12f85a0d75747fb5cacc74eb8498020112e30086cfb0a77c3eb0bed33c23a7da6ac185dc31ed60ce1f03b0c8f41c5744083d3ad34f42ec78e6adf0a07db7c4e6dd2dce9b79079d6cb8f9e19d4960178e17ef0fa30adff00859a28f07f86cc3aa6a3127da5fcd50d28118c807e4c9f4c67deb6bc65e2db4f0f9b68ae5da1967dd82c990140eb91ee457ceb3bdd78875e78a1867d46e12dda382038650141c6ddde83071d4e0fad3724b721cadb1e9ff1b358b4d4bc228345bc8afbcebb58408240fb480cc781d49c01cf6e95e3f6da0ea4f7ba7c8a91c8351895ede54fb85870573fdec8208f7156b48b1b8d375fb497ec8d6b77118e7513c65173b80527381b72403e99af4cf13df695e14f06bded943e625f4c2e6d61958116f2b2f3b31c8e79fcaa55aae811d35679df893589348d30688d17937c923193cb21b90bc0520fa0e7f0af3dbc995dfcac36e27208e4118ee3d3fad5c92469eedae2ea590dc4f96c939e49e4e6a8dddcc36ec0424b3f4c9f4f6ada314b4468fcc965b95b531db46aaa42ee73d79249c7e1fcc9aca175e65c3348db87247351dccb92cc483d3e5cd525c91c8c1ad2d610fbb909b866e33d334eb662c0efc92c31f99cd243134c02edc1f7ad0b5b13d7f86a25348a8536ca5f3b8380483c0a92288ede47ce0f15b31d9a10a0020fad392c4f271819c0e6b17551d10a2655bdb9798c6a497ef5a9168ccc4eecf1daabc31bc578645dc4a9ce0771debbab7b7061cd613a8d6c762a09239bb7d0d48f9d707b1eb4dbaf0fb005c00df515d9db4038007207356c5bee41b54920e4e2b3f68fb8fd944f2e9f4e9a10498811ea075aac1b69da62618ea4640fc7ff00d75e9f75a7031b150013d45737a8694bfdc1d3ad6d0addcc27416e8c1b708107ced8ea14e0007d6a43a9b24b1b6f2361f95d719520f5aad7da7b4019a238ef9acd86631b9f33e63903e51cd6c9a673c938e8cf538bc6f35fe8db23cade22ac3bc771d88f41c77f5ac3593e695616dc5f1b9dbef13cf1f4eb5c9add7d9ca3c0aeaac7e64cfdecfae3e95b904c91c4aedc9ce771fe78cf4f6a99208452d8d6b5b4525ee2619d839c927f1eb5cb6b7ae5ebccd1db03142380001fd2b42f6f0bab79c4fd9d4e42ff0078fbd739793ceee580754eca06062aa11ee29320f3ee64ceff00301ee41a96ddafba453b85fee8045546ba7e8549a58ae0a9cba49b7fdead2c6773422172eceb24d2ab0ec7a1fd69c61998e0c985f7047ff5aabcccb2a644a1723f8b00ff003e6a18de6872048193d33914ac3b97a5411f128674c7b601ef5108e163950a063aeefe942dd174215c1f63c5549b60e5b7213dc52b0c1e250c7cbde7db7559b7b4576c6405f739359e64e305b70f52a6a482ede23b61f97e9c13fe7de8b0266b8b24c2eee761c8da393fe78ad282d921bc49232cb1ca48c3312011f8fd2b061be390072074624d695accdb1146005e33e9cfebfe4d4c969a8f73a78359bad3a2c34a3cb523ef7200fa555d5ed66d4ede7beb28e35d83f7ca9c601fe3c0edeb8f6a64012e57630c485791df3fa56e6856644e165618236ff100dea0f6fcf35e64a0e12d097a33cf02168cb08b11ee1918c138ebcd4f6ac6127727eed88cfbf35d1cba3595adccf148b711b06ca952195bd33c7a5496634fb58c09ec239924387329607af3823a1fa8ab5221c2fd421bc823b29c845669a231ab301c0cf51e878ff38acab4f30dcced14a628608cb33838273c63dcf3d057477b650cb0b7d83ece210bbb6990b11c1e3271e958f2cf1bc36905ac0b1ba227981072ce0724faf393f8556e43562ad84af6d24c58ba5dccc90848c00aa3392bcf71804f6aced4629247985b2bcb96cc920e4e390abfa1e7bd74363045e4bcae8bb995a35321e5327938eec7bd3ee2d8d9daff00c4b02bc93ed8e47280e3764703db3ed8a2fd069db50d23496d7a2d334fbb6f26e59d2327862a4e30481ec41c57b8787bc05a16991e74eb5469c3955927f9fcdc70d91d003ec3d2bc875148346d4dbfb38b2a418dcf1e4b349b98861c9c00028ebe95e9571e30b64d2ece3b3b82b753f971ed8d866241c9196ef80727d4d1462a2dc59d7524dc54cea27fb269d6cc6c55609cb2c66060194393d31dbbf4354af869fa8cf3c57f656b7223f970d183bb18ce0e33c92a3f1af3ed6fc4ecb702ec48ec6d8995c961b4b632319c7463d3deb25fc47a8c1a65bc8e93436eaa0b5d02082c4927239fe227079fb8302b56e28c3999d0ebbe1bf0fa978b489ef42449beee34760a3078da1c11c9e871ee0d55d23c4ef1e9d3c2d30b8bb6dc2343f2975e982b85e47b773c571fa65dcf0dd06b73219a7951dede753b5c0ced04f7c0ed81d6b6ae347bdd3af86a367a65ee5dcf97757082364739c9507b771903afb54c5f61aee7a5787f55834bb1275998582200245964cb364676c60727a7cc71ec3a579478e67b6bbd7a7bcd3e1786d2e7e78d5d7691eb953d3e95d1d9f86fc45aa4a2692de29a2b37194f3555891c8d87b039ce463359de30b2d425b28aeee74c9add41056491812ca473d339e79cd745195a47066945d4a0edd353ac4b39fc59a1dadc5bdf49641b0ac10939503041c1f5ae1bc5de1ffec1d416047792160191d8633c73d3deb3f46d6b50d2838d3eea4855fef28c104fae083cfbd45797b737d3196f2e259e4e9ba46271f4f4aeb54f5f23e76be361529e917cfb5ffaee56957746c07a53ac91c4b6a640437ca79f7347622b4f50b98ee75c32431a8843a2281c0c2e067f4a9a94d49a6ce7c2d5e48b49eb75f8eff9198632b7570c7f89f3fe7f2ad484b359c7cfcaaa7ff426fe86b2a032b6f69c8cb1c8c7615a570cf15a5bdac9c3bae7d0852738fe7f9d635538518c56e7a1879c6ae32ad57f0eff00734ff424b490358b1520ef7c8fa0c8fe7585ae5d796e2cf2c5ddb2e00e8a39ff003f4abda3bf930dd24bc2c1338fa01cd66694ad7b7d36a1703292b18d73d81e07f8560a3cb08423bb5a9baabed2a55ab516916b97d4d7f132aa43058db360cca23c8f4ea6ad4481142f60066b3742824bcbb13cabff001e910887bb60e4ff009f5ad0959a3991f3f2b1dad5d1868464a5db638f33ad387b34debbfcee25fc4e23738dc8ab961edeb597736e134b5bc99fcd77958c8edd49ce3f962b7aea522391a1e59a3207e2314cd6f4b363a5db5ba6e96d26951d243fc3c0dca7f2ae2aabd9d4507d51ef612a7b7a12a97f81bbfa7fc31ce496b3c6a26b4ccd6e7e6689b9c7d3d6a3d1b52b7fb64e2df11424fcd138fe2e8db7fc2ae2c8f65762dc4984704ae46718ff00f58aa5acaa202f736a518f22e21f994fd47515b2692badd1c2e1294b967ac5ecd7ebe6bbee493c09a64ed3451a9b591c314e4ecf523dab6e068e64041dd1b0c86079accd0efa1b9b5582f9d6239021b96e636edb58f6cfbf7eb5696d24b0919a3cb419c32673b4fb55d051e6dbfcff00e0a39f3185554d36ff00c9ff00933420f961da5548e80fa50543295232a7a8a5b69554bac83746e33f43ea28c8ec411d8d7a2acf43e6a6ea2f7eff00f0e471469045e5a03b47dd1e9ffd6a776a56200a9f4cb1b8d4aec5b5aa8dc465998f08bdd8fb554636d22294e75da72d5fe64ba3c1e6de0678f7c317cf27a6076fc6babf0e6a73c76cf797727cf7019d891c8507e55fa75aa37d1db69903e9d6f31701d3cc7618f318f39c7a0ec3de9ea9e55a2a03911a6327dabae10b44f670941d1567b99faaebcd7f78f285631dbafc849c8dc7dbd73fcab374b2591949ea0afe74fd5bcd103004633c73fad41a33a984b67be3ad0cee4fb98fe2620186dd06110fe67d6a485d1b4c68e439466e413cf63fd2a5f12462478a4f5ca9c5518f9b59908c8183537b16a3733ac9c9d566e9b58678e463dab56e25dd14449c90de99acb87e591d980f94fcb91524d721547b720543d8d55afa09aecbb843101c463278ee6b47c2de1f935589ee27256ca371bf9c338f41fe35cf86f3ae007e43373cf6af44d36e045a7a341c45f74a8f4359d9b3584a3092bec7a2e91a7d9c1a362ca08e38f1c6d1c9fa9a8e0568e4057a8aa1e0ed4732c9a7c8721937c673fa56d88c07259b07d2b1b58f6e36b6847766491f28db411c8ace9a0c2b33b6e18fceb73ca12a018e6b37518a4894011641e32054f2b2d3387bf9db4ebc4b85cee560dffd6aebe778eef4f4ba8beeb2eeae67c4288970ad70a1997eec2bd49fe9577c2979732f9f6da8a88e394fee874c7b53b68365eb776b75424e3b9aeb34a9a3d46d5609186ecfcac7b1ae675184a82c4607403d6974b79202a7e604f422a188ea2ef47b7b68de5bf95a6941fb9fc20563eb17b1c569884462104600e00adabe126b3a3ec46549e31c63ab7d6b1b4ff0fddde61366f51d49e07e35e36269fb39e9b33a15594fdd6773e1c9bc5a6e241aec1a49b551f2cd0b488c78eb861c7e20547ac78cf4fb3df1c133ea13a8ff00576c76a0fabf27f119af32d5fc4de2ff0018d9c11982db46d2a76c7fad0af2afafcc412a33d4e17dfa5747a6f846dad4d959eb93c57163e599a711ca22b70171ccb27de9589230bc28fe7e9f923cfb7733e3d77c4fe32ba92dbc3682ded776259a0cc7127fbd2f2ce7d97afa573ff11fc351785edada3bcd5639e6b952f22b21cb37cc01001fbb923dce0f238af5ebcf18f87b47d280d2ee6c2e447f2456b6b711a0e84fae00c035f3778bbc4516bba8dcdfde24c6f24662be65c82918dc36aa8c6701770ebd4e7d8e352d6f3139762d59eb30b5adcb359bc97731056e1d8905f18e4124e0fa67d08e9ce0cd7d75f636b390c30c05d8b0c0258e38cbf53d78159a260f70245960528711ee63c63a7406b7db4fb8b88669f50b8b1b78241c99438e3afca19739f7e6b0767b9366ca9651982d59c328cffab5c6493d4fe18a80cd19b805370824fbb82576313d723a8fc3bd48b7d05a5bc905a4cd741b0bf2c41153e6520e5816272a3a63d3345bdfc13b881432f98a77adbc7b4a301cf5eabf8e78e953c96d50346f6997d796d0dddb4b124f1dec3e448f38c60020ac83a1dc31904f5cf3d6bd13e1f78d3c3ba5ea93cd7ca9612cb1ed95d232d1bb82019170329bb1f32f4ce08ea6bcab46588db6a56d3ea614ac4ed079a5b0edc70076620100e7ae38ad1d4f49bbd31ed92ea36f2ef6d22b813c392a77fdd2476e70a47a8fa56b06e3a827647d4728875db2b792231496de64771149b83862ac18118e3b7ad3e6d12c6e3528350b988497d029449bee90a7aaf18cafb1cd795fc064ba16b77f65b9c4704fb2e2dd89313a9ce1d0ff000b820f4e08c67079af6515d5177570d88a0b4b782579618228e470159d5002c07404f7c64d4aea1d0ab8ca9e08f514b4a1734c47c5be28f3affc437f24e7fd2249dddb79e84b12735ddfc37d1ef7fe11ef13c10432c5aad8ac72405415920998b2360fba0e7b74aabf117c2f7969f11aeacede2677be9bccb50a31bc484e00fa1c8fc2be90f0ec171068b6297f1c71df2c11ace23391bc28079efd292dc715647cb9a0784ef75b87547b4dff006ab08fce1105c991720301fed0ea3d70457b2f82bc27aae97ad699afc4b046750b60baada95d85588ddbd463839c657b1dd8ebc7a258e976764f23db5bc71bb962ce146e3962c467ae32c4e3deaee001c528a5105a6c30a217572a0b2e40247233d7f90a7a0452c55143372c40ebf5a402908c5301dd294134d14f0bef48457bdb6fb659dc5b1778c4d1b465d7195c8c6467bd7961f825a53359bbdedc02aa05ca0c10e769c952471ce0f4c7b57aeecf7a700075c526348e0bc2ff000e74cf0feaf1de5ac47740816193790c78e7383fef020e411b7b839ef029229c4668c81de95fb156bee3446477a4e94f0d9e94d6f7a109a5d04dc4f0b5e25fb4468877e9fac229c106de561edcaff36fcabdbd48c573bf113495d73c21a8d985dd3797e645c64ef5e463ebd3f1a6bb02d35383fd9e356fb4e8d7da4c8df3db49e7463fd86ea07d08ff00c7abd56ffed0b65706c1636ba542631267696c700d7cbdf0bf593a0f8deca4790a41337d9a6ff758e3f4383f857d4cae00c52454d5b522d2e6ba7b751a842915c003708ce54fd2ae66a20c4d2678a2c2e624cfbd26e14cc9a369a2c2e663b7f5ae6fc6fade99a169a2ff005278d658f3e42919673dc01d48e99f6ae864648a36925655451966638000ee6be62f899e21ff008483c513dd82d71a55afee632a4ed2bbb9c71c16dbfa50da8ab9326cfa4348bf86f74e8af6da67b8b79d44a921000c11e9dab2bc61e2bb4d0bc3b79a9854b96830ab1ac8bcb93800904e3afe55f376abe30d4eff00c2d6ba1a3f91a75ab90811b6c92a7551260f3807d39a9adf48bbbad1279efb5b9c27d8d6eada02c5e3b88d0ed64ebf2b23638c1f5a2324f6d49726f623f16f89f51f1a5dc72ea31dbee4899628a2185400e4939279f734ef06c374badd94b6437ce926c40a4e5b2318cf63d7faf7ae7f4c8a40b260fcec5475f7e2badf0add4da46a43535b68ae56d886ba8380c57232533f9e3db3c5733937208d8dcf8852e7c40d0c925c5c4964823124add243c92a3a0c0da380391ed93e5de23be7b8bff2cbb3ac64e10f396eac4f6ebdebd67e2f6b8d793e9d75141e55b1849cb85dfbb924328248e36f5c75af109de49a67670cd1a8f5ea7ffd59aea847df6cb82ea3a4015da59c31c8258e0f1c7f9ff3d30ef595246f9b23b9f6f4ab37d7b260c6ae0c791f2ed159ccab2382cd90705b247a7515d09012200e0f963838201a9a2863cfdd0dfcaabc4eb9e00f4eb5a56fb028c8e4d67266b08dc9ed611b0138c7f74568451e6a3b75c66af40876e4f15c7391dd4e9a123840e46314a0963b1403fd2acac5b94927029f0c08aa40e33f9d62e674a8223b5b3cdc990b90530000b8ec7bf7ff00eb57456ca047861907d0d51b62b81cf4e39abb09c8e08c0e0835939366b6d0d0454181ea2adc07cb42d824639da326b33cdda40c1c63eb56ed676e4f6a2e4b896e55595481c1f502b1750b5caf4f9ba62b6ccccc31800638350c8a1d76b1ebde8b89238ab9b12f192064919fc0d7277b66914ffbe256207e620727d87bd7acff0067860777047423f911581ac690bb5f7aff005ada955b331ab49347016f0b4edb82286c71b41240ec3353387b58819650c71f2ed6dc0fb9a86f2d3ec777f306962ce4738a75fcd1c84cad8dc170a8081d3a281fcce6bb53bea8e0f874654bfb8902a2b7de1ce31d3dea08e2f97cd9bbe782d93559ef190bb6dcbb1e49269d0cd24ce1a4f2f938e4600fcb9ad16c66dea3c36e73b102ae39c8e69766391dbd29d24e14111b7cbe840c5537ba2320af7edc531684d2052dc72475e6903311b5d411ed55c4c1c703f0a546da7205005cd98f986467a714f0485f97041232738a822918f1b57f4a99301bfd58663ea7350d9490e468d81059c1f6008a8a68630d98f25ba74ab0148524800fb556949c9d99cd24cae52b98cab16e01f406b4b4f9e4c85206d6e093504103b75503d4548a421000e0f19f4a4c493354c86dee11a36c6de413dfeb5e93a12a5fe971de2ec620e1d3767637d3f0af2b92e4322abfdf037035d67866fbc9b5132c8300fcc3dbd0d735685d0e51b9dceacd6c9a5c77725b236d246ecf1f977e41ae26f35583e48a1851838e0e32d9ec39ff0026b674ebf4bb81edaeda45b700b47230dcabcf707b7d2b93b81691c8d334f1a2e58271d79ed5cb176d0539596838de7d956457870645c150cc707d47a7d0d56d20462feda4771877c632724fd383e9f5ab16f2dadc954927550c3e5dcc403f8f41f89ab30e976cb29782f6332a745ce4371d8f51fd28e6b18d9b13583631158209943ac851dd94118c020019f7acf32bb5944f1a31f324283270303dbf1150de19350bc8e082da55894ab3a374ddd0f3ff0001ae9342f0f3cdff001f17d1c114258b11f36de99fa7d696fb204aecada34573bae2cd36932302e73c2e3faf02ba3d2c69f2c334f751461e288b09304119f97271c9c64607d6b464f0de996960258b50785c0ddb9f0a4f71ef5c869c45c17b691e4489dbac4707693d3fce6a2537092948eca69383823385b5ff0088751961b2b137323ce5e38d41c6d27f88f618c7248fd6bb6d3be1a3c7acc49e24793ca281923b7cec6c76dc3a633d07ad6d697349e1f64582cee1226eaec9b1df1eaddff2aea2e6ff00fb77496b779c4572b8789f1ca30e841c0ea2b78548cf539f95237bc3da069da65bc434db7861238242e5987bb1e4fe356fc57a426a7a15d5bc8a5be4dc9b4e0861c820d667846faf26b658b505db34476123a363f887b1aeaf76571d6ba12434ce4fc0fa7dd69f6bb2560630a00e3a1eff00877fc4d589ed85c5a6a3a54a7e5607667fbad923f2391f85744a15460000566ddc3fe9b1cebc10a50fb8ea3fcfbd171b499f32df5bbd9dedc5bb8c3c6e5707daab5b09773b4a4727803b576ff15f4dfb1788cdca0c4772bbff001ef5c6a1c8e2bd284b9a299f078ba4e8559531f4b4829d5671dafa17b47b64b8bb0d371044373fbe3b7e950ea571f6ad41ae71d4f1e9814ab3f9766d0c7905cfce7dbd2ab920200339c93fcab9943dac9547b2d8f5255561a94b0d1ddad5f9f633f557913cfb6817e6bd64e7f9fea056f5969e91d825a01f295dbee4fad67c104926a492be0a42a00f5c9e49fd6ba088ec915bfba7228c3c15e6fe5f22331ab25ec61b5ecdfaeda997a54ad14faa5bbe0797718518ea083fe06ac4e9be36534c9d146a659be5122823b648cfff00155391c569868f2a7130cdeaaa9384d76fc6ec602658c6e3ce06715a3e749a8ff65e9acc7ca333b49b4f2140e0fe04e7f0aa56a996917d8d2dbde0d3aea3bbf29a40b957031f708c1c7bf35c798d1e6873c7789eb70f63796afb19af7677313c676bfd9ba95ab483940e081e9c0fd0d505d426b7313eccc0dc303d0fa915d4f8d8c7acbe997310deb791b3291fdfc608fcc571f653a9db6f70bb9125d8430c7047ff00abf235c4aa394b9ef6bfe67b92a31853749aba57fbb5b58d39b4ab2bbb7926b3408ee376d538463ee3b7e1593a65c496d34a2c24c053f3dbccdc9c750477fa8e45683da9b0b92f0cb2084f0181e9f5f5aaf750a2de93a94718867e9321e0363afb1ae9aaf9d68ad25b9c3817ec9b84a5cf4e4aeafbf9af3362caea1bc88cd6eac8c0fcf11eaa7fcf7a9e0c86643c7391f435cfcd637564825b493e653b9251cab8f43fe7d6bb3f01c567ad93717f24711b7c17b52dcb9ffe26bab0b5fda4bd9cb4923cecc32ab2f6b87d69cbf02fe8be1d9350805c4f2fd96d18ed594c65f711e83238f7ae8ef27b5d274afb2d828f96320b7776fef1355b5dd6d8a9588298d461563208503b002b87d4b5366dc3795079c1e3bd7b318a81cf86c24692bf52fdcdc47737c7693e63a120fd391f8f5adc6b912e93f685e0c8a0900743d0d79d45a87d9eee29b729d8c0e09eded5db5932bdb4a91b6626c4887b153cd34ee8eb71e566487699da363bf6653693c63aff005a4b4536d72509f91beed5b8edb174cc4707b9abd7902496f1b71bb2707d2a6dd47a6c616aa03c000fe06c8e2b3625db673b9fbc4015a7747219241822b32e73e5ac49dcf3ef50cd5688a0ca563dc6a86a5fbb78d46033631f5ff3fceb5e65df751c4a410a327fcfe558d2b09f5663c6c8864ff203fcfa52b0e2f50388e40a38ce47a576fa412b1c914b820818c570e4eebb03afa8ec7fce2bbab124c513050a78ce3bd1142a8da2e69d7b3594f1cb1ffaeb56dc33fc4be87f5af5cd12dedf54b44b985f66e19da7ad78c6a5fe89791ca01d8c30d8f4af4bf09dfc706950db595bcb2baa65e52ddcfa5675159dcf53015b9e1c8f75f91d9a5a476806e5791be9802b27c41a8adadb9c158f70c671cd509f57d550e1622ebee6b3ae64bbbd955e7b74253a03d2b272ec7a091870dbcd3b916f0e031e642325bdf3536a368965645e5900917e65f5cd6d3cd3dbc45eea548900cac68002fed5c85d5b5c5fcccf70ed827a0ed5372d1b5657cbabdaef07122ae197d08a92d2eb7caf091844c007deb945ba7d1ee6236f1651982c87b915d6585bf9d23dd46c3ca75e87d6a476b9bfa25f5bc33833dda43ce36904b1fc0577fa5dd5adc5a136b7092107a6ddb8fc2bc5e585a3b82eec5403d4d5ed2bc411e9921125c2ae5c1504f53e958578c66ad21c534f43c9f4ed6ee9e593fb4a086759b1e6b393e6363eef393d3b018ab968d1eab75716f16a1731a3132adb2a2603f39e0b2818f6c9aa924da52d85b84b7812e11025c48f975624fde03803031d3bd62df6d987daed141f24e18804061db80381d7d2b9b5d99c474975e19d53c80e2dddc007718e5572dcf0700f1c638e7eb59e746b5b4c9d52497ce1c9820059fe9b8fca3f5a587c477514519d3926b5419ce08da79eb8c7a7ae6afbf8b2e96dd67b8bab795baa46a49279c7236f1d0f5a8d43433e6d41ed8e34bb586c1644de24f28b4b9c91b4b3743df8e3069b0c5ad168de38ef2e5837980bab3e0b10bb803c727033ed8aad3eb53ea17ab3ea1339751f2058d4818ed8e0576164d25fe9d717bfda513a40809ce9e319cf08582e149ed9c5249dee0707025ed936e892e232c437ca08c10dc7e4403f956e43fbab9b3bd7b532c3190ee80b4649ce586f1f37241239e3381e9557569a737cd05dc4b6a509563e51041e7a8cd2c525eea28215334cb1ab3e3962aa073f4000cfa0e6a9b7d04ac321085c8daed216040078f718f5cd7b7fc29d12e357d2214d66512e9eab35b24137276370c8a7a821954ed3c8c022b1bc35f0aae6e34fb917135c586b313abc0c306275eaacaebea41f718af68f0de8a34f33cecd2f9b77b5ee239086065031bf800648c02475c03c1cd6d4a9b4f998d6888347f0c1d3e4b2ba4b9c5fc6821ba910616f114614baff007c0c1ddd7a8e95d38a40296b6d8414a3eb494a281114d6b0cd22492c48ee9ca9650707d47bd4bc8a5a4cfa5200ce28c9a4269334ec03c1f6a731caf22a207149924fad1ca048bcf4a524f6a6a2127d053b6edf7a4c0556228249eb499c500d2014331e05380c8f9a9a09a42c4d0049903a534b75a8f934a07345805a43cd2f0052668407cb9f13b443a178caf238d36c12b79d160606d6e71f81c8fc2be82f87dad8d7bc29617a5819b679737fbebc1fcfafe35c4fc7dd1bed1a3daead1825ed5bca908fee31e0fe07ff0042acaf801ad795777ba3ccff002ccbe7c409fe21c30fc460fe153b335f8a1e87b77e34f502a2a70635563224c519a6027b52e4f7a432bead649a9697776523b225c44d1332f50181191f9d78878a62d23c0ba2ea1a608e0bfd52fa2486584fdd55c30df8cf5214918e85bf3f74f3e2ce3cd4cf4c6e15e1bf18fc0d7cf79a96bd14eac924918553c11901463e8c318f42293d15c995fa1e79e1bd024d55adaeec7f79325c4713dbdd7ca8ea480b86f4cfca4751953cd7a92eb1e17d15755b1bcb33a6dccdfbc92d046645b69cc44964207dd61dc1c7b0cd790689e23d474eb3bad3e493ca8259924954a7cf0bab290e9e872a323be2bd2b5ff0ddef8b2ce6d4618c26a02dcc723467f7730503632e79c346d9f5056b384acb4dc6969a1c1c7a18d6f5fd4ec3c313e633b9a10d93b91482012791c135a32f83f5686c22d43500e190b89d48c3a10557391ea1c1fceba9f0f5c68be109639f5f9644d73ecff3412265e3c10abb5813d40e3a0c75a5d67e22e9dafdc4ba7dda5c58e98ae77496c413336405dd919dbc13c039e28e54d5e5a0592d11e65a9991a09599777da1b707ee49ea0fe55c9dc4a1198a61990741fc47be3d6bd7be28e97a7d8f86b4cb9d29e6f2a76dac586de421c9ebdfafa7a578f4b04ac8a4a928a381d7eb5a524e31d4d22b4b105e1863854b9dd71d4a81d3d89e8702b1048ec189c91ebef576ea544936c884282324f53f855799a22884039c74cf03935d2b6208e06c31f53ef5af66fbb93c9158f085ce4d685831c9fad6537a1d1496a7416cfd8d68a3ee504f158f0a92e0f61cd5e8d9b8f4ae199e8c11a51cc1b23b53c8e722a9db839e0e33571236c82d923a715cf23645b80ee3ce01f6abe8bc7b550b54ce40fc2b4625263ce72c2a6e5132b60aee1918c649e956a089b1c6e1f8e3f9557566571c000d6adb1e487c631c7bd17062a248c30cb91db34dda727231cd6922a95240c8a86489998e07ca3a52624c8222318a6dc429346cae3e53527d9e4ce7048f6a97ca6d87e5a07a1e5de2fd3cdb4a4e328dfad707730a42ece64ce7a0ff003e95ecfe2eb0fb469ecc14ee5e6bc86e22124ce8460f3f9d7761a77563cfc4d3b3b95182080f99b9c1f997e9555ae369263458d471d726b4f508bca10c4928236805b38007f91d2b1273b559141dbbb033df1d4d7644e261e6331393cd216f7cd420e3bf353431e5b9cd3624ae2c7927818abb045231e335634eb333c8303e51deba082c367f08fad73ceb25a23b28e1b9b56655ad939e4e2b460b1d99663ed9ad3b7b6ddd07156d6dbe5da54e3d8573baad9d91c3a460795b80c73eddea092d76b06038cf3c57462d99490abc51f65519dc0e4f534955b03c3a660f924a640cfb7ad655e3344f920f3d2baa4b7c3e0723daa3bcd1fed70e23c798b92303f4ab8d6d75339e1eeb439cb790165321f9f93ee6b734365f2e44c8f94e706b99892582f1a1913e7071835d1e8e9b2ee3e3f792e001d456b3d51c4d5ae8dc8e4915ce0ef2c33b33d7e9515ad941752cb2dc32c650e023af1f8752464f247af4a9a789a17227f3148390d8e9ef562d2d2deeee0ba5c48ae71b8461431fa9ea78af39bea73377650bed212f1d12d9d634053681cb024f21b03a023ad452598d3f53786f766cd848c3600da0e3f956f5f69eb6230f6971242cc191a4c609f71c8ed542fe28ef2588dd59a636ed01a47e99ff006507f3ad2321ad0c482e8c01e5b7c34ee85614e9b507f19f6fe66b5f46d61ed2ce38a31c06dc5ce4b3b1ee7b6e1d872075eb4eb8d2ad469d22e50ddccd92579e33c0e9c003815b1e17d222b2985edcc90f98a07928e3a1fef114377d1028bbe86de8fe11b9d4e15bad59992df00c76a1c967f776f7a93c551da2db5a41a75bc3025b0dd2285c30dc7007e6a7ad3a3f1825ac52dbdc5bdc4b3a12502304423f9f1d3bd709adf8be49f51bcf2edc402e0042a1b7718c75f5a4e1051696e6b09724933d8b48d5eceff47820d4144923ae0a67e6c8e09f6fad4b657165892cb5729198143453676964e9d7d7d4579d68f7974d0a7d8046974c30cf203951dc62b62dbc2f797d32cf79a9bc92f55503e5fa52854725b1a548f2cac746bafdbe9972d6e5ccd6ac432b86c1f63cf4fad74d6be27b69a0591245f2ba1727e5fcfbd73561e07d26f2da57769dde424f98cfc86ef9fa1ed57e0f00d8dbaa88e69c3e3972dbb9f607a7e15aae7466958e9acf5886e9bf70c644ea1d0641ab32ce8c3bfe22b91bbb7bad1de31f688668cf1d4ab8ff0080f7abba5eb22eee1ed9ca9db1eece3afa8ad15c64be22d36cafade296f608a6f21b23cc190335e37e394b44d79cd8490b46e80b2c4410a7a638fa57b45d2c7756d2da4aa3cb950afb1078af9f754b46d3f52b9b571831b95c575e1b767839e694d69bbdc8d4d3c542a69ead5d88f9568907e3498c834034669925b827f32f59d801bfb0e82b48f4ac10db5b23ad6e42de644ac3b8aa86d630c4393973b21b8549644cfcdb0e3352f55a5b88d523250632a4d2272a0fb54514d6e74e6128cadcafabfc6cff0056649b5b98bc4705f46f9814619189c77ed5baeaa9e7c32e0ab763d0ff009cd567190714d6532200c49c0db9f6a8af4b9a2d2ea6d81c772d4a6ea3b286dfaff5e4173a6cba74b6735bb799a6863242ae7263765c11f4cd73f756eeda94b03c6c6394860e17857c1fd0e0d7a1f86956ea16d3ee30dcf20f3c60e3f5af37f107886ead6f6e6dacedbca9627319926e7a123207f8fad785836a519509ee99f778fa33955a789a1aa6ade5dee6cc8228b4907527119e433330008ec73eb58526a710d313c945ba804a51a423845f523bd73d777b3df431a5e309de324ab91c8cf6fa55cd12d6eda464823668e4e1d7b1aee9a7c89f55f8a30a380842a4a5d1bbdba27e46ff0083b48bcd42e6eef753baf2ecacd8aaa20da92391f74007eee0e49f71554492d8ea7e742de5323e32872197d0fa8ad4135c586951e9856489e3662cae30704f1fa607e15cbea6976ccc6223eb9ae473e69a92d1a3dea78782a5cad1d25d6a31dc92c92723b640c1ac9b8bc00952e848ede95c95ddb5f312cd264fa8eb5a3a1ebf73616274cd4eda3d434b2e5c4527cb244e7f8e371ca9fd0d7af4f1d75ef23c5a99572bbc0bed2066f9803df00577fe0892e2ef4b9336d2186d9820980f970dfc39f514df86fe19f0febecf7373a8bb047f92c8811b91eac73ffa0fff005abd7afbfb374ad09e368e2b7b1893684401540f402aa798c212b475308e5b39c5b9bb1e71340e809232474f7a94297b30a473938c0a9ed2ea2b98048a3284e067fad45aadfa5bdbed886e91b80057a5192947996c79138ca32e596e8c1d4006254677fa0ace283712c460726b584042e5f991f93ed59b77f2efc1078a9652665872a97370fd39001ff3f5acab65f2edcbb9fde4a77b1f63c63f4fd6b4aea3060488e7cb3f3391e9dbf3e2b3ae9cb0763c13cff9fcea5f62e236d1374ad21fe0febffebaec34bd4e2cac170815d780c6b958888ac41e8cc727e9915d5c5a745a95bf9f1fc9329c30f5f7a113277dcd8d56d45de945a3c165f4addf8457865b89eda46cec4c05f6cf15cee872496b2fd9ae86637e39a6e9f33786bc6114dd217700fba9e289ae645e1aa3a55133dca5b6247cb18359b7ff00e8f0b911812638ab22f4941b64e08c8c557b97564c6189ae56f43e891809679569ee49791b9e6b26fb04f5c0f415d05dbe4633f8561de008199bad4168e7ee90819e83b510cf3ce55159d70720c64ae3f2a5b96926936c68646f41d054b2dc59e89686eb53ba48d179c640c9f403a9a851722d4ac66eb3a37886f2176b692e6785472a9d7f4ae0b74b6b7999779911b07713906bbbb7f8a5a85e09a0d0a18ede1c15124a327eb8ace4d286b418df1921d40925a5232b27bd675b2ca935cd0dfb154f36a349f24fef4708b6f2c8c9713215818e537b0031ee2b4a6d6d820802a4b1003190571eb8c1e2b05a399ae191a4f3581c6e0d907dc1ab926952c5034b733470285dcaa58ee94e40c2e0119e7b9ec6b9ac79e6c2f88e686d19127755c604654329aca8a3b9be32dc888b8071f28c0fa0fc292c742bfbcb46bb8ada66b452774db4ed18e4f3f97e75b1a16916cf796e6533c96c5fcb93ca1fbcddb4918f419007d2a5b4b46349b28e970432ccde6b471b2f2de786c0e7dbff00ad5b725cbd823450ddfcb2af296980187b9c934cd4d0e8fad5ddbe9b79e7a4523469346721d41e0d528f4ed46fe57f2d0aeecb3493304cf049e4f7e0f1de91239185ddea3ea33caa92c9fbcb828d2e3b93eac7f1ef5b9a2ea3368e92cda76f8d6789a079194e2446e48e4639c565e9d6715a496b35ccb6d73973fba77dc8a077703a0ff0fc2bbfd2fc50b344fa6789eeff00b4f489c0c95982bdbb0e3e4072a08ed8c03d89ce29593d2e389eb9f0e2c6fa7b3b0d465d6eeeea0310536b32ed09f2f038383f88f435df815c4f83eff43b0b0b7b7d3b525bb8c46aabe5c4c4fe4a3a139383d0938e38adcbad73ca2443a76a7727d63b72a3f36c57645590e5b9b43ad2d73b63acea7797d1c434596d6dbac935c38040f40a3a9fc6b7f354843f3c52034ccd28cd1610b9a3349834e55cf5e2801b9e69013527ca2938a2e2100cd3c28534d0c0526fc9a5ab192ee3d05262a20c68c9a3945724240a4dd488a5aa45403af34b4431a3269db0fb50c76f005377311ed400ec7a1a69e29b9a3a9a2c02d14b8f7a280286b9a745ab6917761381b2e23299f43d8fe0707f0af98b49b99fc33e2a866652b3595c61d47a03865fc46457d595e07f1b343fecff00128d4625c437cbb8e3a798bc37e983f89a99ed72e9bb3b1ef167347736d14f0b6e8a540e8c3b82320d4c383cd79d7c16d77fb47c3674f95f33d81da33de33cafe5c8fcabd0890a0b31017d4d35aab89ab3240dd945365cec249a80cc483e5ae7fda6e05559d9403e7cc33fdd8f8fcfff00d7408e53c57e24b2d2e4c79b1cf286c3468c199473d79f97f1c0f5af36bcf152badd5beb135c4ba4bee920b841b8953b488cf400f240e78048e3393daeb7616b777c92b5842f2452284b99cf3c7cd855fba31c8eff004accf11585adf4296d7f6ef713ca9b3e481fcb906382caa0b29c606e00f38edc52b5c9699e75e22361776a112caf616b7919fed2ca1b7465806f33ba904838eb9278e45759a778a1b4ab9b0d36dad6f9238f68559a323cc8cb0f7e9b4939c9e38e0573fa359789b4ad3efed66d2af2ef499e3674e7f788db4aaba9239f9782a4723b678adbf0d78e34e3e1f9acb554fb49b18cb410ccaa1e48f630d9923076e49071d17900d4c63adc57b2d4e77c737707883c4d1dd5a3acc1a044528eae5ce3e5e9df95047ae6b9816f9b9e4803bf71ec6ba00b6babe93652aecb796467b20720465b39f30f19cfcc879f7f4a8a7d3ee349b9b74bc5478ae363dbca1800f11ee7b8cfcb8f6ae6adcd7725b043ccddf88064b8f87fa245282bf6598c5261b241dae07e833cfad79519d20b29e4841f9c6d19fe15ce3fa1fad7a2f8b3548ee7c34fa65b34282dd2395e10d92e7a6e1ea7079e78cd794dec86db4f11bae6291b2549e303a1e7bf7aea86b1573a232d199130579cbe4e18e738aad23872172481ea2ae14d88cca7746c3e539e9548c601279c9e95ba21ad49a04dd906b6748b6c4459bb9e3359b6aa390a3927815d55ac21215007418ae7ab2e875d188d58b68cd491f5f5a7904f029f1a63b735c8d9db127b40783d0fad69c2063ae6b323ca9e6af413f6ed5848d91a16c1438cf15a4230003b7231586b3e0f5ad6b1bcde3690cecdc600c93ef52bbb077e839b1bb0062a68a7608392707b1aa12c9386dcea403d188a48e6c7047349b4f62a29adcdbb6bb2afc9eb5a11dc2e72c79ae3e7bb58416660a477ef5857be24981db1be13a0c7534462e44ca491ea0753b6854976071daa18fc43a7cac5492adef5e5705e5cdd3fcc4aae724b135ad6f04208c4a73eb5a592dcc9733d51de5c791771308595d18722bc5bc69a6be97aab7ca44527cca457a2d8c011834770f95391cf5a8bc71a58d5b4191c2ffa44237ae07a7514e94d427e41520e7069ee78e5dcd850db7710301ddb81f80ff3cd655c4865958939e78edc569cd01917cb3c1e99ace922292e3f872707dabd58bd0f25a77b090425ab5ec6d541cc9cfb554b6040e95a56c7358d4933b28d348dbb26551b54002b5236caf1d2b12d8e3bf35ab6d93c0e735c523d1897a0e0d68c4032f3556cece491886f940eedc574369a49cae645dbf4a8b31b9c56e649873d2905b92306ba2b8d28411ab06cfa9aa421e6a1dd1516a4ae8cc8ecc1e71d38ab30da01ce2b56d6dd33ce3153bfd9a3fe2e295c1a479c78f34a0823bd8d79276b1c7e46ac7c39d3a1bb92e2e6772bf630b2aa8ef8c93fa29aedb54d361d574c9add5919655c2b0e76b763f9d70de06558353bbb2bedeaaca55910e18306c7f56aeaa72bd371679b89a779271ea7b05e68705ec199114e47071d476ae3b54f0a3da4ced68cc8e390beb5d09d62dec6ca3b486691880b122bb6e61c103ff41fd2a9eafe26b57b68e57dcae31c01ceeee3f98ac145238aa537076658f0ddea4968f61aa81bd17e47da49cff9ef58da8699f67b9055bf725ba81923f2e7f5ae72f3c5022bc0d214495083b51b2c7db8a5b0f15cb2ccc93c5989ba60f239a4e2f7442574765a5d8a5fdc813176893801cf2dc7ae33526b7a71b58f7db0de8bc1571fd7b5686872c690a4b215f940508bc91ed8ada8ecfed3b9ee547967a43dbf1f5ad142e8de12e53cd2fb333c626536f321550c319dac78f63d40cd4173e188ed9d94c44a32ee129e7079efe9f97e95de6a1a35bcb15e89632ee91ef8987de5f4507f2a8352b69eef4d2908d8e7ae7d3bd0e00da6ce32c50d8dd0663f7b0d8f4f5aef341bd8659d55a6fde3f2b96ebf4ae47525b72e908990cb1e3eef27e951a6a36da7a158c3b4c4e7392cc0fb0ed4a9424a4fb1a3f7e292dcf60b8d66c2c220b248be61e4aa727f1ae76e3c5b7779732dbdba08113186072cc0f7f6ae32d5a7d41cfda4fd9d5b054120bb7f855bbe8174d8d66b3532ca7a867c645765357e86326a2f95bd4bba94f3c2c934cf9566c1627d69da7ea5f67b98af6121d6271bf1fddfe2fd2b1669df52d1ee9661b2618dbbba0cff008555b195aced4c6ceb34e46c6890e706b4d762b963cbb9ec2ce3ce1b5c3a38dc87d41af27f8aba77d9b568ef154859d7e6ff007875fe95db7852e8de684892a85b9b4fdd907fb9d57fc2a0f88563fda5e1b91d173243fbc1fd7fcfb54425ece670e3a87b7c3ca3d77fb8f190d4e0d554c9b4e0f5a55949fba09af42e7c5ba6cbc8d9a7035523673e82a6084f5727e9c534cc9c6c3dd80c64e3b56be8b37eeda3ce08e86b10c6a0671f9d2dbea096b74a0ee6623ee8ee3f955295b726549d45cb057674ae3731e78f434018e05631d716f88b7d2434b784f28573b47439ff001a46d0b5cbe88adfea2b6709c9609cb1cf6e3181f8d573ff002ab9b50c9abd65cd51a8af3dc9754d6ec6c0b23ca64980cf9717ccdf8e3a7e35916b79abebf298ac5a1d3ed7f8a67901383efebec2b4fc3fe16d145b5d19ee56eef5242823e42aff00b471c9247bd5ad674a481ac2cb4382432cb9c8247ccd81d33f4af3eae2df338ec7d3e0721c3d14a6fde7e7fe46a784ac13c39768c7554bd32b61b192c09ef93daba3f105868b6f786ee7d2ed679ee079864913393dfad711a7787bc411c6b752da38840de49917200ef8ebdaba6f11ced79e108ee530d2c04123d8f07f5af126d4312a69e8f43eae9c5ca838db62ac7a4e9be25d5ad2dcc1043328214428141c0ce302bd1f44f0558e9caa5635dc3d2bc1bc1da8bd978aad6ed9ae3e49d048ecf90149e703a018cfe75f51ac808cd77cacb738936635ef85b47beba49ef2c6199d63318dcbc60ff5f7af3ff157c311b9e5d0a5183cf9129fd037f8d7a3ea5a97d9dd5508cf523daabbea70790259655453ea79ae5a9556c8eaa2a68f9c353d1ae74f9da1bfb67824f475c67e9eb58d35923135f406bdaed8dddbb5bfd9a0b843c667c119f61d735c1ea3e1ab1963322335bb119c282c3f2eb511ab63b16ab53ce6ce49ec2e3ccb562a57d0f35dce93e2a3a898e3d517ce65e819bfa74a4ff8403579b9b187cf07a0fba71f8d63eade15d5f4a2df6ed3ae61c757db903f11915d0a5ccb531718b7a33d36d9ad67b50136a81ced031581aa2abea69e5f29c0ae120d6b52b01b62b8250718619c577ba5ce9fd8d6faace012f1ee03d5abdbcbaa274fd9f63e6f36a0e153daf725bfd96c9f30ccafc051d71585751928738cf535a96a1ae2296f2762d231c938ede9542fc9fbaa3f78df747a57a0cf1d6873b7ff007485038e09f7f4fcc566cc858ac68796217f0ee7f23fa56b5ea7ce235e71d4fa9ff3fcea96cd88d2b0ebf2467db9c9fd40acfccd56d640d87f910f38da33e807ff005ab5f4f76b70b3413ec6273839c1aceb08773191c103fcff008d741a05b5b5da1824199f1c06e9edfca88eba8a4ecac6f5ac89a840b2a0c4ca7918a9f5ed3ffb474712c5febe11bba7502b36c629ac9ca08d90027af00f35d469cf93d0e08e456963152b334fc197b2ea9a140c159a58bf76f8f6ff00eb56d3acc1718938edb4d798789aeb52f0ccbbb47ba96dedee640eca8073d722abdd6a1a85c2069752bb9030c8cca403f9542c2b96b73d7a7982a74b55768f43bf9c408cd713436cbfde96402b95d57c49a45ac6c7cd96fa43c058570bf99ae32e2222566259f3dc9dc7f334cfb348e8404381ce7157f538c35933159b4ea3b42053f1478cf5331ecd3d52c6dc9c1d832ff9f6ae0ae6ea7b999a49e479643fc523163fad77d71a5b5cc0f0ce1554f7c74ae4ef34c8acae1a39e5518f5e3229c6ad082d19d3cb5ea7c445a06a12dade0d8bbf7706bd6bc37abca9b12f511d41e87a81f5af2e8752d32d530e189ede4f7aecfc20d65e242b1193ecc57826427047f5ae6ad8d6f481b43070de7a9c9c090c304b2cf22798bf763dc72c4e71818e9c649e945a4bf6eb956bf95da241c206c607a0cf4aa92c30a88c42ced2632e4800673dbdb18ad0b3b39ef0e22059c0e02ae4fe000af2792fb14755a758e99791482c06a52308b011762a893dd8ff000fd0647bf6cf9348bfb20d25cc1248a392b138fe42a3d2b47d56396692c2cef5a5b6c19592127667a6ee323f1aded327b9bfb5bf9afa38563b2557998ca12419380029fbc78e82a7d9586cc5d3b48d6b5478fecd673471b32aab15f2d46eced249edf29e7a71d6b5ee3c3cfa65e8b7f12decb04aab9f2c307e327b8271f9556835dd5642f6da5dd5e2daec31f94d265429ea31d003e82a1d13524b7d62117965713cdbc7dc93e727b6d054e4d271be885a1b97be1c64b15bc8748d463b3c645c3ab1047f788c74f7e94ed0d8cb67aa08b5048af9e38d23b7917fe3e1011b8af62e00e0641e78e6bd53c39e28f0f5e3082fbc45e21d3ee3a18afe4318fa67047e78ad8d47e13786b5b85ae6d6e2e1649be613c322b2b1f5c6307f0c568a92456db1bfe18d4efd6e22d3756b4003c424b5bd832d0dc263a1cf28f8e707afad7538ae0748d0bc5fe17d356c3453a45fdac7f70dc34a9263d36962a3f022ba5d013c4d23eed6d74b862c7dd815cbe7fefa22b552b680d5f546c819a7aa313d2ac2aaa0e71485900eb4737626c57c63ad1b85359b731c74a41ef55610edd485bd2928145807a60e4b50cc31814dc13d2956226810d14a3d314e0141f5a70239fe945c121a17d69ca001f350d20fe1151e4b1eb4b561b0fdc734bb88e8726b9ad7fc6be1fd05da2d435288dc81ff001ef0e6597fef95c91f8e2b86d57e28ea57c193c3ba4adb47dae2f8ee6fc23538fcdbf0a4dc56e5c61296c8f5d04e734a4fad717f0cfc4973aee913c3aa3abea965298e66550bbd4fcc8e00e99191f5535d81e69ad44d34ecc75028a29d842e68151bc891fdf6033d3d4d37cc76ff0056981fde7e3f4ebfca9016322b92f893a3a7883c33756d0af997917ef61da32430eded9191f956f4b3428e52595a693fe7920cff00e3a3b7d69ad2ce4055096c9d81f9dff051c7f3a00f9e3e1a6b8742f144124ae63b79bf7131f452473f81c1fc2be8a59d5ce6de379dbfbe7a7e67fa57cfbf13bc3e743f12492c28e2d2ef3323360724fcc38e9cf6f422bd67e186b2baf786a2f3dda4b9b5c432063d401f29c77c8fd41aca3a3b1abd55ce9a4692404348c4ff007611c0fab1ace9de7796086da18d496cb329dd81db24e3f4ab1e2a8ee4f87ef5ac01375146648d00cee2bcedc7be2b3fc15aa5beb1a3c734049781cc7216eacdc7cc7ea307f1ab332ed8e816f1387b8dd34818b82c4900e73d4f3dcd6baa2468446aab8e700629e0e73ed4c70a13326307ae69ec04162ca43a020a0381fcc7e847eb59ba9f85f46d6acbc9d534eb69c85d9b9900618e383d691ae42eb31c48a36cc84863fc2cbd3f1218ff00df35b718c03dc9ef480f0ff16fc221a75b4f71a0493cf1655fc82732051c3a83df2acdfa7a5799ea57777b9349be7646b367b565c670aaec5707ae0798c3b70057d7a5415c671f4af3bf88de05b4d7609af2d123b7d50aedf376e165c1cf3ee40233efdea5c6eac886ba9e064456e1248f0e6456c48ec3ae7a63fcf4ae43c44acd746352a7660751f5e95d25c5a5e6917cf6d756d247771b3ab2b02411818e7a1e73581abc220b9ba9e5006e90e003927927a7e3fa5452d1d8da0ee8c29d15408faf6047a0eb54e46218e7a740339abf72f98dcb0c364123d2b29d89247bd74a133434b9333ae7a5773671068548e722b83d3b99947ad7a468b11302123b57356dceca1aa1b15a6e3c8fcaa7fb3220c938345e6a10d9a9dfcb7602b9bd4354b9b863e52b015cbcad9d7cc91b92f978c861558cea87823f3ae56e2eaf33c8703daaab5cdce79dff008d354bcc5edadd0ed8dd06e8455cd2352fb2dd248d928a7903b8ae0a1ba9c71cd6ce9d75211d3eb59ce8e9635a75b53b19b5645e2dccf28652099646c2f2700739c7278f714c9ae5dd4cb291bf03915cabe9573a8eb36f7293b24498ca0cf63938faf4aec3fb3dbc920e703d6b9fd9c61b1d0e7292d4e53539a6965daa0ed3592e04727046e1c64f415d06b58b68c8efe95c4df5d3348db5720738aeaa6b991cb52d13afd1d6390821679cfaa90abf9b1fe55d1c2f0a8e2cd483d85ca13fa9af2959eee599124924d8c3a29c015d3786b4582f6d6e64ba9a4468db68756c638e9fe7d69ca92b5db21567d11dcc5736867f24992dee31911cbf2e7e9d8fe15bf6370b32989d7b7071c1af3ad274fbf3305376d2c40e55655dd8ff00ebd7a4e8d652451a79e3240ea2b9a694763a62eeb53c8fc67a1369faa5c2443119fde463fd93dbfa572da8db1b7587cb20a4abbb7039cf3ffeaaf75f1f68ff0069d396ea25fdf41ce71d54f6ff003ef5e51af582ae9913a02be4c84f4e81bffaf8aeda55ae95ce29d1576ce6a1c8abf6c093c545144858e18e33fddffebd68da468081cfe35536694e362d5a21ad7b41823daa942f1a8e5855a4b98d7a30ae695ceb8d8eb74d96dde35dec415ebc56e477299de48017d4f5af3e4be5c70df956f7875ad2e7735f5ca8e76a4664dbef924f6e477f5a9757916a47b0527a336efb54475db8f9474e7ad63de6a0b1c25c1a35a7b3fdf0b3273b97614394c739e73f4ae4755b9210876c27d6a62fda3b96e3ecd685f93c4b28720018f6ab165a84d3825836d3fde35c25c6a5e43711927e956bfb5b55b69da292d82326770c86c63af435d1ec74d0e6f6d1bd99eb1a232871c91bb823b1ac4d4ac7ec3e3396551f2dc43e628f7c807f5fe7595e16d7a5b89944a075c6471fa5765e265096f61a91018c2c51bd830ebf981f9d62ef1ba354b99a670be635fcbadb5c2e482a554824aed70063dffc69ef6f2dd69eab2099db240f95811ffd7ad2b0b62b7bacca819637d9923a80c549c7eb5a7a188c453c3b76b472663e3af6efd7eb8a137638f1f67534ec7016fa7a4172e274df2eeeaf9001cf7ad1443732c659c9d8d8c263181edd6bb2b9b193fb622574016561907a535fc3b15d5cde34d106689b0422e02f7c8e9c53e767142377620b0d6e48e68f326614e233f2a01d8e32303f0c935e83a7f8833023496b3856c0dec001faf27f006b8bd23c2b10864b9b1761386208639e074c1eb5aba2ddba5cb59ba4715ca7547e4fe193cd68a45ca2d3b33b186e56605b6ed27b37515e79f144eab1cb07d92f2586ca4520aa70370f5239e95dbda79db89658c0f65c67f5aa9e27b05d534596303e75f9d3fde1fe7155708ee78ed85d0b571e639cf4273d6b5a1bd0b7324cb6fbc33050e1b902b1aeed76ce5f2150fde27d6b5b4ebc87ec6be462491484258e00f4cd69134692ea755a3470993ed0fe608979e9c903ad746f71677509db6eac9d02ecc311fef035c65b5cdccf62475214afa0fbdffd6ae8748b3375688b2caea1b82a87193f5aba955a919420b9599dab4367a85b4b0c4ec37aed2b9f981f4aa9e1bd305b5dbb156dee7e6f308dc5bbf4eddff1ad8d72d2eec26034f811adcfde651f303ef58500b88f528aeeea5f25646285a43c8e3a63f4fc2afdb5f448aa58656726cecaca53a7ead04a79b797f7530cf1b4f7fc0e3f5aee0d847242c92fcd1b02a57d8d79f4d2234655c865615daf84efc5ee90819b7490feedf3d78e87f118acaaababa1c74763c07c51a7ff0065eb7756ac0008e403eddab19ae238fefb81e9cd7a1fc75d1209e686ff00cf4898aed74df8662081c0efc1fd2bc72f2db64aa630767183e95d14eb7344f0eae4f1751be6d0dc1aa42a0ed2588f4a45d59e4caa26dee09e6b26cec2e667610c524991d1549fe55b9a5f85757bc25edac677098ddc63834bdb34f566b0ca282fb37f5283dcdc4b26c799f1fecf15766fecf44488a3bbb200eeff003139f427a5751a7fc3cd57025be7b6b387afef64f9be981585e2fd323d32580433aca76fcc40c6393c1ff3deb6c3d484ea59ea3af87f610fdda4bd0bfa55c47a569fff0012c8d32c0676b02d8ec09ed51dcea93ce55aea45e7ac60927f3ae4a2d4995d92350077e7fa53e6925218062ccc3b7ff5aae58893d168694f0d05abd59d0dcde472c1e5da663b82400b1f2cfe838e735a97d26bba7e93652de446d751b79b31b920b9523ab7a1ed835c6d8ca6d6ee39e3f95948643e841af5df1ba2eade158753832cb244b36d519c7a8fc0e6b8710f63ba8ae87309e3ed6046eb790d8ca92a1466036360823b1c7e95bde11b94bfd3e6b1987cb2a94c579c43b3ec86503e64c800b74aea3c1171e65ec5ba628e71275cf43823f9579b8aa2953724ad6d4f470b52d3e57d48279ded9e7b14b7861704c6ecab96247b9af56bcd7af9746d12f6dee2282da5446b8670093c0c8fe62bcebc776df65d75ae231949c09323d7a1a6d989ef6ce2489259994fca83955cff002aa73f694e33464e3c951c59d2eb7e2bbad565ba874cb7fdd12512561b4e31d4e6b1ad5f50648a0b9ba13163f7635dc4fb56f691e0892e9fccbf9c0863c48e9bb6aa7b927fa575f630e9ba669b2bd8430b346707cb1b467d493c9a854b9b566aeadb639dd23c2b733b79f3247679e33b4173fe15d1dbe9565670acb13f9b260279afc9152cfe20689834f14677aed42a7217e83158baedefd85e492491b75c461a3443f7bb60568a11899b9b96e6d6a3a98b081638eec79a84178a3c664efcb75ac4bed66ea492359368463b801c91ed9ae705fac572eb3c7e5be09767e464f4cf7ad8d05e27837cb0abcce7e55672593dc0c7f3a6e57d119a7a9475bd22cb50b89a2b9b448f70fddba9f987be7bfd2b9282295d2df4b818bc511663e80678fcf04d7a5db69924b2c975a93c7ce30141ce074c738ae0b4bbc8b4fd4f54827888646dca4757f9880a2bbb2cd2b6bd4e2cc6327876fb58d89e18ed2d12227ee8dc40ee6b16e6368cb39199e5e1411f7456ddadbcd346d717b80cff00315ec07615525686599fcb06493d47415f42d5cf9b4ec73335a9036024776623a7bff2ac9942cf720463083a2e3a0ff22b7f597037411f27f8d87af3c7d3a5665adbfcc1db001ff3fc8d66d74344ec39919985bdba8c8fbc7d3aff00852a452c3759b761b94e41db9f7ebf9d68a2c56768cf2f0cddbb9e95562964691640a46e031db1dbfad55ac4b773b0d035a5bf45b5d522093018126d3cd7476b65e49eb95ec457136312de2092391d27503208ff003df35d7693a8b28115c7247193548cccbf8870ceb6314d0c7e6c5164ba8193ec7f435cb687e20b79f4e092c655e16d9d00e074af5cb12b25edb8750c8cdb082011835cedfe9f068facde5b4d141f31dd192a3247f9fe55e7e266d4ec8f732f8a9527ea71779a9c0466281df23230b59be6eab732325bd9b22f667e063f1af4512c0ca50247bbaf0b54ee421fbbd7d3a54a9392d472a5c9267152e8b7f3c21ae2fc45d995067f5acdd4fc176b3c4263713c922f5048c115d95c37979dec00ef594f7eb1968f00f6e6b1946cf43b684b99599c8dbe91636c7f776c99071b9be639adcd391622b2e31b4f38aa17f298ae1807011b95c7348978ca85448553f5aa503a2d6d8c7b6863b89d001e5403abb0c963dfdcfd057bb784f55d3bc3fe1fb3b4d1a4b18355bf421352b9283c8887de671d4107202e06e3cf3cd79878abc392f872e56dc5ccb2c53afc85708090704363fbad91d71f81addd47c2b1f85ae2132c76bafcff00671348b1cede443b87064652303278c9e7ad611ba67245591d75c78f93c1b6ef69e1bd42cf575919e491e5b69125321fe36932039cf7c57905a4373aff008802cf3c11493397692e67112939c9f9cf735a1a568ad7fac41fd996b75ad11b64b88ada2645196e514f240c71b88f5e2bb8f12f84f5ef115e03a7f82a1d2c22fcd1c2d93ec1b2700fb6055fa8b95eecd74b6d4f48d3c5adaf845e2d21c06792d19750dc781bb9e3903a8c572de21b1f0cea902b59ea125a5e9609f67bab4312839fbc5f7b6d03f1fa572176756f0d6a72451b5c69f75131568f7142bed5ddf86be26dd5d24565e26d1edf59b7518fdf401d947b301b97f26fad4b9589dcd01e1ef165cc5630dff93e2dd16d4ee8d6d6f558b8c74de3e738f7ce2bbef0dff63c33a1b5b0f12f84af9b00c46291e07c7ae43291f5c56669be11f0d7890b5e782b53bad1354870ef02b96f2cf6246738f7071eddab52e7c55e29f084f6d1789ad23d52d663b566b3cf9848f418f9bfdd201f738a69df563e6b6877b6faf416c816f754d3261d3cc5956263f55271fafe157ad75382f14b5a5c452a838cc6c1867ea2b9fb63e1df1b69c6e2110de47f759865258cff0075b18653ed52685e0db1d12477d2a6bb80bb6e7064dcafec411faf5f7a69589b9d11663d49a4a9122269e21a7748122b819e838a785a9fcb0075a611e83f3a3982c3027ad3820028ce298c4b7b51b8017da78a40f9fbc49aced5f57d3b46b713ead7b6f6911e034d205dc7d00eff008570da9fc56b25631e83a6dd6a4fff003d64fdc45f9b0dc7fef9a1b4b705172d8f4a66cfdd1c5636bbe25d27414ddabea36f6a71911bb65dbe8a3e63f80af26d4bc49e2cd715927bf5d3ad9863cab15d871eee72df91159165a05ac1233ecdf2b1cb48e72cc7dc9e4d66eb25b1ac683de4ced753f8b1e7131f86f499ae1bb4f79fba8fea14658fe3b6b95d4b52f12ebbb86adabcb1db9eb6f69fb98f1e871f311f526adc16d1a1748d79519db8c55a4846c05d70c476acdce4cb51a7030ac746b6b3ff00530a0efd075ad148d54702af7d9b0a79e7b62a131907e6acac6ca49ec1e1dd43fb03c57677ac76da5ce2cee7d0063f237e0d8fc18d7b66e0016270075cd786df5a25d59cb0c832aea548af42f87fac8d5f4088ddac93ea568c6dee0119f9d7a373c0dca437e35d34a5a58e7ad1ea759f680dfea55a4f71c2fe7fe19a648ccabbee264893d8e3f53ffd6a84cd24a4846c7b44371ffbe8f03e94e8ad4efde70aff00de277bfe67a7d2b5b980d5b90a18dac071de597e45fccf27f2fc68d92cf9f31de41fdd4fdda7e7f78ff2ab290a2b06c167fef31c9ffeb54c290caf0db7969b576c69fdc886d1f9f5fe5532469183b140cf5f7a7521755eb401ca7c4cd03fb7bc313ac49baeedb3343ea70395fc47eb8af23f861af7f60f8922133916971fb9973d067a37e07f4cd7be5e5c94b57923da7dcf6f7af9afc7b66ba378aae920dbf65958cd1a81c0049e3f3247e55954d173151925a33e90d5356b4d362df7532a13c004f26bc9f43d61ac75ed56d6de4fb3da6a4166b49060aac833f28ec7214e07fb217ad54d13c429ac6869673dcdc457b0a85925122e76e300e33b9bb039e075271d30af2e2770f62d2db36a51389ade48e1f29cba904823d491907dbde9f35d5d1949d99ed3e17d4ae1eeae6caf5cb39512c4cdd48c00c33df0d9e6aeeb3a9fd961656c798dc2063805ba91f973f4af2bd1fc49e66b3a36a56f7012307cabab664c089999548071cfde620ff8d751f14355b68348073117237e4e72ac3690c08e846efc4134732dc2fa1d684f274d8ae3ccf30c2cb33103f06ffc749adaaf3ad1fc52fab2c4631b167dc9f67ea24e704e7b0e739f456ae8fc33ab25ee990c86e412331fce47251b66e27b648efeb4269a2d1d093c1aab76dc22800f3b9f2700019393f8e2b1355f1a68ba7931b5d2dc5c6d2c22b7218e07539e83f3af33f16fc4fbbba86e62d397ecb014d85837cf9c9cf38e323f911d694a6a3b8ae33e298d2b5bb479209c25fdab796439c3af0482081ca363af6fc4d789ebd1bf9b0332bef2bbb001e1bd0fa751f9d74779ac482413338f38925c9e43679cfb8c739fad52d442ead024f142eb2c44bbb22961b7a7e7f301f8573c2bf34c74dea7017202261b76e2d9638eb54d0349b9bb673e95b7a85a98892ca23427a39c927df1fc87e75464858a111a90a7b9e09aeebd91695d92e830996e4606706bd1e065b5d399cf6e95c3f85e2db7192bc6ec735dbde2a8b60add0735c751de47753568e872d2a3cd3b4d39fc29ad26321318f5a9eee555deeed845eb5cf5eddbdcc82285773b72107403d4d4a8b91a39282349e6858905d9cffb238fcfa5665dc8bb8840c7fe063fc6b32e6dee4b32c927ccbd854fa659c571776a92a8c7fcb4ed80075ad15351dd997b572d913dbdc2eec72187635a763720be338aa37ba698e66fb1ef9e21c8e0fe869f6ca55d7820fa1eb59cac6d0b9dde84ea645cd7a05bc2b358065519ef5e6da016dcb9e95e9de1a7520c521ca30e3d335c12f88ecfb2709e23d2ccb23ee1807bd702f6a6d1e4dc80ee2572dd315ef9a9e94acec1867b0ae4b52f0847780afdd3d455d3abcba3265052d4f2eb68610407323a8e8aa40fd715d0e9e7312c3188eda1073853c93ea4f535aa7c0d2c4fc0dc3f115ada6785e388fef61ce3ae4e456b29df6263048b7e1d54076c2a1dbb93c7e95dbd942eca32071e9599a6c096e8ab6f10451e8315d358a8299239ae77a94ca57d6c25b59226190ca41af1fd56c016b9b26e09578cfd41e0ff002af729943038af3af11e98535a9a455387412e7dc6148fe5f9d119728455cf0d56655e80374c0ed52c0ee3d4b1a9f55b7165ac5dda907e490e09f43c8fd2a33751c03d4fa0af477d8e7d3a932c133fccc703dea199c44d8328cfd6a5b886fe6d324bbcf9712e30a3a9e719ac49d225b42cb2486e15f258b7057038c63ae73ce6aa10b994eaf2bd0d986ef046d606b62c6e37915cb2c124126c7e24da1b1eb915b3a439dc33cf358d582b1d5426dee77d696c64b7042f6ae5b5cb4797518e33c47d33ef5dff0086916eacb6ff00128ef59de20d19981708485e460919ae484f964744e3cc8e67c4be1df3f4bb6fb014f3215c6de07999f7f5aabe1ad36ead239e5be4f25244312a1209727827f01fa9a92592f636d891f97db2a33fceafe936d7324bbe50ecc4f2cc724fe75d2eabe5b1cb0c3252bdce9f40d2a238959304faf5addd66d3cfd16eadd4673192a3dc723f502a3d2a3658941eb5ad9c7a5717336cebe5b2394d06dd24b5be46c66558c64ffbb54743b1bdfb6bdc9b3b8f244844b2a44cca08f538c7ff00aeb6acafdb456d4ae2382226360b18910385dac0671e840238e4024d76de07d41efb454bdbcb879a57933991865427c83030c7b13903192706bd4c3e19d4a7cf7d0f1b1d3b5568e4b5185fccb7987cca8e095ee41f7ed5aa8f1fdb2e9622c1d906e07e9c115d75c5ad86a31f94b6b6d28073f2b9727f2c38ff00be585516f0d430dc4b711c9280b18554519e9fde2cd8cfe20fb52960e6b639e35237d4e37c2170435c42c391cd5fd734c1740c90e126c70dfe351e9da15dd96bf7cce0322727c960e1431e8d8e847bd6c9f9a33ea2b1941ad246ee4a4ee8e6bc3fac31b992caedb64f18c156efef5d2c27cc4fbb81e95cfebda6ab5dc1790a7ef4feed8ff23f9d741620f9699ea40a48563cbbe20687e46a2cd180b1ce7783e9eb8fc7f9d606930476770e81376f1ceeee7a835ec1e2fd28ea1a3ca631fbf83f789c7e63f2af282e164ce3e707a8aa52e86f4ecb568d0d3a5bb95dd5f788f183bb85e2bbbf0db2358c4a1959d78c8f6af36d5a0b8bed92dac8ca3f886ee05749e159c58aac0f36fdd839f7a24852776d9e800ef568bf858107d6bcfb5cd32f6f164b69dd56584ef4933c123a71f80fcebb682e4c8d185214f7278ae0fc51aab43e2d16e43bdb385cb03f74e3ff00ad5ad3d4c25a1b9a34466d32062c5895e4b1e41ee2b5b419cdaea2f68d23470de2f925d4e0a37f0b0fc78fc6b26c678acedd41f91646c80c73cd3ae6eedca905c89074c0e87b55f32687caec43abf8534accf05dcb773de17f9e67396041ec4d374ff0d68b6a00369e791de762dfa74addd66e56f74fb4d51460cabe5cc07671c1fceb90d4eeee50b600c1385c73f8fd6b92735076139a45fd5af21b293ecb60a2de2098d96e027cd50dadff00d8984b6491cd719299e40c67820d605d133a92cc3cce06d3fceacc2f3ac4ab182a8142fcabc565ed92d4e66db95d9e85fdb91cfa72eec0958724aee0a6bcff00c5969677dbb7dc18cefe2423713ed51ad8dd484852325bac8d815a717856596322f6f6de38cf38505cff004a5f596a4a517665b83ab16ac7946b9a78b4d4648e12cd183852c304fd6aee9e5cda329936ba8fd3d2bd213c17e1bb7895aeafa4930c59c0654c93df8e6b42d6dfc27640a2d8473b8f994c80c9938f7e2ba7ebb1b6ba970a364949a4794fd9545986589de5ddc60f41f4fcaba7b36f14dd7877fb1ec2c6e7ecdb998388086c1eabb8f18ce7f3af46d17505b91ff124d1401fdf54544fceba7d334fd45e6596ee748c7fcf38fa7e24d65f5a94f448da14e2b5b9e2fa1fc37f12cb09135bc36c8fd44f2807f4cd753a27c28bf5bb4927d4a28957a0810b1f7e4e2bd822b6893e693f78476e82ad44c1870300761c0ad2d292f787cca2ef13935f875a65cdbc0baadc5c5d0833b4060a0e7d7156e1b2b0d0aec5b450a32797be3694fca801c6028ea6ba4f3542b0cd739e27b792eac964b6cadc5bc824523d3b8fca928429ab450dd494dde4ce7759d5ad6fefde38fce9e7cecce362703b03d6b2350d6174cd4653760cc1d554294036e075f63546e0cb73772b4928b6913761c8c93ec3deabe9fe1dbfbb931144d7258644939cede7fc9acbda5f61a7d8b136b1e7da19e59921b746dac71c8cf4ab16374d7cac96d1dddc4aa0959d937924f6c92028fa56fd8f846c61911f51759245c6208b3b73ef5d8dac114502a468b1463811a0a132cf3eb2f0cc8d22cda839924383b1016c7d735d65b69b3346a90c296d1018e8327f2ad79248e31ce140fd69ab788130aae73e94014d3445c932c8ed5e3dac0b683c55752cb218e4b4b87cc6992595870303afd7eb5ed0d74ebd0003df9af36d6b4bcf8867bb88ef958fef17b303c835e9e574e33a8f99edb1e6e675a74e8da2af7dcc69ee2fb556091c4d0c1d02e79a7cf8d3edcc4bccc473fecd6cea1343a7c5b2103cf61c9feed731223dc48cc4f27a93debde93b688f9a8a6f5667b056e064b13938ff003edfad58b6b4695f7c8bb628f924e7a60ff80ad0b5b308e06467fa7f91506b927976e6de23cb753fd3f5a948b666e3fb4b5277719b788640ff003f4a4b88ccaee59b6f1f2803040e71c7e15a50d9489043676ff2c928deedfdd183505fc096d3f956d107c0e4b7f11dc69ec25a94e23358dc0922660b9e093c1e4ff8d76ba4ddc5a95b875e265c640ae422980262ba81b691c83d8e3b7e557f4e74b3bc56864519ed9ea39ff0a9b9563d2b499079d0798c387527db06ba1f887e1d6bcd3e3d4ad5124bab5f9c281f793b8fcab87d3ee0cca0a727d857ace8122dc68d6ed71b9895c107bd7998ff0075c6a23d8caa5f140f12bebd9238d0c21771f6e9fe79ac6b812b4a6492424f5c835db7c49d223d1e56ba8c6cb390e41c70a7d2bcee59efe40be5584c231fc6fdc76a7466a6ae8edc4434b9299b2bf3f27dea85e4624c346b8ec6a6315eb63742067da9c96b70cac24da3be2b670ba39e955e59185aa5a486d77038d9c9fa561b20da0333135dabc3e6c1245b830c11c1ae7cf87eed81d9b727b1a84b43d073b1afe2fb0b9d3b50166f7f65751a0261169702648813f773ebc0fcaaf78525b9d374efed78ec6d2fecf4d702ead2f6532212e4e24119185e817233c8f7afa2743f87da2daf865b4d934e815275ccad328925248eacfebf4c015f326aef1e8fae5c9d380b8b78a478a33729bd5c720161d33dc7b8cd713d1dcc16f63b2d27c61abe8be0f965d2c6976975aa5cbcacd1485eee5f988c08c02114720671c671c9ae864f13f8ea4d16244974fd3811b8c700c4ea3fdb24158f3d7e6c1f7af3ef0422586ab143ad6a579a56997c996ba823f2dd873821caeeda4e41c5765af69fe04d3f4b0fa5a5ceb8a25f2bce96e4be1cf388e2ca9727d71b475e7a55a7707aa382d6b5382f2f9e2d699af2e158979d5d2677cf6328241c76eb8ac6bd5b388c72e9ea551473b99b2c7279ebd7181c6071d057a37c39f02add6a925f6b7e1dd627b4077c3691421633c9e24672b9c71c0e0f7f4ad2f8b9fd937d13b8d223d2b5188053baf6dd4ba8e998d5892463823e9cd43a5d6e6728d91e75a578aaf60911e3b982374180d9923703bfccb9ae82eb5dd5b58d35631afca195c48b05c5d072aebf75958e483e8723debcfde25070573fed0ef5660d3a468fcc16b7262fefc719651f88e2b3f7a3b1173d93c29e2ef116bf7602db787535a5f905c4d235a5c483e80e1c7b608f6af4e6f10eb9a1cd6f178ad34fb7b6942a26a1146ed0873fc327cdfbb24f43f74fa8e95f29d9c4cb2888b2c609e16e10aab7b7d7fce6bd13c29ae78dedacae20b280eafa5a8d9359483ed4aaa4742993205f7191f8f1571a8dee5267d279d54a8689f4f60791f2be08fae6a85f9f15157fb19d1c71f2ee5909cfe62bcf7e1bf8c1b4c59ad2f6c6f62d2460c4b1e6e16ccf39527efaa74c2b0c8e7b57abe9da959ea56e27b0b88ae223de36ce3ea3b7e3549dc6cf39d52ebe26c24f93059483fe98c49ffb339ae83c109e287496e3c55711866e23b78c28d9ee481ce7ea6bad60c693017ef726a9215c6f39e290afa9a5dc4f4e05263d4d512725f13742fedaf0cc8f6f1f997d62df6a8001cb15cee4ff00812e47d71e95e6ba7a412dac735b8531c8a19481d41af7466f4af1ad574efec1f135e69cabb6d2626eed38e0231f9907fbad9fc196b3ab1bab9bd1959d88c27b54b143fc59a31cd4f170b84ebdeb046b3764205c13b8807b7ad35df11923058524b6e1a4c92431eb814db8f32242e98e383ce4fd7eb4cc52561606768cefe093c76e29f2c24a8c1e829eaaaf182a72ac386cf34cc6d42818b0cf7a45455e5a15f152785af1347f17c267c7d8b5302da50c7e559467cb623df257fe043d282b54f55b4177672c24952c3865eaa7b11ee0f34e12b33692bab1edea00181fa51583e05d63fb73c396d75291f6a4cc372a3f8655e1bf3ea3d88ade91b62eeec3afd2baae7135676140a701499a4cd2b80ad8f5ac2d4f5144b479b3f2ab8ce3b8c640fccd5ad76ec5a69f236f2acc3008eaa3924fe001af22f10f8acd8477d68eca9b640ca76972bb833ae40ec374993fec50da5ab264ec75dabeb453483146f897cc8a33ec4c841fe75e63e31b37d42c56e9a4659215263693912f232108eb8193c7f4ab3e07b0bef196bd35b4b3ff00c4a617df72d1b83bb041c0c7f7b2319e837f5edead6be0ed322ba91275332e06d59390b18390abe833d7d7835936e6b41257573e7df0e4771677e937dae282363b5815078ea49383b718ce7a8aed7c61a7c9791adc5ec56714f120ccc626db291b4a9dc0647031f7ba31c0e2b9df887a31d03c497d6d18020277439e9e5b7f872335b7a278fade3f0bc5a7dc46f3df479552e434446ec0041c1181b79041fcab384795b8b6538fbb7392d62c2fa080dceffb445e734266594363270a5b04e31b50f6e7eb54e5d7c5d58ec7da1e4622473962a3208207033c63df23d29f7571235dcf716a1638e491b7c30e71b719f4ce3a0c73d335893411b36f836e08c9c1e01ac6568bf74c9c4e934af13dc58da2d9d90590af991acae08628e0646d07000fde0ebff2d0d4d71ae5d48274f3d96121657579318455dabed9da33d3ab57263f771095d893b88031d7d7fa7e756ed71777a52ea7f26295819ae594bedc9ce703ae064fe550aabb586b52fc3772f92c1a48c2365155f1c755254f6233c1071d6ab5be9f7d7b1c8da75bde5da8e4b450b3a8c8390700f35d75abf87974f0a2c90c4a4219675058b11d72338ee78c55a3657bac0b4b1f0aeab3a68f083bdc5c3944c9ea707249eca075c8e2bcf58a9549f27235ea6b185f73cdd2c6faf37430db4f2ba13955424afae476ff003eb5d0e9767ac69ba6cf1ff655dba4e8097c00c07231b739c1c9e0819ce7debba8b4df105e6a8b05bea2be42011299ad9d99f661496e3209209fe67350f89609f44b6bdbb90da79e11227923400ef3d3a8c8381ea7f86aa9d6aaea5b9572f735a305cd6ee78b6b4ad0ea72c3203e7a9c3ac9c9e3f4efd8f15456df7b6e8a201539c1ce73d8ff009f6ad2bd2d7b3899cee6e80e79f4fe82ab38f265079191b727dfd2bdc524e374692a4e12e565ff000adbfde0411839e6b6758762b819e3b557f0e295524e7279e6b6aeed448077245724dead9db4e3a1c15facb30da3a552834f313798923097bb64d7753e96bb3e55e7d6b325d3186703342ad6d0b74ae72d2c46493749f330ef923f9559b6073844551e8a3afd6b6974904e5c1ab70d8c710c2ae4d0eaa638d2b1971c121c173c0f4a7c569fbcdec335bd15a165fba368aaf2809276e2b073be88d542c5ad36208405fcabb7d19f66d238ed5c5e98fbe603b7735d8e9aca98c9e958c8d62b4b1d8a81736ca7a30eb59f2a6c3f301c55ed21d1e33f30c74029d7518278a1abab90b47630a5d56dc36dced65e08f5abb6b7d6d247c8563ea456278b7453f646bcb46224886580ee075ae534fd5483866a5cccd153525a1ea69e5eccc7b48eb5341280bbb1cf4ae374dd5b2b82ff00d6b6a0bf565e48cfb51cc88f66d1be93061c8c560f8a2206d84a0720e33ec48ffeb54f0de2938ddc9ef9a65fca27b69936b1c718c7dee3b54a61cb66784fc47b6f2f5f4963eb2c0ac7eb923f9015c9448c270cc33cd777f12063c4a90b0c04840ce3827736715ce8b3ddd2bd2a73f711cd2873499a161a9aa5b98a58c34646082783545adb4d49fce8a139ce76962403f8d491593e780715652cb68e726a79adb334f669ead19d70ab3bee58f1231eb9c9fceaee9f6fe5fe3538b711fcc4734e86450d835129df635a70b33bdf044e43ec6e878aec6e6d410415c8fa5707e1878d6452a7a57a8598496d1589c9c75ae56cd65a6a72371a2c12396d801f6a6c7a5471b7d2ba1beb77c33c4324751eb58c2e371353ccc714993c3184000ed5227de355e397df9a93cca91b43ff00b063d684e8f22c7147b64909e33d71f360ed39c1cfb56ce93711e9f68f00b9b68f6bb7caa6658907600a1e3eaddf3c0ac06d5ed21b7bab68ee2317c0aef86475f9811f211dfa9c11dd5cfa556f08dd4d069d1088f8815dcb488d6b1864704e00652305800013ed5f4985838d1573e6f172e7aad9dd1bc98a6db9b692e013f745dc73a03d3e52e438fceb075ed7a2d37cb8e3125b9322e2395986d60cb9428c4f55724156e71de8b8bdbcb5b4792eff00b69c10711dcc31491c9804ec2abc824038ae56cf48bbbfb857962965445f281785d92588105728d82ae000320f6ae88aea733120f15ea0610d6f1b944864936e08188c3210074ea507fdb3dde95d2699a8bde35cadd47e5dcc5e4eec0c2b6f8c1c8ff8106fcc568e85a1471449e6da840ae594904fccc3073b98b1c8e08efdeaf1f0e46f816f3184f966df039f941ca0ebd50818f6e3dea2b463522e2c706e2ee8c8755963647f5c8fc2ae5ac91ec196191dab3bc571c9a5a0699cac320c078d4f5f4f6ae1ec6f1ecda5fb23ccef27de91db731ff0af06a7341b8b3d58462d735cf519afade243e6ca8831d0f24fe15e43e20b7863d4ee3ecc0f979dcb918241ad4b6f3e462ec1cb1ea4f7a4d5a1fb4cb1186d9d11460b31196f5cd674e5caeed9526b6316c640aa632b90d5359c73a4856354001c924f38eb56ed34bb8f3049b36c63be6ad7f67319cbcecbcf001f4ad1d648c6524b72fd86a314ebb656026046003914ebbb3b795d9f6a993392dd715560b2b6888703e61dc0abeafb402140cf159fd6794e6a95a37d0aa580fdddc28902b0edd79a2e22f2e5976aa04900392738c74a7cbc924b648f6a80fcc7e6ebef587d61a6da337891ab7d24763716880985c8620f404771505b420ed668f7053ca93d6af6d466e090718e38a0b3296e318ed59caab96accfdb36cad146d242cd0c51a6d38236d45762e7ec9e506002b6e181ce7d6ac995f6b81f286ea455259252c06430039f5353ced8f9e5d0cd16f7be6960c7cb3d8f6f7ab11413152669d8afd6b7747d1752d4e61b232917ab2f5aef747f0adb58a892f563693b6ef988fa0e82ae109d4d11ac294dabbd0f39d23c2971a848ad0dbbec6e7cc7f9547f8d77fa57826ced42bdf912bfa38f97f2eff008d750b22c631046147a9eb51b12cc72493ea6bb218651d65a9b46118ec16d0c70a88e1401146071803e82a661c120723b9aaf14a23396a965b85f2db602cc6baa2a315a14eec4059518b9c8a845e11951d3da98f748842c9f3ff00b2bcfe7552eee188c5b98edf9e49e4fe159ca6ba1a460dee5b6b848086b9728a7a000b13f80aa97379773a1fb0edb689b8692740723e86b226bf8a17fbecee33924e7355a4d51a77e000718dcc49a984a49dd14e31ea4d6b63a6d912429bb9783be4185cd59fb6c8e362111c63a2a0c0acb33313c9df52c4f230c2af3ebde851482e6b2caa08c643fa8eb537dae403ef607eb5951c528e5b79cfb55a8a07dd9233f5a2c80b1e7a16cb312073eb5324cee3f74bb4638cd47142ca7a024d4e0ec1c019f6a341d8688dcf2e738af30f8b57377a66aba7df584862dd134640e87073823f1af4f32332fddc5709f16b4b92f3c3a97312966b5937b0039da4609fe55ad09b8cd3138c64b95ec70b63e2eb5b823fb4e278e4eee9f329fc3ad749652da5ec224b422453d36119af2729cf22903b44731b3237aa9c57af0c5496fa9e7d6caa9cf583b1ed16f6a6305cc326ec703049acd874d796fbcdb84c26eddf37a738ebf415e4b36a37dcff00a65d7d3ce6ff001acdb8b99a4c892695c7fb4e4d6bf5c5d8e3fec897591edb7baa695a7bccf77a95947231390650490338181dab8cd4fc69a34721315c5c4edd0f951e3d7b9c57994e07f0819f6aae149c9ace58b93d91b432c8477773bebcf1d599045ad8dc375e659003ce7d3eb543fe138b90dfb9b1b7cfab966c572014719352c64afdd02b27889bea6f1c1525d0ed74cf1deb77b78b04979e4419cecb74099fc7afeb5f4efc39f1841abe930417b7312ea29fbb319e1a4c746fc457c656b27977f0904039e715e87e1dd41a3b9b7bade44f0307420f4c77fad73554eaeeceda14a318da2ac7d6fac69d67abd89b7be8c491e4100f63d8d79bf88f4e97c3f206c09ad5fa12391ed5d6780bc5169e24b1ca9097680799193fa8f6ad1f18e9e979a0dc2bfcd819fa0ef58519b84ec1515e2ee78e4a24bd87cf54d8849181daa935a65d4052ee4f009a7a5d3e8b657b05eccb2c6b2e6dd94659948e87e95cd6a5e28bf2823b1b10a5bef39c966e7f4af59cf956a79305cf3b2d117648845a9a5b46e195465c81819f4ad25091e70ca09ee7b57013cfe2492e4baf976ea54317200c71eb58f79a8039175accf7137fb20ed1fe3511bb3b9f99f4b687e38f17fc40d465b0d056cf48b554dd2cfb4c8d1af4fbc7a93db0077e78ae47e1ff00822df5df176afa26bb3c886d15dc2a1c3348adb377d06ece3bf15b9f082fbc45613eb3a5daa68b14b64aa2517b23a98d559f76368e40624927fbc2b17c5779e20b4f184de24b04b78dcdbf9de75b46cb1c91906367018ee20e473f43d39ae4dd5c6d72b39ef13da5e5b4126853dcdbdcdbe9b2c8b6b244431249fba4f65e0fd0935cff0085b52bfd2eee6bfb182096485427992c65fc824f0ea41183c11919a6069f50d42de08233712bcaa042cc57cc3fddc83919e9c7ad476ef731ea77274f32812ee8c44e0bc92231e54f072471d7d33daa6ec8df53d4f5f8f5afb4693278b3c517d79a05f46ac2e74f6db1ff00df3800e3bf19c7e55d9a7c2ef01696b149a8dfcf3f9c018d65bb00cb9e9b550027f0af9fa4d52fe2d38e993cce966b279a206258a373d33f7739e71d6bd07e0bde5ecfa9b58e91a669b25da46ce93dd4ed0498c8046e4cb30e47cbc0e3354a6ee3ba7a23b8f1df80bc28de1f75d3ad0691247f3acf2c2e37601e093f3e3a75e3bd73df0bf5ad12de2fec3f15e856aef1e12db53b7b40fe629fe176419dde8ddfbf3d7d08d878c8ac8d72be19b762d9dac199368ebcb21249f5cfe15cc78e74249b467ba3a3410dd20dc97fa632cb6d211d564002951db7638f5a64ed722f11f80edb5379e7f026a56d34c9f34ba64ce51c7d390c3e8e3f1af319af357f0eeaad15cdaea3617eb90541d8d8f542003dbb641f7cd67c3717779ab5b43a7b4b1dfc6c4436f2cc42eec72a877028c7fd92327eb83e99e0cd56f754b4bbd2dc493ea888cb25a5ec822bf84ff7a290e12600ff000b856f527a98946faa252bea8c7f0df8dbc47777d6cf67791eab300c12def63566723a853f2b6e1d7009c67915d52fc57b8b1ba3fdb7e120972a70d2db4be5bfe4c33ff8f5663e857dacac2d61b2d350421aeb4dbf408bf6807009e8e9bcf2ae0904e0654f5ecbc313f87b58b83a36b9a5cda56bd18c3d9dc4ef890ff7a36ce181ebfe239a98f321dbcc874cf8c36d7d7cb05be93a9491e332799e4c6621ebb8c815be9c1fad77565e23d32e215924bdb581d867cb92e622c3d8ed623f5ac2bcf871e183206314d149dbcb9893f8039cd66defc27d1af010925ec59fe27f28fe9b33f9915a2735d09b1df5bdfdaddb95b4bab79987511c818fe869e644c9009771d939c7d7d3f1af3cd1be1f5af862f0cda36bb771c8dc3c124492a49ecca00fe62bb8175702245d914048eac0e4ff00ba839aa527d42c592266c93b225f53f31ff01fad70bf12ece3bbd256fac0cb737fa6399ff760bee8b189572381f2f38f5515d54904d704828d29fefdc9c20fa20ebf438fad22e891ca3fe26533de01d2261b211ec231c1ff0081669ee0b4d51e616d2a4f02491b064701811d08a9e36dad9aaf2e9dfd83addee8c06208889ad33de072703fe02432fd00f5a9c75ae66acec75ab495c7390eeac490179c7ad3a5432c1204527238fad46481556ef5286d237f365c6d058aa824803a9c0a5713a6ac59b185e107ce2027f77a906a495972768c0ae6d354bdba914d95b08ade55dc25b83d3a7f00e7f322ac4314c599eea7695c938078503d80f6efd6842ba8972e7508214918132ecfbcb1fcc7e9f5ac81a95dcf6933e238d98931601dc17b641e33fa7d2aecaeb12f638ed58979aa44b29e43c2e9b971ce4724e3ea037e207ad3b12ea9d37c1cd59f4ed6bec975752cf0eacbb83cb8c8b841d380000ca0ff00df22bdac9078eb5f2dc3ab4d14ccd134493c0de64257f8644f981f7070df957d09e1ff0010a6afa3c3a8c7132472a03b09e55b9ca9f704367db15a42575622a34fde46e4076ee8cf54e9f4edfe1f853cb5539a555915cb0dcbf7d73d17bfe5c1ff00f5d47a96ab65a7c6df6aba8e26c640ce5bf2ad4c8e63c7da9c703286b910989482c71f29241e9dc8c29c7aec1fc55e07aa5dc363ae29950dc2c41a1954e0ee382adf8107f124d75df10f5e835112af95e6c4cf92ee3a10480c00e40c93df82cc0ff0d79a582bdf6ad696ea72d248b1f3ce06715c75eaeaa28c5ddcac7d0be00d4748f0d7862353b7ed972c67782dfe7d99fbaa5ba703dfa93591e34f1b6b17112c9a4db7d9163c812a90ce73c639f5e0f4ea073556430daaa860153eea81dfd0570fafcf35d5d9ff0048d90e701109036920838f5c91ff007cb7a569ced2d0dda4865ccf7da87fc85249a6987fcb4941dff439ac7d4e236f1f980118e3afde1f4fceb5fed10c5132cf71ba50c70c1b20805b39f4f5e7da8b416f73710099835b3c8aae54f1b770cff5aca4ec9b2a3aab18f6b6173a8869ed6d2e2547c3ef8e26237670c3818cf53cf6c567ce27b1bd6b3bb8668e6006e8ca156e467bf6e6b73c51e36bc7b992cf4bff0041b08b01360db23a838ce73f2fd07e75cabeb17f72337771f6978080bf6862c47382436770c71d08ae7a3ed66af5125f999bb1e9d71e12d123d3adefa796e1a3863f35f0e0894633cfa7e18ac2f08f863541359dfdd5b4b069f25c299268d937274c36d63c0040ebc54be0d8e19fc3d796d78d78806e9d60695824518206f1d0fcccd80338c82c6b4750d52ebed3713b7da9ece4527cb40410bd4bb80791ee7001c6077af25cb1149ca09f37f91524a2ee54f1135c6a135cd9ba5bc72bca0e522555520e18fc87d32723b8f7ab1e139e3f0a5bea6b0df4535d49123c45136b06e41e580c1ee33d718ad7f0845aa5c5a5d0874758b4b53be495936b1e0eef9b196edc718f5a8e33a2df7daad62d1e686e3722b5d194b2346af96284f2adce39cf19c11cd6ca7251e66ec9eba8d45c637307edf7c2c6ca59351bb8d66fdfc01dbf832795ce1b9233e9ec7ad5ad4ae62bbf0dea114a931bc936c8b299032c9b7a96181ce3a75aabe20d1d975c58ad6e8bd95caabc681f0b19ce1b827200c6481fa76b9ab6817fa4e8f16a9a9dc59dbda8daa626666670780071c7193cf61f8d691e7e64e9ea9fe1e638cdc26a5e679d5a5b92b92e814839ff000aab398e262cf26e078e9fad69dca88f53545656899711b28e1811c118f5ebf8d73b7b9329539073debd183e87b7552a8f9bb9d5f86a505fca62383c7b835d485e79ed5c27877724b038dc76b6d63ec47f935df91b5013e80d2918c55b41a7601ce09a6adba38c0c55692425b03193524276e326b9e4744093ec08c08c54634f0a791c55f85c151cd499cf5aceecd52292db85461b7231c62b93d4db6dfac49d5ce39ed5dbdc7cb0b1eff5ae02faed7fb7a260ca5412320f7e6ae08966cc169f6561217e71d2ad0d53637de3589a9eaca91e42b331e8a2b9e37f76f2b33a222765dd9356a9b96e0a56d4f57d1fc426242030c7a1a6ea9e368ad63c3be58f403927f0af3cd3a79e725541407f8b3915a90e84d39cac9b98f526a1c12d2e6974f53abd27c65fda3279091b963c61875ae7f54d2e4b57628a40ea315d4784bc38b62c6e3717988c64f6ab9ab698cc252cc583741e9f4a8d83992d8e1b4dbb756dbbf07deba8b0d4011f3361877f5ae3356b796d262e8a4107a54ba5ea624e33861d450e37572af73bd8eeb0e1970074357edef4bcaab1a2cb27646c61bd8e78fceb96b59bcc8c609e6a7f3e4b3b2bebe51bdade0790283d76a938fd2a12bbb1127a183f16751456b4b3f3313f9865963f2c461171f28c0fbc32cff37393deb93d32e15982b74ac2f107882e3c41ac35f5d00a4a8444073b54741fa93f8d4fa5cc372fad7a11a1ece9a89c90aaa523b48047267039a9bc9503a567e9f700007bd6b248acbdab95dd1dd1b191a980884f61552c2d23b956677e7b0cd5dd757fd1881ce6b02dae1e256404a9ec71571578e84b7667496377f62936e7a576fa3f8976daeddfc0f535e411a4ece59ae249189ef8005751a441fb80b3b7dea89d34b5b829396963a793e20b9d43c9b481e74ce0ba8f973edeb5b3283203284d9bbe62be958ba469b6cb3a48464af22ba2924420824564edd0b56450590a375a9d26e993556e800095355a394e5467bd115a8a4f43cbfe20dc43378b2fdb73064289c0f441fd6b26db5dd56c6202cb52bb8d07f02cac07e59c555f105d8bcd6efa7072b24eec3e9b8e3f4ace69496c66be9295e3048f9ba9694db3a98bc6faab46915d2dbdcc4a4122585792338391839e4f35e99f0f35ab9b9d26e7529f45b2bf5494058a055499001cb63049192003ec6bc4b4fb76b9ba8a14237c8c15771c0c938e4f615edb63676fa24d650ea7a65d587d9e358a2d56c1c947c74661d0e7a9c1cfb57445b6b5319a4b63d2f44d662d4edc5c5b3ee58c7cf13478960f5de83efa762cb861ef5af1de04850c8552361b519d8346c3b0594718ff0065b07d4d7211cf3958ee2f99a78d4e60d6b4f1f3a7b48a3ad69db4d23e66b660e2660ad7ba5302189381e6c0dc7d6a5a24e966863bdb5786e109593b32e727d41e84f7e335e63aeadce8fa83dbcb6b987ef472a9f95d7d78ae8ac6e9a491fec51da4b724c8b249086817746eb90ca5b1c8cf38e3af6cd6aea220be87ecd759b8949904641c11228dd8cf206e5e846413f857262b0ded569b9a42aca29a470b6b2c93310480a47040a9c41215ea0e3daba88f48b0d9b6012a9ea8c5c1dc31b8123fdd2bf8e6b2e640990315e162294e834a6672ab37bb338c326cc1c81d71d2886dd3613201bbd4d6864300a3e722a07b725be53815c8e664d9992c6363763ed4912384041271dab4762479df839a8e3921c852dd4d4395c2ccaab039424ae3dea44b4e8587cbdcd5c5462db81fddf4031d6a38edee6fdcc76ea060e093da8b337861e4ca7742184164f9803dce3355bcf59c6c8119e5fee8aea34ff045d5cc9beea6db18f4aeb74dd16c34d5548225661df1deba29e1e73368e1edf11e7ba4783f55d4555aed7ecd19e70c72df90e95d6e9be16d374b1975f3a51d722ba989f1263f84fa74acfbe505e40739cf15dd4f0b08ee6b1518fc2805cc71c6ab16d41e8b53c21655dcc411f5ac18adcb4a47249e57eb53c5be2dfbcec5078adf48ec5257355d8e309b768a8492dca8e45645c6b0238d956121faab48719fc2b9fbcbdbbbc3fbe99821e8aa70bf954735f62943b9d2df6b16f0165deb2b8fe1439fd6b127d5ae6e7202222765cd6515551c1a4dec78ce0516bee5256d8d35d4258f23cd541e8ab54ee6e24958b33337d6abaafe756a0b6328079a49243bb2054321e4f5ab505b0e1411cfb55e86c19572cc00f5ab712c68088fe623b91473024476f628305c13f5ad287c8857e540c7daa919828ea49ef4df3491f20a5b8cd1924dc0972147a5356ea38ff87713deaa468ce7904d5858428dcd4582e3c4c5cfa8a7e463938f615186500f18a686ce703f3a7615c99a4017e51cd57b88d27478a61ba3652aca7a107b53d01da4641a72c5819345c691f3ff008dfc3b2e81aab2ed26ce625a093b11fdd3ee3f9573c103a60f0c3f5afa5b5ad22cb59d365b3bf8c3c527439e55bb11e86be73f1569f3e85abdd5931f39607c0900c123a838fa57552a8e5a169e862dc168f3803e86b3a6390485e739c56d2ba5ca649f9bb1ff001aa1736cd193915b5c96bb19329773d315118cf7abeea00391556439ce2822c401573cd4ab81edf4a60152271edef40896c61885c7992b6001c022ba6b1bc80606e28a3d0726b97565ed927daaf5a4d788018f60403f880a68b83e53d3fc13e2d5d03588af20469369c3a2f753dabe8fb5d522d5f4c49a261e4cf1eecf6c115f1cd96a0c64c25a0797bb20c0af63f01f8a4da781b59b59d36de165fb3efea14fdec567ec7da4d25d49af51420e7d8a1e259acedc9b5b34fddc4e70d9ebcf35ca5dead6d604c975cb632133f4aa3addece2425df0cc70003c9359f73e14d626db712d85c49b803b7bfe5d6bddab1a14d2495d9f3783788a8dca4ec8cdd7f5abfd7ae996d2365b70a01006147d699a0e95234eb0087cc773c96e001dcd6cc7aa268aa21bfd39e1da39453b73f9d6be8fabc37619d228edc48368cae4e3eb59d1c653a2db713b6ae1e75236523d9e3f09596b5f18b5bb75bc2b040bf6a7455c87725498d8775dcdc8efc0aee3c6769f69b6b5d4ae152116a5a0381f2bc122ec76071c75040f41ef55748b5bc9ad6d63d0ad217b9196bdd4aec158e4693e770807cce0b11e8300735a7af6950dbe977379e2bd66f2f2d954eeb64905b42f9e8815482d9e986635e42563be5b2f23e58d4eda4d23c45344c5a29ade6f9590e0ab29e31f438ad4b3bb6d2f57d235d6966b8865918cde5465586199644dcdc172a7208e46e078eb58de28902eb133247145b5bfd546db82703e527bb0ee7a673525a5f5cc5a4dee952a892d2491264f9bfd5ca3a3afd53208ff0074f600cbd1dcce32b1e9de2e93e1fea5e1363a64ccb7c91992128987e49e27cff103c13d4f07e6af23d36f2facee164b1bb9adca9f9648e420afd08e47e15d6f83bc331f8a216b4d25e04d76df748d04ec163b988107f30703df3c90306b63c4da4d96a5a3df5dea721d3fc5b66c125d2c2380f128ea992cc70a33bb3800740083434ed743946da90f87754f0bdfe8ef63e2633dbdeb0246a72bcd310727a0070b8e98c1071cd5417727832f22bdf0e78874fd5ecd9bf796ea59038ff6e26c11e9b9791fa543e0cd0acf56b0bc65d7a4b2d62cd4cd6914f362065eea4b118258f41c73dfad6b38f0edf5bdaddd9e9f790ea523813e992c6f289d7a33dbba6de477048f71c72293b5c6f5d4bbe35d2343f1278453c57e0f89ada4b7e2fed0b16689bd7273c8f6ea0823a54565e2d87c43a0db5c6bd64d772d99109d462fdddcc0e0719900c10474dca73f5cd68dae85a71b39affc2379a86c95447730476f33027191f30418619fba4b020919ae1aeb5cd5bc3baac91358db431ca0c5be30d18957dce7953c718e3a1e949cafa10f4d8f4cf0e78ce0bc7feccd780d72cb6e22bd0365e5baf7dc172cca3fbc8491dc57a3eada5693e20d1ad8ebd3c377101badef20c2b0f470c3241fa704f6af9df52b3b61a441ac59b69aea70e45bdd791736ef9e850907703fddcfa8f7e87c05f1421d34490eb6af22367f7c2204bffbf8e09ff682827b934d4adb8af7d0f66d166d53448fecb7ac2facb388751906c900ec261fc5fef8fc40aded92dc0cc8eeea79c2feed3e99ea7f2ae0b45f89fe198eefca37920b671fbb9a68d8b447fb8c79257d0fe07b1aebf4ef11e877801d3f56b29149fb9e701f903d2aa338bd981a715b0418521077118c67ea7a9a9a38523cec5009ea7b9fad395d5972ac08f5068ce6a841499f4141a4c81d69dc0e1fe2969ccd616dadc0332e9ac4cc07f15bb637ff00df242bff00c04fad797ea7e2c8cdacdfd8a86ee75036b6d26327d3a82723d2be849952689e3910346e0ab2b7420f506be66d72c17c1be2cb98a58cb450b7961ce7985b98dfdf81b4fba9f5acaa2bea6b4a5d0dcb57d42fcb3de4a6de3ed143c1c7bb75abd696f0dbe7c9891327921793f53de92d248ee2059e02191c654fa8ab509c2735921b95c89a324e31814d0d1c7f2bc8a08ec4d3757de6c5bcb52ec0fdd53827f3e3f3ae6b55566b2296f731c4c392883afe54323a106b3acacb23a5bc854ab603679561d33ed5cfdd5d3799e7463ca594970a39f2e5182c07b121587b802ab9b7b877f9e403df1ffd7a2eb4fbb08d22ec963041001c30f7f4a9e6336984732fda0394e36fcaa0fa76ff00be414fcebbaf03f8cdb44b09ed9a3f354de437272d8c7ca449ff008f2afe66bcf7c9937ed48dd675391115c375ec3b8cf1c7ad3519e3fb4230203445573ecc0ff4342972bb9176b43daffe130bfd4226f3a6585582c6e908c67e5c9c9ebcb123f2ae7f55d5469b0c28c7cc2cec83383bf8f9739edeff00ec9ae6ecb5005e30cdf7ee236e0f63230fe42aceab3c734ba68ff5926c673b99b1b7cb51cf3cfcc49a27295ae5c5a32fc453096dddadd9963523284e778e84fe607fdf233d0554f0745b3c436d3b11f223487209008040ce2abdedf0594c4c0a92c493d9864ff9cfe759f04fe45e2b2b95760c09e9f29ebfceb99bbc93215b9ae7a6ea974b29c3c8aeacb85918ed47c75471d89fcc6735c7ea37462958a866989c004649ea0e47ae723ea58f7150457aca4e4ab2c8482879c01dff0032707dbd38ad19e482cfc9f3d6128b867de37972070791c1e86b59d4b685735ca505bc9796b30bbdc64470081c95f9411d3af041a5d397fb3e5689a50cac4328663bb3e9cd326be94caef6adf232807764723839fc3151c6d2dd655e555f403afe248ff0a719ab148a5e229e289d64911886382c07b71fcbf5ab9e0fb0b5babada54cb71382b1070aa011df2c0afd411d3f2ab93e9cd25aedb94f2bcc2a82493eea93800923a55ad3ed0e9b12dadacd7326c8cbcecae7606c21618ceddc031c11d79159d69b8c3dddc6972bbb3a4d3bc2573e1e5b792448a68646585aebccf311373800b7a819ce08c647d2b2eea4b1d2752bcbad3d2f2e256792332dc4258b9c1258600f97bf7fba3d8d26a5771e9fa75bea314d298a54d860bb90b07917077900e0853d38c0e327900f2ba26b465d78df4179732ba2f3cbb469c601c74ea3e879ae08c27cc9b7bea429294ac7a069d77ae59e9f2dc5fdfc91db9dcad0051e64c480bb7d7079ebd074c75ab5e21d42c74ed06c26d2af209eea625a57014f9400c6d0b838c13d0e3a7e15c0eb5e259ee34c9585c24b221540426d52bcedefce30473cf22a6d6b4168fc2906a0b743cbb884dcb2c60fc898dd8dc33938183c52a905295ada6caff00e4125277b0b1f8919b52985cc2caefd645f95a365392c40ebc03c63bf4ad8f10debf886dadad2fe49228a2740b26f2db97a17208e7ff00d7f8713e138ed6f2ceeefae6476b83be2b6843ac6acd8f98b31f40c3007afb55ad42dedede3b88ec6f647114ace0487253201c8c1ef9cf4e0938f5ad55374db507a9a468c9a573a2f1ee8f6f0ac4da6a246b6c802043f794739fafbfbd703aa5935e4c92db70cfd47a1ae934037f7925f5d4a6d61b0b50b93333eddeca088d547dece4f40303159ba9426ce7f36d9f740ff3290723e9f874aec7257d0f4f0b26e3c8f7454b57b8d17e5bd0ad0b1049524904577f6eeb71631b2302001823b8ea2b93b8ff0089858a48143328391f41927f4ad4f09de2c96823c11e5fcbb48c1c7ff5a95cd24ba97082af93cd35a42bc8fcaad5c458908ed59d7430481f8d4345c245986ec86c722ae4774a47278ac0f300a7adc05cf39ac9c0dd3366f2e94a300739ae1754b60f3318d71cf6e2b6ae2e8392aa4ee1edc552c867aa8dd0332cd95c3a8dd367fe03cd3134d656cb3163ef5be8a31d39a65cc890804f2c7b55733252bb2e6836aa536ed27bf4ae96c6c8dbc82595923888fe2ea6b8b4bb936f12607619ad2d275290af93b4b13c2e3939f4f7a9e57d4d9451e8369aa5942b869b69e9c8a9e4bdb5b98898ee227f6dd5c5be91ab5f593dc25bec851b6b6fc83d7078f6aadaef856fb4eb26b98eed4b14dcb80473e953cb7d0cdba6ba96bc472c018a38009e86b8e96cda3bd8a7838566dac2b4344d0f53be9249b569bcd55401142fddfc6b663b1f28468e0f0d9cd26f934b9491a3a65a91002dce455bd52111786f55ec4dacbffa01ab56ea046aa2aaf8b2511785b5639ff974947fe3a6a29eb242a8fdd67ce510db82c6b46ce72afec7a567ccbb0023a74cf4f5a2da6d99ce7ad7bb28f323c6a73e5676163718fe2adab6bace06735c5da5ce075ad4b7bbc1eb5c15299ead3aba1d05ec9e627278acb930a714e6bacc5c9accb9bc48c1676c54460ca95446ada26e9067a66ba88608c421da78d42f27e61c579d8bb92e0a7ce15090303ae33d6b5e3b3b5863120b9bb946e00a44a327e99aa9517d5911aeba1da8f1369b6802e6562060b018a593c5360ea4c7729f46e2b12db497d4109b6d37ecf8c006461ce39c93dcd2c3e10b24204c8259c9dcc7a006a3d9412bb0f6937d0deb6d45675386054fa547a85c182c6774387da427fbc78151da69ab6836c5c201587e21be06e05aa364c7f33e3d4f4fd3f9d5e168aa9512e86588adc907dcf3abfb678276045531031393d2bb3bdb55b8c36064d66b5af9538802b24a58025946d507b9af75c2c78bcc6c780f4a245c6a8b6f0dec76e3cb5b694ec3296041653fece47be48f4af44d06e0470243a25ebdbddafcb3697a89f9243dc293c1fa75f7ae324b8b7b7d134bd3351b47825b59a456bb8461906772b71d7258fe55b10dc5c6a0c91df5a45aec04848aeed9c2cab9e393fe22aef656327abb9d95bdd4760d34ab0ea7e1fbc55dee228ccb03f6e9ee4e0751cd43ab78934eb478ee6f1f4ebeb537403c9045e4ca1901c12072c72738e9c77cd72baf7891b408e3b2d32ef578f54454262b8995e38864b73d7e62367181815c05c4935cdd497579279b3cac599f006493e838a12b949773d366f8937ab146ba6da2096dee1a586e641b19949e55d57ef67dcf7ace4f1c7880f9612e618218e5f3a38e381488dbfd9dd9207b66b8c8a4f96a74772095e456aa282c8ef746f1e6ab6720fb4fd9eee2c01b197cb381bba11c0fbc7b7615d3693e25d375294a33496d3b9e239f1cfd18707f435e411dc87054e030ab50dd2c8bb58804719ae6c5e069e2a3ef68d12e27b5cdfbb2768e3bd44dbfcc0480100e4fad71de12d7f7ff00a05fcd9ce0432b73f4527d3dfb7f2ee2cf45d52f8948a070a7b9e07e75f2589c1d4c3d4e490421732afee97e51b3193d6a2b0d36e2fe5ff46824620f07181f9d7a0e91e05862c4baacbe6c9fdc5e82ba78618eda311db44a88bd38aaa78393d65a1d11a5d64727a5f866e04486ea454039391cd6f416b6d62a0451066fef1157b24b73cd41116331057007726bbe9d0840db99ad10c924f308dc48f4078a0463bf02a49943b0c0e4566de6b5616cac1a532ca3aa47cf3ee7a56b74849365d7f97001c83552fa68e241e73a823903a9ae7af3c4377392b0ac7021f4e5bf3aca7964dc4b3925ba927bd4395f63450ee6f3dd0c6eb75556cfde91bad655cdd4c5f2f3e067aa8ace9252a72a49fad40e64998658d4dbb9a6db12cf3a162725dbfbc4d55691dc93daacc369b94eece7b55982c46d3bce7d28ba42b5cce48d98f1935325b13819e7d056a8b304019c77a9e2b6863eb939145c7629c3671ae1a4396eca39ab7146dfc0a100f5e95279b1c63e4009a8da6673e9f4a405867f936bb671e950b162709513672053d7838e4d3b201e2227938ab51c68a79e7daa02ec7002ed1ed52478009fe74ae058de4e42f1f4a8c863d49a8c9e720902a45c9e848f524d218bb0e7ad39508396191429c7519a4dc4939efda8b8589792319028c71f3b54272071b79f7a66e19e49cd0058df186033f9d78f7c6fb0f2efecf55807cb22f9321c7048c919fc33f957ac6413c66b9ff1f692756f0adec0aa0ca8be7479ebb979c7e2322b6a4f9642b9f3c0010798a308de9daa68678e51e5c8473d0d3ecc86865b675ceec11ed595750c96721206f88f5aecdca4ec4f796c632467e87d6b2648caf5abed787c8c366587b1fe25f6aa6d287c98db70f4ef4b51368a8d9069cb228ea2891c3751519c1e94220b0972573b146697ce964eac7e9554923a50b235315cd58259d47faf913d907f85743a0ea1225c6d9a694ab7cb963cafd2b9382fae216cc4e41fe75a963ab42483796f2123f8e3eb4276d8a4e2f467ba687e14d2f4bb31aa412ff695f3a8314d3fdd527fbabd3d7ad477b67a9de3192eaf9a307d38fe55e790ea10ea5a6a5bd86a524570872aaf943fa75ac59b5cd72cae0c3f6c96e7671b1f2703f1e6b753babb399d2f67a2d8ef6e748b6170227be692563d1977d6c3695a6cb1848a043b38deb1ec3c7d2b8af0eeb13be26bcb160cc3820f6fc6bbab5d674f4b55126e8c93cfcb9a98ae7919d6a8a106cfa7ed215b4b55469376d19791b82c7a963f5eb5e4bafd86a5f1375a805b4d25af86ede6222917aca1787987b93f2a7fc08f639ec3c75772dfcf67e17d3e465b9d472d75227582d41f9dbd8b7dd1f5356fc21a85b48355b7b658e2b7b0bc3630c483eea46883007d493f8d646a9753e7bf1a7826dedf51f160d3adfcab7d29a1f21439385d8c594fafc8acd93dd7deb9cb9b1bebbd084a8603fd9b00872eca8594c9f263bb1f9f38e7183f4af61f8a5aec1e1dd5b5eb78ed9e6bcd6a2b4684001b63297524af24e70005c64eeaf2bf0e5cdaaeb56a6f6ce3bd85144ab04cc151d8642ee278db9c67db3594dbb91a3d10cbbd1757f0845a4788ad6e23114db66b5bcb76e7246406524ed2464153907919ab3aab6bfe2f8ee75d7d324bc5b64592ea6df19e31cf4c388b83f28e073ce726bb2bdf05427457d2afef276d56552749b48ddfcbe46e2163c9da010e327a02093d00f2ad1f56bff0b6a8d73612c9049cc73460edf3173f32371c7b1ea0f4aad96a36f97f42f69de24bcd3bc46bad58e9f1da470ba9786d6211c68ac0065c9dfb7273863cfb761d26bfe2dd47c55a2dd35ae843ec704a24374649a77b594f3b83e40427ae71eb5c2585f5cc178f25b2858e442248257c4734639646c91b871d01cfa735d1784b568bc37a9a6af0c36f75a74ae62bad2e5903b04c92b9c8f980eaaf838390719e662c95668c7b0d4759b6bf792d75436b33afcd34798b7f1ce5828c9ebd7be7d79efed3e1eeaf7fe1c8b54d53c43288a23ba5b7963795e15c9dcc03b61b1d78ea3e98aec46bff000e7c4cb1a6a168da25ccca1a39258442181e8430ca11eed597147e32f0b6a7f61f0fdda5f5934666b545db2437518ebb17fbc3baa907b8c8e6aa31b7a07a915f7c1d905925de99aa5aeb0a8cacf0c56b0c324b1704f96c011bbae01e2ba2b2f84de0cbdd2a3beb69751309fbe4ca1590e7043295e0a9ea3b60d61781fc63a55a3dc691e32b04b28bce66b59bcb2a2dc31c98cb0f9d4039c1ec0e091815dedff876e6d2c6f752f0b6bce22b988cb247738b88a6017190dd471c6475e39e2ac5648f38d53e0c6a561abc2da73477fa61932ca24114817d0ee047e3cfe15d5699f093c3f267cd9b58b794e0f9524c808f5c10b86fa835697e20eb9a1c51378b7c3928b56507edb62db9307b952481f4ddf85765e1ff001468fe23843e937b14ecbc98cfcb227d54f23eb4b9502d0e325f85b25a2b1d07c4baa59363eebb6e07eb8c5753e0fb5bcd26d5acf536b8967ceefb449379a921c007048057fdd3fad745494d452d85717713d68e94949542149af32f8d7a125de970eaeab936dfb9b9c0eb0b1e1bfe02d83f42d5e8b75776f6abbae2548c76c9e4fd077ae6f5cd72d6eecae6cc5b99a19e3689fccf94152083c75efed52ed6d422ecee8f27f084a7fb35ed9b992d9cc4d81c1e78c56e2679e38a96c34a82c57cbb78c28c0cb1e59b000c93dcf02ad9b7c1ed582d11abd5dd1972c7bf839c1ac6bad382c870bdeba8780e78e6a29e0dcb92391408e3e5d31793b7ad55484aced115fdde39f615d79b7041aab25aa6d60f8c1fd6a1a1230e4b05902488144a877216ec7b37d475ae575242f7a60d40f97333122661f7b3ebfe22bd1a0b3512b48d862785f61fe73542e6ce2b913c13a24a1b380ebb81f7e7a7e18a96ae292d0e1ecb4e99678c6e75659578dddc64e79e3d7f5ad79ad4c2619d5898cc3e564ae7008ee3bf5a82f049a55d797708c2d4fdc380cb9ff7ba8fbbd0fe7571afedc5904d80a11c2e3191ce3f99a8d8cf430efaca1960db2e38da1570a9cf4e80e476f4acf82c59e453002ea0e031181e9df9eb57f529425af97033105b2558670071d7d0e47e55ccadd5e5a3044665556ddc8e09efcfe1fcfdeb2716ddd10d9d7dae857d689e7dec245b8c95225d8481ce7201c75ae7f548cdcea0e60726246030f853c7b0f7cf4e3f3a45d6751b883ca9ae2670176fcc73919279f5ea7ad653ccf0ee521c678c018c8ff38a6a3cd2bb2533a7696778d23b680cb1ae14bfccca188ce1154f271c9278e474e3376d618a508d1c49f6866daa910756cf4e7e6606b31dfcfd0b4d8db2a2277f3767cc599829e07009c2f720719cf15b9a4a79da85aac58c21128dedbb014679207a81d33c1e09a6da51d0e956449e3091ac5acf4b322f99e4c6f38de082eacedc8c0c70c39e38f5abd6f696b61e0bbad49e2bf9b5091fca926132b47c1c9253393c71c83c9e2b4f42d26c756bf9a29638bfb43ce462666c89555482838ceef941ee7bfad735e37d5e7b1d4e6d234cf2e236ea1375aeefe004f2c4f500919c7193cf7ac94b9ad68dd19cccbb992fafca5cdc3b9bc0c9108668b6944390a0670a01c1c01918cd6a0bbb2d22d56c65e167cc53ac20866247ccd9c1dc3ee9e3041f4efcee9ba85edc5ddb437733cb086394c6ec4b82a1b70ea482473eb57468775ab48f3241753c30c997f2a366209c679038c8c7358c9aa734d8e0f976441f1060b4b5b5b31651c6b188c4ad2c29b51f71c2e4e06e38ea78ebed557c2ba8de5d483450d2b594fe607b7182a8a572c492095c671c7715a1ac4b6b637167a758026f8022299dc93192467d71c038e3b557be4bbbbd5edb17777a9b2a879210bb4a85ebb79f99b193c7526b75888568afc3fcc706b9b4ea6a68c2ca1b14d2e4d3a69ecf7b4b25cc3208e407d39539c0f97b678c0079ab67c23fe8675130c7650ae09171991b6e303a75e3b71fad675f5e43149797322882c6deecc48c2302578f25db380327eee339ebdb159de36f88d26b1a6416b6b6cd6b62195e2c7de3b77060dce09ced3f8fe26a9d2e79366939372b2d91760f14e876b03dac9a5cf0c58255d64c49bb006769e990178e7a54775ab58410dbe98b6a3eca8732ce7e52ac401f2f6c0007d715c3dc0bb92e924d922cad81928410c0e38e7af15ab61a9c904ae24f2e48d88554ba4dc1c7e2319eff00956ce9d9591517695ee7736aa74407610cc1656c840c362aee3f78639ca8fa1358903ff66eaf72625db6cb21db85da0a9ebc7d41f6f4abe2f92e2e64bb876c6b751ec932c36a3edc6e18ebc7a75191593a95edbc30b4724cad339ec0e4f1c7e82b28425cc7a31a89abb3b84613db82a73c641acebb5ce73d475aa1e09d40dd58b46c7e789b007b76adabc8f72161d69b56d18464ba1ce4f956233c55732606335a1731738ef59d243ba4da47239068378b23924c03cd3226f9f83cd3ae2060a71d45675c3c91c60c5f7a92571c9b34afaf92d540470643da99a4e9977ab4ae47cb80092c3d6b06c52f7fb5527b908c8a7eeb7422bb1d3f559edeefcd8bca588a6d2a4724e7839fcff3ad79547633529bd228e8bc35e15b59add4dd0df20386e4f041c1aed7c31a2697a25cc9b8c5bcb6637908c9079c73e9d3f0af3dd17597b79a7325f3933ca6539507693d871d3eb5ab6d369734cd733932ddeddbbe662c7d80c9e3e838ac1e8cd5509c96b2d0f439b59b25bc9ec608249d6450c5e250509390541cf5e3a7bd73b7f1cf24690ea0537c63eeafae3ad62bebc2262202abd3f9638a934e9a4ba9bcd99fe5ce79ef4a53ee5c30ca96a8dfb0b00966d903e639ac5d56d06f18f5ae8567cc7b54f02aadcc61ce719ae67aea34ddf5326dc32a02dc115ce7c4abdfb3784ef012374db620338ce5867f406baa90853c802bcbfe305eeeb6b1b14600bc8d3364f4006067fefa3f956d868f35448cb112e5a6cf34964063ca3739e41a82390190724e7d695eddd46e50e57d48c034dd982bbc603e07e1debdb3c6b9a31a865df130e3a8cd4b0cfef59314ac9207e83b81e94f130dc71eb59ca1736a756da1bc26668c806aa188b36e7f98fbd5786e06deb5604e196b2b389d1cc99a1a5cb1c73e5a3520fb57736d7d6f2592c6218931d4e066bcda39496f918568466570332363eb5135737a756cac7a12eb03caf2649b7479c851eb56adee83fcca0f35c569766c1c3839aebecc2c71824d72cec5b93ded62edf5dc765a65c5dcff0072352d8f5f41f89af23b3d49e4d49e4995e596e0efd88a4927d857a46a90c5af59b5abb4cb6eae0b79642ee23b6483c67f953f4ab0b2d3948b3b448828dace8b96fc58f27a57b180c349479de973e4736cf6951a8e94173497dc7316fa46bdab6e486d52c60fefdd7cadf82e09fd3f1acbb6d2ae7c39e215b7d6cafd96e4f92f3ae4aa9cf0dc8c820e0f3dabd61822443639461c8cf423f13526a50a5ee9538b9b486eb29e66c75037a8ea73df806bd474535b9f2f0e22c47b44e715cafa2ff3381f14cad047a4249b1351b49248199f063913682bbb3d463201fa1ac57d5edb48b59658ed2d46a13068648599888c15f95d0038ef9ce4e303d6b5fc7712dde9d62e9061ed1f611bb8309e80faede80fa1f6af3bd66f0cd76a85dd9225da82450197be0e3ae3a5724d38bb33eb3098986260a702cc175f3f249663924f524f7ad2562f1e41ae7a27e32bd6afd9de08d72ec001d734e13b6e76a46adace0315738f4cd58f3c5bfcd2baa29e858e2aae956f79adce23d3e0f253f8a46193ff00d6af4df0d78174fb4db2df29bab8ea5a539c1ae6ab8f853d16aceaa58394d5de88e0eda1975090369d697972f9e4c309dbf99c56bc3e16f10cb864d284673ff2d2e541fc8035ec16d1456f18489155476518a983035c8f30aaf6d0ea583a6b7d4f223a16bb669ba7d2a6641c936f22cb8fc383fa57b37c21f1eff6846344d4a402f615db13b7cace07f0b03c8603f303db9aa4f51591abe9515ccf15e44c6df51b721a1ba41f3a107233ea3d8d278b75572d45f33396162b58687ba23a9e739a6b101b039ac0d035817da4c37120513100488a73b5c751f4f4f6c5683ddc84e1179c75c561ed2da18fb365a9de2b789a49d951077358579ae5ba96d91b37a13c03fd6a4bc48e739b894e473c9e6b1ae8db21223018fad2736ca504b733af6faf6fb72cd230818e7cb4f956ab058a288285518f41562572f91d3e951c706f386c8a4558a4f36e276a903e94c0aefd89ad74b15c67afb5491da1390abc52b8ec63adabb0e70055a86d40386c71df15a3f67f2c1c919a85b773800517000a88bcafe74a26455f963c9f7a8ce48a8cf0739e69582e3da577c9e94d5c8ea69b923d291dc28cf5a604a07b521538a624e40c67f4a6991b772702802402a50d8e001553cdc9c0c9f4a55661d4e2802ee5957e61cfad37711c77a84c8368dcdcfe74d6978f9473ef4ac05d8b73e79031eb4acfe5b72735415d8e4924d397736771a690ee596988c1c734d49324e78cfa5467238e734ee0714ec21e2439f96a456c0e7ad461c01d2973b8f0783e940132bf1d314060c7e6e4510db492b05456635af67a56066e083ecb42607cc9e3ad28e89e2bba8a30442cfe6c7fee3723fa8fc2b2aee30ebbd40dac3915ee3f1cfc38971a143a9db4604b6adb24c0ff009667bfe071f9d7875b366128dd4576d39732b948e7ae6030c8cf6e71fde43d0d5468927cb43f2b8e4af715b5a8c386dcbdeb0ae72afb97823a1ad087a103c8e8c5655c8ec6914a37dd6c1ab30dc47703cb9c00fd9bd69b35900c769c5226c4055877a6fcc3b53bc9993ee9c8f4a697913865a04395c0eb534333a3868df04544265230cb5221858f52a695811d0697a8de2ba9536f3639c1c03f9d74d35dcd7d00373625c0fe203f7b1fd1bb8f6ae0a3881c1521be95d0e8d34f0e0a48eab8f538a1deda1bc6d2d248f41d1a5812de2de63b8b6036ef41b5c7b329fc6bb0b5d3b4fbcb78cdb7924e3eec830c335e1b23ea16378f3a4ac18fde0c3208f4357edfc41248e01925b790fa31da4fb1ed5746b28eb23cec5d094d5a07d67f0bda4d4ec2f3c4fa936cbdd5a566545ea90212a883be38278c6739ae2b4ef1f5b783e5f1a425565bd7d5647b689b3f36720b13e836faf703bd747ab69d17803c2504f6fab4f0cb6f1a22dac9fbc86e64c72029395248392a46076af01bbb8bbf11788e795913ed77f3e7622e017638000fa902b34fb9727795a1d7435f439fc43e23f180bfb1659b51699775ddc47be3b6673b55cf60467e5041e9c0e323baf00f84ede5f1a5fe997b20b892c4b13215003ec7c72bcf52471d304fb57a2ea3e1bb7d03e1adf699a4a4703436a64f340da5e5501b7b1f525739af35d335f8b4bf16c9e289a53240d125cdc2c1c8293a8ca81dc8731fe4686b61c6cb6e86c6aeba8693f1aac446924fbad8c7a7a2001429cf0ffec8f9c123900035e59f16e129e38d67779791365bcb5c2ee201381f539fc6bd2605d675bb73f10ee5e5436374b2dbd9a74fb22122403d782dcf7c13dc5794f8f7514d53c51ab5ec0e1e29eea468cfaae48047e00529e884de893dd7f5fa9b1f0ef4ed2a48edaff59b56bab55bb36ed17998f3098f2aaaa3e62771ebd07192057a078c7e1ee9f73a7674cd32dac75300b7d8eda669e661db72f427d718c7a9af22d1ef2facb4a9678218dad1b75b4e7392c1be6e5739c74e7a640aecfc09e23f14ced068ba6f882c6c20085a196e2241bce7eeeeda7e6e7bd28a56b06fa1c9695793687793e9d7b6b0f91337972c7711e76374cf3d08fe95d1c96f7de1c48a6b7b992cade47f3ade5b697cc81997a100f46f5e87a83c1c565fc4cd27c4b16abf6bf114d15c4b2e116e22d8524c671ca8ebf5e6a9e9e75c7d1a0b6b7d52296d2ea468dadc1ded13fa105739232463df1de92d2e84afd0f58bcf11e81e3dd0a4b4d5934fb2d7fcac4770f20456931c6188c6d3fdd27a1e3d6b9ed22cfc5de1bb0697c2c2e350d267dc97166d1f98a8e32ae06d271ce7e65233d71d2b8ad6bc2babf876d6def6530ddd84eb959a23b91bd8fa11ef4fd175cbad3c9b8b1b8bbb2dff00287b47f286f1d997ee376ea338ab52b68c9bea7d1be01f1659f887474499a2b5d4601e55c59be51e32381f2b73823eb576f7c1de1fbc9d6e1f4bb78ee01c89adf30b83ebb90835e51a66b1ae5fd90bbd52cf4df10c6a369b8b4555ba8b8f55e47d0ad58f0e78bb4ad46692c2e2fafb47d4909f2a4b7930b2fb3464e037b703d29f32436baa3d7becf77670016731b90a3fd5dd3e49fa3e33f9e7f0ab16d75e6db99278dad9947ceb211f2fe20feb5e513eb7e36b066fb15cdb6a500e9e746124c7bf6cfe35cddf78f75849ff00e279a45c961c649200fa718a8755477158f69baf1258c4316ec6e5fb08fa7e75877baf6a3704ac78b68cff007396fcff00c315caf85b59b6d6119edadae220bd4c8a0027ea2ba161c1a4aa732ba1a8950ab3316766673d598e49a7796ac3ae4d3df001a6838e948762371cd432649c559c75e298ff00769202999046a77e71f4ae7f57f15d858978e41216039c0e99e9deb7350812ee1313c9246a7a98ce0fe7dbf0ac7fec4d1add0a0b3b76e9cca3cc63f8b64d295fa09ebb1ccbf8eed58feee1b800752003fe7bff009cd4675b1731bba48086cf2bd01008240edc73f5fa55cd5742d276bf9769e431070d6e4a11f4038fd2b87d4b4e7b3769f47ba531af58645d8781d3fda3d7ae0f5acbde5b993e647530f885e3473b8e02eec67a7cca31f956f8be8666dc480c0ecc7be4ff0085799d8ce658d8cf13a311f74f1f88f5ad04bf788002427e70c49fae68e7b094fa33add4de278265990488e30c383c7f4fad712f03c52489632b3c4c771809395207507fc6a693536cf23a1e194e08fcaa8b5c2b4dbf247ebf5a4a69ee4f326c89e5098f93e7dc301ba679ce7f4accbc32b1123630589007504e3247b715aef04b34af2dabe0a8ddb48fbd93c63df158d7abb227f2e647643cc407039c657d3939c5528df5115e7bb75f298ee1b46c207d49cfeb4db99188ddbd88231d7fcff9354af2770caea7e538247d6afc51acf162320eee5493d08ec7f97e228e5e5d4491bb6b72f6b68530248ee154842b8c37041f6dbc8fcfaf15d27849c9bd8ca801ce54601248ea491d79ce79e48e7a935cad9402f2f50daee605635543924b3019e9fed647e35ebba3da68fe1db8be98cb0dc5ec01e73bc9665f980c281d48638fae7e95c756ac61a3dce88a6f5665af85026ae6e74a7b8b6bbf3fccdd394daa0120b10031249c91903d78ae3fc61677ba3ea02cc4b1f9f2006668246208623e563b471ce7033c1e7b577baaebb29d3eea0b856b2bb64d8b7684a14c13f29c8c9c738ee3ae71cd711acd96a76f696da9c9362d5d11fed3700acd2381f2858cf6e33cf1f3139e315545a6bcff002154493b95bc3714ff00f099a1788cd367622db03e5c795c31739e3afae73f91edb56d4afd6e4786f48d3deded890eac920691c166c9704f0381ce7b7a715c3785e5d4f4ed39b52d148926966788068cba9c60b163f75796183ecd9ae8340d6356b5b2d563bdd4ad66d4678fcc182cf2a752e7217030bb781e9c76ac6bae64dad59b29c796c52bdd32cb4b9676d6f5bb1935c0814158da478b3d9d863239ee338ef8ad1d2f43fb2f87e1bf9b51b4b7beb8b7132a1cc6661ce029273cf500819e39ae334fff008fbb896eb4ff00b55e44372c120244bf36d0323ef63767041c8e2b7ad34e9356b4b8d5dad7ec735a944fb0995844e80614e5f257b8038031db1510a5c8bde7fd7910a315f1239fd5a4875b7b08a59ded43190234a0853f2820118e84f00fbd61be97e458451df46db6d2666755c728c47391db81f9d6d5d1bbd66ce5d26fae2482e6d24df04377b989461c80c01e14853f8fa54b7d63aacba249f68366c96c01636e5a30c0903e60400db78fccd7a14df2a51b97c9cb1765739e9b517d42e04714132aa9291aab0f941fee8c000e38c9cfe1d6bac93c17245a74734c1e12ac7cd69c8554520638e791c8ea7af1d2a978474cbbfb2b5ddedddb58594bfb81712caaaaeaa776073f31cfa74c1cf5adbf1df89a4be92caded2e77c36f1a05911b08edce4955f979c919f7f4ea4f9dbf75d9196ed228be95069d04d35acd2bc8c8b18cae14ff00f5b3cfe03eb5c2991e6b990392dbce013d739241aea2eaf5cdd665627cc5503cc200caf41d7fce7b74ae76f23105f4de5926224ece3d7a73f8d6941357bbb9d1ad8b9e1ed53fb3353497388db86c9ed5eaab22ca81d79561915e33329490138191c8aedfc0dac6f8a4b09dbe64f9a327b8f4a756175cc8d694ecec6f5dc3ce40aa4cb9f622b5dc8606b3e65da49c5729db165265c839acc96dc79d95ef5a929aae631d7bd1b1a8d8ed5597e614c9ac940f95cad594620608a4972c3838a13681199f636dd912b7156232f19c17271522c18c9cf26a782d5dc9c118fa50e46b06d0eb70ed83826ba2d31e7381d876a668da7e542cad927daba9b0d3e08b1f22e7b7ad6126996fccb5a7a318f2c3ff00af5658111b71536d58e2263c1e3b9c556d42611db3b13dab332660decc3cc6e6bc37c6da90d47c4971283be28b10a63bedebfae6bd4f57bb964b6b95b6389bcb72a7dc038fd6bc3daddd5c97ddb94fcd9eb9f7aefc14526db39316dd92469da8fb73a0b87222419c7d3fa71492e9c5ee1044a084001f62493fe7e9552ce7f2c33761c0ff003f855f86f98b6d560b93c7d7d6bd03cd7a6aca57d6b1dba06908c05200ee4f4ff0ac5da4b9e83393c574bafdbb45099248b3b307e6279cf18fd6b9db6f99f04e33d6b4e5b18d3ab1a9ac49adede66899d119d41c1c727f2ad736f07d92394c52796c00deaf9f9b1c823b739c7b629f7b67f6044649d26824e571d5b1d1b00f1dfbfd7d299f6779a48e41b23f39b6a233b314e01c924920720fd39a968d63225b38edc079e28401060a891b716627033d001df007f8d75535947259bb5aaa288cab28f9b26374dcb9273c91fa83dab9c9aea0b897284409e588983e489101182300ed6f957db23ea2b734a3195db0cd2cd19cc11c8414f9c00f19c64e0f2ea3d0e3d48a994535665464e2ee8a36facac47ca8d5a493fb880b13f80ad3d12fa6d535782d26578629158ae4e0b91dbe9d7f2ae68813dddc3cf12473962ef19f9771279e800ce7b1fc2b4acd1f49bcd26fe5ff0054d26426ff0099149dbbc8c7dde1873d6a68d1829a6ccf30ad56a61a71a6ececec7770c7736f188e301421c60601fca925b868278e690f9b0b373bd40cfe3f4ada645b88fcc8cb061ce01c562eacd2471bb2750725587047bfe15ee4a3cbb1f96d0ab1a92b496acd02c121d93ac7242498f70e1908c83823b1c8fcaa4d3676b7b83049968f8605c8e01007a7a62b3b4d963bbb57840da4ae401eb5484f25bc8ab3306e3193edff00ea14ef6d46a9733944cbd4349d5ecefa7b67ff004ed25b3857037ec3d0ae392464035e6be24d31f4dbf6ea60724c6c4e4f1d8fb8af70d4a77fb08bbb61147736ff00bcddb43653bf073d339f5001ae6f5b8ad35c81c5ec41e63f708fbbf87423f5feb5cb5dc20acdea7d5e4b3ad5daa908ae5da56efdedfa9e416d2b09700673dab4b4c85b51bc58c13e486e14ff003ab5aa7862e2cd6496d733c407ddc7cc3fc6a3f0e5c2db4c19bafbd79b52a5e3ee9f5d4a9f2cbde3d87c2f69158daa2c4a06057510ce00eb5c0693ac23a0f9ab63fb4c81c1af29a699eb27a1d8c774beb5309fd3a571d0ea39232715ad6570ce70b934d09d8dd129cf34d91f777a6430c8c3918148f132e6a95ccdd89f49d5a5d22f44b1e5e27c0963fef0ff00115de9d5ada6b7496225918646d38af3391588e956b44befb25d086727ecd21c649fb87d7e94ec6338f53acb8bc9263b634541ed55becf248413d2b661b24519620fbe2a69245550a81401ed4ae65632a0b007ef9c11e9537d9d10fcaa3ea6ae1c328d839351153cee278ed4010eec0c0c546ec7a026a66e01c62a07e7209a0446fb89e5b8a8589cf02a4c81ef4c67ce40145c08caf073d6a1738e3156763367b0f7a5302a8c96e68b81471c9f4a6fcbce79abaf181d71d3b557289d5979f7a7702b339c70314810c80b31fd6ac08f764ed18a6b441738c7e54d30186448c0c751c531ae19b23803d851e560738c9a43195200c9cd3482e354ee3c03f5a729e704107ad3fcbee7ad39221d3939a6211339dbdaa61800e07eb4ab10047152ac5c63814ae3b080823a9068c01d3a9f5ab36f68f33622427deb6ad7498d086b8f9dbfba3a52b8193676725c7dc5638f6e2b56db478d7e69d8b1f45e95a68a1176a00147614175504b1e942f3008e34450154281d852c9222216721547735446a62e5da3d3956761c1909fdda9faf73ec2a58acf2e25bb9bcd97b71f2aff00babdbebd69af20b772a6a312eab6371692a7fa34c86362c3a83e82be60f10e972e89ac5dd94e0868642b923ef0ec7f118afac148497a0db9eac6bc6fe3c692bfda169aa273e7a18a4c772bc8fd33f956d41d9d9949ad91e377203a9ae7ef62c31ae8dde3e4138ac6d4369076f35d4268c275009f5ad6b545fb2478c918e45664aa4b115aba30270add338a1911dc8dc6d3ed4df3540f9b06ba5f14f85ee746d3f4dbf1996c7508cb46e17eeb827287dfbfbfe15c908899541fba4f3496bb1562daadabfde001a7a5a5937fcb7287e955ee2403e48138e99c5470d9cb21e723eb4c46cdad8d947f3fda77e39c28ab8260cdb6352abfceb008fb3b008c7777c56958bb4c577f2723f2a195191e917fa4cd0188ce91dcc52282770c11c565cf656da7ccb3218e266e02b60d6cdd26b7a8e996ff0063b7b86cc6bb5828031f526b0ecbc1da9de3bcbaa3f93b588c3be5cfff005abcee5936f999d12953b2e55a9e97aadc6abf147c622dec55a3b58c6177f296b167efb7fb471d3b9e3a0c8d81e0ed3fc3ff00187c3563661c5b18d670d212ccee8ae724fa96407d3d2bd07e11e9fa7d9783ad64d3e3025b8f9ee9f76e66957e56c9f620e074ae57e2b6a30691f11fc25a85d36c821e647c6485dc41fd0d7a09753ca85a32491d9788ae46afe24b1f0da8df018cde5f8ede52f0887fde7c1c7a0af9ab5db0feca7b9b166c9b4b878801dca9615ef5e0ebe369e1ad77c6da9262e351dd731a375585011127e3fd4579e7826cedf52d07c67ab6acf1ef16ad1ac8fda59371247b92140fa9a99abd90adcadf92d4f48d7fc59a67873e1d69f3d9c7132de59a2595b1e41528396ff6403cfa938ef5e43a041a6ffc2bdf115f5d5bc735ccb71159db29e59180de587a707f434dd234eb893c2fa86b3a948f3436f17f6669e1f900b1c3edf6542c063bb1f4acdf12e8971e1ad4ad6c124133de5b473bdb3b711cecac83207752d919ebc50ef2b15a5e5e7ff0ff00918ba25e5ce957c9742cbce86e51e241302b1499e3af4600fe59ea2a4569f40d716696da78638e50f25bb655e2f5db83d3a807b8ae82e248ad2c759f0ecf3aea36561ff1ed346d98e12d2a87978e19b9031f51eb5817d697d67a94f697c649115da3590fdd62a00e3f0c7e18f4a4d72a25bea8f4dd4350d2ee2d63d53c31e18d42dee5907c8f64b3d9dd2fa30c9ebd9860d733afc5a3dfc505f787ada6d175eb720cfa7149392a73be26c7183ce38fcfac5f0efc517fa547269f6d72c0c73178a263f29efb79e99c9fc6b5f5ed76cfc5f72674b81a7eaf6a30922e6378d8763df19e08fae2b0af8a8d25ac5b05762693f10754fb1ca9ade9106a56121d971e5a85673eac07cbbbdf0a7eb5931cba741ab34fe1789751d2eec32dce977431229193803ae40c90c3d08c9cd523a9dc0d49a1d5e2862b96e1e650364e7b371c64f72383ec6abdfe9625905d58b3c57d11cc655b0588ec1bd7d33c76ae758d7b315eccdc7f0a6a10b2eade10b9678986e5898e1c7fb3eff43cd241adc17ced6daf6951b5d47c3c6cbb265f743d7f0aaba17c41bbb1702fedf7e7e566ff00565ce7a9e31bbf01fceba0d57c4be19d720f2f5ab79ada65e933c7f3467d9d3247e34fdb4afb0d25d19d4787eeeda7b02fa35e35c469c34170d974f624f23f1cd6825ec171234122ec9ba98a41cfe1ea3e95e497da75d69d29d4f42d556ea28f1b6ea021b8feec807f515d5f863c4f67e26896cf548520d4e2fe10701fdd0f507dab78c931a77d0ed6d6cadade4696da258cb7ded9c03f85596cd240a020009c63bd3f1569586458c9e7a50176e57d3a549b4f6e94e65e01a6042ff778a85b9c8f5ab4c060f150639a6896ca2f10ce1ba8acbd59e08a13e74c910240cba16073dab76e54f551d78ae2fc485f4eb3769ef621238cb978cb29e402305b1dcf0054b04731e21296d3bcb657690ddaf04249bd5b1d9a36f9d7e8030ae4a5d4dafeee3875089431383240376719e063247ebf8735d0d8587db6e1ade3b786e6d23c19731b46793d720e01fa5472f86b4fd32e239ee1fed3e5b6e309e8dcf719ce3e99fa56527a038994fa798da492160147dd52003d7f038fad48b693b83b93663ab672bf98ab179a9cabb40d3d5738e5f3cff9fcaa949ae5d00e2254490feec363ee1e991ef9e73cd725a5d8e67111ec2ed0932c6638800c646c00012067f33512a5a991d7ed277008412b81f30faf6240fa64f6acd17975e74a669499a4043eecee6e73d7ea3f0a8249379c9401fa13d33f9715aa85c8e537ad8412c3205775213cc21f042e38e791df3c7b8ac5b8815d80b77f39e4dd8f930781dbf0a037936a5e162acd8563d0f7ce39ee3fcf354e09655f322121dae70e33c1f7feb5a536d6856c2ea818dac2aff7d570d9ebd78fe750698c6d6fe38d18b860ace33ea323f1e455c4b8564759c0917e53b5891d8f423915b5e0c9b488b5296e7511f68548b104320c8de5946e3ebb54938ef8a73a9cb17a5ca8ab96bc288b67ab9bd49993c9885d21111750a3e6defd06dedc1ce715d5e817cb2f89e1d5131fd98cecde748bd09c9c1c9c8f9bf967d6b034ebcd5bc43acdd69cd3bcb1de215919d837950060dc13d002a381c75af438b43b7d0b41b6b4d424b49ed449e76e8b32ac49c7de03393f42793debcfaf093777bfe08d57c299cb78a8cf3cb3ea504371796b6cf979002e8096c80e3a81b460f38c633d6b335ebc9fc57aadb4f9b786278a3e7ce454538f98024819ce78273ebd38d66d9ac6b3a969fa4cf05be876cc97ab7207c88ac803b63be7180bf8564f8a6ebc2d0591b6d01d6e2fadd77c97136f440b9c11855db9cb7f77bd7442838c6d7149c5a4ce97e235c43a4e976361a6c91aa5c429e4f92c1d551770db91fc2786cfae49e95c7e9f25d4422822d45dee5d4c9209a40003b4fc8a0f2401d71c1ea7815ada2f87ad359d32c5e6d6eda34997746aecaccbcf38c91e9d31ff00d6e3fc73716f6de2891f4344b74b64112b79aa59db0773b1cfde3b8fe42b6a74dca2eeac2fb4747f6445d10c9a74ccf20dd29049520e37163db1c60673c91cd4fe1dd36093c27a85d5b5cf99a98dc27849248539032b9e7bf0318c7ad71a35791d6e2ee06e51061813c1fee83d8707a5648b9bd943cce636751bf7cd201d4f18cf7fc7b55469c53b05d3df737f47f15c8b73136a368b38b787c911a6233f2e79ce0e3d303d2ba7975ed1f58d1af3cbd967726331c904cdcb83dd31f78fb706b96f0ce8d26abe7ea17a55137169a562157df24fe79a83c477d61248d69a370918e65c60c9f4ef8faf5fa75af631bdd686f0ab25ee9a1e11d03fb6a464bcbedaf1829146ea64555efec3be07e35ab3685a4db6a1069e27591a460bb8f19cf4c0e4807d6b9fd0a5d76db4a69ec41884876bb32825c76c67f1e7be453b4ed375db7d41eee512c32b0dccf39da2419071cfde071552bf2b46774a5a96f5ad42dada696d174ed3dc44c511e2466248e0fcc4e73c7ad64c6ab76ae557680ddc723ffafd6ad4b60c2f0dc2a4be4b64793c9657c7dd1f971ea2a7fb1c96f661a788c6ccbd1b8f4ebd39a8a7051d8e98bd0e5ef326e1f8c027ae7ad16377f62bf86e10fdc3c8f51dc5497a332311c8e83d8564dcbe18e3a57528dd5993cd667adc7761a35756ca30c8352195645ce6b95f0cdefda3498d59b2d1fc9fe157cced11e0d70ca36763d186aae5f9540a45c1e2abc57a9292bb86e1d8d3f7e3a54d8d132768b38da68118ef4e8640dc66a4718e41a92932254553cf357ad8a83d304552dcb8f7a7472e0f5a968d60cde86731ed280935bda7deee1f31e47ad7256f7a021563d3a1a54d4963ce0f358b8b36ba3b95bcc753c7a56078975758e028adcb76ef5cfcdaf6c52118eeac9f365beb90ce4b127005118bdd994add0dbd32332c334ac3ef8da2bcbbc4b08b49ae936856deed903ef671c7e1cfe75ec7656c22b711ff0074727d4d79bf8eed09bf963d8479ab95f735d18797be73d78fba708b911aaa825d8f03d49ff22ba24d245bda58bf2f248e377d4f615816b2a5bdec4f202446c09e2bb9ba9126d1629222a541565dbd0115e84e6e32563cf54d4e125d6c53d7ec5db499ced5f940c83c15effd2b88b71b2e14e15b1ce0f4e99e6bd2eed927d3da372e15d41c91c723d6bcdae227b6ba60dc1071c7a74fe55d93926cf1b2e84a107191d15b0b8b9891ecedd9e6248f348f318b71c8f4faf51eb4f324104f722ca595e298b47e5b8124879e183606320f51cf2473505acd1c1a7288de45b8491255914e07438231c83cff002ab70c298b484b08a09d32d2a9c173cf049e000c36fa0ea7359b3d0894a5b7460a823b8826240449b90f9cf7c0c720f63f5a6cf239f206498b60d818e07a37fe3d9abf2da5c3db7972597d92152cdba40caab9c776ff0077a0f7c0aaf218a4b9ba5c95b7924691095c9539e3f31c1fc0f6a458972d31cca18b1e0383c9f4cff2ab7637315c064d42192481942322c98623d0120e2acd9c50482668ede55f955228e443b187f1319091b78527f13dab3ae606b79a484852a0ee460c1b2a7a10475eff00e4520dcf4bf0bdeb49a5c323b1709f233f4270719c7eb5b9796b1ddc594032463eb5c27c3ed4834b3d84ec3f7837a9f7e847e58fd6bb5b3924b79de36c305ea0f391f4af668cf9e09b3f2bcd30cf0d8b9c63a59dd7a3399843d86a414b6013f81f6fe75a1ae58adc426e62e08ea07d69fe27b06b9b2fb5db13bd38618eb8e8693c3d76b796279649029570bce78f4a12de2ca94db8c6bc775a32b68d36d58e3770cc38c6460f07bfe15cd48ed65aadfe9d2811ac6fba219ce50f2b83df822b76e112cef463718d80ea3907827f5cd73bf1257c8fecdd42d83077431330efb7047e85ab97154f9e9fa1ef64589f618b496d3fcd6a5a9db60025453b464907afbe6b1b57d1edb502f736d98652495c7f17d7d7eb52691a82df59b3b3676e0300d8241ed53fdb5554471aedd980181c1ff3d3f2af1f63f415668e62c2f66b2b930cf95753c835d4da5fb5c055539248000ef546e741975b9a28f4f50d78790c0fca17beee38faff003cd7a9783fc2d69a05ba953f68bd23e79d874f651d87ea6b2a896e6b072d8a7a2787af27851eeffd1d4f3861f3fe5dbf1aebed2ce1b48c2c4bd3b9ea6a519c534d6572d4456900a85e427bd3891cd42ebe9d6a6e572a1aefc1aa7310ca54d586ce0e6ab49d69dc1c4ebfc1fab497566d6933132dbe003dd97b7f857491a027e70d8af34d0ef574fd5e199db6c4df2487fd93dff0383f857a3b484a8009c50ce49c6cc9a79d630123007d2aa3be4926959940f7aaf230c9e692241df3c01516d639c9c52074e704f0691989c8a7610d6508db8b53401bb348c719079a48d004666ce0f4e78a0113f98b823a9a8f820b39fc2a20c49f939c531e600105b340cb0d229036ae315039049cd5769b3f74d43bd9b34d215cb5e6803e5a0c89dce49e955510f53c548ab96cd3025dc3b60e680579c7e74228e6954a8ce3934ae004679a9634c2f3c52c68653b54124f615ab6da6700cedff01140cce8e3691b11a924fa56c59e96a06f9cee3fdd1d2ae450a46b8450a2a507039200a1089228f6aed4c01ed4ac42677364d739abf8aecac6536d6bbef2f7a79307cc47fbc7a2fe351c3a75e6a4c26d66ec7927fe5ced8fc9ff00027eadfa0f6a77bec1b6e59bff0011dba33c1601afaef3b44301079f42dd052269b75a800dae488b11e7ec90b12bff00026fe2fa74aba2de283ecd1456f1c50464b61005c1edfccd5a79a21b8852cc7a668e5ee34f4d04b5862b68962b58522894615235c002a75c60f73fca988e5c12db557d3a54692fefd8a265318dc38154263d9777de0091fa572bf1274cfed3f09de2800c900f3d077257a8fc466bab90b3f4381ed5018d1c95970548c1dddc5527677253d4f912f60542fdcf6c565490e518938aee3c77a47f64788ef6cf1fbb56dd19c6328791fe1f8571d7aa4aed15da9dcd24623ae49c75ad2d1d70f83d8e6a368d2142edc9a4d32e76dcfcd8c1ef49ec4c7467d11e1cd1e1f167c289b4e70a6ea0726163fc0e0065fc0e48fc6bc2ee6cfc8b864923db2231565230411c115eddf05b51d97373a7960be746244cfaaf07f43fa573ff001b341b6b0d762bcb790896f51a4923c0037290323eb91514dd9f295d6c795844c9dca57f0a8a7663948863deb464dad18e339aa120f2dbd456c0c8a1b455e5ce4fbd5c815449f20071dea0597b0c55db7f9978000fd4d4b1451eefe17b992e3c2da6476f1ee916150ce7855a9e7b620eecef94f52c3353fc394dfe11b10cc0284c0ddc56cce22dc427cc7d1066b89ee08bbf05fed5a742da7dc65edef2da3d46da4c71ce1645cfa83b7f9f7ac4f8f56f05cf88bc3d04f2b46272222548e10be18fd7918fc6bbbf85f3472780b439481b9603183dc618823ff1d1f95728208bc5de29f146a32112456318b0b50790194ef66ffbe947e66bbe30d2c704dae7d7a167e30df4565e14b1d174f8b06e664863853a944e8a07d760fc4579ccb036adaa693e0dd22e02a45f25d4cad95924059e47c7709b982fa9fc0d56f887e24b8d63c6cefa5c9cc0ff0063b3656039e41704f4c9279ec0039e2b73e10b5968fa0deeb3788af24af9498b6d48e28c75dc7a02dbb3ec054b71526898ddc6ff0033b7fecfd274bf0169b36ae4cf6da44624d99c07954e391dc96c8c1e326be7ad6f57975cd79eeb50605ae672d2b004e15b0368f60060015d3f897c517fafdcb6911168b4737325e63cb2ade59dd21639e7014b30f5c8f6aabe0bb6571a86ad240b88e58628531c07322b003e9b507fc0aa27553d223845b6db29789a19a3b1b4d4d008c5da3432c11c612385a33858957b6142fb93935d2eb107db7548d23b8801bcb5899d85b8709205ca0dd9e095c9cf1d0556f88322c92ddd958490fd8e551a9c8c796562b80a3d371653ff0002aabe0cb88a6f0e6ab6e91b0bab431de46e4f52000063d061bfefaac9cae5c574395d504da66af3ae0891486c8ec477ae86ded60f13ced7da726cd5e18c3cb6ea483281c12bea471c7f3ef99e269edef2fd6e6d2447568c1f2c104a0c11b4fd0823e845635adedd586ac977633324d1289036fc311d187bf1fa027b54b4a44edb9d3dcbc37300578f6ca467a6413f4a9f43b982e627b35765b84e7ca76e40f553d48e3ea2b464fb3f896d16eed703502374b1ae332b0ea401fc63affb43dfaf27aa4464956547f2ae63f9e2990e2b95c632fddd413ee743f675376cd710abc7200b3c720f9641ebec47af5ae8749d1ec595619cb4b6ac36c2ee7e78bfd9cf5fa7e5e99e5bc3fe256ba53677e8a2f9411f374947a8f7f6fc47a0d2d2f588e0b87b3bb00c4e700ff4f63fa572d7a13a2f9e9bba08b5b137fc223389daeb41bc6b5bc00e47003fb376238e869be178e4b5f1188f5cd29e1b87181e5730487b11e879cff2c56d697a849697cd0c8c5f1f3a37f7d4f43f9f5f7cd6bddccacdc60a9031efc71fa62a618a6a3696a34ecceb2045f2d4c6d95e08fa54e4719ae7f41bdcdc08777c8d90a09ff810fd091f85750b036cf988cd7ab4aaaa91b9644bd0834e032a41a7f9046003c8a904402f3d6ac0cdbab84b6824964202a75cd471b89624900c0619ae5be27eb31daac166a792c24947b761fd7f2ab3e0cd792e6d92dee81595c931a9e491807f960fa72beb8ae5fad5ab7b3e9fa8249af3362f64540158b2823771dfdbd6bc9fc6d32dfdeac4922a5aa02cc5db21f6f5ec41ea0673f4ef5e81e3cd4c5969b2b28733b00912c7f79db93b73d87033ed5e306037845e6a4ecaeefe614c70ebd875e3b9fa62b5ab5634d5e44edb9d9e8da8dbdd5b4eb6f130891d63771f7dc641ce7dce063bf1e950f88f568ec8b5ac0f09322924039dd9e9f97623bf06b9fd222b0b39a3102dc9dca0b82ff7cae704fe34cbbd26d2f9e432ab236768756ff56b9c8503db278f7fcb9962a32d82524d684725e1f289750c07054f7ff3fd0555b8b78a789cc4de58652cc0f3d3afe87f5ab53787e4b7944b05d4c6076c987ca0c40c9271d00006064e3fa553fde00d15cdd2d9104ed8c9daff004200c93ffd7ada334d19f23dca3731195c06e1972dbc123af3df8eb9fccd2c5693a88e4dc9e5eec65981e39c920648e9e9f4aec2c3c38d736097324d8876ee3b83abe0f00ed2a1b1f85616ac6de0255cb155c2e3b9c7181f80a99cdad12070b6e635dddb8b6fb1f9ad25aaf4508a31ee3bd63c4db670afc871c11c9ad5b93b549585482015cb67d7ad524c4b6eeed12024e3e5c8e9cfafd2b582b2b322d7dc89890e4f51dc559b25cb89adcb2ede248d8e38ec47afd29ad0b487a67d703af35dee85e1fd2b45d2a0d43c452a996e903c16a33920f4c0c8c9391ec3f9635f111a0bded5bd92dd8944abe0dd2f53fed081a16482d2f6de5b5795ff00e7910db8e3d88fd39e2a3d6ae92c6ce44d2af9447922336ec559864825b1d3246704f7f7aea2c358d16e6c58dc6951c168877450ac9ba47038391d06093924927048ce2b2aee5d1668e4d9a56e48e349844d2100798e55463033c00df88ae3a95aed3716df6ff3d6c54f6493385179711e997eed3c88e62540738c832038faf248fc6b16cae1d1a5e0b2bc455c7a8c83fcc0aebb5ad1e3bed6a2b3b4b4164ca1966413000281bb27270a3d738eddeacf8416c2cf5f16969756c8917cd35f484050a08ce19874cf7e33c607afa146aae4db5fc894ca1a6f85756bcb767160f1c8c9c79984118fc4e780071f9d739771bc970cd34893a8215a456fbd8e07bf41d7f5af4ff885e30b77b59b4fd1d95ad8c677ca3fe5a8dcaa47b2fcdf538f4e2b27c39e055d7ecdaee3bb611ac5b94ff78e3eea803ae460fbd6dcea1ac82376ee6044d13d949b847871bd8745551c723d07a0ae6f53bd17726d8d4adba1cae70198f763ee78e3b00076c9ea753b086d96eac6c3ceb96551e65c606dce47ca31fcfb9f615ca5c59cd6f33249132e31d7bd5528c5cdc8a8c6d2bb2fe98f717300b7fb47976d19dca8ec76163d38e99ebcd472412adcef51b5b8e410c31f51d2b5747d2a5d5ecadb4dd261927d49e5ded18f4e46ecf40064649e95ec9e0cf855a66951a5c6bc5351bfebe5f3e4c67d00eadf53c7b55b691d1085f5389d36e353d774c4834ab39ee1f011d228b088477cf4fccfad741a57c34d5ee6749b5bd4dededd07c96f148d2301dc750abdfa66bd723f2e08c470aaa46a30a8a000a3d8546f71b467a567d2c52a69339ed3fc35a7e8c1a6d3ac83dc14da669dcbb91ed9e07e00578f78dad7539efd9dd94a07da3690760cf7f4e49af6ebcbec12a1b83cd7927c40596199ee2063b9bef11d6aa9f2a2a5191c45e5aac0a5199437b9ebfad7397d188d99091827208abd7b7b248cde736fcf5cd64333648dc4afbd6e8cb536bc2376619e4858f0df30aeaddb70cd79e5a4a6dee9245e30706bb6b5b812c791d0d71d7859dcefc34ef1b3247e0e452a5cba77c8a46079a8d866b0b9d562e457d83d706ad2ea208e4fe5588caca720715193f853b2608db96f7fba4114cfb6f1d6b1b711fc47146ecf534ac8b4cd47bf7c1038f71509ba76e335441ab16d1492b61149a4d2455d96e0cb1e6ba8d0ac4a626907cc47c83d3deb3b49d3c2307930cdd87615d5d92045ded5cd397445c625c48f6c400fbcd5c878e74f334692c40ef8f906bb44cb0de46091c7b0aa1ab421a2e464d4d3972bb84e374789dddac12ec9784903049063b7ad43697922c7f6784e63ce581e9f8574de2fd285b59cd710f03856c76c9039fceaae97a508b48bd942a178084b85653bb93f2edf6eb9af4a35972dd9e7ce93be855b9d540b3108de0018c22819c7e35ccddce2625581183f293d7e95a82dcf98ea33b73f32fb565de4062bada38e843678c7af4aed8c74b9e6ba894dd32cda4fbd561765202e000b8207a7f5fc6b434fbb6894c120f360cf287f9a9ec7dfbf1907158d0a379e8c0c63e5c9390001ea4f4ad610c513a3c9771046fbdb43123f403f5aadd14b466ac9a7245737891c4d2c91a2347116e48201278c16c6474c6739f5a5b7824b8b2b8325a2aa2a6e49020421c1e99ef91b8639e48a9ae6dbed4b6a20825842aecfb45c8f2bcce7e5e3a71d06092401e954edc5db5cc8d14aed7719dbc4997c739dbdcf4edfd69143af2394efbb85dd415f2a5009cc7c6361f6f4ff001069d6f6fe7e9af29dc2559047101fc4704b0fd57f3f7ab97a2482da29a7988d4b714215c1631e3fe5a7a9ec01e719078c544c2e56eadc66da2b85c3adb81b4ee273d31b41381c6476fa520b9930dc358de417b167742e1d80ee3a1fd2bd834e992f9164461e605ebfde07a1fe55e59a9059e769e38ca1909f3236fe17ee3e9d71dc720f4c9eabc172c8da5a6c7db35ab98f938caf51fcf15db83a966e2cf94e27c17b4846bc775a1bc2f7c8bf6866e15f2a47620ff9fe559f240fa1eb5b9814b79b04646060f4a9b5755d46237101db344079a83a8f7fa532cae1751b73617a57cdc7eedd8fdd3e99f4ed5d77d4f99a6bdcbbf46bf51de2140aab301b9720820f6ac4d7206bff0009de3295696d4adc46a467257afe84fe55be88cf6135b4e33247d33dbffaf58da130965b8b4b81f2c88d1b83e87834a6afa7736c2c9d24a5d60d3f91e53637c6d2f73bb2b20f9c01800fa57550a4d79770c7047e6cd37caa093f9e7db1fa573bade9f1c175750a3e6689c6c38c6e5e720fb8381f9d7aafc37d125b5d3e2bbbd0df6a9130aadff2cd3ae3d89ea6bc3acd4353f51c349cd591d37867488b49b311c7f34adcc9211cb1ff000f415d0462a3b78f1d6adaa823915c0e573d18c6c86a83ce6984f5f7a958738a888ebc543658c24546c700e0d398f5aa933edcd2b8d21249060d52964e7ad24d3614fad67cb723b9a2e161f2cdcf5aec7c17ae89e31a7dd3fefa319889fe35f4fa8fe5f4af3c9e7cb1c5476f7cf697915cc67e78583fe5570661563747b831caee3c03d2a1703ae78a5c8700e7e949e575f43eb5471dc6332f4c734d078a976ed0718fad5776ceeea7340c6330dd926a2925ec29c173d78ec299e5364f04fbd2022f30ed2075f6a8882c3dead08829a732e0f4aab81515703e634fed90054a221c9738a1768e1452b811a46cc7e6a94ae33d05372cc70aa49270315ada7e817171f3cdfba4ff006bafe542d42f632173bb0b9627b56b5968771226f78dc2f5c28e4d6f596976b6806d5f31c1ce6b444933291b9914f18538cd3b7715ce7d0a5ac656088311d72704d3c4f7121f9610abee69da8b59d9b724995ba229c93f8560a2eb5ad48eae4697608c548570d349f970a3f126a77d0633c43e2a8f4519b860f276890e59b9ec3ad735717be25f11dbf9b144d6b6449012224330f76eb8fa5775a7683a6d829f22d55e53f7a597e776fa93cd5f709120195551c629a8770e6ec733e1bf0fae9b644f9513dcb8c9debd0ff5adbb1f3a35904ae84af01224daa3fad5a470ca760fc4d302040719c1e6aadd84bcc8b7396cb538b4ab929096239e4815229e78e3eb53aa9c118e08ea6914e4456a86785659c649e883a0ff001ab27627df38a4853cb8c229f9476a2431c6a5dca803924d519b77657b8bbd88e60b69e52071b5719fcea3b68da702791989fee6318fad505d705f3343a7432b91d64752a83f1eff00855bb58ee63c6f9c90171b55401f5f5a8bbb9496879f7c6ed184da75b6ab1266485bca948fee1e99fa1fe75e1376b8635f57ea7a6c3a9d85cda5ca968e7428d9ed9ef5f33f89b4b9f49d4eeacae07ef6172a4f623b11f51cd765195d5996b556392ba19a8ede1567c03827f9d589d704e6aa6ed8c4f5ad8ccf4ef046a8fa56a5a75d392044ebbffdde87f4cd74bf1ceea193c4565fbc52a9681860ff007989fe95e5da2eb225558a6c6e5e87d6b6bc597c3537d3dd940786d960623f8b6938fd0d4a5695cd56ba9cec976429d8a31dab39dd9dc96357ae00e781541b8620d592c923e3a75ad5b2c95da4f5acc8792315ab671e0673f30a996c38ee7d33f0c74eb71e10d3659c798fe50e1ba0fa0ae9a67b70a6345541eaa315cb7803508a0f05e96186e6f287caa335ab2df4d2e45bda819ead2715c2f7125a195e18f1141a0fc268677940b88e199a28fbee695f667d3923ad717e15f125e685e00d62788ac73dc5db22c8e0960c5147e63e63f5a3c55692269de1cf0e2fdeb86449b1d70bb413fab1fc2b3e5b38fc4be296d32cbe5d16099ae26c37de2480c47fbc4607a0c9ae8f6eec92381c2f27e665685001a36afa9f961e7216c2cc13d1e4e1b1efb4f07dcfad7a2d968d0496f0585c10fa6e9c156443f7679800496f5552738e8589cfddae774c5b6b78ec55d408ad3ced6ee114600249100fae3a0f6aea75712697e05b9321ff004936e7cc3eb2487e63ff007d31ac93b9b5ac8f3b9e56974bd775e9b2b2ea53fd92df3d426773e3db6aaafe06ba8d3b4c5b3f859332baa4b25b35f7998fe3ff00589f96107e15435cd2d24bef0cf86463622799381df392e7d89d927fdf55bbab4ca0cfa04bc2cd7b0145e9bade47dcc07d0a48bf4c50115bd8e066d3a23a45a6b9aa162fa85e3b48b1f188460100763c363d88f4a5f0ccf6ba478ee54825df60d249671b939041cec1efd300fd2b756ce197c13a8585e37ef3469ee61563dc805d0fe3d3f0acbd3f448b56f87b78f679fb5db5d348d8eff2a9fd060fe0477aa5a12f493645e23d36da1d4ec85b94491847239e3e65701b8fa6e3c7a015c1df5d37db63df0849e13f3ec18122fae3e9906ba0f0f5cbcc9796d7fba53220452c7e646400291f40b8fa66b47c3de164f16586a3f6721351b75592124f0d927287ebebd8fb52d990d736a8e6cb49a46a21ad66711e4491c8848241e55bf222bb4bcb23afe80dad5b2817311db7f120c0c9e9328feeb0ea3b1cfbe38a9229909b2bc468e6b7263dae30cbc9e08f635d2f81b54d47c3776d766d5a6b1963749212e30e00dd9c7ae01c7ae6b295a574c98db6302eacccabb958a4d12ee561d720ff00fa8d4571aa3ccb17dac14ba4e0b01c483b1f6fa74ae8f5a7d32e350925d09a5fb2ca388a45c344581057dc0278350dfe8eb2594065c16da07e5bbffac2b9d62391f2c8971687f86b5e2b73025dbfee90e033f40a78209fc88f702bd151e37b759236dc9d3af623ff00d55c4e8da1cf15a4724332791212083275cf04fe8463ad75da4c70e94e871fbb66040c977393c2a03d39392ddbb62bcdad3a727eeb35f66eda8d82778ae146e2b246ea4107072a7fc0915ea9a5dd2ded8c33a630eb938f5eff00ad7976be61b8637168c819c64c6accce0fab67fda15d67c3cd4a3b9b292d8bfef94efdbec783fa8fd6ba70351c6a72bd9847b1d736064d51bfbd8acad26b89ce12252c7dfdaafb7ddaf31f8b3acb2451e996d92ed896623b0fe11fd7f015ead59fb383903d0e23c55a91bcb8926932f34ad92a3ae4f451fe7a0ab5e18bb957568eeee24016df8da3072dd7683ed9258f6cfba8ae2e592612962db5bfbc7f801eb8f735734ad4446eb1440a283f7fab91cfca3b0c9249fafe7e35dd9b5b931925b9e81e2df15595bdcc71ca865bbf2b74ae14318c367e51c8e40fd7af4e7cff005ab8b7376bf619a592cd86e4f37ef2f62a7b718fcb15a5ae5b59dfdb4973e5496f705b3bfcc06390fa1072571ebd3dbb8c4d2740d42ffcc4861918a80493c019f5fcf3f856aaa7b55764ca32931b6da9b42ccea01908da991d3deae58de1c206236273cff11f7a967f0e4960ea2721e67f9150300012324f3d947278feb53c3a3e15408a4de5955b273b33ced031cb63191db2077244b9463a02a32ea5f1a8cd35bb22fee237eb216c13eca3a8edc8e7d077a7e99a1d9ceacad1c897470ff697511a4699c0f2c7393cf53b8f23e87574fb5d36dbcb761b5783e6c877315009c823b67383819c03d073a114369e64974f1a1798297019b91c6376ece4fca0800e3b938eaa15b95dd2358ae5dd95a29196516f6fb9e30aa43396dbb77632003c29ebebdd720d79e78c2caf3fb519e5ded2c8f88e28c6f694b6e3f29eadfc209c63eb5eab0dca67cb666dcfcb1073b73cee27fbc78c0e4e4e7fbb59971047716ade4c30ee5dd1c4482703baa85cb30c632a0e3d4f61d1f5977ba439599e4ffd9fa8429bee22091062a598e0061c100f723be338ef8a6cb03a8dad94ed823bfa7f2af4b8b4e78e613b6f174ca51656c34a171d1480446b8fe188123b91d69fff0008b585d41b4c8f163e6fdda96c633c8504927dcbb11dc0ab58bfe6466e9ae8cf38b35692584292cb8208c74eff00d2ac6b32cf70d06f9097b6548d4679118e83f3cd752fe12f2f17765779dae4314c303f29eac7e51dc649fc2a9ed7818c91987cd652bb8e39047a8e31d3a5692ab097bcba07b3b2d4bd75a558daf852dafa532867046dde085392793d86013c73922b4acadf4cb0d0a0d4a0cdf5ddf8d96e65521142741d89018803a7241c8c526a2965a45f5a69e2e45d5bf9ea56ce10ce64d9ddc918505c63009e08f4e725fc450c897f36b3f3b9611db7fa2ee8ed98672460e0301f3280719dddc646145cd3bdaf7337ca729e227d460135bcf2049eee62cde5c8accca3855217a0ce4ed3ce7ad6035afd8b0b739691d40dbd08f9813fcaba1bad421d4bcb9e2924fed169018c3396392c06de9807907827a64f5ae66e0c9717782f92d8fde3f403d79edcd77d14edae8fa8ad612e94cdf3c13aac438f98fdd04723deba6d1eeaef45f09cceb792186f2478e38b2421c2104fae09383d3a0ac05d1e26776b6984f0248483b8ae07be460f4f5ad3961bcbaf0f2bdccd6f069b653343196ce64918ee6000c9381c9e800228a8af649e970e96474de01d744572b6b72a1e19d708a31f2b8c951cf4e7807b13efc64f89597c41aebfd82160ec1228a11cb139e838f527f9d605aa958d248663195f98b9f97183d8e7dabd57e1f59c56da40d5e650d7b745bcb279d8992370279cb7f2fa9a6bf77b1a53a4e723aaf0469365e12d23ecd0ec7bf9406ba9873b9bfba0ff0074741f89ef5bc9a8191bad722d72779c1009ab96f75b454f31e92a6ac7562e78eb552e2e78c679cfad630be3eb4e13963934730f92c3aea424935c87896dfed11105ff004ae9e56c839ac4bf8f2580207b8a131d8f2ad4f4dfbdb93f102b9bbab368d891d2bd4b50b50c5b835cd5f58ae49c5690aad132a299c136637239c56f6817f94f2d8fcc3d692ff4f0c1f03158b186b4b8f9b81eb5abb548d8e78a74a573d02271220c1a1811db358ba75e12064e6b6229430ae1947959e9424a4ae03691d79a6b267b66a6da1bb0a3cb207048a8b9a157c904f414f5b6cf6a9c2b0ea0548848ed4b998d20b6b45cf2a33ef5ab6b001df1556124f406b4ad6195f1856c7e42b293344917ed362630326b62d519f0d26401d147f5aaba7da6c20bf3f4ad784051f2815836596235e32d5435261b4e6b433f25666a00be69458333ae2cadefeca5b7ba40d1c8a55874ae5625d4bc2da92ca7cabf85d3c94661b4938217702304827af7f6cd7611fc9904d719ab45ae6a8f3a3471dadb2921518e49c1ebc75ce3b9c73d2ba69bbfbb2d8c2a47aadce66eae638b55610c73704a9418ddc71f9e6aaf88ade49c4737d9e78801f30940fa8febf9d6f5dd85d2e8eb78da8b31b465b7f218905325dbe5038030b9fc6aadc69e351d2e6788879846cd839dc4a8cff4af5b0b3f68b963d0f031ea1879aad51791caed5582266946f562ab184dc477ce3a1ebdeb4219ee45b7ee9caa64aa48b1ac7923ae08ff001aa16afe5ec90286383f7864671d6b634f8620564da2e5c459656c855627193d38031edc7e5ba1c9e972ada4c5c9de496fef13cd5f985b5d169e591e099d8b3fc9bd09f518e47d31f8d5792c8a056b661312ad21da080a17a9c9edc1fc88ad0b48614b649eed18c7267ca894e0b81c124f61918f53da9169a688f6c0b6c8f0898a96d80be06ee064e074c138ebdc55fbeb3ccd9bc8e433ae16492d4aca1d8707233f2b63ae7a91d3ad524579266be95552d6dc80a838527a845fe67f1f5aca6bc7494c8776f272483c9f7cd20dce96e619ae249679945b194858e290e1df0393cf7e87b64938f4a7f85ef1ac35a36d3fcbe6931b2b0e8c3919f4ee3f2ae7d184a03824a9e79ab770d35cc29347932c4301c8e4e391cf7c1c7e1ec2ae9cb924a4736370cb1342545f5477fa95b4b657497f6982a47cca390c3bf154f52895d23bdb3fb8c7f153fdd35a5e1dbc8b5bd0a191406122ee00f63dc7d7359b0ba58dc4b6d367ca66c156fe62bd476dfa33f38839293835ef4747e68d3b0d43cc54b8c8dc3e5907bfad605d85b1d7518ed5494fdd53cfd6a7bd492c242f090d1b8c823a1154efa16d5e6b416673206073fdd1dff4a9a93518ddf43ab09439ea72c3552d0647e1b8f55f174d733c07ecb1b89972721d8f38fa679af4cb1b708a3a556d26c4430a024f000c9ada85028af9bc455f6936d6c7ea597e19d0a3184b7490451e2a4206694102984fa572b67a161a7db150c8719a7bbf5c5549e7c7a54b6090d9a4c567dc4d9cf345c4fc7a5675c4b9ef493b9a5ac367931939ac9b997827d2a7b9638eb59970e76119aa5a90de8417174c33cd68f85f4f975bd5e0b48c1f2cfcf337f763079fcfa0f73595656373a9dfc76b67119ae2538545fe67d00ee6bdbfc1de1c87c3da718b2b2ddca774f2818dc7b01fec8edf89ef5bc6365738aad4e88d5395e0631485863b8a9655c76c542ca7d78a6731139ce092686da7afe74f2871ed485001eb48634a0c71fa50338a09c2e41c5465fe6eb9a00906c1cb0a86561c81c67bd04b16c6393c569d8e8b34f8697f769fed753f85160b990159dbe5049e8056a69da2dc4d869f11a7b8e4fe15d0d9e9f6d6832880bff79bad5be3d69a42b94ecf4fb7b40045182dfde3c9ab7c9ea78f4aad777d05b0c3be5cf4451963f80aa32de4f328f91e304fddce3f334ee068cd709165436e7feeaf5fc6aa49732cd952db17d10f3f9d4019b6e014503b28aad1cecf76577011a8e7de95c113cb1a94290ae1bd47f53de92c6d9ad601189322a5dcb83cb11f4c500fca48c003d69dba8ae3d42e32c49c7ad56bc9237554550fcf38aac279270c58a94dc42851c11eb522412b0caa10beb46e68a249e7498c28503dce69ea5a41f7f8f6e29a90e31b9855bb64431e54e68d01e8545b602756cb9c739c9abdb8e0e703eb4a5b8c0a8dc639345ac437714b73f7bf21542f944b3451c8dbd1cf28c3e523deac79a5f2215181fc4c6aa18fe7df33191c74cf41f414ad71ad0b81238d70a5540ec0530ca3a726ab86e4f06abbddc61cae773ff757934f9410fbfbc9a0859a2110c7f139e82bcbfe2fe8a67b0b7d7222d24a008ee091fc27ee9fc0f1f8d7a45c5bcb78ac93aaa40718cf24d2df58417da74f653aee8e68cc673ee2aa0ecee52763e50bb883039e0d63ce8c8c7238aec3c43a6be9fa85cd9ccb896072a47d3bfe3d7f1ae667c82430c8aee4292327cd68df721208aeaf43d76d2e74db9b5d42166b9da3c8914e36b023afb6335cd4d086394200f4352e896acb7f9901000e0d04c5b4cda9b0037359b21f9aaddece88e557e623b8ace690bb127a505b2dc0c770c75ad6b09082c58678ac6b6c13c9c56e58c5b8fa2d4cb6089f46f80a556f07e96401fea856db4e8382c0678e6b37c2d6a2cbc3da7db6d3fbb8101fae2a6d59b72048950c8083835c4c714705f11ee64b7f10dbc9082664b17f2cff0073258337b61371fa8150f82a41a07836ff005ab8004d70d88558632172a831e9b8b1fa5741e2cb09354d2ccb141e5deea0f15a44597e68e2ddbce7d3a1623f0ed5cf78face6bad4344f0d692c15563e1072107dd0edecaa18fe3ee29f5bb38795ebdc87c3c1e7d2ecfcee27d73504247a5b4240da3d86de3d8d7a078c13ceb1b0b5ea2e6f618d87a8ddb8fe8b5cf699a7a7fc2736b6b0022d347b158d33ce095c0fc4ab7e95a5e33d563b3bdb55e0c96704d7ff4210c71fe6cff00a53b1aa7a7f5fd742af86233aa78bb5ad5dbe68e16fb1c07e98dc47fdf2a7fe046a4f1f8b5d3ef742d6ee17fe3d6ebcb76f48d8124fe1b735b9e0bd20e93e1eb5b7973e795f326cf5dedc91f874fc2b1be29c0971a469f0cc4ac525fc68ec3b295704fe54fa06d6390f1ac8b65aef892d1db116a16d05c47b4f575751fa8f30d6c785ac2e3c3d16bf60ecccc2c52ea26ee498d837e4dc7e15c7788e29ae2df455bd38bdb359b4cb924ff00143caf3ea55bf3af58d3c8d4f44d3af880d35cda7d9a47f4de075ff818c7fc08d34eec8b68cf0cb4644b8cb300598293d006e39fc715df7c3c56d1ac6e2f637c30ba36d3ab72369c153f8641ff00811f6af38d42368ee4a118130c73d9c1fd39e3f1ad3d0fc40d0683abd84e5b7dc2c2d11efbd244047e2a3ff1ca9a916cca9c926ee753f13f47965b8935545632c3813f2012a3a13f4f5f4f6159ba633456f1b83e647c3a301c329ec47e9f98af43f055ec3e2bf0d8b6bec1bc813cb720f2d19c856f7070ca7dd4fad79deb1a4dcf847577d3ef3e7d3652d2db498c9db9e47d464647b839e4d72ca8c9c77b8e5168b71786609521d4ed73f66ddb66849f997af4f51fcbdea96a7704921989232a7f0adcd3e616562eca49562188c15c8e403dc751ebe9eb5cceab303231da08dc78e9f4e7fcf4ae072e796bd053fe52e787ee258fce1e630888fbbdb2481d3a74cfe55ab7f0ccb64d3a46e600d8678ce0027a654e579c1e48edc56558a85b450a5b1249dfd87ff655de78227035716d214586ea330852465881bb8cfb03fe7a1ece339ebd4ab3b58e063d4af2d9c46d71e7c3d7ecf74369c7fb25b200f7e3e95b3a6f8aa3b5ba5985acd697519014823041f5181c5747e3bf085c59d9cd369eaf3e9a49924818ef311fef20c6401dc839f5c8af3358caa940d98cf404e7f2a9ab4bd9bd74173347ab59f8eef6f32902c121e80ac649cfd323fc3deb326bdb3bd9a7bed4025c169163cab155790fca02807e60318cf4e0e33cd71fe177681750551b8344df293c8201c11f8d4d637318bcb097505516b00f336229f9cedcaa9f6e02fb7e75529ce71b39365a69ab9d85d68ba35db2c6b676e19b7e30cc324315e39e726b164f06d9be4d9874901c6c66247afd7a559d2bc4c96d636b6b73608d7d6d26e5da73e612a4618e7e5fbc18fd0fd2b46c3c450aa5e33c2658c799244776d254be635f63c93c72063d2a212e5159332ecfc3497324d1dec06293088a54168c0dd8cedebd371eb827dba5f8750b33a82d9db19a158b7308d5c0528a72c5b8c0c800019e3156b57d65bec50ca7cb6922646df8cfcc15ba76ee33f8d71f3ec48e50b230794013c83ef1079207b9ae8e654931b9f2ab1a134c5d259da491ef2762b107e022672d29faf1c7e1ed535cc96da758ac6c7cd9554c71c44e32cdcb163ea73963e9f28fe2ac29afb69320c678e48f4e807b0accf364b9942a86791cfd4d713ab77a19ddb36e4ba81a4dd7126f1d49c6779f523d3fbabdf8278c0a865d7cb3fca1942fdc00e4af3efd58fa9fcb00015d747b8791d4636f457cfde3d3f2ea6a597c3ed6b6cf2cf70bb954b796bd4903381d8ff9fa56d18cea6c86e32b157fb6272d86c0886709d473d49f527b93d7bf1c55a4f10dcae7c944191b58b60923dffc3a7a0ac74921752b6d0cb2cec3e50c0e09c0e3f3c8fc3f0ab02dd3ed1223a6c00fc84367231fe391f8557b29f5128b36acfc42cd26eba6de320ed030bf8f763ee4e476ae92daf2df508d3cc2ac58f09248154f3e98da4fbe01ae05ed086fdd16e4e339e9fe78a209eef4f932b1419fef491eefd0e453e494750bb47a20d3025c8779222bb97e6580bb2a83d0349b87e4c29ad6369a8de245793ddca23e7f76f164e7207f788cff004e9583a1eb3a8bca7274d7078da447193f43815d60bbd56311cc96a17cb524f96cb2100fa6dcf34db92578ee5a95d58e2fc6ba6692f3c51949aca2b7244cd2b6e0ea318e8001dfeb91d78ac5b7d27ed9a54059e693434ba210468434b21273d8e1400101faf4cd765e34d5343ff4a4d76d5c5c0804f0a464a99a400e4139ec39fc473902b07c25797d168f35ad9bdaaf9c556d66b953b228c3312400092e779c718e39ed5bd1a925152be86728a57b1a77d79e1fd1f669f73a45a0b8081841122ab467b02cb93bb8ce4e4f4e95c9f8887872dacedffb1f4f923ba41878bcc2e5f278ceecf03f3f6c558f18e9da678724bb97ed2753d6a76123725234383cf5dc4f5efdbb56478734696eb5048efa130c2bf3ce137109804f562c73d39cd75466e6f47ee996fb93eb9e29d1c787974c4d26e23bd8c0defb86d46eb91fde1f80ac1d3354b67d381bb52f169ef24d0467a4923ededdc8d9ff008f67b543e22d364b8f11c96f03ed8954c8cca7255727afbe3079f5ab11e8c644b80abb0c488b18738e58f5c9f6c9ae94a2ade4347377379757529f31cbb062700773dbf4fe75ed5a44a21f0fe9f1ee07cbb68d78f50a01fd6b814f08cf69691dd5e0f964e540fd335aba0ea70245fd9b24d8b95764d878e41ec7df04d3aade8fa1d386a894b94eae1b8dcfcd5817273c5654276839ab709c9ae767a51668c739cd584b8e3af3eb59c38e94ace5475a9b9a1a5e7e41c9cd559c07c9aabe71f5a04c58f3c0a6a42e52a5dc3b81ac3bdb6c83c574ae3777aa3710820f7a698d238cbbb43cf15cfea361bd48da735dfcf6b9cf159975620e7e5ad233b132a7cc8e0ad19eda4d8f915b96b739c73526a1a5960768e7b565c62481f6b820d54ad3d4ce1786874b0c80f7ab9161ab9fb6b8c62b4e09c63ad72ca363ae12b9aa89ce7156638f3d8553b79b3d4d5f89c62b06d9bc522c41101835a36fbb154109c0c73566090af6a87a9a58d547d8055b8e4cf43c5660208f5a9a37c77acac3347ccc8eb4c719526a28f2c739e2ae14c47d29926408de49481d3d6addad88604b0ce7b9ab36f164938c55e8536fad1711c56a309d2b5398a4713c57b0c919128e15fcb7553ff8f67f0ae5fc1c4c3ac4d613a0760e536938f98641af42f165b79f60fb40de843a67d41cd7976a4cd65adc17b0c6634970e3baeee0b0fd7f3cd77e02af254b9e466f84fad61a50ea60eb5a73e99a9ded8b123c894853eabd54fe2a454363215678cb10adc119ea3fcff2aeabc77109e5b1d4a35fdd4f0ec6603f887233ef838ff80d71ea0c73e7b57b538f2cac79181adf58c3467d767eab436efae24582db0a8d1c3c6dc637f5ce7ea09143cf0b5d2cf6a988576048a5f9b8551d71d738e7ea69912996cf079c8e2a94588272af903b5433a295b6675567769a8dfdb8b88ac6045e4b3ee08a07270a5b6e4e3d3a9a4ba4b6b86bdb58824f3dc8794344bf74a825547af00e7dcd6146d8e33f4a955b3ca92ad8c022a6e6bc9d86794b617abe505b9103a0963192b274ce3d89c8ff00f5d6fdadddb9377069ef1222c8ce6d6e0fc848e0804f6200c1c820f1c8e6b9ada47aee5e841c11ee2a8bc3244dbe363ee7bd171729d6f80eeffb3f59bbd3b910c8c6e2dc13dbbaff002fc8fad761e21b25bdb7fb444079abc38f5f435e556d78f1cf6f729c4f6efbc63b8ee3f115ea76fa8abc10ba9dcb20f948e739af470f514a9f2cba1f0f9ee0e547171af4bed7e673d6174ceffd9f392771fdd13d8fa7d2bb2f0b68434f809725e573927d3d8549a3e890c770d72c9991b919fe1aea208828af1f1b8be77c917a23ebf23ca7d82f6f515a4fa76ff823628805c1a9428c54a178e29ac315e65cfa651b1191c1a8643c52c8f807d2a84f375e6a5c8b5109a4c679acdb99b20e0d1713fa9acab99ce4e2a2f72ad642dccfdaa9b393d6a392424e6ab4d36d048f4ad1221bb0b73305ef589a85faa6406e4d54d675511b79719dd21e8a2b121669a50d336d6cf248e95d54a97567255abd11da7843c4379a0ea7f6cb601f2bb648db8122fa138e3a7515eede1ed7acb5fb0177a7bf4e2489befc4de8c3faf7af9b6d6669658cb94c46b81c632076e3fad745a16a97ba4ea2ba869eea241857427e5917fbac3d3dfb56d28dd1cad5f53e817e47cc3af34d006df6fa56678735db3d76c05cda92b2af12c2e7e68dbd0fb7a1ef5a0f2104918c573b44a10b609006698e1b3d86693cc7c9c0ff00ebd5cb0d36e6ebe79018d73d5875fc2849b15cce68c0600827fad5eb4d227b93b8af931fab0e4fe15d0d9e9d05b6085dcffde6eb56ce00eb54a24b97633ecb4db7b419550cff00df6e4d5b3514d708ad85f99bd0554b89c8426570abdf0698bd4b135c226472cc3b2d63fdb2e2f669635905bc68704447739fa9238fa01f8d356ee4ba56586168e0231e638db9fa0eb5505888e158a29e70a07cc41c6e3eb49a6ca4d227496cf4f491a49c21272ed249924fb934e4bfb59d4b46fbc0383b41e2b363b4b1d3637976449dda47e5b3f535325d5c5daa9b184f94324bcc0a2b1ed81d48fc28b3487b9a7e5965f9ced53fc2bfe34bc22e2350bf4a481662a3ce9173dc20e3f5a9e3822032e33ee4d31151a50a7e76032700679351cde748d80de5c58e46324fe351b4c9f6e63e51c27dddab9fd6a432c8e3e54db9fef54dee5a88e8c9450abd00c0a7167f534df21d949336d03d054162c44f2c8d71be2ced5dd8e08ce4e47f9e281ec5b552ca439c023ae7152197ca8c247c01c0c556927881e1cb1ff679a63f9adfeae318ff0068e29d913b9644e73f3533edeb26f8e16264038c0c806a8db33dc5c496f344362804b23e47d0fbd6a47b208f6c615168dc086ce230dbaabb3b3f5666eac7d6a458f24e79a7798b9eb9fa54179a9476c155627691b80029c7e745d2027f29554961d7d4d52b648e39e411610752a077f5a9a359644f3671c1fe014f55e7eee3e828dc6849493c0c9a6469213c818ab0b0e467350cd70909da99924feead3b81e55f1b7400821d66d972788a7ffd95bfa7e55e2b7b1060596beafd4f4e5d5eca7b6be5021990a151ce33df3eb5f346bba64da4ea7756170bfbc81cae7d4763f88ae9a52bab0d6ba1c5cc4a311daaf68ac5a475cf000c0a66a506092052f870132ce09e8056c4ad25625bd216775aadc54ba867ed4fdeaabb6d1cd036cb11be185767e0ab06d5f5cb1b25c9591c17f641c9fd057116e0bed1ddabd53e1108edbc5d6208cbb2b01f88aca6dd9d823a9eecd1385089fbb40303d6922b60a09209f7ab6c37ca400481d6abdc3f92ca33904f23d2bcf948d92b143c3b74b7f6d1ef219e11804fbf19fe9f8d2e95e1f8ad352bed4676f3afaedbe67231b10602a2fa0c019f523d86396f0fdf358dea31384e8703ef0ef5e8fb95a2dcb821b1823deba11c4ec62695a72dbdeeab7b8fde5d4e39ff006514201f9863f8d715a7a2f88be20ea8ce375bdab47160f748d89c7d0caaa7dc66bb6d63503a6e857776465d3cc28bfde3b9b02b2be19688da7e8bf68b81fe9778de748c7ae3f847f33ff0234c57bb3b145daa30335c37c5f07fe116565cee5b9420fa7caf5e828bc608e95cb7c45d3cdef853504519644f387fc00ee3fa0349ec37a2b9e6bf14acd92e6d754833f65d47cb9d88e82644207fdf48c0ff00c00d76df0bee23bbf0b0b6320696de47475eea198b29fd7afb1f4aa1e2c8e397e12da492aa97482d5d091d1be5191f8123f1ae27c25ac4be1ed4a0d55b274e7616976073b410595b1ea36b11f461de85d056f79a2b7c49b2163af6a96caa17f7c2e633fecbfcd8fc1891f8570e5d8932375ddc91eb5ec5f192c165974dd52221925536acebc83d5d3f9bd7975d58496d03c73a9493707da7aed645653f88606adbe873c9599d9f802fe7d2ac06af0ef916c6e045751af3bade61c71ea1d091eec2bd4fc6fa443e27f0b37d94a493aa8b9b4914e433632307d18123f107b57997c1fb8b7b96d5b46bb2717b0285ff008096ce3dfe6047fba6baef87baa4da76a773e16d498092ddd8c0c7baf5283f3dc3fd927d0542f77736d1ab1c5d9dc493f85c2e0810bb444fa9c0238ec40fe62b063903dc216ea1b04fa11debd3fc77a025a5b6ab756988d6474b965c9cee20ab1033d0f07eb9f5af2eb48fccbc55ddb779c67dfb7f9fc6bce941466ec6134f98e8e78866d36e300333ed00771fcf38effa1ad1d1267b6d461bc20878e4495885c9da0fcc064138c1233c0f526a969005bf8a6ca29763ac6a4bfa3f0783ed827f31d6ba8d4ac2d954f923cdb66ff968421f2c63ab6ee1b1c67824763838ac2775668e84aeae7a45e4d6f046f24aa668e31924bed539e9918c1fd7bfb67cafc75a6d85ddd3de68eab0c84179601c2b73d546060e3048e9d71df3d8697a7dfeb5a786bcbab6431a6c448be62481c393fc39fa549a6e87a36a50892dc5c45711361cac8188607a670548fa57a724ab42d6dc528ad99e43a3298ef830078fbc3dbe953a5b2bd9fd9589528ed04ae73d33c7d015c8cf6eb5da6b9e1696ee4bbbab4654bdb490ef4e143ae0104600c6467ad721741e1bd8a461f2dc011b7bb81c7e63f9579b3a72a7a1304b58b12eed1612cea03313b490bb46d239fa7079f4c8153c5700d95c49804b211bf04166241e9db0381f8d21b996531b2c9f3818563ce0e4fe64925bf115178a201a6a5bc70cde6db14dc8fdd973dc7a8ce2a6715cba12d38e8c64d7d235ac16db4b6d3e630f5fff00501fad548e332b6c1206723215016c9efd0631512a89879b249e5c04e188e49f603bd68dc2325840230caf71b9224418dc17f89c83cfcc471d3835cca13af31a875915c69aad305b8b98ddbb46a481d33cb63f97e7569a482c1f6405097c226de98c7249cf3f8d41752ae9f08872bc20128cfdf61907f5e07d09ef5cdb5eb4b74cdd571815bfb38c7dd4529a8ec7a04b75721668ae8889a2658b61e0ab48739c76e067e82b3f51b8374935ac581144fb83b1c991b20671c74c71ea0b0acb6d5edeef51824bd92442556495f66efdeaa800edc8f4fd6a3babf47959a0126077908dccdeac471f9715daabf2adb50e65637f4bb3d364bb86c2d2f24b6be92309e6ca80aab9e8a307e5c8ef927f3a8350d0feccb26ebb492e6db31b44809c00c41c93803dbd6b9eb56d8fe712c769ddb81c65bd6b77fb75cebb26a48a0198032c65be56ca80e0fb13bbf3ac3dbce2db43524f734a0d198c113492c59719c46c1db8e7a0e9f8d177676f22ec0cacac42aae72c09fc3bd61fda54cfb9a6976061e5a2fde233c03fe02b5aee4bcfecf103c89a6a363fd23cc02523a72dcb1240ed8aafacb4f504d35639fbbb79f4fbe28a369520ed71f9707915d5e81e24994241770baaff00cf48dc90300900a93ebe9ed593a5f87adda1b97b5b97be98e64dd348225ebc9c00724e7aeefe553b6957b044b215deaa3ef2fdd6e7a67a67d81a8938cd38a33e569e841e34d36d759b68b5269bed2d0c4d195b74224dc7a6558e78e481d3df9a7f80ee74fd3b42f3a7b7791c9768656605820257e9c367a0e82b72d91a0b57b64565242b96070d9f41f9e3159979a44779e189b50b6bc8adacd257865b961f732c09545072cc4963c60648c74aab4e34f96db0555ca8f3ef146a36fa9deecb5b4905d96cb089da43924f073d4fd0003a5743e1df17791a0ea36f796ee751e163678f2ad8c8c3739c8c0fc0567aea02deca58344b76b5b2b75c1b89547993e32493dba9f7ebdababf03e8be18d63c3b25d6af95bc6495c8f318642927701d33c74fd2ba69d7b357565b2308ea9a3cd34a99ccb717f340260b3a191c824282c493f89e3f2aee349d3bedb75279732487cc545c9dc140393b874efd3fc6b90cbc3677714676433c5b1941fbc4fb57a0f8275fb3d3bc24a2fa008968584f2ed3970d920e7b9e718ef8aeaa935f0add9b5169bd4e7fc6de28b8b3d45f4ab941e5c25590a0f95d48f949ef9e7f9d7992c57325d11089259f76efdd82493ea3157756be9b52d464bb9e4f31e43d3fba3b2fe02bd57e1547a2c1a0a4d76d0acf34af25c492f0238d0e064ff21eac6b694fd9c4cdfbbaa323c35a85d5c442db55b69adef5470cf195128f5e7f8bd47e3eb5bc995fa0ac6d7bc4c2f75b91b43896d34e88e4bba0df28fa1fba0f5f5e3f0a9f46d661d551914edb94192b8c6f1fde1fe15cd77769a3bb0d5f9f496e6d44fce4f5a491b755757db9a0c9939cd4b47a1163c9229ab260d26fc8e6a33c9a46891603e7ad3860e6ab83daa6434ae3b08f1039e0553b8b618e4568af3d692450c38a3981239e9ad867a566dee9893839419f5aea9edf3daa26b6cf6a14da1f22679edc584b6ad92095f5a588b0aee65b2570432820fad63dd68c532d08c8f4aae74f727d9b8ec65dbcc5719ad4b598b773547ecc50e1811f855ab540b8c1fceb29246b191af6ee7d6af4049e7bd53b4c719c56bdbac6476358b374ee4d0a961d2ac4701638278f4a9ad5536e08c55c8d38f957f1358b190c29b0e0e33e957472a734c31e39ead4f8b39e9537603a14c1f6356028c75a646393e952b63f0a09665eaa9ba06045795ebf6825d3e72be679b6b2831a8e8431cb71d7a21af5abfe6235e55e26d41ac27ba36fb4bb23c673d06460fe3cd74d08b94bdd39eb34a0ee259cf2c9e1ab811fcd3d8b8b88d4938651f78103a8c13c77ae52fcc33dccb35b41e4c2e72b18390bf4f6eb815d2683388af978cc330dac0ff1291d2a86afa68b4d45a09cf9714402031a8cc833f2b01ea47527b86afa6a91bc533e1f2caca15a749f5d57ea50b23e5c4413f29193f9d49a8da1645953af5ab0da738376d6d13b5bc65865987dd538dddb3d0f4a75acca6d8c6c0b1e9ec0d647acdf2bba332139e0f19e95622383f3541751c914c42f08dd2a32242325ce0d43563a632525745d74c9e3148028187c0cd54481d93734871cf53f4e2af49e1b9ceaa2d1e48dc0c3165662ac03004020673938e9d69079158d9acf2016cdfbd3c051debd4bc0fa14d6b6118bc197eaaa7f8452f83fc1e969b6e2f2389ee7395da806c1e9ef5dfdadb055e95c35b13f660ceda7828cad2a8aed6abc882dedf681c55b1180bd2ac2c78ed51c8315c4e47a095885b02aacafb41c9a9677c03cd66dccd9046704543916a24571375e6b3279b939345ccbd735937137279a4b52ad616e67e4f3541df777a7cae0e4e6a94d305cf35a46265290e9a40aa7915cb7883595b70638ce6623b76fad33c49afc7680c50b06b83d07a7b9ae5154dc23cb3392e4677633935db46837ef338ab575f0a25b26f3ae5da5762edd38ce7fc2b48065f9405c1c1e304fff005be959da7aaa4a4c85b183820679edf856b44f12a3c921da7191c753e95d2ce545e881886d6da4ae4fcb83fa8edc55a8afd37280b85e876f7f7e7bd62c025b89b2030183f74f6c73d3db35a96b1288c260641277639edfa715362d337349d76e748d463bcb1725d7e5c371bd7fbadedc57bdf859a1f12e9d15fd8b0113712073f346fdd48f51faf5af9d15506c2a30c9ce739c9cf5c7e5c5765f0efc4771e17d552e5d8be9972765c46b9e141c6f03d57f9645438dc534f747d0d67a6c16d82143bff79aad960a2a14b98a4816689d648d977ab21c861ea2b32c2f8ea913cb1ef8adf71519e0b63be7d2b2db431dcbb737c10b2c6a6471fc2bd6b3e67d466948558e287b963cfe9567f73691b15291af56663d4fb93546e358b5568e34944d248db55232092695bb87a0f303229679d8b0ce30302b2348ba5d4aea697e61146e57121e49f61dab4e68a59cfef2531c40fdc8f827ea7fc29d1411a67622ae7d075a2c1723bb94c63f730c93313c01c0fc49ae6bc45ad5ce9b1e5bc8567076ae18f3f5e2ba3bbbc82d485725a43d117963f80ac8bfd1df5b78defd0c31a64aaabfcdf8f614d8d0dd034c92f2d60d4354695ae1c6e08dc2a73c6056fb155ce5871e9cd430d8ac56e2291a495071fbc6cf1530f2e18ce02220ebda8029cdabdb40c11b70766dabb94804d4b248cff7cf1e83a564cc8b75ab2dc306923886631fc3bbd7eb574c8f838dabf5e6a6f7358c09c648c01f952140bf348d8f6a8141938791ff00e027151dac4ab76edbdc85e3e76c8cfb5037a16cbc8e9855d89ea7a9aa91e9b6a8eceb6f16e63b89dbd4d5f79931dcfd2a3323e331a22ffbc6aac45d8e8e2217e50157db8a86e6e1d57cbb54134a78eb803ea6aaf9f712ea315ab14756059b6b10401df1e95b4b088d4aa2803daa6e0645869b2db3cb23de4be64ae5d957040f61919aba6da36e650653eae735619428258818aaf71796d6f13492cca14753487b966050b8daa154761599aa0964bbb7314465895f7bed600e474ce7b77fc05694799d3fd8ea3149b36f0a38f6a2d71dec22dc48630ab085ff0079a9089246f9a5da3d1453c46de94a0aa0f988aab088a4b780a1c89189f57355b4a5448e4643f21638cfb71d7bd5876795b117cabea4544b670ab31280b1e4d2432613c3bca8705bd057937c6ed0bce8a2d72d6323cac43707d549f95bf03c7e35eac14203b540fa56678834f4d5745bcb4b96558a58cae4f63d8fe75ac2567712d0f946fa31e5b3609354f450629277f5f96b6b5ab56b499e271c02466a85adb31b694c441911d5b6fa839e3f4aecd86f4654d45f12b3b29c1e07a5548addee0799d53bfb5741abadb476f10923388c630064963c9acc8249a76f2e284c70370deb8a9be9725aea59b38412cc83381c7bd741e1dbf7b0d4ad6ee366496361f32f6a4b5b56b2b7b789155f821b3e99eb5a7a5e9c1d14be0317273e95c93c5429c49f68947ccf547f165d416cc5a6468f1c1c7cc6a8cbe2795e58d9e5f94c64703ae7d6b936772fb304a2f73e9542e2e95ae5523e8bd78e95e554c439fc28cd5467753c2f6d3c90c836c913153f515dcf842fd6eeccdbc98f322c11eeb9fe86b3bc73a67973c77b10e24f91ff00de0383f97f2ac2d12f9ac2fa29573807e61ea3b8af56c0b53b9d43481a83ac570a1ad4302c8467201ce3ea4e3f01ef5b11441540518038a7dbc91cb12ba1dc8ca1811dc1a734aa829d85b0a8bcd3268d5810ca0a91820f7a8cdc8ddb318245431cadc83da8b0ee72dad584377a2699a226368bb5b67523a2c68cdffa0aa9fc4573fa0783e1b9f01cb12b335c5f5b44fb9cfdd9901fd3767f02457a4f9303cbe698d3cc0db83639ce319fcb8aaba369df60b06b7de1d44b2bae3b2b48cc07e00e3f0a7606ae99e39672dd6b3f0e2f34d6c0bad1265970cd822101f039eebf3ae3d14552d7b4cbfd4bc3b06b211596d523b69c28c90111555cfd5590fb73e86bbfd67c1b72b71e22974ae4eab0fdd38c0704363fe047cc04f6dd5a3e1ad0e6d26c5ecaeed8490c9008664761fbeea720f43f7dd48241c2ad44b464b8f326781e8f793693ac5b5e5b63cd8640ebcf071d41f62320fb1af47f1bdc4b7d3e9de21d22d2e2191628e569e3fde20e7e46638f95872a43019e0565f8e3c356da7436924336e9e2611c91c80abba73e5b10707ee008c718e07bd6af838ac3a3dd585fc06e2c58b086e522deb8c9c804e06339619f53915854a975b8a316b43abbed5a3f10f8485cc5243e61b76f32307907037c64e7d718c81d07ad78dc4a23b92a1ce01c0278aeff0045beb49e1fb34da7476f73138789a28c00c4f05f924f39fd7a62b8ed56dd6db527c7dd2c48f63fe7f95707b673a8d322b3574d1a9a2ca23f111775320308521b27aa0e4e79e335d2cda83eff0032ded408a3711a5cc637104e06303eeaf4e7be7d066b8fd3a7586ea795d9957ca452ca3242e172307a938031f5f4abd2f8c8408f0dbc4896c7e53123efdeb9390fd8e7d7391eb445ada4689d8e86de42b3cd1f9a504986f2ddb0ae73928d83f75b073dbf3c8dbbbd46d92d22d52c6dfcb30308ae6d5b3803a6df6e9c1c63d718c5797c3ad4735c036d1cc7073e5b2ab0cfe60d4ede2631480491ca8e06d3952370ec1ba935d54eaa82b12ddf53b41e208daf4df1b664d3e54fb3c8637da49186cf1d0f6c7a67f1c7f128769a6433c1359cb1acf0ce186e52cdf263181ebf803eb83cac7791ddcd22dbcc223236ef29beeb300403907ae09a9deef32c2b2298dcaed91641951e9c0ec2949aa976c15afa0fdc6eac8e1b63027728c828781c1f5c8ce7dea6b8792fb4d1f6c188ed892d28239dd81b40f538cfe7ed50daa887558a0b8c9132fcdb79e7900ff5fc2b4f54be1a4db59b4716d8e42490701978e4f1d1b9eb5cf6fb2cd9c534e4cc1ba924f3243731181c71e532905738c0c0e9c0ef5d3e9d2c70e9d6f7332f992221299e8a077fd3f5ae36f6178dd9da5f310e2559339f3549c67ebcf3ee0d6b45766eecff007b2a436b1ed4dc4f3c74017a93d4fe3daa1cf93a1ce93918babdc3ddddc927627903de9965637132968e33b7bb31dabf99e2adadfd92479b3881901c192719ce724103903a7f2e6a179ef267dcd8970321bef607b0ed5a4549aec1ecd47565a8f49462125b84323630b182c4ff004fd6b4069b046ca8f21e000402a368f71935976781feb2f20873f78bb6f63f8007f5adab46b655c2de7da4ee0c80c5b1411eb9aa8d2bbf798e325d1172c748b2b88559a6923ce786e9c1c75c55997c36850b4574857a8c73fcaa7b47db6205ba248720a07240c024f3c7704f3ea6ad3179a23b9dc31242cb181b970de9f40415e7f2e6b68e1e29edf89a3499cfcda35d59a89d36ee047cc7aaf38e9dbeb595716b324dbee96491fd5f35e876569279252e2413ab2f5ec47ad33ec41a2d932ab6dcae4f391dbf4c55bc3c52f74870b9cd68ba9dcdbb6c8d218f2368661b48fc47cd5da692b733c6ccf233cc718f294a81eb9385278f535cddd68c899780907d29f616932aefdd26d1d5840b201f5ee3f2ae39ae460b9a2f52b7c41b8bdb048eced239226bd621a565c155523214fd58127daaf69f7fa1d9dc586837e3cb011279d564dd1a1c36d079c060bd47bf7356f50b5b6d42d6dccc2366b7904d1bc43193d0f1818183cd70fac68335af89d6eac63536b72432b9e446428320603a1e78cf5cd6eab2717297622b45a5ccf631fc59aeb5d6b17ab0aecb578d9618c2e02c7bfe50076e9cfaf35cfe957b7f6092496b3111c7f3b46fca37623156f5db49ad375da0509396dbdc819ef9f5cf005654131776666c23aed651f97ff5ebb2872ce37b6e73c1591ab79acac97106a12db472464f94d0a36dd8c0920671d08231c763e94be2cd7acb580c9656d2d8265498b7ee42ca31c9ebea7a75359ba3787b51d612f6e2c61dd0d9a7993cace15631cf72473c1e959f1d9cad23a3ab2b2f07eb5a2a74d4b996e55915c0748cb23a919e57bd7b059c5a74fa01b98a4b7b4b34089179ce146140cb107aff0022c4f5efe55736335bbac46390ca406c6d2383d2a7d405d43149725888428b7098e36e303e84e09fa935ab69b436d3563a3d7a7b5834d536123cb14ec4091d7697c1209c7a71fad616946796fd05a3913f1b366720e7daa6169757ba05a896336e6d9b1be538568df9cfae41e3fe042afe8d2dcda5add5a69ac7e653fe90176919046727eeaf39e71f7454434bc56adb129286b73adb5bf8e68563b8bab56bd5c2c9e53f0cddf00f3c77ed9fca9e65c719ae597c3dfd9d0491c0eb2dc20fe260a09e7a7e98aacdaefd8a7fb3dd16dcbc33120e0fe15b56c0d4a6b99a3a3079ad0aef9212bb3b41371d69525cd6041a8a4ca1958107a115652e87ad70b8b3d88cd1b41c1a963719ac88eeb02acc33f353ca5a923591854c80115461933f5abb1354345264823cd21847a54f1722a55406a4a4ca060f6a4fb303dab40c54e58ea4ab98d3698afc8150a694a4fca315d018f8a88651c3019c75f7aab3667748cc8f48c7217f2357ed74f2bd54d6dd8c31dd0063600f707b56945a711f7b6e2b277294cc2b6b4d8c72a307a55c3000431cf1d856c2d8e38dd4c9ad95509ddd2b368d14ae633a9278a51c1c54ee07618a808c64d4d8ae6258cfbd57d4f53b5d36dfcdbc94229e1540c963ec075ae7f5bf14dbd8ee86d1926b9c12493f22e013c91d4fb0fc48ae167bbb8d46e1e5b890cb2e0b12cc060019e33c0fa0aeaa38573d65a239eae214745b9d16bde2d9660f058c0d1647df73f363e83a7eb5c2ea6d24ebfbc2b955da36803bf538ea793fe4559b6794c7f79c5c5afcacd1f0c53a2b03fa7d735196292ab8855e356185719071d8f35e8d3a71a6ad138a5373dc97433bb4db79549f3213e5b0ff0074f1fa62b6bc5c64bdd16d6fa28d5a6b16576007df8bb83ea01c1fa13ef5cce932f937724392166f980ff687f88fe42bafd166f2ef024edbe361b70dc81f87a7b7a1af5693538d8f89c742585c4ba8b74eebd1ee8e06cf539ae249d180967b9752cd23e07cb93cf3d3bf3c715bb35c656388c10ab2280f224410c871d78c71e9eb593e21d1d349d765408df6493e6b71bb9393f773edebe98e99ade8ede46b089cde5908e3cbc30aa91925be603e5e7a1e738e3ad60e2e2eccf7a15635e0aa4366519a25920233923907d0d66820120f5ad6120c60e3271f8565dcc4df6955854b990fcaa07249ed53235a12d794dcd04b5ea0d3631f673f349f6889031638e8e0fde1d8004633debd17c35a1ad98696e36c973231766db81b8f52076cf7acef06682ba7c0249c0374e3e627f87d8576902002bcac4621cbdd8ec7b586c328fbcf72e59c40638ad38a318aa36ae17ad5c1305efc570f31dad12c802ad675c49d6accf302383593792e01e6a79871890dcca003cd63dccdd7d29f77718079ac5bbb9233cf14e2ae55ec175375e6b22e67033cd36eef0282722b9ad43551bca43977f415d54a8ca6ec91c95f150a51e693b1ab737ea8a77360564dbdecfa9ddac1631b3479f9a423031ed4db3b769b12dc649271b7b5751a6cb0c6cb1310aa78fa57b785cbe31f7a67c6669c433b38505f3396f14f814cd6cda869819a60374d00e4b63ab2fbfb7e5e95c3e9f7061631cc0b23715f40594ca57073bb3ce3bfff005ebcff00e27f86e1b465d5ec220b1cac16640385739f9b1ef8fcfeb5db88c3251e781e5e499d4e553ead887abd9fe8ce66dd21186909687233b7824679fc69cb18b97c8388d4e02f7fad47a318ee4c96cd105c8050af507a77f5cd6945008a16219430c7ca7393f4af2a4ac7dac1f316608bc955dac01c67e560783f4e9f4ab31892276da4ae579dad9c82338e2a9db9010ee6c30c6171d7ae7fa7e757e02be51cb739185c751cf39fcbf3a8341158c5398a41b32c036e1ca9191fd7f41527cd148e55d1401bb2723763b0f7a89942b02154ef1919c1c73d7d8f1565a30f128c36fc7cd9e9d7b7e18a06779f0dbc5ef6ec34d9e522261fba23aa9fee9c1e87f43f5af4d875912c0210c42f0331101b1fe7d8d7ce06c8238682560dc1048db83f99ef5d6e8dafcb1cbe45ebb18f384958e5d476dd8ebf5aefc3ce8d45eceb2f99e5e2e8d68375687cd1ed4afa76c7322cb3ed1b8f9ac58e7fdd358f61241fda52ea1fd9f3a81848447071f5c8ae760d52ea1001612a76ddcfe5ff00d6ad8d3fc4ac985123c5fecbfcc9fe22b4ad93f5a6ce2a19b45e9511d0bcdac4e54c1610c2addee25e47e0b9a25b0bef259e6d4dd5b1f7628d42ff0053fad4967aec5228372bb01ff9688772ff00f5aaedd2a5ddb80b22f96dc8653cfe15e4d6a1528e9347ab4ab42aeb1641a4da47656a3cd286661f3c87ab1fa9a74d7d6f11237ee27b20dc7f4a83ec56c186ff0032623a6f6247e552b4314519daa91afb0c563a9b58a8dabab49e5c70ca18fdd2ea40351b06979b86de7b28fba2b3fed2eba8b816d2cf18fbaf10c81f5f7ab51b5d48dcdb08133d6590648fa0cd25a9ac62913800751c53b1e9c0a95610e3e673ff0001e2996d6c5ae89477d8a3a31c83fe7fad514e561d1ab7618f7340882b336064f53eb534d2c70921dd73f5aa971732807ecf6d24c7ea147e669a316db26ce3a5472dc4516039058f451c935ce6a9acea105f5ada7d97c8f3db6ee0c1cfbe2ba4d3b4eb6b1566823fde31cb48c72cc4f5e68b8d2b11d9acd1dd4d7185412000061960076f61df15664b994e7278f6e2a427af7a68688e4b3281f5a49010a82dd4127f3a8355564b429e67921c85690807629ea4e7daa7fb5798c52cd0391c190f0a2a582d9118bccc6593d5ba0fa0a00912f2d962558a50c00000419fe54dfb54e5f115b9287f89d80fd2a62413e94d00eee0d16191325d49cb5c841e8899fe755a1690deb23cfe680b900a608e7d47156aeae62b75fde48013d077ac0863d424bb9e4b7bb54819b859177903db9152f519d2ab2a824d51bbd5adaddf6026490f3b231b9b1f4aa8ba624809bdb89ee067710cdb57f218e2a0324103b258428ac7abe285a2d43727bcd7a2b582296e2d2e0799fc200c8fc3359726a5fdac91b98648e156caa30c1fc45486dc3b9924cc921fe235616df68e0543916a278c7c5dd29edb515b98d316d3720a8e036391fd6b8cd2216588cdc1058b312718c0000afa3b54d220d46d5adef2312c44e76919c1ae5ffe10ed1ada52915a2150338249fe754f12d46c4cd3e87903e997921599f0d6edc838cf5ab6fa2df7967c8dabba13818fbad5e93a869d6b0446155db1e3eea6062b31e6882f4dc9deb9aa63668e59d46b430b41b4922d3a36bd01a564c907b1a9249d5318230396e718a350be448df6e40e831dab9c9aec480807a9c0e715c97751b660e567a1b86ecc99dae4b11818ae6ee2693ed19cbe6438de3b7d455bb77918131491a84ead9ce0d4bf6253ba4918b48ddc2901a88da17b82969a9f56eb166b7fa7cd6e700bafca7d1ba83f9d795488d0c8caca5594ed61e8476af5e20f2315c2f8a74b61ab47328da972704fa30ff115ecbd15d9d0b5669783352592c9e0958030fcc093d13ffac7f9d54f14f8bacf4b9bc958e69242322400796463b1cfcd83db23eb59f7faed859da9b3361717276edf9428527a7519ac3ff843f50d6177c1a545a7c2e37079ae0b120f7c006b82588ab534a68527d874de3c96e51a3911530418e5818a3a91df0490c3d54fe759eff10b5582695e458640c85400b800f66c7f4e2b563f856c0664d570de890647eac2a86ade04b6b285b7ebd0b38ce22316589f4e1ab374ebaf7a4ccdf394ad3e206a115c0b866567036ba9fbae3b671e9ebd6ba9d3fe27e9ad1eebd82585895528877f241c95f618e738fc7a57985d688f013b2e21620fdd3906a949a75cec6648f7aae3253e603eb8e94426e1b49929cd799f41e97afd96af6fbad6f5727250e38603a82bfe1f81aaf75afdd5982b716e821c9c48d216561db823728f73d3d0d7815a6a77ba79548a5755523e43c82031603e996271df35d0e93e2cb8323b6a532b5b4485f66d25e67c80141c8c672493d00078ec5d5ab55ad0d23512dcf45d7755d3e5b666bb8e6689402614cba8607a856047a741dbdab84bcf16db460359db4e707077c8107b74c9c7e38f6ab16b7369a8cf651db5cc5f69b820246ef8f2f2c542b31c0ce791ec47ad51d4bc37a6a492196f1a1bc690a35b9c8445c03938191cf4c7d0e2b9d3e677a9207524f632a6f174b35e2fda5a086366c36de0f3dcfafd6a6d42e1ae0219360951b639660a0fa1c9e3a71f85515d2b498a58d67d3ee03c88c30b21285948cb64a8f948c8e18f23b5747aa5bdb58eaec9612b496ae3e4915d94e579c6e1d718232335bd4a11a6b9e2c851e76ae22dbeb06c10db691a6dcc21034935c27980000003729ebcf03d2a9da4a97f30b6b9d14c721c01b630a0939e8ac4ff00e842bbed2b508355d2e34b74b7cda282ed7587048eb85c65b383dc7a9ae2ef665b992458e55b756c930240194374fba9b80e9f5e075ae74f97466cd26ae51d77c3d3d84724891db7920062a57e6009c7a606323be39159ebae482da3827d3ec2758c6032ae5c8e3b824718fd69f7fa798a3323491ae7becf2bff0064158de4896400386f60e5bf9d6d0a89ec612949688b0f25b5d49b96028c39c6ece3e8dfe35ad673326cfb4a34c8a78dc307f315a1e1af0c0b98dae67263b643f7871b8fa0278ad2bbd3d072e1161e42aa9c74ea0671923b8241fad57b5bbb21a8c9fbc7397b1ccfba431b8180aa240e36a8e07f0e0f1f9d6c192c75510c33ed91d1771daf9009e31ea7f3ab165a70fb519537a394cc194488f6c93b5813d471fad73d6f2de59ea178f0a0b6d410b2b18f9193dd73d0fbfbd691a6fe23a29d9fbb2ea4ba969c9a7318989978fddc4cc7827b1ee3b718ac696dee6e24f9832b64e06d209cf6e95d7585bb04919be620ec3939e9cf5fa926a496d5670c36f1d0ff00f5ab48514fdeea4cfdd6e28e3edb4edb3ffa6c6f1c5b02965ea0f18207e02a85ce957425985b6e648464bf450319233df1cf3ed5daf92627fb2c8a5a56ff0056f9c6e1edee2aaa32c25ac995a1fb48ce587465049c1e872571f8d6aa08cac73ba56ac2d2616facda02d80419170707d7fc7ad74b7315ade5a48d601edde35def1a93b97be41c904704d5cd73498b58b00a2345bb2882273d51c300467d0861f8006b1f46b69adeeed6df53864877b795e6a9e8d9f941f553d39f7f4a89c145dd0d2bee6ae850991332b48e71f75f1b8377cd7656f02c7320400c4c7e61d083d8ff004fc7dab37fb26688896158fcd3c95ec4e49fe55b16136f891cf191de9a99b462fa9a0a8912ed40077aab3301c8a7cb2e6b3ee670339231512ab6368526c86e64c679acff00342ca245731c83a32f1fca8bab9ce76f5ce013545b76f39059b38c7419ed9ac257997354d46d23ac864fb55aeeba4195e4322fccc4fbe39fc73f85731ac4378ab3da2cb72d3c88163dec1719fbd800601ce79fa568c10cd258b248ecaa926e68d5b1b79e1863bd57f196a22e244b7d3e193fb48428aa70479436ee207bf4e7db358a82517193ea8f367562e2d5f63cbb599aee68e1d2f62996d898dd81dd920e073eb8e0d3f4cd141d0bed13471b33a970ef26046beb8073eff8d3a5b38609af2de4cb4d0a90c7272ce33bb19f7e3f0aea3507d3fc4d69a0693a2c8523b893176c22dbe5aa2e76e3e80fd702bb54bddb47448c15e5a2391b1d459346d434cb3754b191d048f9da72bc927d9b8fc01ac6c5c31748242163072c188c2fafff00aaba8f889a1d9e857f1db6965feccd0ac854b13972cc327d7802b33c1aab25eb3dd468f1ed117972202324e49e7d31fad745392e5e78f53684549d8c637cecd899da400633ea074a76993ab4f6f15d6f92cc4caee9d7183d71df8cf1576f3498db53b986db7aa2b91189382c3b1fa62b4fc39e1b967996e657f22d50fde3d64f603fad6eacc51836ec8d2f14c716a1ad456ba7dc3fd8ad4aef2c9ccd377007b74fc4fb55e9bfd0ed442804633bc28396cf4c9c7435a25e0b45f22d5123424fcf8e4927924f5ac7bb9c3eec0ebcfa55c74d4e98518c559a31350919dcbbb9dd8e4b12c4fe75cfdf40a46e40a59b9381820fbd7497cb279ac005400f01972c3eb5977b0dc3052d2c67e5e028038e7ae3bfd6b5526f760a9c60ad15630629e6b46262661cf4ec7f0ad8b1d794e16e328debdab3ee20942b166079c6deff005acf68c0ddb81e9c7d694a0a5b8e3394763bbb7be571956c8f6ad182e7debcca19e5b76cc5232fb76ad7b0f1134640b84247f797fc2b1747b1b46bf73d2ad6e47ad69c338c715c569baac170b98a40df4eb5b96d7608183584a06f199d4dbcb91c9ab68e08ae7edee3deaec77409033c562e26d199b08e0f53532a6eef81542d3f7ce36f3e9506abaec36104a96cf1cb7215b0c482b900f03d4e462a544da9c2555da26b49e4c2bba67441eaed8acdbed5eceddd14317de4a82060647bfe3fceb9d89755d7e60cb1badbe5596679318233803039ebdbf3adfb3f0644118df4f2dd6f392aed84fc00ff001a7a23a3d9d0a5f1bbbf22a3788e3b2b9665fb8180575ce1811ef8e33dea4b6f88336544b1c25918798abc0db93ce771e715bf6de1dd3add0082d2d80e9feac134f9f42b19536c9676d22fa344a7fa51eebdc4abd15a7b3fc4b7e1ff00125aeb3bd63611caad8d9bb3b8633953df8fcab42e89193d0019c9e9f8d70973e144b3bc86f746fddcd048b2081ddbcb620e78eebfcbdab85f12f88358beba96db539991e2386b700a28eb8217b8f7e7f9511a1cef439abd4847581e89ae78b74cd3c32a4ab7337648b91f8b74fe75c06b5e2bbbbe8a60f3fd9e103fd54791b8138c67a9e0f7e2b9d94a80a4c9bd986587f74e4f1fd69021d8ac42fcdd0641cfebc7e35d54f0f18f9b38675e4d5c724fe72860f1b0201186c7e870697f7b12b39470a0f248e056a4da7436b04721d92c3bb6b21e081d987a7bfd6ad476762b166298c23ba32ee563ee3a57b9fd9e9ad1d99f2cb3fe57ac6e8c48ae58e64b762b32aecdc3b827ee93e87157108b9b7b8922668fe51e7c63f84e7af5e9bb1f8f14b268eaf1b146f3159b6a3464a127b71c8aa6b6b7d6172d208a4cb294704f965d7ae0f63c80793d857354c0d58eab53d1c3e7386aaecdd9f995e5df6f2a978c33210caf838f63f9ff002aea22649ade1b88b856c30e791ea3f03c56248ed25b37959489881b4e7e53d769f51ef4ff000fdd62496c67521b0648c1e38e8c3f5c8fc4d461e5cb2e56659c51f6b45568eb6fc8def1794d5bc3cf2a822e2d46f439c76da7f307f3c57356c6da6b6f35ee1ad644016389cf99f2e380428caf6eb93cf4ad6be9764054b828c3040ef5ceef8a38261751c930ced495080633d40279247b1fc2b5adbdce2ca1feedd3fb892494c88eb065df8c2a8c93ce3a7ae48af45f05f861ada24bad4101bc61909d445edf5aa3e04f0cada30d42fd3172c331c647faa07d7fdafe55e896c9d31815e5623117f7627d46170dcbefcb727b7b40231b454c2dff000f7152c442039c548b32e7fa579b23d4832acc1a24241c81e950c77aac304d6949009909535cf5eda3c3292bf74d656374d17e6b801786ac8bbbbc0209a8e590aa1049ae7758d4520562cd8ab8d36d9329a44f7b7a06ee6b99d575a4b68d99d86dac79fc4b05cea296aae4171c39fba7e87bd5bb9d1bce8b7487391c375af5f0b80735cccf9bccf3c86165ecd6ece6af75d96e652002917bf7a92c678e2195895c1ee49fe869f79a330380b8200154cdac90b3e070bd2bd2853f67a247855b12b15ab91bf0dc82b843853c8c9e86af46fe6c41c123042b1f43fe457356e645439041ce47eb5a96b248645da4a71c91deba2323cbab4523b2d1ae84b20491ba10a4815a3e22b73a9e9d3594df7a488851e8c0e47ea05731a39f2e73963b8fafd7fc6bb894878edcfef2465e3047ddefc575d37cd1b33e7f13fb9aea70e9a9e1da744d06a7e4ba9565ec307233f956da468c2191c93bd4315079c67aff009f4a5f18c12e9fa95c08a3daa929646dbc22b61874fc07bfa66a3b578a3204e16495954e55b010119c0fc49fd2bc5a90b5d1fa6e1ab7b4846a2d9a2531c4b3e406316ef60c467f1c1a96df679a77eed9edd6abc9385013600eb9dcc09f9bd38ff0a5122b2a14054a8c3e4e771c9e7db8c0fc2b9ac7797acedcab1999972a4601c1cfe07af4a90b3c403052aac08059783d8e33514372afb41057030c739fc7ff00ad565d01e8c3667ef63b7d290d10acb3c7d0b28917b1c6e19fe591fa54eacc8bb4b8c3004853c7e3ef50452aa9fdf479e0f438fa76a3edb6b13624e0e298ee76de15baf315ec6460e635dd1b039e3b8fd47eb5b725be3a75af39b1d4c5aca2e6073bd795607a7ae477e335df687ae5bea688b20114edc01fc2df43fd2bddc06322e2a9cdea8f99cd30135375a9ad1ee5a85e6b73989ca9ef8ef5ab63ac344ff36626f551953f51fe150b5b7a8a89edb19af4a7084d5a48f2a9549c1de275b6dad47e46e68f73f66420ab7f854e2096e4092f194a1e4471f4fc4f7ae2a03240498db19ea3b1fa8ad5d3f56921200381dd58fcbffd6af1b139527ef52d3c8f730b9a5b4aa6edc49e4a6d8509c7011073515adadd4a7cdbb7118ff9e6a7207d4d4d6b782e06c88a42dd76919352889daf42492978c0dccb8c63d3fafe55e2d4a72a4f966ac7b70ab19c79a0ee48858aec810b0e85cf4a54b08937333c8ccdc901881f955d3fbb4c46a09aaf23b0ff0058cabf8d67625b6c6ac28a7e48803eb45cbf951317654007563802a3fb7408c11645794fdd5079355dc19cb7db0a83d91791f8d36fb02471cd7ba85d6b2b2416c9751404a868c601cf5f98e3fc8ae84dcead7106d86082d0e71ba57df81ec077ad04555e0280074a7e38a1446e46159e8f7058fdbf52b99d79c246046bcfae3934fb9d034c8eddd96194606ef966653fceb6b0026e6215477cd67dc79b7e8d15a00173feb8f45c7a7a9a6d204d97f48b6fb2d843130c155008a9a6b98a0244922af7393dab33ec178ce9e76a52e17a845505bebc5585b3b51feb21f30ff7a4f989a91dc4b8d459a266b081ee5bb63804fd6b36deff00517bd6b79e3f25b03e7ea00f615d144235188f000ec0573fa94663d6a19246748f049e73bbdb150c695cba9620316790cce792ce3914f6786d571d5bd05442e99d7e5f941fcea211963c0c93dcd273b6c5a85c8e5966b96393b63fee8a458b1daae25b8c65980a6c8403b579f7acdc9b344ac42ac4fcbd0549193df207ae2a45876a839e7de9b34aa88d923819a918e9b6088f5e99ae4752d4a148f7ee072df7475f4a8755f146584368b97c90cc7a01ebef5c36aba8a34a01c942dd8fde358ce6b639e7346b5f5d9983ca72806783585399258408b24b55db0df73283c984211807a9a98db901f73f969d0e0741f5ae397c4d9c728ddb671015c5d491cbe6707920020d20d2d2f5cadace1caf51f776fd4d6f5d5bc7822de23cf5727b5664d64fb1d10ec854165603ef37d2ba6124656b328c76cf67ba37f2d987a3641ad01326d42f0cc840e3e7eb55b4cb9332f917d195dbf75f6d755259dbc7e0e595a1134b1dd90d2af395207f2a4e2db7736824f4ea7d318accf1169c351d267840fde63727fbc3a7f87e34f9b58b4b795229640ad2315507b90483fc8d2aea292cac9c0206719c9c7a9f4af5ee68793edddb810548ed8e86bbdf026a26e74f6b598e6580e39ea54f4febfa5739e2cb2167ab3cb12feea7fde28edbbb8fcff9d45a25d8d3f54b7ba53889cf9730f407fce7f0a362b74755e23d596da0960b7699a76181f655f31c7e840fcc1af39d435fbdb589e187ed16ab9c95f3921627d4803713ee79aeb7c6fa8ac2af0b5e4cd86d9e4da0c9627a03d147d0ee3ed5e633c2d35daa0852dd18f0a1b7b01dc963c71cf4c0ae2ab37cdb9937d0b3017bbdd717cccc36b3a069096988fe104f539c0fc6a9df6bf37930c76cd0c0d09f3258e16062910819475ebb8118e739c939ab6f6b14d7453112cb28061883838e0e58f3f780e0678c9c0ed8c6f1159dbe929244d2bdc4a0e1872880e39040c77c71d7d71c8a854db576249dae55d4fc456f7897cab0abdd102485dc655806dccb8e083b49fcbb56469b7715fb98dada489bfbd17ce33fee9e7f5ac6b80d2b1700019e30303f0adef0bf9508492507058ee2a4823a771cd5ba5150d16a28be77664f3584f1718c9239420ab0fc0f355a4beb917733dd3333bb1724fa939aed4595bdf1594dd0b5b690ae59a3660a304e00196627af5a926f0d5ab46e45f9701b6817117964633c01d467fa570a93b3e6454a876398b7d5212abe6eecb298dfb80a719e3d78fd055afb61b932ed90e1308a09ce01cf3f90fd6b4e3f0543704b24f22a63390cb851ea49e07d0906b4acfc116a904f1db5d4a6f5f1b565c1048cf1900633ef532827a93184a2b520f06cd1a5ccaaea863dbd25385fa9ff003c533c45a9ecd4e68a296230090bc6f0bc607cc32407dea4807d56abbd8ea3a7078e2823175b806328ff005401fbc01fbc7d87eb597746ea4bc32de5c431cae0167b8dea5bfbb9d8c07403ae3e95b7b36a25c6f61da9dfe6239810b1e8eccaff00fa08feb50f876d1b52bf8e2185dc79206001dcfe039a4d5b1e4b04bcb398f5c431ee6c7e12923f2adcf87eab6963757d21218e638c8183eac70727d3b7e5d6a1454637237676920b79214b5b5740d000b1a33101fe84f049fc07d6a104fda0c13acf1dc9500e07df1db39241fccfd4f6cd858dd5acc240b286c6d3d4f3e873c13cfca4e1ba641c8aad2eaa9a75b42d730c92c624c23a6192271d41e3233e98ec7eb5ad16968745f42ecd66b691a45123892193cd05b078248603bf439c7d3d38e63c58b2d9ead1dd6dfdcce02eef4603907f000fe07d2bbf8dc5ddac5232147da33920e7df23a8c639f7accd72c22bfd3ee2d5f037ae55bfbac3a1af46293890b47731f4a992642f91890fe2c7d6b4a2b5f3731edc93c62b83d1e69f292584c7cf20068a4f99587d2bb8d26e6594113050f0c589769eaec7017f20c69434562e4949dc86e6c59a031b6f9554e548ff005887d41eff00e7ad66cb6efa944f6d2a837113349195e37fcbf98c9ce47627daba94c16ce38acdd5e1f25d751813f7d6fcb05fe34ee3f2cd44a6afa02a7728dadf2c961673b7eedede5884eac7b06c06fcbf5c57576c8af1b492283e71df8619c0ec3fcf7cd723a95b0fb4bcd6aebf66bb8895f4048f4fae0fe75b967a8f996501c7cc55411d706b39cddae694e9ddb46ab3ed1db8aa8d7291ab7407ae3dea94d7126e21db6e7b0e4f5aaf3cb1c109772158f4cb7f5acb566bcd0893cf7ee0f181cf73cfe555269c8cb48dcfe66aa83f68704480295e302ad5ac0ad19dd82ea782dee0ff005028d11c957196d110c7035c66521b039c93d8569595b3c8ca5b0bbb0c7f2a9ad220e03e542b70557deb56dad70cad2a8eb900566d9e64eaca643088e339604458e5882727fcf15993de59e8926a1a9ea0ecde6b88a3745c96c28f90671c9c13e98039ae8de24644573fbb0371f970727fa018af35f8a6ef26b3676a4b345141b82af40c58827ff1d151084aa54b3d84b4d0e7f5465d6b599a7d2ed2449ae32e2dd54bb1fef31c74ee78ce293c197377a16b0b766d02882431cf0c8c092a41071ee067f315e91f0decc5a687330431bc92644aa177328c7723a673fad79af892f92c7c5babdbe9c4b4534856563c92d90cdec3e6cfe191debaa3ef39416c69076762bf8fb51b6d62e64b9b217088c42ec700e063b7b67f9d643cd258d969f716b28733a16909c921c31054fe056a5bd8d6da1f3599967938d9d0a81c9383ebefea6abc16ff006a7fb3c0803b9523e6ea79c0f41d6baa9a5ca92d8da37fb269e87a136a77c97b2bca2cc333119c375fba0fe1ce2bb2baba659847184013e555046d1fd2b394ae976115ae1818c619bb13edf8e6b3def62673cb6dcf0072719ae9476c23ca8b5e6b3b8e0bf3c2f3cfb71cd5b93449dada49639164083801482dea390304564ababb9eaa3b66b42d674b791d1a5678cfca194b7ae3bb0007535d984f64e5cb556e7999b3c5c29aa9847aadd5af7451bcd36547908746023f38724161df8f51dc1accbeb76b693ca78da39147cd960739e8463b63eb5dcfdb6d094492643bf8dc8ebcf6e4673f88aa7ad68ab710be3cd59e243b13827d87ae3d2bd3a996c2516e93d4f9dc2711d68d451c52d1f96bfd7738396291a12c13e40d8dfb7be3a67fa5507b773bf6e3a1ce481c7b67fa735d1dcdb5aa417422b8905c4071b6400893b1c0ed582dbdf7ef7651b491c753d857955294a93b48faac362a1894e50be9dd58cb7b7dae096dbcf5f4f7aa6f1f279cd693ab6ef981c77f5aab247f31c0e33c66a0d9a2b2bbc52078a470e3a1ce0d747a47891a32a97809ff006d47f31581220cfca08e07539e698cdb40da08607ae6938a96e11938ec7a9596a51cf1868a40c3d41abf0dc967f6af2bb5b99a03be194a93db7039fa8ae874cd7c9212e9763676961d2b29e19ad56a5d2c5c5be5968cef755d65acacbc88a32d34cbd71c28eb83f51f8569f857c19f69ff004dd5a1547726458064aafd73fcbb7f2c4f095aff006c78b8cb300d05b0f300ed9ce141fa73f90af638f0b0818e315c52d0f72a54f6715461f328c76ab080a800029fb46392714f90f391cd46a73ec2b139d1244a077e292652b9239aaeae039f986055d8ca4b1e0f7a572ac54d9bc16c77ed589e21f0dd9eb56e63ba52b28ff573270e9f43e9ed5be81a09ca38c7a7bd5f112327239aa526b625c5347cefe20f0d5e6897063b852d131fddcca3e571fd0fb553b281a1d407da7727940b9e391e9d7dc8ec6be86d434b86f2de4b7bb89648241821bfcf07debc935df0bc9a4ea5346ac65826c794c4738f43db3cfe9ef8af5b2f9aab5545ee78b9c5e8616725b6df79973e9b235a2496ce65b6c15619c9c75e6a869332c911595555e33b5b71c93f855fd36ee5d3d9ecd9be527e623a1f6a66b5a7a2489a95b2f008f3947f77fbdf857d25baa3e0e1369ba73ebb3febb9a4f3c504b0c6186304163d7773f9638aa83c4712930cd10931c71d7f1a645a6a5fe4b4bba390e473c293dea4bdf0d4904199a356007caea7f4cd57bfba308ac3a7cb51ea73d75a94305ec896e9b6c24da254cee652324303db1b8f4a5ba429b248193ed11159a27c64b0e78c8c641c9cd655f4405cc8514a8dc79ce770cf1fa54d63721ede3d3e60aa43b34531ce46401b3ae3191e95f3b5a57a8e4bb9fa16129a5878d37b58debc992e74e4962c946e993ca9e854fd0f15b3e0dd01bccfb75d8c060364640e79c863dfe83f1aade0dd1647f365ba53f6766dc1187df61fc58ec31c1f5c0f4af408d02af03a572e2b17ccb963f31e5d957b09b9cb6e84b02807a5685b9f4354a2edc62ae4257a77af3ae7b85d54661c107eb5621b372723907dea085b2557a9adab7538c566ca8e8243b517046d3ef599abec2a71f78f7ad868f2086195f4ae6b5e596160230cca7a7f8511889c8e23c59adc1a640cf237cc41c28ea48ec0578df88756bdd46e18cc592d9b94553c30faf7aec7c6f3463c55709248de7029cb47954cc6b819073f78293c7ad7237465b6ba211151362a98db0eac028009e3073d73efc57ad87a318a52ea79b88ad293712a5de9d7d25b098fef95577ab2c81ce012338072071e9dabb5f87de228ef6dce9f7e49950704f565ff00115971e9d34f059c31d9dcc5b656765c1ca2b6d076e79c704f3faf5ae7f548e4d275afb45ac92390c640ccbb4819c153ee0f07f3ef5df4a6e0ee8f1330c1c71949c1efd1f99eb97961b5c1e1948c861d18551934f1330f2fe49546060e370f6f7c7f9e6b43c21ab43ace9a8aedd4641eeadfe7b55c78becf76048b8dac3e8457a09292ba3e0956a942a3a53d1a39b1a4c67124a0b16e983fd7eb52359440295511a91b4ede70739c8cfe1fad6d0df0068644425188c30ce0fd7f0a278cb37cb8dec30703e5e79000ed472236faccbab326c2106705c82f918c77f5feb5d55db2ff0067ee60d95707d7d8d73f0aaa5e6718c9c81fceb7e4cbe9d28d9bcaa86c74ce0d694d68ce4c54b9a716715f10d5e09eda54c18e7b601da31d83118248f61f9572362e6175c91b55f938ce011d7f4aecfc62cdf60b07e63406457238c82a081f97f3ae46285e687cecc788d4021bf8b25801ff008efea2bccc42b5467dfe4d2be121e5a7dcc9f5068e18d65258ca481c60ae39fd7fa0aa62f5190e038932307236e39cfe3d29d3a7da34f7d8090bf37bae3ae7f03591e6c6b09c3fef37636e3b7ae6b91ad4f6a32d0db5bd411701fcdddea318ff001cd588f55091007707ddc9cf18c0c607af5ef5cd79ea230c243e664fcb8edeb9fcea16b90e010ff3739047ff005feb53ca5f31d64baac2f1a850de673b89390dcf181dab3ef644930ca0af033ce727d6b07ed1f28f2cb16ee0ff004ab968b24d8dc08c76273ffea14f9439ae69e99a9325eaac91fee5881b573802bafb4be8a30d0db396dc7200e48e6b897754c8897e6c7273535b5d9b6ba12c419141e067763f966a6c34ec7aad9789afeca38e3917ce4518c4a3273f5e0ff3ae9f48f1269fa962324dbce4676b9e3f06ff001c5798d86b90cd26e9a631ba9cac8d9078e9d3a1aa77fafd9dbab8421a4fe101720fd79e2bae8e32ad376dd1c75f2fa1595ed67e47b8496fe955fc9eb5e77f0f3c745eee1b1be2c2091b60de7223ce36907a819ce474e98ef5eaef00e6bdca15e35a3747cee230b2c3cf95942091e218ce57b67b7d2b6b4ed58c4e7cdf9b38058f5aa06127b53e2b191b240c03eb4ab51a75636a88742ad4a4ef0674ab32dc2ee59770f41c539554725467d7158d0d94d02878243bbbad585d4647022f2d525e84b1c01ef5e0e2300e17953d57e27b9431aa7eecf464a10ddea51808a521f9893c107b7f5ab93c2a9b9dd80f7cd416d6051fcd9e6692523a82428fa0ab0638c1059431ec4f35e76c77ee546954213123ccf8e157bfe27a54134b7a8378b15da0648f386ecfd3a7eb5ac071e958fe249264b5f2e01f3b03dc83f5a1b60922969eafabcad25d3931a1da601c007be7d6b7d2358c6d450147000e954b408d6c74f8d0abee2338298353dddc4e232f0c08001c798d8c9a94edb8ec4fc7a734c2bd598e14739358b3ddea323e15a38d4ff70126a58209de322796493273f39a39ec3e52ccf78586db25c93ff2d18600fa0a861b503f793b19253dcf26aca461576a8c9ed81522db4a1f0c1b3d8e2b2948d231203005049007b0a72ae400318f6a99a16c0f94f1de91404cf1938accd15911188b7071b6936200d83b88ed55f54d4ed34eb669af6758907af53f4f5af3ebef19c97b72f1e9aad05ae4b33b8c48c3d3d813fce8d8994ac8ed357d6ed74d421dfcc97fe7929e7ea7d0579beb5e21d46fc79658476e4e3629edee68d21e4b9b9d4679991cb29562c33f423e9822a8c71c50c8d063739f99b77f2ae79cdf4309cee364b816d6598dd1e690e3dc565b46d70d1b98cf07207ad6ecd6f18746648c71f2af000a8a47456f9422f1fc06b067349dc203f61529b413c1db9a86798ce58ce48f45e82a096e4233792ab23ffb4dc561dfea93f99b461940f9b1ebe952a0e4cce4ec8d792e0c6a55648f3d0026b3bca691e40c7ce53c901f18ace5badd28ca3eef402b52ce369b2b1c5b98f45eb9ad1479498b1b18fb3e5162db138e55c6ecfe35b3a66a320b0b8b4f2a310c841da878c8a96c749b95b73be3550c71b10e187bfa55dd33489aee468ade225875dcb82bf535bd9bd11aa7665ed4fc4329bf89a5076c69c94600e3a753c6702bb7f05ea49a844d2ed50c0e76ee0cc339eb5c469fe1e4bc801298472700f700d777e1ad2a3d3e302350b818e0577536f766a8d7f12d9fdb74b7da3f7b17cebc73ee3fcfa570b66c1d1e16efdabd10dd246a0920d79cea04437ecf02958cb6429ea07a7e1d2b47a8e3a16f52bb59ec9232a04f147b0b1191818e71d0039e83963d4e38ae2b5999edac2e24b16df333859649173e62edf990718e011c7a671f76ba99c0970c480a473cf159b79a64af6d35b845dad87dfc007049271f88fe75c7563f6993286ba1cbda5c8b5dd757063f3275cb213ce3ae07e18a8a7f3f5b6061b59e4e844927098f5e7a8c74ae8adbc231dd799766e2633228c831a48aa307eea8241e87b1e4f3daa78ece158639678a3b8b76492559a3b600ed4c6e6c8c600ff01f54a51b68c1ad2cce4a7d0a3d9b6766439fb8ad818edf360fbfa53bfb363b461f6768c45dc4c8493f43b80ae935f65b080cb70b2aa0dbcc88770671b95793d71ce3b571375762e0b18655c93fde00fe807f3a975199a5665f3aa9561148db2357dcc42677838046727b002ba9d37c4c24b49e7b0d3a25d45a0446b8b9024000243103181c90de9935c5e99a5497923c921f32388167d843703b0fff005d68ea5a8595b69d11b48bed91cffba2f0dc32084ff71b6e0eeef9ce3eb52bde358b696bb1d6dd5fac9af4e6f35676820566b8995785556036c48381c9551819c9273dab73c3f3cc750649dca5b2a8794c9806257fb8ae7fbfb773b7a600f5af0b8d7514bc92731b22339277b11bb9cf3dcf41cd746be2cbe87718c2b6fb91732b30c991f0c307a705588aa9d35dee2e7b9e97aadf69fafe99a8ea9692436f2c334ab0b4bf2956c9312fe2318f7e3b571ba66a115ce9f147797c56ee4decd24c03855c8c632092c71cf3d3f4e125b9370822b8ced072a401f2fd2b47c3f15c4578ae252b174f31324e3d063904d12a7d6e429763a5d7f476fb297fed09eea30376d64da83e9bb927d80c7b8ab96c059e816166c3e668c48c318f98f20e0ff53dbb75a9dd0df46246b710c4558020336fc0e492c7f0e303af53d33eea5126a44c64048c0033c74f5f6e39cf4fc8564d68ac292499bd64b2c7009220e54f1d46e19e3041e0938239e1b1b5b0c2aacb710c92b79a3cb66f97cd43c4807f09ddd71d0a3e08f52315734936f73e65bcd232c7302b87190a790ca475ed8233cedebb9771cabab4bdb5bf304e842391b262e4eec74cb0fbdec48cd28475ba3689d4e850c36d65e5453b88f6978d1be600e7955c718cf4e4f5a925604e7a53ce8c9a55ac772242f24c76397032a793807d3dbdaa8dc5c2ac649e78cf1cd76f3f2ad4b8d3bec716affd93e256861119c4e2674700af9441fc475ea0e7835e8b6ba227fa749046565ded8453bba0e83d7a1ae1df4f4935096fd2228d3010ca48fbc7f849fa74af46b630e9973a6c4ead1c508595d43773c0cfd003c7b8a69dd6855ac738d73e5310c8d91c153c62a1374ce18336d183c6383ed56fc4de29d3b56d260952da38efe391d58ec3bb68621491ee30707d6b85b8d5249a58f779ac85f04a0038f61fd7f9d612a6d32fdbc522fc731856e2cb7f0bf3c1cf033dbf03fd6a4b0d5d62b42b312aa1b1ee7f2ace4b59650ac25f30c8063e5e071d3919ff0022b62c74d45b778df693d46f1dfafbd55d256382789d6e5a8a567bc75604e5c146ddc1e79fc39a1a10ed189482700e08246319a9acad0eec86c100371c0ad97b58d232c46e07819e78cd62e4724ea4a5d4cf4b48d6251e592e46e0b9e9566ca05590b481b68240e7fcf6aba8e3cb5cfc8e00c71dfb7e14f85f6c9b002548c9a86d19024217682d919ea7af1ffebab4b215e413c7f855425a47091824e7800f5a64ce55d82236304e73fa5677034e5591c29cae24e01e95cf78c3496bb782e22406489764899e588279faf35a50193ee3b15ee1bb1abb140265421893903ea3a9a56e6d0af432f43bd86d3c32b35c931a5b82b28c723048c7d4f1f98af219625b18ee6fd49927ceedee33f316eb8fa9cf39e95eb5e36815bc3b75c6c67742e477c118fe42bcfee74e8ae20bab59ae16282289660c83736fda4a8f7ceec7d6b5a375a74ea357bdce06125a695e4569247e371f4eff00e7d2ba1f0c5a66ea6b99d584518244bd39e879eb5a7a46850be861c0126a72dc08d5738f29464e7f1fe58f5ab371652da2cf0b5c08e36919ff007230ec0f03923e5e95ea539aa9a4763b28eace72f2f2f27d40a5a34915a803076920fd69a6fafa0197762a3ab46c48fc4751f88a92f63b95b9063baba0c4ee04b838e7e9c566b5bcc922986e159d4f195aebb2e874a6eda9724d7d5d999e42e4019da83a018f4a85bc436d91b564518e727a9fe954e712472baea167939f99d17041cf39a492d2ce640d6d21271c8231839e9fca8b2173336a3d5ed278be6902b0c28473ce393f97f8d68c5aa2a4436bcf0ca096f320da4c87d5b279ae125b193711182c4027f0156b48d4bca7f2ae94ba6085f9b1838e0fe75b52ab3a2ef067262b094b18946aad8edf53d76d350d358ddd92b5f83b46de179ce5b39c8fa75e95ca3eddf965257d0360fe7835655a32fb9d4ba60f00ed3d38e707bd42a116456914ba020b2e7191e99ed4eb62675edcfd0581cba96054a34af67ddede8546001e4035567019d98285049200e83daadc9d7a71504f867760aaaac490ab9c0f619ac533b1a294a4bb1240cf1d060543229c0ddd871c559b87676dcd8ce00e001d063b7d2a06cb01b989da30327a0f4aa25a2357645f97eee7b8c8cd4f13178b7b0c0070c7a0c7f3a84a90a01cedea01e94f8de448d8a1f909c1fad5c27ca61529736db9ed3f0cbc979351b8b539591a20ad9edf31fc3ad7a7c8e561cb70315e2ff066ed238ef6d7e7f30e24c9e9c7181f9d7b4c2ead0867009c74af2ab2b499ecf3b93e67d4cd49d9e438ceda904a0f19aafa9ccc88fb131f4acaf0edf1be0e79cab1523d0838ac5ad0a8ee6b39db2120f0452c53853c377e94f684b92075ac5d41a4b4d42da16c8131383f4a9dcd11d5cafe6db2b9e4af714fb7b8f97e7c8149a6a6eb7c352ddc21606dbc0a94fa144b15ec6ee50e08c5739e32b612e913bc4034908de0e391ebcfd322a2f0c4af72cf3c9d198ed1ed9adeb98924b59a371f2b29047ae6b5a155d2a8a4ba1cf8aa11c45195296cd58f1bbab38a788c8af990765e73f8d374bbc704c2620474208cd66596ac9e6c90cb1e5e2628e61383c120fca7fc7f0a9fed56b732936ec647ee9cabf1df0466beda9e229cf58b3f30ad976228de1562eddc9a6b77d32fd5221b2ce7c988039daddd7e9e9535d6a7736d6520127ca0676b0c8e39e87e945bcd1ddda4d652aaaacb85563d55bb1cfad50bef3fec13dade60bc2ca3785f98ae7191ebd6b49cb962da30a50f6b5231a8b5baf9f9ff0099872c90ce80a8da4018c9c9f7e6ac691a341aa5faa92e608c2b49c6327fbbf9e7f0ac70ca0ec66db938c91d2bd1bc33622c6c63463ba46f99c8ee7fce2be52b4f951fa7518293b1d1d9441635540001d00abaa30306a0b66c03532b64e4d79a7a1b161186de9ed53c271cd530f4f47fd2902468c4e03e6ba0d3e62e396cd7310b6e22b6f4b3f370783eb52c0e8028241c5656b50198ec88038f9b6f7e3d2b4636231cf14eb3c36a04b9c2e2ae264f4d4f96bc65225c7886f2f217df0dc1df1b7a81f27f3534ba5c6b716e64419b8b68dcc79ed9071f886c63ddea596eb4a96736f387520cb146ec408d7cc62558f7f94b67f5a7582d959c71433ceb05eb5bb79dd594b162c98619dacbb633e847bf5f6a1651479351b6ddca29a72182d9becb77793cebbc989b00659801f74e4fca79fd2b375eb72ba74e6d83ed56fde24cbfbd85ba10781c36073c723040efb4e86fed8c76f7023cb6f7b7964091b37f79724283ea0e3db39c04beb7676b5844c935c9b492398ab6e5c80e557777c00bc8c8e07356999b397f056b72695a9aa12de44a7e6039c1f5af7a8986a360be5bb2c8578c1ebed5f354e8619d80e0751f4af6bf03ea2c6c2c2476cacc8aa4e7a30e0fe78aedc2cfecb3e3f89b04bddc443491a72a8dd2c4884b11bb247cd91d7e9dea08ee2495429dbc01862a01207039fc456ceb3032b2ddc5c027923aab7aff009f4ac4dede6c819b2aa778f7278feb5d6d599f3b46a2a90b962da1f35f7a80761cf35a966db5b6b60a9e08f515916526d78c0e33c7f3ff00ebd6ac2c0f5e0f4ad20615d3d99c4f8dc7fa0b5a062cd6f3e73df6e081fd2b98b489f646a4ff00ae8cc698e0860f91fa81f9d765e36ff897ea897a47c8f18906464165ec47a703f3ae42168a65d8b204819c32b939787f0e37718e9e83e95e55756a8ee7e8f93cd4f054e51edf8f5fc492cd364f2e3688644f3300f6eebfae3ea2b8ebf8fecd7524218b146209c60753fd2bb846770de418c79bc91803a92180cf40181c01d9ab94d7d3ecfaa31d8ade6461b9e47231f9d73b3d689923e6ead52aa06725500527a03d3da9f69106932630e003d4903f4abd03ada9629b19d94a12ca0e01f4cf43ef525ad46c16a818c8cbb109c853d71e9567cf0a4044023ce76838cfe355bce2a4b488aea411824f1c1e78f4eb512bbb93b1490475a5b8d3b175248d66dd212b16ee42f240f6cfb535af83122242def51c564ecdfbd626b4e0b78c2280ab91e8393fe34b4452b99e96f7370c3731507d2b4a0d32de3456657327f112720fa62a437291c62311aeec93bc673db8f4c71e9dea5b791ee119003f7b264cf0a3e98ebf8d2b8ec5ad3a083924157539dddb18e3f1eb5ee5f0f35b5d6b4a586e5bfd32dcf94f9e0b01f75bf2e3ea0d787457891f976e854421f258a8cf6c927ae3dabadd26f3ec578d736ec13230c541da79183f981f9fbd74e12bfb39da4f46726370feda9e8b547bb476e8837000823834ec63e95c5e83e3252162bc1907bf7ffebd7616b7305da6f8250ca7f4af5e7192d7a1e1c249fbbb3ec4c08c7a1a64f12ba72819aa5c26de4e4d41712796bc1fcea12bbd0a934b719048d6e36b13b33f5c7e156bed31088c9bc6d1dc722b259d89392493d0544923c6fb94f27a9f51e959d6c042b6bb32e8e3a7474dd1b96b74d709948ca2ff007dbbfd052ac0865de46e7fef1aceb6bcdbc6dc0f61c5597b8f38edc85523a7ff005ebc8ad80ab4b5b5d791eb50c6d2abd6ccb12cf0c60862198761cd51c4b7321600e31d3b0ab9058c68a18e3079abaaa187ca0003dabcd936b73d08a3352dbcbc6796ad4b2b58d86f9b6e07519aad161a77663900ed1fd6af1ba8826d1129e2b3bdc6d7621135bc52fc8b8393819a8ee6ecb37cec76f603b54335dc4b791868c7dde00f5240ae7fc51e32b3b1592dace013dd860985e8a7fda3da93b05d237e7d46da1b7924b99762a75cd709e23f1bdb2ab45a4292dd3ed13f080fa01d49ae3b57d5ef2fee2437971e6019db0a9c22fe1dcd604897177266405211cb3b0c002a79fb0b98b9777526a77ebf6b9e49e5638dee70a3fc055e9b49934d8e37b910c90488932b4326fdea7381dbd2b989ae43488d149b218ae4441b072dc72327f115bb24b713585ada9559bc9458dd83e092bce2a25b19b95f712ce49aced5b2d1c6d337cab8c7cbd7bf7aabbaded1da4043c8fd8b64e4d365b3b892569ae08f31be50a172a83fba2b36eb4eb99e400aed553fde519fc339ac9c6fa19b6ac5dfed7db288e6466439391fc3518bc4532796cd23b1fe2c10055929a3c16462916e6d6544f965721c39f4c0ae7a677cca202a422962c0f1fa52e448c66b955cbb24f6ea1955649662092e4e00ac389dee2e64478ce739509fc5f5ad6d32490c484c46466c83b978156d259e1b705563872fd001f871de88349b4631d772b5b411a300b6eeff002e59bd2a54b874954da0c374ce70456c416136ba162b08c3dc820cc83e518ec78e82bb9f0c783ed74c9a39eea28a5bb5e7232554fb03fceb5a541d4d4bf6767a143c23a1ead7e892de7fa2c19e0bf571ec2bbcb7b68aca210c030a3ab7afd6a42fbbd07bd239cf439af4a95154d1b2d1197e17b769744b56fbae231cf5ed5af75742d6d1e4dca4ae14fd4903fad79d68573a9ac30c01a482d971e6c880972dd70a4f527b9e3b5753e2174b5f0dc8cad86050619b3fc43f5ac632baba072d0a5aaeb0e2df08c78c2903be324ff315cc5cdedcc6d23a46d26f6ddea54773fcab5b4d891f4c96f2ef6b44fbcc783c9238ddf836d1f5a668f0a436817c869e5ba700c6a792a4800743d893c54b959dc514db23d26e1a7528e5b39e0fbf5c7d78a7dc7896d2da21e5a23483fd62cc8a55c631c1c6548e4f1ebed516afaacf6d01b78644440061226ca0c0ec7f13cf7ae5e3d3ee351ccb21d91b1c29c64b9f4f6fad71ceacab4b961b1a393da266ea5a806998c32b673f2907935b1a078835854314f1f9f6e598b0900195718917e8dd78fe219f5ace92cd2d199a568e144386390589e98fcc77ab367ac1589a0b3310dc4e5df3b82e318fcf27ae6b5a787b2b3222adb9735b96f757d162b4b900cb1b2132e7972a8c99c7d367e20d73d63e18796e0291e6bf7c70a3dcff009fa575aacad6c8677da781bb1c67fcfad4f0dfc368c639115634383b4f2cd8e19bd3d71ffd7c54a9497c25d93d49bc3da7fd96e15a3b51731c0846d2319cfdec7b92a3f0a6e9f696b0dab8b583621c705725476f7cd5ab1b89617664dc8dca9ce30454d648e8ae923ef5cfca7be3d0d5429d96a3b1cfcda4c373e6998b88e3049450371f4fceb9cd434f69a548e18d515780ab9207e3dcfa9af41d52fac6cacdadae39b998ee4553966e7b8eca304fbd390692523b858d961404e0af3bb27683f51d7dfe98ace49c5e884e937a9e743446dfb5932147535bfa5e9263b62d1206607698d8673ffd6aece0b7d30c73056331070cca339270401f5ce69b7e6c2d52d6e04c042d3ec720f2a1a3ee3db8359f337b82a6ce7a136b71a5c973a6090185034b03b676ff00b48dd586700e79195ed5cfdb658673866c90471d39ebedfa75eb5bbad5edbe917f733c28d7501c7ca18a60ff00773839191f962b134f1e6c3731a150d130619fee93f29fa02403fefe7f869a57d519b5796a413df4ba36a21a36063daae4273bc606700f70074ee063ef2035e8fa15f0d4ec0ac3e5cb1b61c48a7a0278073d338fafb771e7cf67fda170679207944484c91c676b20cf607ae3a8f7383d4e747c39e24d3904f6f1b8b4b449fcb770a77480e70fb4720e14fca38cfd6b4a4aef43651d0ebfc49ad238b7b0b492095626ccceb27cdb80230a3d064e4e6a496ded25d045cc566e6690969e72ec561c1c12a071cf5f4193ed5cdce2d0cf22d8e9f0c56f21510cf78c51d48c64ec073ce78071d2b567d7736a2ccdce548c31898fcc31ce79f61dcfbd6d3e5bdd969b51d0c317910b8d915cc96d0e70d231279c839c60fa76f5ad8f0d7d81ee45c43797d7372c15e533c6db319e064f7181d3bd7277968c6595e02db4306193d07a55bd3adae434a642e0212a1493cf3d71fd2b3e6b2b18bad16ddd9dfcb79696ba7081238e48d8112315e3f4ee79f7ae2858c6ee0f92101500e3d40ffeb5699922921d8e7971d31f74f4fe5fce9ab811cac3239c281faff9fad66e6d9c556b292b15e2b3581429c9ce0903a0ebc0f7e95a10db798ab21ca90476e829b14608c3763bba773569008ce17a1c1e2b27239ee4ab008c121728dcfa739cd598d371675201209c55792ec0830a58e4e791d2ab891a562a9803b8e9ebfe06a02c5b81ff007f87fbbd3a722a6bb963b791d6272fd46ec75aa651a5650cc436c1807b1f4f7a7ada99a36dce0a9c7047a77a9b6a3e961e2679103228e0e33e956618e69082efc8fbc2996ca96f190c0364e39f4a74b70a63ca95d838273d69ab024cb8205646270318efd3dfeb493dfa5a82f1fcaa58e31d455ad3f45d4f539b75b426380f5966f947e1dcff002aeb34af04d8598597526fb548318127dd1f44ff001cd5c694a7b1bd3a0dea70f6d63a96bf1ecb4b42f049906490610a91ebe9f4cd54f1c78166d3749d2da2904f7734896523ac61473c2138e4e083c9f5af63370221b6045550302b90f897a9bdbf86a686125aeef5d2d20e7a3b9e0fe0013f5c5742a3049dce9f62923c9acf41bb9afb598b4c60f358c8b1a28ff9680c9b7af61b41fd2b95bf9cbcf3ee50ae8e436ee0e7a631eb5f447863c376de1db38e1d3e46f2c4615c301f391ce72067ae4f3ea6be7af89282d7c5dabc366a634fb5190fe23247e64d6f838722691a538281524b47b98cecc743f28fa7b5644da75cc2b9d9df03e600fe5d6aa35edd46c58c8c49e300e293fb462954a5f4058ff781c30aef4994da62f9925b3b25da4d11db95053a9edd7b7bd1b20b804bc7827f8d78355d7682e6d2e94ae3262b81807f9d4d14d6e2322e229204620968db74671f4feb4c488a7b6962e51bcd8fe9cfff005eb2eee12a0be3690d8c1e083d7a75ae953eca2006de52e493918e31d8e73f5ed59fa85a89c83f28270371ed4d3068afa5dd2baa894160a7e600e091f5ad0c8e801da4e704f38f4ae6b735a5d1048201c647435b715c465cec62cbd988c67f0a4d0459348a0b3945daa49c2e7381e955aeb6b3bb2208d49c8504903f3abd2346ec4c69b17038ce7b73cfd727f1a82e8862b8454c281f2e79f7393d4d099465cfc9042aae001f28c671dfeb50bb9654563c20c2fb0c93fd6addc953b42a85c0c123f88e4f3fe7d2aa3b7caaa154119e4753f5aa208242718cf03a0a746848c90719eb5228675d99f9339c7bd4cb190b8e83a8a6075da06b71585be9cd6ea04b6e49740a33283c364fd0f1ff00d6af7dd1644b9b38de33bd1802adea08e3f4af9610186552c47183d73d457b9fc3ad71ae3c330e194985cc071e83057ff1d207e15c55e16d4f46357dac137bad3e47a14f6314b1b020671d6b96d1ec92cb5bbf840015996503ea31fcd49ad23a9c8130fbc03d0ed359735d01e23ea3f796ebfa337f8d71f91a58e9a0897cc2d8cd64f8c6d07d96ceed4736f70b9ff75815fe656a737a54039c0a9b5065bed0afd23196f259941fef0191fa8153b32ba16345f991771fc2ae6a7162d1f1c563786ae3cdb48dc7750735b32dca3a15273c521d8e774184436d1200303835b1731e632147359d60425c3c7e8c78ad2b890a82318e3342dc7d0f9b3c75a64961e22bd6b70636695a41ee09cf1f9ff9c564dbea315c4263bd7921b9046255c6d239fbc3d7a735ddf8f6057f115d962d86d873d94edc03d3ea0fd6b83d474f40240632b306f5e98ce7fa7e15ebd395e299e6548da4d13bea17b6a816694c91020ab01e629fa83d3f0c558fed99afc3adccd6cd6dc9c20756c9ec324e0f4f6e2b9b579ed77aabb6dfeef507eb4d59565947c81189edd0f35d50ad517ba9e870d4c1d07efb8aba3aeb4d051af229a3999e1421cabe3279e3ea320fe55dee9a4b2826b93f0d3f9d6ea70098411bbd89ed5d458c83239ae2cc651756d0d91d99446a7b0e6aaeedfe5d0dc8d80c66a7c605416f1e4efcf02a62fce2bcc6cf5ac2ee19c1a7e7247355c37efb156719e6a6e3b12c326dea715d069132bb8071935c9cae51873c56f6820c92273409a3a69df62131b0fa5626bfaf47a5e85753bb6256fddc641c1dcdc0c1f5ea7f0ab772db2e971d49e462bcb3e25ea7e76ab3d8c52b269f6aa1a6d8016763c6d079c75c67dcf5e877c3d3f69248e5c44f920d9e5d1dfdcd959c0d13aaacaade612a1bcc21b1b4e7a80029c74e7dead26af6575345043a7c51db36d0cb1afef431ea55b93d4f03a600155ee12dc4c60795e3b19cef8a5719f2e4c007771d3b1c76c1ed8aa5636c2c2e9e6bd05040c55533cbc83a01edd093e9f5af66c7969dce9d63b6d3ada66be866b9923bb7b72125f2d70a07fb24f3cf7e314e8bec8619ef2d44c6330ca891b905a36c28393819015c9ce0743e9cc1642e24d3585dc7f6986e08ba2b14a04e98dc0bed39c82339e3a60e454961756915c5943a6adc4a04dbdcc8a15a4270bb00048c1048ef9cd02670fa9c7905c7f09fd2bb7f87377f69d22e2ccb61e0903a7b03ff00d707f3ae6f5ab6115ccf1e436d765c8efce33527c3db836de22f298e1658d93f2e47f2ad68cad23cccde8fb5c2cbbad7ee3dd341b95d42cde19f93f75c7f2358bab5ab5bdc2a60fca76938fbdeff004e94cd2a7365a8960701c67d8d755a943f68b369a054670b8e4672bdf1efff00d7af563efc7ccfcd9bfab57feec8e4638584aaf9eae147fb5d79fd2b5ed8207705be52a0a31f5cff00fac7eb5455970e1f99b3c71d07407f9fe62a7562142e381cff009ff3de88e87455b321f1dd935e78565ca7ef6d959d78e7041cfe1d3f2af1cb776b7fbff709da7b8cfd6bdf2d765e5abdbcdca3a9461ec4578ceafa5be9d3dc249130f2a6f2d838c06eb8c1f43b4fe95c98ca766a68fa5e16c5b719e1a4fe1d57a3ff0083f9923905e1f2cab46d1a3673ce4a827f5c8acff12c3e635bcacb8c82a78ee3d3f334f876408546e6f29ce0938ca13dfdc1ff00d0bda9fe2a5687498589c3a4a06d3f7802091f87239ef9af3da3ec62cc80d2795e4a001090dd075e9d7ad31992189936ab3b10771ea319e3e9cfe82886e8cb0471a228619cb8ce4e7d6878f3e84e06703daa0d08154bf2e6b46da70000ec5b0028c9ce00e82a84d29965667c658e4e063f95123cb3ce046172d8036803dba0a068d696ed76aab150a8300e0038ce7f1a88ddc93c41214088a4932e0e5b38e3f4fd4d436d67e6483cd5ddf8e055e758e360b332a229c1239fc47383f8714b42f70b6b61280ab9551cbcac4f356eee5f2d7ecb6a328bc654e771fad566d66c60431859245078e76e7de992f886d22761676cae0701dc75fc295985d091b3cd70887258803f771e70071d075feb57edd757309054409d33348178fa75f4ed59e75dbdb93e55906db8e8ab803d698a92b3336a57b1a2ff00737e4fe5405cecb48bc91e248669edfce4070524c93819cff3ae8348f135d69f30598b2fa3a9f95be86bce6daff4fb5e2da092e5f80095c0cd695adf5f4e199a12aa48e08e31cf18fcbf2aedc2e36543dd6af138b158186275da5dcf79d0fc636f70805c1193fc4b5d1868af86fb7915f8e99af9b6e6eeeb4968a7daeb6f28caf39da7d3fc2ba4d07c6654ae25208ef9af6e9aa75a3cf4d9e0d58d5a0dc2a2b9ecd244cac463047ad47c804704fbd73da4f8cd65455b9db22fa9eb5d15b5dd95f2836f30563fc2d55671dd18e92f8589b471c52efc74352bdbb81c8e3d47350b211d39a69264bbc4961b82063240ab6b74dfc2c7fa566679a70f5ce2b9eb60a956f8e26f47195697c2cd48ae19217054166c92d9e0551d5fc4563a547b669479cdf7631cb1fc3b5352520f5c8150dd59d8df73756b0c8f8c072bf30fc7ad7935b245bd27f79ea52ce1ed511c3eabe20bbd4b512b049e446801550d8dc461b93f8567df4b2dd5ccd32c654cc4c8e40ef5d55ef832167927d3e7c4d8f916e06e453f51cfe95cdea7a2ea962a5ee6d259f3d648c974fd3a7e35e257cbb114aee51baf2378e3215366671541b8055dc700f34e92e552378ca248abb5d41e46e078aa0faa22a4863857838ceceff8d40fac6c855dedc18dc900e369e2bcf49c558de151df52f43677b7aab2dfc8923f9825f2d100553528b34b62d20793ae541c0e7f0aca1ac3b43be175099e7aab01f4a9ad754b99144313965914bf3f3038241c9c7b54fbccd1d45244bbe24989927cb9ea718029a6e20993cb8f6ab1fe2e84d50b86b3bf568d84d633c7fc6a731bfb91daa9cb0a5a28f227f3249388f8da09f507bd2e5f321dd16f51d392546f98e587df6e71fad409a4a6990ed13c32b4883732b6719ec7deb3cea53c20af98abfde071c9fa9ad5d0b4bbdf114fe5c16d2865e4ba904727d7a553849ab18b4e5d082ca34b649332162d820e7a5767e1ef09c9a8069af730db8c1c91f337d3fc6ba1f0e7c3f3a57efee185dce4e4023e45fa0f5f7aea2e2ca48a3f325655ec07f857452c2a6f9a6cd2149ad648cfd22c6df4e83c9b1411c79e703049f527bd6879783d6a28c36d1819a976c9fdd391eb5e92b45591a241962d8c0dbeb4f1101f33038352881c4618a3e319ce38aa973348cb88fa0ef4af71a46168f0995571f2a119017f841f7feb5cc78b755fed59adb4cb405585cb424e382dbb6823fcf7aeaf488eece896db24449a440e4907b8e071d38c5703e18b0bb7f11dbdccd0ef83ce9b321e72ca0f1edcfd3bd734aef4426b645dd4a7d99b1b50f8ded1201ff3cc39e0fe201fc2ba2d1addf4b59750bf2abe546cb0ae48db2153b58ffb202b1fcaabf86ad4b486eee2109f2feed5ba80c7764fbf71ecd5278ac492e9e5232cbe6657763200c10c7f2247fc0aa1c7ac8b846c72ba949bad14a991c15c862bcfa64fb74a4d1753b82a60964e7a740335b9258a04f2e75ddbe3c9c8c7049c0f6381f9d72d242d69747ae50e09f5f434b0f4d288d68cd5b9852e462e0b391c633c11ee2b39b4fb7b793ceb74f2d87f74fe9f4ad12dbe25917a1acdd66e5ade005790fc70c07f3ff0ad86d752bdcea7f3e51b23a61783ef8ea0fd3e61ec3ad67cfa945b4222b393f22220cb1efb40f4e338c9c7553fc355ad6cdefe675dedb07df2c77e3db3c7e42baad36dedac62db6d10527ab9e58fd4d272b0a317224f0edc5e98765c595c2443ee34a54301ee33fe7f96d5d5e7d8ec9e764e830067249ec3eb55629783ed597abdf2f97e6382c54958c0e368e8cd8f5cf00f6e4d67cd766d1a7633ae2606f618ae0f9b7377266524f451dbd86463dc8f4033d924a56e6ead24895e460640a4f0f1924e41f662474ee3d4579bd947235edf5d3ffad16c1801d132ea028fa2f6aef4de4376adf68cdb5edb3641cf287d41fe253faf7e6a6a48d630b8a8d2417414493416ed22c6cc7e52a000073f4e33ef9aa9e2455b5dab0b96b49795cb16c3afa9273c827aff004a835cb89a6b759e3de3cbc9270156418e42e7927a1fc2b0ceab67776b24659a572079655beef7e71d4f6fa0a9845cbd0c5be46ec6a86b6bdd2fece7717c9638e836af0327be07eb599a4cb141a9476e2369255cc78ce55d3b67d460fe82b3862354fb32911ca44841e4938c67d6a65b7dfba47da71ce3aeef6a6a0a3a5ce69548b95da3d1a0d05aead24920d4a7581c82181122c6475cf720e7ae4e303b57309a49f0aeb174aa04ecf186661f74e4fcac091c7a1c138dc326b5fc35aa5f5a00f2cf198a40008fe54c63d1401c638ab1234663916489648645276f64707ef2fa67be3ad69cd14b414ab24737777334e5a598e02b0f9573b47e1d73c139ab1e499c2b3bab3e7ef81927a0eb9e9802aec768bbd9980600f00fe3fe7f1a9902ae230ab927391dcd7339dce6a95dc882281428c6ddc46723eb562dcf94cc77aefda4026a37dc85c8c1c640c8e9da9760257795f3173c7ad436735db1c0907700083d0f638ab30289be4c81819e7b77cd264180aed0540e171903d7fad36359130141e3eee4f7352d88b00ec72aa4fb66a42f85c938c60f269f0ffaa8815dc4f0c08e9fe7350ec7925657181d704d48131b6f3e11b646121c8208c0e2a7b78447060e1d941e0f6e31423a44a304b311d738238c628f319dd638434d339daa883249e780075e0522d26f6255ff0056bf38c819cfa1a8e595b0638c648c600e4935bfa2f82f52bb7f32f6416b19e427de7ff015db695a1e95a2ff00a98c4970060bf0cff89e83f0ad214652d59d10c3b7abd0e274ff000a6a9ab6c7980b3848eae3e7fc17fc6bb0d17c2fa568ca84af9f74a3fd6cdf3367d40e82b49e79240140d80ff0a9e9f8d376ecef935d11a7181d51a718ec5d371818886df73c9a89d998e49cfd6a1f339c0fce877e303354e4d9690d76c66b1bc41669aae9ef6e70b20659227233b2453956fcc7e59ad2b999517e6619ee3bd670679c12bbd40e99c039cd41ac569a97619c052acd5e01f18ad63b6f1b4cc8db92648e66553d188c1fc7e507f1af54f18eb3368b616e966479f724fcc79da1719f62724579578df4bbc9348b2d6aed9737533aaee6f9d87f788f4cff003aaa15d2abec8ce525cd647053c1924965e99aa2e88198c841cf73ebeb5a52128ceacd923232a7a8aad24916d03cb3b86724f7af51325a2894b711ee3302d9c6d00e7eb4417df64666b695e3c82a4a9c641ea2a77581988d84fb814d6b58b695f99707956e307e955a0588239ad1a5dcdbe127ab4581fa74ab4972ef1a2144915780d10f98e7d475351359c0622a1099339dfbbb7a62ab358cd1a19217c0523ab00727d075ed468c360d4ac729e71490236769db8c91c7f3aceb394aaed2dc8abc2ea547c5d2961fdeea6a1bd8226733d89665eea5707df8e69a25ef72e5bde222a8dcd9fe2cf4ebdbf0ab7232cd126d5518ce581393f5ae7d4a302c4b630718f5ed57f4eb98fc868c86f337020e78c60e463f2a4d14a5727ba31884054018672d9fbd59f95298da77eefbd9e31e98ab574ea508f9b7e78f4c5541b420209df93918e31c63fad340c9e3c040303824e7b9ff0038fd69eee760dcc4851819ed420cc19546ca9259bb60e00fa739fcea3b87dd1292cbc7ca0018ff003d69893455b8774701830e01c1e320f7af47f84174ef0ea764af82424eb8edd54ffecb5e5f2b927d6bb1f84f79f64f165b072025d249075f6dc3f55159d68de0cd28bf78f61b5ba9f794956770bc02db7159dabdcfd9fc55a6e7204f6f2a004f7186fe40d6f42f18639209ae2be234e20d73409830554b9504fa02707f426bcc8abcac7a5b23ae4bcf30affa36f03825d8015afa74dfeb04457632f283b556b4d3e11820e01f6cd74da7da46909000391e9512b044e07c19aa86b18e267dac140e4fa574304e37b1dcc6bce4c0f61acea16b1920c172c17fdd2723f422ba5d31247915b79c1a4f435b1a97ba8fd8b545dd85595011938e4707fa559b8d4e230798264200e79cd723f1463921b1d3ae1090cb234791ee33ff00b2d7110ea573e448af292a4118ad214dcb5443924b513c49ae8d435db89d54791c46b91d4018cfe7556f2417af24ea88ad9c908b80549e08e3a0e9f87b544be5465898d1b7295f9867191d47b8a8e0961566f9482aac461739e3a1f6ce3e9cd7a318d9591e7b9733bb33eeeda30b26ec871f746383cf39adad17c057d796f15edccd0da5b489b8039693047071d067eb9acaba9235b4673b8b83c0238dbdbdf39e2ba3d03c46f7da7c76cd2112aa842b9ec3807f2a552538abc474e9c26ed22d5ae9ab676c63b7662ab9c31eadef52e9d70cc80f715b90c01ac58e39db58ba4c397703fbd8ae094f99b6cee841452513a2b2bb63061b8a956e4193835125a9109c7a5655948d25d3a7f71b69aced7343a6560493c5385c286c13496d0b30f7ac6d6647b59338c0a94aeec51d142219db6b56f69b6cd12ee8ba8e98ae1746ba691d48cfbd7a5787544b11279a4d584f631bc51ae47a2e94fa85dedca82a8a0f2efd80fae2bc834ed40ea724b0b448d25c3175ff00a6acc7e6563ead807d8aae315d57ed037be50d334f881c92d7320c671b7e51ff00a11af2fd31cb01cf6cf15ebe0692e4e6ee78598566a6a3d0b3e20b1595ed6cacd5d231b999a63825fab16f4da001ff0001e9938ae66f63495cadbde4b3ac230ab2aed3b47a0c9e3db3c0fa577f15ccf7aab68624b998b0309200766c11b7775c1048e7a66b899a0b5b6ba925174de508db6295659725480a4631d4f3cf4fcabaec73c249ec5e885d5f5c0beb16696504315854ef81870381fc3d0023e9c1ad0bab189f5c11cf235a34b02cce228c1f2e4d9b986dc8ee0f1918240ae5b484325c9fdf8b708a5cc84138c7d39f4aea343b13697715fdecf6ff0067b6612656e158caca7215403939c77c71d6a4d04796e8e366a3a6487a99dc207fc4ba86ff00ebd73b0c8f078a6ce692e96790cebbdd4923ae3a91e94f949c1c1ef59373b925ddbb0ca4107de9c5d9dcceac14a2e3dcf751019de231fdeddb71f5ae8b47bb6870b28e31823ae0838cd72fa55cf99636b728dc4b1ab1c1c70456adab974663bc91d777241fad7ad076d51f9662697345c25d0b9ace9ea9309a01f23f2b8e9f4ff3fd2ab08cab67b1ad5b09c5ca35acec36300558f3b4d24f6ad0318e65c738cd6d6bea8e18d5947dc96e8a969fbb9370181deb8df895a4e7554bc4dab0dc479739fe35e0e077c8dbf9d764418a4561caf422a978dec96efc3e928058dbc81f8ea54f18fcc8acabc79a9b5d8f5726c4fd5f1f4e5d25a3f9ff00c1b1e4b6d70d14cf9556dc0f0c32083ed53f8854c9e1d944b22bc89b5c263e61b9b3d7be07e5ba9f0fefae0db18e31bced52aa33b8fdde4f382703f1a2e9d2e2d0bb0e0858a55cf39c633f438cfd735e3b3f505b9c545304ced1b474f5ab8b76acec11088c9ced27240fad453daa5adcbc739ddb73d0e3b707f91a8d6ea384308d158918e4703dea6c689d8b055649999233b012db464e17f9e2952f22824cc606e1d31dbf1ace6b995f7618a823042f1c5468a58e075a2c1cdd8d53aab60e14267f3aa335c4d39cb13834c5858f071eb52048c2933163c70a0d2b58776c2da3df2ed5412b9e31d87be6adfd9a18db13ca0b7f72205b1fe7ea299fbd2cb11062040c228cb11fe7d6ad5b6cb62ca883ccc6300091ff00c07eb498e28bb616f1b467cd8e48ad7b97711a9fc0727f3ab59d0d9c8b4b0b99f1d04596fd6abc3677976c5b624640c869f2ec7d80c601fc055b4d06e2e07fa45dccfc70a093c549a2458867319fdc699142b8fbd713edfd2b5d75282dd02dcc968d227cb88486effde1d7eb581ff08e4064f943e3007ccdbb27d7a0ab07c3702c60792496e4306faf18153a14ae8b3af5dbde59bf96ead02ed6000195cfae3ebfd3b5732aef1b654906ba9b0d024b7ccd6b2c9195c0208dca41cf073f4e87ad74b7de0dd3359d3a3bbd31d74fbec6d9a0e5a12c0750392a0f5ee3b638aeec363e9e1e3cb5345dcf3f1942527ce8e1ac35cb8b723e62c05757a4f8bca901dc83f5ae4f5bf0eea7a337fa75b32a601122fcc847d474fc71592188af7296263523783ba3c89e1e32dd1ef7a378e24455026dc3b86e6baed3fc4965783f7a9b1cff0012f4af97adefa680e51cd6fe9be28961c6f2463bd6ab925e473ca8d48edaa3e978c45709bade44907b1e6a3789938239af1bd1fc5cc30566c1fad771a578d0ba859cacabfed53e592db53176fb4ac74fcf3eb4290066a2b5d5b4fbc50449e4bfbf22adfd9f237210ebeaa734732ea4f2bdd0d0eca7bd4e921efe9d7a1a859481f374a588819c903dcd2693409b4c8351d1b4ed51185e5ac6ecdfc63e47ff00be860d725ad7c3a86e6de24b0be922f298b2ace37641edb80c91f515db3c83381f9d28948fa572d5c152adf1c51bc311283d19e2d7be05d5ac55a4bbb6f36340486b7f9949fa8e9f95626a9773a69d0dba2ac21643955e00cf3ce7a9eb5f432ce3b8c1f506aa6a1a4e9da92117b676f3e46373261c7fc08735e4d6c8e2dde9bb1dd4f1eed668f9ff004adb7924f2296112466495bb0ed8f4e4d32dfcf62e668c3da39d9e429043e7d3d0d7ba2785ec6dd1934f54b70c412ae8194e3a7239fe751d8f87a3d2e76ba36d1cf296243aa82abf403a5797572aad4dec76d2c4539bd19c1786fe177dbe386eb542f0401b724323624607d7b0af5bd134bb2d16cd6daced52dadc74dbce4fa93d49a6a6ac8c1636846e3c12454f3cd049101c043d4377ac7d938e8cf421cab5469a32ae312003d0d4370a9210b3286ee2a9dc4cca0481970dc00318fa551b8bedadf22003be320fe94283e85392ea6994b752a993b8ff000a8c9a90398a643184ca9c85619cfd6b0c6a7e5b7eefcc463d7386a93ed7117cca77fb0254ff005ab517d49ba37751d6b50b984c2228523230c47715cccccbbdb6b371c10071566492566dd199123271b71bb1f88aaf2dc471298e0951ddba824027f3e69ad008b40688e956eb0b078d1022b039c85e33fa56169518f256c94805af2e8b8cf3b048c0fe7b80fc6ae680ed6d1340c498d66788127eeb03fc9860fd7eb54a29552f6fe58810f21792339eaa54153f8b6e3f8d6770b1a1138f21e662007264cffb3dbff1d02a999b0827bac9543bf953ba34073818e73c67eb53cfb711c2384400b0f61d07e9fa566cd70ce584432878dc7a1ff1a52b3292b1525d46d6e4c935acbbd09046782148c827d38ac3bdb88ee252d8381c138e08ad7874db3858bf95b98f76e69cf6b6ec8ca54052391ec4e3358ddad10dc1bd8c4824849c2c995ec8a718fa9a8359b36b9b606152ec873b060e7f3ab1751dbc772d1be005c1cfa6467ff8afca9258becec0eef97f97bd4ae65b91aad1914102dadbac4ab8c75e3a9f5a7216cf5e299777b0a8c1917f1cf3f8f4aa2ba92caed1c2ad21c70179c9a1a6ce94e295cdb89c0c03deb9cf10dec56f91bd1db258af501578dbf8b75f627f0bd6d6f7770acb773a40a416644397dbce73e9fa573be238a2c7976b1efdd27facc64903b027ae5893f97a55423aea27563b224f0a4b35ccb7c249543b424b33f39e73dbf0aeb4cb6ff2c90879a553f2cd2f6f60a3f9570fa34725addc31b9c3b650b7ae7a7e038fcaba48b22344321c2f03da9cec99cf52bb8a5625d4ae6799c49348ccb9daa474fa564c36ade68311116c2581418249ee4d6ca48e5957e6dec4fcdd09e48ff1150ca0027cd42307000e335376724eb73156240ae9918518e7d315a76319ba1200b96c60163ce41c8fe58a818c677aaa12dd78ab76d0e429562a791927bff9c54b3072b97ad6330c60b2066da31b581c0a9e6b82b1b2afaf7fc7fad4b09db6b8da0ca404fc40aab3ab6f5011faf3b87f2ff3dab36c8bdc91559a65400aaf0091d29c48328da09e40c0ea2911a433040b8c28cf1dbbf15308e243b8062ec4f3d81acee4b14206859570f9718edc7a83daa68ed9f716848e09033d49a45f2d625396323803af1d7b7e54e9555c6e6902ee04609fd68b8587022346debf3b7047f4c54f1b46ca246e5587233dea989024054b86931f2b6320e4f5a65ada6a5aa4eb1e9f6cee3804ae368e33c9e83aff003a92e14dcb6346499429f9d769e38e32688657be736d6514934cdff3cc6703a64fa5749a27c3c2d1acfaf5d82a0e4c511dab9f76ea7e8315dc585a58e9f0f93a75aa227b26d5fafa9fd2b58d16f5675c30dfcc713a3781af6ed436a7388231c9484e5bf163c0ff003cd76ba4e93a6e8b185b28177b7058724fd58f26ad312e009189c741d87e141da074ada318c0e88c231d2289a466986d73f27f75781ffd7a66c555e0607a5304a00cd4125c0e4e7a5372b9493659de3040e290b80bc9e6b3e7bb8e25dd2b6c07a67bd56b69aeaf7779304d0ae70249700f5ea07bd4dca5035259d517a81f5ace7bc927f96d4173b80c8191effa54a74f8c287bb76661d79c93fd39c554bbbf4853cbb7895073f2a71f99a6a2d94ac8b6d0a43f3cafba518e15860e3d491c5324d42d9410edba4273e5c7c2e7eb5813dd4d32a8c10a3b2f73ea69a232401c9233c56aa9f71395c9f5b5b7d662862b985447149b87af4c7e5cff002ae6fe285b2c9e13dca8b9819510f40aa48e00ff00808aeaa08c28078dd589f126d9eefc1b7db33ba2db31c770a467f4c9fc2ae118a95d2336ba9e08f1b1561b88f51eb558a82e40c2607563ed57e61b5d83ee3b460738cf1c5559a1f322322950338c6464fe1d71ef5d88667966ce5090c3b8ed4810b3979096627272793eb52179103a2920300187a8ce69a31b0e43efc8c1078c77aa2450266388f0149e327fad3a412c72bc72147da704ab020fd0f7a548a578d9c1014100fcc33cfb75a89e0ddf79f9fad218e288d1ba98d0b1c7249c8fa7359d2a0b762c15801df1c55b96105cb64027fba303f214e7c440299bcc52a09e0e01f4e69a616322e648e599651b554901c20c71d338f5a84b449b6489883bb0549cf1eb5a1736d0488db57e73d30715893a3c0e41e9e84715ac1ab58e79c5f329266bb6d7859cb80c3185c7def5aaec008f76e1bb38dbce71eb4cb491a689d80e1402d8edce295d4e19971818cf3536b1aa77468695244afb6497607c860c32a7a63f5cfe42a7d52080ee21429c86250f51df8e9d307f3acbb79046bbced2c0f0a475aba674287f7b6e38e04671fa1aeca0d4a1c8cf27170942b2a917b98d76ac985dd940c40fd2ac68972fa7ea1677a80fee66571efb48247f9f5a92645725255f987753c1f71557ca8d79462d86dac315955a5bd8ecc3e22f652dcf7c6761784f98a109e09e73f85715f1465778a0c302ca720815b3a2dc1bdd134d9d0192568c4440e4965f97f5c67f1acef1d6937b1db235c47b55871ce715e3c23cb33dff008a27a47877544bed22caf38fdf44af8f424723f3aebb4ad415d767715e29f0af5233787a4b4624bdacc428ff0065b91faeeaf41d327732021c7d00ac2ac2d268aa724d1cbf8a8883c77a86de048237ff00c700fe86b774894616b0fc7f1343e268677e3cfb71c7bab1cfe8cb49a5de602f344a3a26691774741e2ed3d358b3b5b691dd104a1c94c6780477fad65fc4dd3ec34bf07e856da6dba4204ce5c8fbcec5792c7a93c77fc2b42f3518a0b78e799d523040dcc70326b89f1bf88935736f6f065e0809624f4663ff00d6fe75a61d4ae8cabdb94e4a791e48638cc6abb4b1dca3e66ce3a9ef8c5442de158c4cce0c81bee30e31eb9fe953dd5c892592458d50312c234e8b9ec3daa9ea0e91cce91ca268c7470a403f81e6bd04709535304d9b1404c41b68900ee46719fcff002ab3e0f2af7d94db9e3a0e47b5655e3650a60a9eb8f5ab7e11b88e0d48ef6c6e1fa8a726d539244c22a556327d0f66882c7a5c8c7aedac8d0d00519ea4d2dfea68749da8c09618e29da200c141af26d647aa7551c605b924718ae73c3d6dbe7b893b34cc7fa57437530834c9589e8a6b2fc3f85b78cfaf3511d99563acd36d010370ae5fe252a59c309fe266aecf4a7f9477af2df8efa8cb6f258a42c013bb3de9d28f34ec4ce5caaecd5f0f460206e0a9e95e8de1c7f2d860fca6bc73c11aabcda15a4a5b2f8d8ff5538fe58fcebd23c3ba92ca7686e475e69d48b4da1c5f346e8e13f6810ede20b390b88e216aa0b67ae59f200ee7815e71a646e5c35b891c04dedf2e3039e7dbff00af5e85fb42ed92ef4497bf952afd70ca7fad79c69fa8b288f08a44602b2838de31b79ff80802bd7c1cbf768f071f0bc99d568d285b57bf7dbe68052004672fd0b7fc0723f31e9593af931e9f15e0b4b270ecd0176841756500f3d8f0c39233c75a8a6bd8d52d840cdb510860c31f31639e3d718fcab62f757b7d4340874b6b3b642176fda327707ce4be33804f193e831d2baa5dce1a2daf74e39af24b9ff4bf33fe26517cc4b0044d1e31823a120704771f4e6eda5bc7a929974c53e6ed2ef680e5971d4a67965f619239c8e3272db4fbb8cb38013ca9446ce1bfd5b6719e39c671cf4e9532585cfdb648635d97c873e4ab005ce7ac78ebf41ce7a7b458ea4c64a4ae48e41aaf35aca61698c1ba39032ab1eb907a8e6b5cdc7f6c334177b61d4f3b164da104c73d1fa61f3fc5dfbf3c966aad66c6022dcd9a5c47f3a866658e45254f079072b9ce7a1c62920933bbf06c866f08d8bf745299fa122ba4b6b996355915f31b9c119c8e9e87f2fc2b94f875993c3010f2ca5fa7fbc6ba18d11edb7c670eb80ca7bfd2bd3a7f0a67e758c8a55eac7cdfe669594a04a7e6e71c575768eb7f6a124c1751c1f5af3e8ae31b594e4f6fceba6d1aef088ff43f515d34a47898dc3bb73226beb7f2892a30075a966b63269d75006467684edda4f0df4f50467f0ad54f2a50f1bc48d2c9c47230242e78391dfebef54833c37cbbca139f2dcc63e56c0edf8007eb5535ba33c3cf9546a37aa6bf03c3aee06b5bd3e5831487219867e407938ef8c7e99aa7a9156b2dd0a143908d939dc339cfd462ba1d60dbc7731c8aed303be36c8da718238e4f3827f2ae6f5754164cb14ae70c1d99936fa803009ec4fe75e133f6486a9330f59844f68b729f7e2c23ff00bbd8fe078fc45618ae86ca6550e0aee47f95839e0fa8ff003ed597aad9fd9275db93138dc84ff2fa8a4514f8c00b9cf7abcaa218495c13dcfad67d3b71c11b8d48d3b160396ddb4fcfd79e98a7db46f21fdd839eee7fa5476d16e61b86e1d768ea7ffad57a19554f9630ddb6a741f53fe148b5aee5848625214823e51b922c966f727ffd42ac8d4e383296b0c3001d94173fcf1fad538879842c8fb8f510c0381f5ed5a36d05ebc656da08a08d72e4bfcc460724f6fd2a59a2f22c41aa6a33a04b5b744c0c1775249f7c74ab4d6faab37ef3502a98ea8a23edee01aaf1d84d2afefef6e1c1ed10217ff1d15721d0ecc0cb5b4d23e7b8183ef9247f2a834446b6ee848b9d5a652572a3ed0abf89f6eb562d74c967cf93a84f29032764dbb81deacc3a3d9312bf6354c293f301cfb75eb49268760ce0a401471ce0039efd290ec3ce9f731b936f7d70ab9e03b06fcf8ae8bc1d7b2c3ae25aea4c26b778d9b7c6b82481903f318ac28ac26b44df0dc385eaa9212e1b9c719ff1abda65e183508a571e5c8a7f87a73c71f9d65557341a1495e2d1d76a9ab7993b08513732e1476f7f6c571fad787f4f97324a0432bf20c3851ff7ce3f126ac5ecc7f79246fb5df064691c0c7a28f6f6ee6b3a565926c34a2599c024e0b606381edffeaaf32854a945de9bb1e5b57dce66ef42b84ded6a45c46b8e40c1e7dbfc2b29d5e362aeacac3a82306bb55ba7585d950ac7bb6b104823fce0d68dbc70ea564e351b78d9b0bb0b0f9947b1ed5ee50cee705fbe57f34632a76d51e7b14ad19f949ad5b2d627848f989156effc3f03177b0999533c2cbce79e9915897167716a7f7d19519c6e1ca93f5af7b0b8ea5597eee4613a57dd1da69de292b8dec47e35d6e95e309221b927603ae01ce6bc7636c0e6ac453bc7ca3115deaa5d6a71ba0afa687d15a6f8c12e005b9546f7e86b72def2cee87eee50ade8d5f37596b93c47e6248ae8f4df13e31f3e3ea69d93f8599ba725f16a7bab42e3e65f987b5354f1f3706bceb4af17cb128db29c0ec4f15d558f8aa0b8005c46b9fef251692dccad1f4370367b6694648c13c7a5456b756b75fea661bbd1bad5f86df079391ea2a25348b8c191c51b49c0a98c6b6e3733b6e23f84d4b230894ece2b36698b31c9c9a88de65cbdd192189cfce8091d0f7a864b6f3e41b5c04f4e98ab30da492904f00d5d8ac95001d58d6388c3d1aabde5a9b61eb56a6f4d8e7e7410394eb8ee2a38dd87dcce4fbd6fdf694245dc0f6ed5520d30ca9b51955bd49e6bc1c461a5475dd773d9a35d55d366670f2f82c3e6eb93cd5c8208ae0e646f971ebb6ae43a4226edfc91fdeaba4d8456c63681324637119fd6b89cbb1d714639d2e18c1962beda7b0073f9566cdbd59a39c09e31d9867f5abad120959d33b47f0e78aaf35c993e5d8a074e29a40d9831cdfbebeb090966b8f2e48e51ff002d148da5c7b80a0fd6aadeccff00db1668400f26d85c0181f212c0fd0827f223b556d344f6c1229999dec1cc63cd400989bee9047b6477e957758fde2a5cc242cf1670c4e07208feb5cbccec68a371eb27da59d87faa6625cff7bd00f6c633eff8d365603a106ab5bdedbb34b676c180b6daa49e878f5ee7d6abdcceab9e4f159b99b4605877c922ab4adb549cf5e2b3e6d5a18cecddba5f41d4d67cd3df5e84312f9311272cfc7af6a8bb65b718ad43589236705186f61b4febfd09fceaa5bdd4d243e4bb31455f97e9e9fe7d2a77b38cb921079aa4292d9fc481f90ad682d6cede3c0dcecdcee9108c71d40cfaff002ad155b2b1c33af1dcc736c93002ee3ca212ca3b91fd6a1bd49e34db6e891a646022e4fe9f856c8841395e471824d38448095e4b1ebcf7f5a5ed19cf2c469a1936f13c601f324f2dbe664c77e3d7f1c7d6a1bdb05bdb88e4566df1fcff00336490a735b175091bb2b8ee303ad166a4b968d1811f37240e476fe753cdd4c7dabbdd1cedd58b6f90a26321b181c86c1c73f5ad350f3224a40cb2eec6304727afea2b5ee6d9c995e35287cc2508fcc7f2aa896e15c063b59b9d8dd874ff003f5a39ae29547256640fb0ed59586c0720af18e7934c10c8ec3726ff00e1ceec1c8e0e735b09a6cd2a3144c0c90030e08ff38ab70d898466550ce38c6783eff5a873b19ea66dbd86d8338225c618f538ec7ffd556ed6d504244926cc6703bb9c7a7e1fad5c246e1b1fa7553513a04725d4823a60e7f1ace526c499246116dcca93fcc4ed5478c93fa71d2a63316863db8d8b9272305b9fe954fed4ad9078c0c823b9a60bb3c85666c821b27a0ebf976a9b5c77ec4eb2247979301381c727dff4a8a4bd42840d9b4f7435467ba42ac67700a838183d0f1fe15a5e1ff09eb1ab95f2a3f2ad8f06599368faaf73d7e9c53516d950a6e6f429b4c1086c10c57a0e879c559d374fbfd59c35a42cf0769181543cfad7a468be02d334944935198dd4c3a79bf77d7841fd735d544b0a201042131c06603a7b0e82b5549f53b21868af88e2b43f0140aab73abcbe7027223e563fc0756aeded2382da2586ce054451807680a07b2ff8d347df2cc59dba6e639a717e7ad6b18a89d0928ab4513632dba425d87427b7d3d291df03fc2a13363205579ae554125853721a8dcb6b2706992cc36939ce3d2b9d7d66437c214b62e093821b19f4fe9f9d4d21bb9559a6758949f92344ce38ee7bd6772d409e7d5a15fddc65a473d027af619aab646fa7940ba544cf5d9c9fea2acc56e96f0179e551ef9e39ed8e94db8d623b7553140d2061f7b3fe3424d97a23463b78a24f31f21fbb31dd8ff0154ee75686df290ee90e3ef0e3a1f5ac2bbbf9ef38776009fb80e100fa77a8614e4963d39cd6aa1d599b6694fa94f73f2e0f27ee838151aaef2495084f65a92203630555da7b9eb535ba10783f8d588856118191ef806a60b819c6314ed9876e303a669e00c93c9fad170b0b10047078f6a91e25b98a48655df148a5194f70460d34e7009381f4a9a2ca280f8c9fd684c4cf9afc69a6cba36b93d9c849f25b6827f88763f88c1ac5139ce7f4af4cf8df6abfdb50c8130cf6ca739ee18827f202bc9e5568c678e4e319e6bba1ef2b93b176e019e25c6d1b7a6001faf7aa12ee460016e9ce4639a582eb6bfce4e0e7a0ef57444b788c63e5954b1f6029ec1b94595d080f9562030e7b1a724856375daa77e3e6232463d0f6a8e78248493d545279cacdc284e00e3a53b05c9e3d8dbcbb05c0c8c83c9f4a4cc647cc5463d69248d55508991f72e4edcfcbec73de88498e40f133075e8c3b52184aab22285d8368c02aa013cf7f5fc6b3af6d9993a87cf61dab412252e033154240240ce07d2a274e4f048a69d84d1cda830cc4608cd5bddb97356afe1f313690015ce38e6b2d6496db761880c0a903b8f4ad3733db42caabb96da09201638ec07534c1732451baacaea3a803a66a24977e368249ec2a290e4f34e375b1338c64acd5cb227942a4bb909039c9e4d48ccb3049570093f3a8f5f5ace5048ce0e2ae58296f308190a327dab57534b184682525247a9fc2bd463867b8d36774134532cf0ae787c70ea3df007eb5d9f8f351b49b4b6694aa2a7cc49ed8af9f0c8c9206462ac0e4303820d4ef7d713bc7f6c9a6b94420ec924241ff000ae0950bbbdcf52188e55668ecbe16dce35db9b765c453404e00eea7233f816af57d025925bb105b40f33e7a20af0ef03dcb5af88ec9c3a282e11b79c06048040f7e6bea9f86ab69a5b4d3ccabbc4e464f5c601e3f3acebd34a49f71d1aaf964bb1e7ff10ad659a081e785e2b8b69763861821594ff502b87b3bd9a17d99c60f5afa53e2ce9d69a9e9535ec2f1922d5cc841e8146e53f5c823f1af0bd17c2ab7bb27ba95c213f7178efeb50a2acd1ad3a9ccae43a94ed75e12d44310d20d8d8c6780eb5c2c4635497cd57662988f07186c8e4fa8c67f315ea5e2dd1acfc3da15e4d1484a5c41e50566c9dc48c63f9fe06bcae511ac513acdb9db76f4da7e4c1c0e7be473c55d05a342acd3688d623279a43c68110bfce719e4703d4f3d3eb54a541824f356e78e45812528c2290908c7a12319c7e62a91b89202cc8f825590f7c820823f226ba0e733ef64de4924b3000649cf00600fc80acd76f9c320db803a1efeb56e5652f8933b39fbb54d159a408bc93c62ad19bdce8b47d53cd290dc391264007b357a368aff003280735e331b7972249dd482457a7e89aa298a291802a47cb919c5726229f5476e1aab7a33abf125d795a5b2e7048a874cbb4852305d7a0e09ac3f125f1bab4509db9a974dd476451093ba8072702b8d4343b2e7a86933fc80e08e2bc73e375d2dc6b96d0e41f29093f89ffeb57a2e89a823c2a8b8c0f4af20f8a6ae3c552b39243a295fa7357858fef4c712ff0076c3e1fdfa23cf64c0e09f3541e476078fcabd63c3776aceaaac8a33821571faff00f5abc0b47bb1a7eb36d7192635601b231c1186fe66bda7449a28e556e3d41ad7150b3bf716127cd1b761ff001e34f0de19d36ec104c371b3777c3a9feaa2bc362628f915f437c4891350f87f7e31b8c5e5c83db0e39fc8d7cfd246371d9d7d335d18177a7638b1d1b4cb4265917935387788078c8383f303d185528901e18751c1ab11a6172a4807820fad7a16ba3c87eebe62d472add5b4de584fb43153b5b80c0060cbf8823fef91500ba9add6496d2e846e9f7ed2e955cf18191b8618fe00e05529479329072aea6ac178afe211dc7cb281f24a073ffd7159bd0ea493d5105ddf4ba95d49737727997127de6da06efc852ebba8cb7df6759b67ee53602a305b924b37a93dcd5330496f314986d3d8f623d4532639519c1c52433d47e1673a2ed3820bb8feb5d23c0ab2bec38279da7d319cd71bf09af07973da93f32ca187d1863fa7eb5e8f242acaadc0ed9c74ea3fc2bd3a3ef53563f37cd6f4b1b34fab39b995ada7dd8f949e98ad6d1e6dd00084657b7e34b7f6c1a120a8c83818fc7ad55b48cc1282b9c671f856915cace49c955a767b9d969978564421412841c1e879abd7373e580f1a04c805228d8aa800e39ee4f1deb074890348ac780456d2ec8e1fb4249fbc5566653fc1b4139f6cfaf6e6b77671bb3cca6a4aa7244f0d1e53c92aced26d0e725793c13db8aaf7e96f258dc244ae7cb566dee305b1ec0f1c7b9e9efc3a4de92ccc4860cc5f23a1f7f5a6bc66677837911383116099e4f538ebd79af05ee7ec94f48a4ce4658b86239da7381dc558cadd5b35bcdc1ff96649fba7b53fc96b6b9780e1d81640d8c02291238f92c08c0e4faff9ebf9d32cc0911a37647186538229625ce78cff003ad9bfb23751f9b10cca8406c7753d0fe1fd7da996fa65ca9cf928c1304863f2fe38a96c718dcad0c0d221566f2d3ae073f9d5db74b52cb1db4724cf81bb9e33f5e807e7447a3cee49b894051d1539cff8568da47e51482d90c8ed801114939feb50d9ac5772cd95b49b4b30088a46563e833ea7ff00d55ab6e147202f1df15911473cbcb1d89d7f0ad2b47f915157a03f301c9cfa9acd9a2343cd40015cf4e72d9c9ef8e3f4ab837413059632190fcc8e3f9d66a44caa0ee4f986783923d8fbd5880c2b8f31b2bdc06c1c7f4a434cb71abcac4451b33f270a33c0049fd05443ee382086e36b06e9f51de95e48f0db32573c0ce4d41b4cb1b1dea98c6148396fa7ff005e90d08d26c3cbf03a0cd4d14a332a4dce0ff0907e619fd3ad5736e842ee032a31903af24e4fbf38fa014f8e056ddf3a20009e73f363b0f7a0a437518e6b87845b801147cc38c838c96f7ce2a38977a79a63dacf310bd7a0ee79f5c55d8674451fbb1b94e4377fa55d8b4f8e4984fa85da5bda2b02880962cbf4038fc79ae2af0e5f791c589a5f69148a4626ba478b29311b81e8327208fa1a7ce890dac8d1798e59953601f32601adb9ad6d6468e32c367cca4e3195391ebd79eb50fd991a00822dc1542e4e770c7420f1935c3cd7471d8c0d3e3f3d25c31666e429ebf2fa7f9ef5b563a7cf771cf9b4678048622cd80037b67ef75a9b4cb6ff004ac044b631839c0ea7b727b562f89ad67d3ae98ea10cde53e2489d253e5b923d0706b5a4d4a5abb1a460f77b13bf84acaec489bbecd74ac57319054fbe3fc315ceea5e1abeb22c63517118e7745cfe95b5a75e5c43685a2559a100bc3b0636a71d7be724fe55aba16a26599374208ced604641ce4631ee2bb68e6d89c3cad7e68f998ba3193b1e6c548273c11daa44ce7835ee3078160f1047f6ad42d9ace1230a428594e3a1c7ff00142b96f107c2bd52d374ba43a6a16fd42afc9281fee9e0fe07f0afa3c36674eaaf7bdd644b0d38eda9c15bde4917dd635b165aec9190189159177653d9ccf0dd432c32a1c3248a5597ea0f3557a1ef5eac2ae9a1c93a49ee8f44d33c444630e41f5aeef42f171055266dea7b93cd7824733c7f7588ad8d3f55740a0b918ab6e32d19cce94a1ac4fa2e5d522b885444e3e6e722ace98b6efdf327a1af1ed0fc41f752473cf435db697aa8703e61ec7d297b3b2b223da5a57923b79ee121e08e7d29824918ef2bd0f155ac658ef47ef0297519e3bfbd5879429641c0cf5ae56ada1d917ccae8984e71f31ce7a547b4ab7990360f71d8d41236de73555ee5e3760d8db9e08a5caa4acc77e57746a497e30378c11d7eb547ed29348778183d093815424b82d273f329a5dad2167c038ee0578b8cc0fb1f7e3b7e47a786c5fb5f765b97276d342156de5fd4362b21d0331f2580039e7b524b1891793827a62990c3f38424826b812b1d773847ba749ae3f7ad2f978009cfcc879fc71c734e6bd736c14ec208e73dc5658ba7480a20df861c1ea0fb7a83552e23b937061058423e6503ae0f4e6b855f666dcf18ebf79a1b8da4d36d5c47212467abb673f90181f9d412acf3c6cd70cb0479f5cb74f4a934b5bb43bc82d232f0eca18a01d57d2ae0b656972e08dcbceee86a256bdd18cb1768f2a28dac36f08696dedfcc9b180efdbf3fcead889ae4e65c86c703f8471d876ab7146228c8dc081cd05c1e140279248a8b9c93af290d80bda32cb113e629c86eb8a68932bea4e7a8a702ce87b11e9ef4d8c13136f52ec0f53907148c2ec8c6d5fbcb9073c8eb53dbdb946ddf749e99ee3fce2988a24236ee0e3a7356800d961b98f7e7f5a3985733a54792639272071b7ad59b7b36d9b5815c9c608c9cfa9ab584572d1165c118c8e9527ef70b8c6073914730090c4154ac8777a8f51fe453e30130db379e017dbd7aff00414c60bce4907a7bd46d74123d81942b10a4fa1ed4b998ae5c9a6f30804fcabd33c8f7a6c8fb0303f3119e9c83c7ff005aa84972622fb9943119041e08f6cd50b8bccbbba1213eee14f53c9e296acab5cd2b99fcbe8cbed838c77a805d34fc484e3f84819c1cf7c7b66b12279efee922816495db1848e32c481ec3d2bb8d17e1fdf5ec426d4dcd9c4402cbb86fc673c8e40f5e4fe154a372e14652d91ca34ae93796332331c2aa2e4f5e983cfe95d1695e14d66fa48dd91ad6338cf9d904ff00c047f5c5757a5ae8da44fe568f686f275f9649d07030718329e0fd173d3a5694d732cf2b34f70521ed0c5f2aff00c08f56fe5ed56a076d3c3463f16a52d23c3fa368f2abc88b777b1f1f220250ff0025fe75b2351967611e44118fe1858e4fd5bafe58ac0b9d41bcd582d212e49c0551c01fd2b534d6f25f6cc3f7a46e207f0fd4d5ab44e8492d123715d53950b926a67980039e7d2b02f598a96462307200aab06b964637f3ae638dd4edda4e4e7d3143a9d05ca91d1bdd05e49c5626a5ae2d8ddc5e6be227c2e4fafe159336af2cfb3ec081b7301990fa9c76eff5a5b3f0f5c6a575f6ad5780995401b3bd4faf38c7f8d47316a2586f114b71733476b0995460231e07d4fb5594b6bdbc6def230c92008ced0bef5ad69a5db42bb52318ee3dea5babb8ed94ab380c3a2af24fd4f6a371ad0a50d94765b6499e31285dab818da3be6a29b5a58a154b73e630cfcce3f5acfbdf36e5a46271183d78248a65b5b8e481d7b9eb5a282ea2721925c4b29dccccec7d7b52c703c9cbb12c3a9c601abb0dba679e00ab290e7ee9e0d682b1452155238a9d222178c63daac98554fcc703d694c802fcaaa1073d739fad17158488281f2e598f6a998fcd86e3d467bd57ddce46467b0a92457d997c2af61eb400e6271c63dc7a53e3dc70c8a140ea4d411c888327a81df9a6c972ce46580503a74140168b73f3365bd45491ca4e0918fc79aa4a71ce4f35663e841fccd3b08f35f8d5048c74eba1feacab479f4208207e209af23b8b70e1b033c641f6afa3fc69a3a6b5e1bbbb5627cc553344de8ea09fd791f8d7cdf7372d1492447728071c7a75ff000aeba2ee89f5332e22757cb824703f0a86399e373b4ed039e6b696589e0d8d183216cefcf6f4c557b9b0431ab2c8849072bdd79ef5b27dc560b3d463932b322b1231ce7f3e29cd66b337eecaae7bb1c0ac99ad648c9c743dc54f6976f0e15f71ff000a56ec1ea218d949ddc54c242635566f953a0fa9ad48807449c22b0ce06f50413e983d6b39ecf1201bb6ae46588e83d6902012a79590cc64ddf771c63d73fd2a332303919041ea29aca14919e9de8df2088a090f96486c67827d7f5a76190cc4cae59d892c7258f273eb5977a8bbdc29dcb9e0918c8fa5693ffab62490dc606383ebcd509791cf5aa8912330e6270c848e69d2700e6a594609cf4aaefc67d2b4466f41a878c678ab96a7e4623a1e3354474c55d8095882e7e5ce71fe7e9430892e70186d073dc8e47d29c81363ee04b63e5c74ce7bfe19a46da42ed5c103e639ce4e4fe5c62a6d8a110870c483b971f779ff0026a0d0bda1213780af904e31894e33c8e9ef5ec761e308a4b4115da490ce080c4670c40eb9efdabc49519555994846e84f438ae8f42ba692330cb21665202827248ffeb56f4e9d3aebd9cfe479f8bad5f092fac52dbaa676fe32f1bce74f3a5d833882e53f7ae491b933ca8faf427d2b234af19dec082370a630dd4750b9fd6ab5d885dad52f10984b61110e32c3aee3db008e075cfb5635cdbf953dc470baed88061b9864824631ea7e6fd0d4623031a2af1dbf134cbb36962df2cd5a56bf95af63475dd6eef59bc02794c91ab1112f4039e0e33d6b3a485a29248e6c074628c33d08383cd11465412792064d31c1241240f415cc925a23d46efab2291c950a092abd01edeb546edf744a85146d24ee03e639c707e98fd4d685cc8f3cd2cae7323b17638c649e7a0aa7a9084dc49f66120833f209082d8f7c532199332298b707f9f710531d060739fcff002aade536d2d83b410338e33fe45695e41e44cd1964761dd1b23f3aa726e00af3b73923fcfd6ad10c850904fbf06ba9f085eab46d67311b94e573dc572fb82a3828096c60e7eef34432344e258d8ac884118ef5338732b0e9cf92573d3af02b5bb01e94ed2824f6a808cb2f15ca5b78863920026255f1ce79cd5bd0f5a8c5cb46ae3e6e4571ba5247a2aac5f53d2b41558735cbf8e2c2db50d4d448e526d9c3763ed5774fd5c16c7415178820fb408aec0e07ca4ff2adf2c82789b4d1c19dd494308e507677479e6a5a14b6e5bcb60e01e8dc1aec7c3b348da6db79870c102907d471fd2a1d420f32d524049c7c8dcfe5fa56878234e8f509fecf2cae8149fbbd7d7fc6bd1ccb0b18c39a28f2f22cc27567c951ff0048ec8c4b7de0bd62251891ad5c64b7520647d3a578c69fa65d6a122c3670b492b751d31f52781dfad7bbeb9a2c1a0f84753ba170ef049673a481c8f9494217f32715e2fa26a7e7cfa5c419d64fb423cd96c2bb6e5e4fe033f524f7af3706adcc8f671eef668c67531c8d1b0c32920f3dfa54884076ddcaff005ae9a2b0d3a49afd2ced26d4258a22de68762a646200da171f2f27963db35557c3f2fd86e2e05d591fb38f9d166cb67d381824e0e39ed5e8c4f1aa9817c1a588338191dfbd6785e48c906b6665f908ed54190c4db97071ed53246941fbb61235f3504531246787eb8359b72ad1c8cad818f43907e95d16977705b5ec33cd0ac90ae7e400633838382083827383c71573c4d08d62c2def56fae6eefde430c70c9080c540dc70431e06e18e0753d2a6c6ad999e05d44d8788ed4e7f773308d87d4f1fae2bdea32bf670e0655b1919f7ffeb57cd569335bdcc3281f344e1bf10735f45e8970b75a4c73c27746cbbd4fd79feb5df84968e27c471550e59c2b2eba13491fee3257853b4d5258c33c8bce455dba65557e0e4b7eb55acf635f6243f2335759f334eed32fe8d129b798339560b9503b9c81fd6ad4f7221d17542e33b53bfb06e3f1aad668c85576338618c01c91d4d43e35952cfc3b76aeb892755546071bf2f9c91d8e01f4a5376832f090f6b89825d5afccf3cd5062ca1b85001552b1b2a041bb7306e07a7f515916cd895480368e79ef8a49a462a232ccc8a4b004f033d7f95243953c1af159fadc559195acc46caf238c7ca5d031ca300324818ddc9040073efed5030187647c6390077ad2f115bc91c31dc348cd016cc816363b4138c92405ce73dfbfbd52f0fb5a5cddbdbea3234795fdd803ef39e029f41ce4fb0f7a6863ac89694a301b586091d4a9f7aa705dcd6b7af6b382cc8db491dfdff1ad4b0b392686e2747023b750e7767e62481b471d7ab63d01ad1360b717113c6c892301b99fd392303bf5ef4e34f9df2f72275d51839be816d89ca178dd97182a9c363f23fcaa68eda33f2a3219376dd8b9763f40a0d74561a25aec7fb5b35c6c3d0602807d14702b5ed62b5b74f2ad4c312118202e0fe35e8d2ca57db67cde2389da6d5287f5fd791c84366fb1d446c738e7ecec7a7a12b91ffd61ed57069729810882688e31f2a925ce4f3ce315d6c06188f0c646f4038abab03b0f3672235fd7f2aec8e5743aa3c9a9c4f8b4f476f92ff23804d238dd2a5e920e70d0ee19fa06e7f2ab6da62cacd2ac370eccd9622d02727eac07e55d61601cede47bd4b1b612438f948c7e39ad165987edf999cb88f1b6f8bf2ff23994d2b62aba8994b650efb70f8047fb25bdf9c0c553bbb1b880e3cb0dd78398cffe3e00fd6bb688e2ddce319603f9d4e242d1f2016033f30ea3d6a2795d07b2b0a1c518ea6f577fbbfc8f3a9239e28d4cb65321e4ef27823d38fa1ef4d679eea46fddbc92b12ddc963d49af4278a29f734bb17b70304fd3fcf7aa37da2db4db5810a4f392307af7c75ae1ab93ff00cfb97de7af85e318dd47114ede6bfcbfe09c048ce23dca70e1b1b36f6c75cff4ab969a94b14113cb12b28dd1ba3af0c077ff00c7ab52fb439e32ed0ab4918e7775fd7fc71598cb2c512308668a4864cee6e9938208e3dbdebcaaf83a94ef1a91d0fa8c366585c646f4e69dfa75fb8df8505f3c73c5b443b4b90c71818a9349b1114d3644b202b9cabe36b6081c67d7153e8765e668c92c6b2c8f2a907cb456db82474dc0fe95a71e962d2d9a4b0f32e26c6640405d84e38e7fc6be6e507193889526e464d9c96d134c2575cca73246e0f3fe1f5ab7ab69b6779e1448a28a1b9f2998e65fbd18e4839fcb9a25d3219751823b782ea5b990619360620e4f4c1e467f9d765e1ef06490a3cdac4cf382095b5078c7a311d3e83f3aba519cb44753518ae548f3ef0c782e6beb058ec16458436e324ac5557279e7bfd2bd3345f0cdae8ce8d15ba4f7614033bae39f503b7d7ad745691b4502298a2b58506163180aa3d80a91d33202aeac71d7bfe15dd0a2a3acb5667ca889e207e67076ff0077b54176e2242caa0b67008ec2adbfca3aee18e49355d995230cc57fc6b728c2d5b4fd3b5c8becdabdac572b8c2b15c3a7d1ba8fc2bc67c71e00bcd104d7b61beeb4b5392c47ef221fed0ee3fda1f8e2bdda7675936c6819baf4a5894bcbe5cc370fe20471f435d387c54e83badbb18d4a4aa2d4f93c8ebc7348a0a9f7af54f89fe01167e76afa24412dbef4f6883fd57ab27fb3ea3b76e3a796d7d261ebc3110bc4f2ead395296a5ab2bd7824018fcbeb5d8e87ac9047cd9e98ae08f5a9ed6e5addba9da4f4ae88b70d1ec73d4a6aa2bf53ddb42d5c6518374aec239965884887e561d6bc2743d5b615f9891db9af49f0f6b1ba2f299be56e47b1aaa90e657472d39ba6f9647512383dce4553926e0f99c01fa5325bb5452cc4e476acd99a5ba24be55076158a81bb9f609af5989f2d69d67a84b6b361e4c06ea6b32eae847948b048acc965667deec78ad1d25522e2f633555d3926b73d16dad16e235907ddff009e8c7150dbbb5edd3db68c9e691c3dd38ca29ff67d4d6278525fed79134ebbb9758172c221c093db3d6bbeb47b4b4916d6dc2a1030157802be4b1746542a3833e930f595682923c364b51315648d6250a57eef3ebd69d6b6bb1763c85f2320b76e73fd055c662b1938c28efd3d7fc6a048259d3780150b75e82bc5bbd8e673949dd8f17230100da3db8a81e62e4f7dbf7466ad4e91db92170724639fcea141b5cc85386e0f7c9a5b104710128da049cf76e69d854201c9da3152aa17de63c063c0029e5498c34632f819dc38cd2b92c2306404fcb8e871c718ff00eb52448164208dc08e9fe14c088ad95ea4658678fd6a7445e18b8018e391d052bb0114a6fdb1a0054e4963d2a4215b93c658019f5f7aad2a18f7282738c8ff006aa43244a9b8e1b8e84e0f14848948041c12a32386038f5a59a7458b24862c327f0acab9bd5cb0180071d339aa4f3abe14315cf233d319c73fad087634ee6fa2743b5f121e47ad674f760db9f9d83741db9c9e7f953b4ad1355d6662ba7da3498383201b635fab74fe66bbdd1be1d5b5984b8d76f77ba904471128a0fa67a9fc315a281bd3a0e5a9c05b0bfbb9560821965b9272142e71ef9073ebd6bb3d2fc00a605bbf10dd0b3b48c6f689582807ddcf41fafbd75eb7963a646d0e916b1463826423afe1d49fa9acb9d16eee8dcde4ef3c801da246ca2f7e14703f2ad630ee76428c625bd2af34ab082487c35a7a151c7da194a46c79eff79ff97bd4370ed7ce1f509daed50e4463e584107fb8383ff02c9a6a64200aa3e8053becbeadb07a018a77b6c6d61b35d61b62275fee8a9eded1e6c9918a2d529ae22b28dd9f391ce715cf45e2495ef8bc17518815b1221566278e31d71cfb7ad6729d897348ef23863b65c42bc9efdcd5137d6c975217994363049e00c7ff00aeb954d5755bb91555328d9f9832f1c8f5ed5b7a4e8a6f2512dd6e1b4632727271d47f3e9537b9b25a6a49a96a4b7112416d2481e4c1caa90700fb8e4545a57860c93998c69106ee631bff00cfe55d5d968f05bfce1403ddb8c9ff00eb54f3dedbc2c1430661d5508e3af5a395b26c88ecec228123895559530546d039f5e2af1f954ee519c7005545bb127f1ed5c741d7afad2fdb1133b3ff00af56a00d85dc92b44514ac2a7b83cd64cab14658aa067391bc919c9f7a96eaf14921867fa55207e604f01718ad52b0ae48cc3a907271e800fa0a9d133dc1f602a041e6286c018ebcd5b81c018e47518a604f0459c0c038a9776c1c8c1eea29809c05e40f634ac416daa49a4c6885b0e7e63839a88a06600f4eb5379cb6ec7747bbbe4f435564b8f3a739000c633da8422691a20b8814f1d09ef51bcacfd4e6a15ea4e4d2820138e7d0e78aab12c52dd474feb4a878c00077a8d012723ef539632c37122a84584627a9cd598c13cf4e38aab18c0c8fcc5594c1006306802540482af865fe95f3578c34e5b0d76fed9860c333aa8f54cf1fa57d28a4eec01dbb578b7c63d3bc8f12a5d8185ba84367fda5f94ff21f9d6d425676133cb2e19ade7e7ee1e69f233c8988dbf2352ea0406cff00181927eb59d6b73259ccb240c5594e411dabaec45c74b7d72a409d99c280a33d80ed4b2de5b9e172781924639ef564f957ab963f377f5acbb9b5092b05042e78cf5c5080b097de530c647715a76daa41242c9228de48c3963c0e78c74fff005573ed6fb599491907070734df28f6cd16409b3a930ac8864859491ce723fc9aa57114ad23c9236e7624938ea4d6345733db9f918e2b42db594e56e2353918c9cf1ef4acd0d341729b5d8236e50786c633f855376608c81be462091ee2b5904574c151972dd096007e66a9dd46d2b972fb89c73f4e29a06663a0319391d71b7bfd6aa4c981c74ad29a1c1e1b3f518aad344ea8a597018641fef0ce3fa1aa4c868ce4383cd5b8dce0024e318155e58d9086c1da69c87a1278aa64c77341f6091846494c9da5860e3b66a428639191b1b958838391c1ec6abc20c8c150166e7000f419fe95229c115068993ae4119cf15b9a45cc5f679607945a39e44cbd48f438e4f3fa563c933cd2c924841772598800727daacaed96e364008577c26f23804f193554ea3a72e646388c3ac44391bb1d2da44da96970091b136df9243d55c719cfa12307ff00ad59c2d9e2c33a32f980b027b8c904fe60fe554c493245e479a556363c29e0f3ebde93ed0e3032480303f5ff0013f9d6b88ad1aa925b9cd97e0e78694f99e8de9e46809da359151d82c8a15c671b8641c1fc403f853639a3db2abc5bf726d539c6c39073efd08fc6a0771243161114c6a54919cbe589c9fcf1f4029eef0c76d1957669896dc857006318e7be79fcab90f5421891cc8b24cb1ed8cb2e413b98745e3a67d6ad6916a6e6d6ee39011031425d482410c3b7d09e6b32412b4226007965ca039ee00278ebdc55cd0648e29a4df33a161b769fb8c0823e6f43effceba7076f6bef1e666dcdf566e1ba69fe2626a103dadc4a8db8aabb2072b80db4e0e2a9dcccf3b2b487242aa0fa0181fa0aee2fad964189024a6332121c0382cb907f31fafb571f7b65f64b958a470c0aab1651d0115ae230fecfde5b18e5f982c42e497c5f994180217682081f3127a9c9fe98a1626f2bccdcbc1dbb73cfe5e9534a8a24711b12809da48c123b53648cc4ca08e4a86fc08c8fd0d725cf52c45b4a231d80ab630c41f94f3fcead690105da6f1216242a6cc7de240ff1fd298508420e707915a5a05af997f68d947fde1629dd42e0e4fb13fd6ae10e7928f732ad57d8d3954ecae7770785ef5d95ede78197fdb254ff00235ae619adf4e686e8a8707690adc30ef59b6d25c8256d9a45c9fd6b46d6157d509ba90ca70473eb8e7fad76d0cb654eb2a97d11e0661c434eb61254795f335a9877eb1c368f1c64ee2e0ed3fcc7b561da5dde58de89aca4f2e5ce3a6411ee2badbdb64903244bca1201f5ae7becc44b23302362935e955a6a6acf63c7c0e27d9fbd17a997e30f166afabc02c6e2e4b5b03931a0c0623a138eb5ca5948d1cc54e41ee2aeebabe55c800f5407f53593bf6beecf39af0ea42309b8c5591f694272a9494a4ee755697d3410cb15bca6259d71228e8d8ce3f99aeaeda08355d3c43a579f6b041b9b37636c7231ea4c80e031e0018e338cf73c6692239206bbb81bad6dc80ca1b064624e10639e70493d803ed5bb68ef7d2dbc9a8bc8f25c002d6da02176aeec0cf076ae7380013dfeae24d457465dd9d8086c71e95952cf9caa839fe1ff000adef11fd81a458f4a8a4509f7e46977863edc0e3dfbd60340dd4e0fd69c8ce96854deea71cad6b58ea1388134f88a22cd2e3cdc7ce9bf0080dd81017f2f4aa6f116186420763dbf5a81b72f0060f4047506a4ddab915c44cd24ef126228db6f38040ce067d4f1fcebd7fe195d490e8496b70795240cf604e40af3ed254eab709e64411226334bb7a48e70071dba13f9fad779a00313b1e9d0f1ec6ba70f78be63e6388271ab4bd8f6d4edaf941b70ddc9c7e40d50b750465cfef01ced1e9ef5ae804b668ee372ab8dc3be39cd645916179210b82c71ea4e7debbe47c4517ee4bc8dc137dad62f914c8abb7e41cb71dfd4f15cbfc42430681685ca82f39c2e79e01cf1dba8fceba6b58cb1995a4654284af3c16da4aafe3cd711f10ae9525d3600371489895600a9c9c6707f1acf10ed4d9e96454fda63a0df9bfb91c5210c198919f420834b138f342b66b5ed374164975b0c53184c684282092c4671d3ee8c71ea0f7a72cc25b8b87b38a0858feee3b52373397e0e323181d871c918ef9f28fd32e51b840448366e66b764298c961df18eb80738f6f6ae6d6da3709346fb4875457dc06083927d0e07ea457453b936b1ca080f190559890173fcb903e9581ac59324125c04d8a4ee2778241cf5c7a7d3daaa2d35664b8b4ee8d0d2b53b55b59ada7594908155d08c07dc3739cf538057e87dab5610b35ac663f3010c554c802af07a6f271919f6eb5c4e9d7af0347e5b0f34ff001e705473f283dbebf4aeaecee6ee6824bc4d4255b9421047e6b895c000b11ec32a793dcfa1a49d8528df43b0d26e374123b1f2d9404653d4115af1c96861dcc2256f523835e71aaea1abb68af7692bb14089e718f3b957381bbbe0679393818ed5c3bdedcdc3933cf2b93eac6bd58e6718415d5d9f335386e556a36a768f43dce5f11e9f6acca6e208dd7a81b41acf6f1b69ae4996763838c633f962bc92de3dd5ab6763bcf0335cd533a9ada276d1e10a0fe29367a1378e7481f745c487d04781f993483c7d63210a60b9551d3118c0fd6b0b4df0eb4d8ca8aeb34bf07c5f233c79fad71cf886ac7a23be1c19837bb7f7ff00c0208fc6f60e17f7729da40c6c61c7738c54f178ded5a55128744207546017b7071c575da6f866ca21f3431e78fe1ad84d0acb6736f19ff808acd711d6fe5429704e09fda670d178b748919639678f24e436e031db9fcaacff006f584ad85b88dc74f97008fd6bafb9f0ce99329125940d91dd01ae6f54f87ba44ff72d446d8ea9c56f0e24fe687e271cf8168fd8aafee238f51b30cb9b98813c8f434bf6ad35e4628d0920e72ac3701f4ae3b58f87f2db926ca79368e42973c566e9fa13b1b9b7b90df6878cac52331ca37635d51cfe94d7c271cb822a41de354f44b7bbb687e5b7ba183fed6d61f8e6ba7d234dbdbe85e79ae208ad1df6b4b82ccc0760a3bfae78af99209eeed99f7cf32caac07b11ce735dcf85bc79a968823b5b695a4566044120de873edd7278e84570663ec71769c55a4bf147a79565d88c0b719d4e68bfccfa46c23b3b45d96d098c01cc8e46f61ee7d3da9d3bccfb3ecde51c9c700fca2bcdf42f88da5ea0db35312d9c9d370f9909cfe63f2fc6bbdb1bb865b606c248e58d8651e36ca9fc4579ea0a0ac8f69dc9da202338219c7073eb4919292056231d393fd29f60d27cff00684da39e470a6a76b589a3321452e7a63fc69dc9488ae63248d833fcaabcab92415c32f0323815624bc58c047645207dd5c9aa2f72f3cbb4425c1e383d68570196e5cbb052d213d4e7802a778d988c9c6de9819cd5cb043026df2e32e7a8039a9e446031918f61d293654518851836e24f4e7773fa57877c4df071d16ebfb46c23234cb86e8a3881cff0ff00ba7b7e5e95f40ce8a7a638f7acfbdb58afad9ed2f235960954a3c6c320835d185c4ca84f997cccab525523667ca456986b7fc69a149e1ed7eeb4f7cb2236e89cff001c67953f5ec7dc1ae7ce3915f5f09aa91525b33c671706d32cd8dc9824e4d76de1fd58ab005b3d2bcf5bbd68e997ad138e4f14e0f97431ad4d4d5cf73b1bb8ee215919b38183ec6a1bdbd77f953217a71deb91f0e6a8080acd9520641ade927014edefdead47538f99dacc6336c259bad539242cd93f9539d89fbc4e4f63559dfae7af4ab4ac4b7727b2bc92cef229e32cac8c0f15ea3a63c06382ed332b48036e63d33e82bc858f19c1c6320d76be0899ae61309672f19c803d2bc8cdf0ea74fda2dd1ea6595f967c8fa9c25cde4921fdd96c46324673df19fd6aec7753b4288a8c327900723d3f3e683088923c46ab29fbc3bf35a769b2380b051c0008ce3f2fd6be1ee77a44296af207c26e902824fa7b538c5e4a2b3e33d001482e4292e99e3b1ef504b33b062dd7390074a925d899a60f08e3beee9ef50492aa670e5b3ce45471a995da37047a114e5b540a30c7710739e334911ab1165de7e56239208a92321558ba6e2bc6d6e3229088adcb6eda09ea41aaf73398c91165837038ce29586913cb72b1c60c8a5463239f5acb9ae158b0572a3a8ec2ba3d23c15abeb2a925c47f6480ff00cb49d4ee23b617fc715d9d9f85b40f0cda8babfc4d24632659c6e39ff6540fcb0335a429391d10c3c9eaf43cd345f0ceb3ad306b4b490444e44d3e513fc4fe19aef749f0168fa485b8d7eee2924033b646f2e21f81396fc7f2a9aebc61737ce60d0ad96de3db969eebe56c74e17b7e64e3b5735ad359e9ead26a139d4aedbe6cc87700031233dcf503ad7446925b9d31a3181d55d78c2d109d3fc3d1c7f20551228f9101cfdd18c1e31fafa735e37ba9d775ccf24b2b1cfcc78fcbb5616973ff006ac91ddc6a43282b803ef12473fa5750b00b7b7265f97dc9e9ed552696c6f6333caba77296cab8cf2c6a5b6d2d95c9bb9b7c99c80a3a7f4a9e6d62086c6578cab05ea01fd6b0b52f104b2c08d692a4718e1e423a0ff3e958b90d2e8759e62471f0a076cd656a7aab5b2a848fcc766da02f27f0f53ed585a2ade6a72c9022b4906e20330c06c13edc75cf1eb5d7e9fe1db7b726490a993208c73b48feb52e5d0d793b9c9cc6e35099fe72232db4443059b8ce48ea00cf707a7415b161e179a758fcef2e18906311a2a16eb8e000381ed5d65bda5b5a01e544aa7b9c73f5a596ed2352a8a4927dff009d2516c8b28dec334fd1a0b3886d08ce38dec39ab725c430fcaa549ec00acb92eda43b5c9183db22a091f6a9da3f5e7ea6b45042b962fee8dc2e1df6a8390bd3f1aa0842b1da393dcf5a47e71b8e4e3824544841932d9623a915a256116d250bb88ce7d7140942a1202aee393ea6aac8fce4700542ee5b1b8e4f6a605891d8b1dbdf8c54808031d4e7b553f30f5ce0fb5394ee385e3e9408d38dd42ed524b13e95342879ddc123f1aa96c1d7853918fbd9e78ab23e5604649c714865846c0c375151cd70460a28e7a1aaf3487791f32b743d700f35558942a81b200e0ff9fc68b05c95a66c7cdc8ed8a51217fba366df4e39a646b9cf52338353b2c65760c9e392091fca9886824b14c9278c903a52a96c0f946cebd39a713b500e8b9e08a47c151c8e7b0142000d8240c9078a1492d8e140e6932770c9e052ac98071c8eb4c562757daa3a907dea557507af5f6aac92ee61b88c75a7740141f4208a680b880365b3c8f7ae33e2d69e2ebc371dd8ff005b6b3039c7f0b71fcf6d760aa51413839ed9e6a0d5ec46a7a25fd93939b8899071d0e3e53f9d545d9dd099f2bde1c5d3f1c87e84718aad342a919dcb96238c1e9cd6deab0a5be66987cc0edc7a9ac59642f1b331f9c373e98ff39aef5aa337a144131658361b3d315a1693417200bd628bce1d402723db23daa8b9520648e7d3b557921653d08efcd3045e9ad4a12cb823d474a8ddd9e466739627938c5436f75243c1391e86ad279172c016f289ea7191400d91236395055703a9cd412db210bb0862464e01e39a95ade4490a4982738183907e86a5036315e38383839a416287913c2be626766719ed9a55bd652048bf9d5e3c8e454522028ebb5486c64e013f81ed4d015a5669dd9d19464e70bc01f4150f979539e49ee7b53cdb852c51994f6c0ea69048c322543c75602988a53c6c801ce54f18351c6403cf22afca81e3dca430ace5f9643baa96c43dcb9093c950703f41fe4d5981c296ca06ca903776c8ebf855384b056233b4e01f4f5fe956a329e53039df91839e31ce7fa54b2d16a05561212eabb57201fe2390303f3cfe152c40b1257380324e3a7f9cd575522357e369240fa8c67f98a9627650e012030c103a119ce3f4148a45bb694c32a4898dc8c186464641cf43d6a68cabc9ba4c905b2768e7df155609102c81a3de594056ce369c839f7e011f8d4f02ab2ca4c889b13700413bce40c0f7e73f8549689e664f324f237f95b8ecddf7b6f6cfbe2997113c32bc6e54b2120956047e04545123cac5630cc76938033c0193fa03481b039a450af95c6463201e4638f5ab5a3dc986e4a35c88629061f72ee56f4047f5aa93cef21532396daa14163d001803e805433cc1e2890468a501058757c92727e99c7e15a529fb3929239f134157a6e9bea7652ed32248c14311b0853956527fc7a7d6b9df11d91fb48955c08fcbda339cee19c2fd48fe553786ee7e4785ccacab963c80a8bc77278cf3577559245b4fb5d99591d1b21970db579cb01f863f1af5e4e35e95cf93a519e0715cab5b69e5a9c7c50492cab1a2b348c42aa81c927b526c0bd78ad4d76e609af126b4662c1177c8063737afb1ff000ac8c97c8e6bc9a9151934b53eaf0f55d5a6a72566fa163ccdd12c595c024a8c0ce4e3bfe157b46bd16971b84716e2a55b76416071f80e954701e5672aabb9b3851803e956a4f2c4ed1c2c2540c555cae370cf0707a52849c1f34772ead28d68384d68ced34ed5e16daf7127925b98d473920e3f0fc6b6ec66b74712a48ae47420e7b579b988c539864c2b23ec65739552080791f43576e5ae74b91ad48f991f709572db815076f6206307db3df22bd2a38e9a579abaee7cce3321a329f2529d9b5b3ec776ce8a783546f8c6259a29942975c2c98e08232335cb41ae4918dcf3a3bab0c44ea41239c927f0e9efed4dbef10cd756d2e2019fbace1815e738fa1e0e3e86ba163a9357b9c0b22c5539ad2ebbdce6b599f7ea323c6df7182af71f28c67e9c56339cb1abd24a15c9d8a4e0800f4e4633faff002aab245e53b2b904838383915e3ca5ccdb3ec69d3f670505d0d0d366899552ee422da1f9b628c33e7ae0faf4e4f6fa56be95aac8dac3cbf6413c9226c5446d810600c8f4c007e95ca92063667a73c55ab79d832157298fe21d4534c4d23b5bc9b498ad39b6592e4a904db4ae150ff09258904fa8031ef58892091306b6b4bbf516d25ac49fdacaaa4aace47ca0f52a98dd9ff74922b9879e3477c03d78039155b98c5729a2d966017afad2596d93518ed9add6ede7fdded61c8cff00102390463afa66b352f1b2431e0d7a57c3ff000d9b5b1fed3bc43f6ab81fbac8fb919eff0053fcaae8d273958e4ccb1f0c151737bbd17a94f4fd3134e816dd3279cb367a9f5ad7d3462e82fb1cd5dd42d0461a5c703daa9e9a8c2e3711f3122baf9795d8f8c9d775e2e6deacedb4b70d687247231fad539e03693c5242fbf014965046d246707f3abd668b159a991583360020e3076939f7154af1b65cba07dd1ab901b3c100e01aea7b1e1d3d2526ba9afb9a4513c600da43331c637673fe47b579bf8e629eebc48b1231915228e20c0121724fe80b0cfd7dc57a069ce1912393263ce580f4ea7f1af38f10dccd797ba94902c76a4cbe6162db4c8abb94053eca4f1d4faf6ae7c5cbdc48f7f85a9378a94fb2fcc92fe1d92a1915e1b4857682c49cb15f9474e400aa3dc863d338cc92ee01286b766888c15748d73ffc575ff6aa7636cfa6d9dc497134c638d55837237f3951df84080f6181d73814eddc4b0dc2a1318857215882194b05c630327e607a7406bcd67e8086323399a36932d203f3fae73cd635a48199e13859fee9520609f4fe95d36a70cd01b333c70a86b7578cc406083f3f38e3765b91f4e958baac26d356b47922d82e02cd192301c6e20f3f507f3a455ee62f882c21b7bfba7b084fd8da46080124a0ddf2e7dba553b4beb881e3f2da4f2a06dcaeb9cc6dc7208e9c8cd759a25b457e2e927bab7857c8243cee402772f1c03938cf1ed5caeab63f63b86489d8da92cd13bafde5ce0671c03eb408eaad3541aa5c8866582dd25091ed51b6356031923b29cb138e9b8fa015c86b5a70d33527852412427e68dc03c8cff3a20b9f26507040ce187a7afe55bf7abfda7a3080247e742e658dc0f98e40cae7d085040f5a97aa2a3b993a700c4576fe1fb0de412011f4ae2744e645e3b8af4ed05404538238af3310da3d6c3ab9d46976b1a20c015d0db200000063d2b0ec5f1c66b66d9be5e322bce6cee46c5b00073cf3571471c8c81542dd88500f502adc6dd734222458078c1fc298e00241fc29c3695cd213c72299267dd40b22306406b9dbfd2d1b2ea30c3a7ad756fce7154ee230c8411cd09d98fa1f3f78c34b913c4735ac3131f3984cbb41c056cee3ff007d66a58b40b59ad9a292e254be5e177c5fbbcf236b1ea31ebcf5aedfe225918ade1bd887cd1b6c6ebc03d1bea0f4fad7116f228c7cdefcf7afa4c1c61568a7d4f9dc63a94ebbedd0cc9a29b4a9522bc8a5818f46e191bfdd2320fe75bfe1ff0011df6993acba75ecb1c8a3e5553953cf420f18eb5b9a16a56d2a1b6be8a29606186491415fd78ab3ab7c38b6bd80dd785eebecf2fde16f2b931b1f457e4afd0e7ea28a94394aa78852dcebbc37f14229675835e87eccea36991149527fda1d47eb5de47a8ade46af6652547e5591c3023f0af976f9351d0ee45beb3693c33924fef3a30f553d1bea0d6bf873c4b75a75c6fd2eefecee482c0f2ac3dc771f866b95d3b1b594b63e8f36d13c8c6494123b0f5ad08c798a1514228fe2c726bcf7c23e3fb2d47cbb6d5235b4be380a49c4721f627a1f63f9d7776cf2b395900da7fba7a564ee4f2d89d634843f951a82c705ba93f5a1c29462588feb4eb652808773231f6a6dc28c64f2474039fe548572abb09011955006338eb50a28425a2425bd4f39fc2af0854306915403ea7fa5525bfd3def26b68ae91ee23e5a3ddcafe145d21a8b67997c6bd0fcfd1a0d5517f7d6ade5c83fe99b1e3f26c7fdf46bc3dd70715f586a967fdab65776738cdbdc46d11e3b118cff005af97358b2974fbfb8b59c626824689c7b83835f4994d6e783a6f747998ca767cddccea456c1c8a5fad30d7acd1c68ded12fda17504d77f657227814ee078af26b790a30c5771e1cbbde815cd5c1dce2c442cee8e91ce46092702abb0e4e0d4a795e315138e40aa6ec611576263afad6cf846fbec3ae40cffea998238ed8358abeb934f5601b702320f5aca515522e2fa9b465ece4a4ba17d70c40500b11f5c8cf6a75c4eb144b1a1df31c97503fcf6acc569565c12430cf438fc8d4b3b492cc7caf959be6e40ce7a9e6bf343ddb95a494b484267691c0ab3688e76b33e013cf518151436ec14312166073c55fb282f3503f66b3b479dc1c1da385fafa54ea28c5b6452e1467236b746cf43daabc534b34ab05bc32cf3b1e111727f003debb4d27e1d4f752acdac5c6c0793142727fefaedf8577ba769da66836c63b38228c13c84eac7dd8d690a4dee74c30efa9e7da2780f50d402cbaab2d9c44e7cb00349fe03f5aedf4bf0ee8da1ed68a00f70a3efbfef24fccfddfd2ac5d6a24e555da353fdcebf9d674974aa0f964fae49ad528c763aa14a31d916efee2eae237482e45a8e99450587e27fa0ae4356d3752bd6db25c5bb2ee3991f2ec47a60f15b4f76594b3b10a3b9ae7b50d485d8c595da2c5cef2060fe147b4b16ec8a775a1c515aef79cc6883190b9e7b138eb582d6f05baabee6995b709119b1bb9c03cf5e3fa55b9aede213451c924b239071b810b8ee4561a89af0b28335bcc495093f5078e46d18efc64fe06b0a95252d99939df4476fa5dfdb5aa058504716d0548fe555f54f102b5d34290b4d1edea41f95be98e7f0aa3a17862f2e638def667787702d1b280587a641e3af515d8e97e19d3edb18b54c2ff0001036fd4fa9e3bd349db5378c5a77671d6da56a3aace4c30f916fbc9dd20ce476e00feb5d3e8de0e861904b72eb3703e430e071f524d7550848536f4da3bd4535c1da7c95c9033c7f9e6ad44b72176db58aee60a8481c0ef8acc935a4dc56de23b7d40a4bb8577f9b72c5988e13159b2b191caa80aa3ee90715718a25b3411e4625a69b6e7395049a94bf1977c06e00f5aa30ee006482df9d580bddcee22aac21e03754c03d726a376233bba935293e5a92c71c6702a8cf3a6dce0e07a724e681124929390010b5070ac3078ee69858b392471f96052230dc76f3e838a603e46273c75e99a62724163934d760319e327f0a89e5c1da00ebcf7fc8d31169d9541deff004029d0cb805471d4ff004eb540172c5b19c9f4e9cd5d08485c10463e5c0e0503b97c485d41e38ed53a4831b79e7d2aa5b4603f1f37fba455e48948258107a1c8ed40105c10c847078240f5e7bd43e5960dc85239f4cff5ab6fb773889480ddb351491104924e470c05210d8c2b2ede00ff0067b558862206e948031d3b9a456545ca2b2e4f5279a18b34a5cb0e7a9f5a0041f28211493d6948c020b7b7502918fca7071d8934d0c580e83bf5a601b86d7de30074c77148a4b3606073c5228f949620fa7fb54cc86cb05276f239c5342274010e00001e30454f1b140490063bd55563bb85ebc81e95304c63cc6a00b4b2e40c01923afe3daa55608433e78c7dd049fc85571246883cb2413d6a7b7976b65b191c8cd007cd1e3e6493c47a843067ca4b9902f1fed1cd60fd9cc795233c0e2bbef1fe8c34df15ddbc8856198f9f0b1e8ca724fe478ae5a49a105b68049f5af462f4d0c9a32df4c2b9c0de7ae17e6e3af6aa72c07b5685dea1b186c63f770769fceab0d5022b81121dc36e58671cf6fcaa95c342abc0eedb8af2001c003a535a1c1f91580c773deae47a9c7b1c48a7763e4c118ce7bfe19a7c57b0c99dfb40033cff004f7a351e8550cf01d8c5654c03ea2a56849398f703dd1ba8a985c5abf41cd01e007721e7da905881dde46cc8cccc001f31e98e3148e7e4550aa08ce5b272d5725956e76893686550a080071ef8eb514d180c7cb07cbed9393401582a94c96f9b380b8edeb9a6980b46cc5494040271c0cd4ac806df995b233c76f63ef4bb1b682410a4f5c7071ffeba00cf7b73092f10cf1f773c5519a212234b18036fde527915bf8411b02b962461b3d3afff005bf2acdbfb72804c838efe87d6a9325c4ce8cb6def826ad295d8982dbb1f367d73dbf0aa8701be5fba7915a3a6857795377ca623c10324e33c7e22ae31e6763294fd9c5c98a372601520900f23a83d0d4de766244c20da49dc072738ea7f0fd4d579432ca559f763001f6edfa548ccacc4a2ed181c673db9fd79a86ada335849495d1694a08d70cc5c93b811c01c6307f3a902b8844a47eecb14073dc004fe8c3f3aaae046c007471b54e54e47201c7e19c5386578395c80467d0d2b1a22c248c8498d994e08e0e0e0f069d0cde5488f857d8c1b6b0cab60f423d2a2595840d1023cb660e7819c8040e7af734e8da311ca1d0b3900236ec6d39192477e323f1a5628490920f1d7a0a2e3c91712791bfc9dc766fc6ec76ce3bd222872dba454c293f36792074fa9a8e38e49a411c485dce70a3d864fe80d2b08bf6b789626686409716f32216087e8c0678e8783f4abfa45c8b78e43223431a113460f4d8c491c9fa1ae68f278a72a9e0f3c8e3f9574d3c44a9dbc8f3f139753afccf66edfd7dc58bd3109658ec64905abed2558f5207f424d36158923943a12e540420e369c8fcf8c8a7c8de614255015408028c6703193ef4e748d52228fb99972e0ae36b648c7bf183f8d6139733b9db4a1ece2a37bd88e185a5f336951b54b1c9c7e5efcd2a4647248a908288aeca42be7048c038eb8a8bed6d0b968c85cab21e01e0820f5f6348b2689d52642f1f9c9b86e4fef0f4aeef51860beb5b6b75dd0c32c91b0c83ba3206c65c1e7d319f6af354bb48e60cf1995304150c4139071cfb75fc2b62d75dbb963920b58e569c81e5e70cdc649fd335df83ab18c6519753c1cdf0b52ad4855a4ece3d7a2f32a6a59b65844db184b12cabdf839f5e87ad654b36e560995438246700f5edf89ab6a6eefa650ecf2b390aa9d727a0c0e9df8a61b5dac410411ebd6b8e7cbccf9763d8a3ed3917b4dccf789e3db952370dc09ee298d0b6cde55b6e71bb1c67d2b4e480a601523201e4763c8355e440b9cf1525d8a0032e7191444c11f9e952798c1f82ca99c311e86ae4f14570d905589e032fe95ac21ccae73d5a8a0d2b1baff006ce5ed9d2da40bfea61963c11d72bb4e7b771f89e2b0ae55a491e5762eedc9663924fad4eae8b611ab7de5c28cf240e73faff3a9b49b47d4efadeca2fbf23609f41d49fc064d572bbd8c655231839bd91aff000efc37fdb7ab096e97fd06dc86933d1dbb2ff53edf5af6828afd318e9c8e83d2a0d134db7d374c8adecd36c08b9c9ea7dc9ee49abac0443007cec73c76af568d354e363f33cd331963abb92d968919b79009582a81b47f3a7456d143950819fb8ef9ff00f566a69658e105b20e3d39a82dd9669cb1277f6038c927fa629e973962e4d792361a7296a96eacad1eccf4e41ce7ff00ad594f16f1815a1778f30b22ed0dc803b67b555b71b8b66aac610934ae316e24b582492204ba46cca00ce4853c62bcceefce4103df9f391796824ddb9509fbc3238f6c1f4e3079f41f16e21d1e48b3b5e4223181dcf27f4041af3c92119fb1c2de6cf2bf9608076f5e00e79fe1e78ae0c5bf7923ee385a93546757bbfc86ac46da28c48dfea6ea481ce3215b680ac474ea09ff00809a25494ec6bc2b15b0652e11550bf6c8c01b8e33cf3d7df996589835ec858ba4abe7b2119ca79857767b303d0e3b9ec4e73e6b661f20064de9bd59149cae0927f0c1cfa60fa57133ead6a6d3ff00a469505cdcc8b186b8966fbc092a760c28ebfc07d871eb59be2a7db610c7321f2f7b3346bd62e3e5ebce4043ff007d735069c674bb8c5b6ff38b284083e6dd9c0c7be40ad0d60df5ce9b70f7ad74771f33f7bbb05c75ebf4348ab1cb99122b89becf3096066dc19460367b81dbd31edf4a96fc36a1a7fd9d5d708c648fea700fe781f95664d6c13e68c0dbd48f4a9ad66ea0f2473d791ef4ca321d0ac92467ef8ebf51d7fad6ce8776506dc8c8e9fd3f5a66a5006fdf855dc7019c1391e86ab694d1c73196e103c4a73b58f0c79e0fb7193f4f7a9046a4d65269daa0dd1b470dc289a2dc31953fe7f2c7ad771a1ce0aae1ab9e307daaccc33ac8faa3481d33d578e87ddb20e3b607af16b439c614eeea3ad79f8b8753d2c254bab1e8364e7ebd2b6ade60801638507190338ae6b4d972a39fd2b7ec9b2467afbd798cf491bd6b20d99cf1e95791cfad65db9e87b568459e18524268bb1b12bf301d695401d79a6c4415049e71daa5207e74ccc85e351ca8aad3229538a9da5d839071eb51965753823e9486735e25b017ba65cdbffcf442a3d8f6fd6bc3c068db0e0861c115f425e264107f0af18f19597d8b5eb8c2911cbfbd5e38e7afeb9af632aab693833cbcca9de0a6ba1976ef870c4f7af46f02eb51c25a1793e523e506bcc7796271dff0ad9d1a5f2a50ccc78c6067ad7bb25747877b33d9afa18750b7f2ae628a7889cec95430cfa8cf43efd6bcff005cf85f0b933f87ee7ecd2f5fb3cec5a33f46e587e39fa8aeaf40bb6bbb2049e9c66b760c8193c8ae59453dce88cdc763c1ae23bdd2a66b4d6ed278661c4658fca79e70790c3e86bb9f0378fae34a68ed2fe433e9deac499221fec9ee3dabd02ead61bdb768aee08e6898e4a3a823ebf5f7ae135df87b1b3c93e8d70d1b9258c33b16527be1ba8fc73f515cd3a3d8e88564f491ecba75fc7a8c11dc584b1496d20c8901c835a6b29dc5401e99f7af9cfc39aeeb3e0fd43c99edda3490fcf14cd88e4c770d9db9f715ecfe13f13e9dae5aefd3e5ccd8cc91370e84fa8fea38ae2a9171378c7aa3a22adc9de1a4e833d055696ca157695624f30f56c734ebbbdb6b2b77b8bb99238d46492715c65c6b3a9789a66b7d195ad34f3c35d38f9987fb23fad6486696b3af5ae958895deeaf64388e08be6663f415e29f1674bbd83588f53bd85223a82ee210e76baf041f7c6daf70f0ff00852c748679625669df9796562ccdf89fe42b1be2be90baaf842e82a7efed3fd262f53b73b87fdf24fe95df97623d8d74fa3d19862697b4a6d1f33b7151b5589940ce3a555626bec59e1a40a79adff0fdcf973283d09ae77356ec25d92839a507a93561cd13d56ddf7c4a579a46196ce727e954741b8f3adc027b715a2e3f1f7ab91e7a4d110039eb8fe54f071c1c63a522f53e94e51ef8a51d07221e72ac092475c9adad1b47d5356c35940c223c79cfc28fc7bfe19aee741f025859149af9bed530ef27cb18ff0080f7fc735d2cb7b6d02623fde301c6de1457e6d0a2dee7d5430d6f8ce5f47f00c2029d4257b875e4a479441f5eff00cabab863b0d3201140b1051ff2ce10028fa9acd9efa5993696da9fdd1c0aa6640a4e4d6ca3189d31828e88d2bcd46e1d0ac0c22503a28ebf53d6b2e5b99c0ff488f23fbca7229ad38cf5c0aaf2cdf29c1e4fa9a1bb94911cf7d12672e3f135586a3049bbca915828cb153c0ae735eb9581dcc8dcff00747bfad615a596af31630fee2d930d2b3018009c0c8ce4f51c0f519f5ae76da62e67d0e9f5bd655213083b8b71f29f5e315cd0ba49256b48801232798430de40c8c606473c93cd6ce97e1cf3e7f32ee692742bb7030013d7381d3f127a5769a6e930d9966b7b78a2dc492d8f998d4f2736aca95252d64713a5f8425ba3e6dc3df5ba33eff9a6525f1c0e8a0e3bf35d9699a1d8d9e1f634b205fbf31dedf99e9575e48ad89c92cd9cf2727ffad55e7ba2ec150618f55ef5aa81514a3a2340bc67070303fcf4ef4e89dbb038ea3dbf0aa08a58665c2f439cd3e5be8e3c08d86075f7ab5113668ede332371ef552e6fe38db10e1cf23359d71772ccb9dfb7e82a069700eece29d82c493cacee4b13f375a8521dd92fc0f6a89ee0f42067d3d690cc58fca3033c77c51d00d0823518c9e3d7a50668d4951cb67f3aa113bbe4ef2dd85491e15f320627de9012caef20248dabd8d43b82f19dc73c7a53679b793bb3803a5519666c328036639cd3570d0b4f2e49f4f402a279594b6c0541e2ab79849f9464fd687670796e9d71fd6a9215c96404607cbd724eece696103049cb2e47e3f4a8c2990ee0738fc854ea033ec63803bf6fa531120ce19a3e371c81c9c7e66adc6bc65881d33c7a55788a8c2818f718e0f6a79931280dd33fe452034acc81919ce79e38ab65b8e38c0c8acc8e4c0c9186ec40e6acab9c7ca3776ebfad2192960c47242e076c534e320633c52027073ce3a629cbd4f038a00706cb138e3de99bc93c03b41e80d4734db50a9038f43d6901e7711b491806802431b6f6eb91c7eb4f64544600e0b719c753daa3c970ca0648e78e2951e38cbee2a73d81cd0022c72678c151c824f7a44548519c90c73cfb517570ceaaa3807d2a94921dd83ce4faf5aa4265b7b8231bbe4fa5084b1e08271c0c536dace6932ce180ec4f7ad48520850124671d4f5a2e4eac8e1b766506418fa8ab71c6b1e379cfd2ab49769d146ec8c75ab1696b2ddb663527d5bf8450338df8b56315ff0085fce44dd25a481810390a783f872bf957824b0ba8704e7009afadb52f0f4373a35edb4e7cc96681e35eca091c7eb8af9835084c0260c30c01561efdebae83d2c672573947211e40ac4a37b75151796573d08231c8a9675cb90b9c7bd5a8225f2da1299941c860723be6ba484508e255277a6ec82064f43eb425b21ddbd88001c606727b0ad56b54110218993272b8e00e3073f9d44d6aeb1090e3616dbf78673f4eb4ae558ce8ece4763e570402739c7419eb50f92cbd09ad4f2db19c53e20f6f32b000488723201c1fa5170b190cd306c8fd2a65bb75200dd8c739f5abeb12ee1bf2573ce3ae29924085db6290b93b41e4e3b5170b0c4b84700b6327d3a8ab003c9182a4bc69f5c2e7fc71fa5579ecbcb959372b32f7460c3f314b099901449085246467838f5a56193165f2f694f9f39dd93d3d3151ba663ce4104e319e6ad90a227f31332638e71839ff000aa6a6363c3ed3e86843b18579188a691573b3394cfa52d9ca12e55d4700f009e715af79a79b98430f948380d8e0fb560856490ae3953c8fa56b0767739ea46e9a675b6d145776e1263888c8a54238de3e56ce33ec00fc2b18dbcab70212b8918800123bf4e7a77a96c2e0320207cebd07a8f4cd1a8033cde6c40b2f960b607036800ff4fceba2b454a3cc8e2c24a50a9ecdec42a78c8a977b391bdd890001939c01c0155e194c722bae37290c3233c83522bee7cb03827271c5721eaa6597915d6301150aaed257f88e49c9f7e71f853a4f2fc98ca39321cef52b8039e307bf1559ca9918c790993b771c9033c669f3288a59103a481188de87e56c77148094c4e20598edf2d98a0e79c8009e3f115093cd12078dca48a518755230453d3718f6127664b05f73c7f4140ee2db3bc32ac9191b97382541ed8e86a5b658d278cce8ed0e7e65438247b1a5468c42c9b3f785810f9e8307231f88e7da8ca885df7a02aca369ea739e47d303f3148a1d6b0bcd347126ddee42e5982804f1c93d05412b8538ef9c7155e5bd44079e6a939967c370a8c32307b6714244f3162e2f6470b133b95424aa678527ae3d3a0a87123c5f3f08a72481cf38ebf9500c71c4ab12b19b2771ce4638c71ebd7f4a9edad99ce6463eb4f62752e699a779d6b25d480c7691b05242e5989cfe5d3ad75906951a32dfe8cd0acf1c7feadba483d473d7dba7f5c6d2755b9d295a3b561b18e4ab0c8cfad2da6a52dbb3e061492ca1463693dbe95df42ad18c527b9e16370d8dab2935b2d97469f468ab24460668dd0ac8870548c106a03cf27bd5c9efae25bafb4c921f3c1521c70411d31f95674d3f27b93eb5c12b733e5d8f76973722e7d1f5099f8e58b1031cf602a94f2bb46232e7cb0c582e78c9e09fd052dd5d34ae1a420b05083000e00c0e9ec055496492450879009238f5ff00f55086d914adc103383d6ac5a5c83118e591b81800a82b8fe755b63edc0c904f3e99a996ca41c32956fe9570972b30a94f9d58b662592d9a52e085e073920ff8576df09ec417bdbf6556c01046cc33b49e491ef8c7e75c1cb02471aed76391960c31839edcf3dabd2fe143a0d35802389893f5c0ff00eb57550929d447859da9d1c14ecf73d3e49a38edd5003b57a923fcf158771348434b920372067b76156350b81b3ca0465ba9f6acd621c85dc7ae6bd09be87e7f429597331924f82164270466b4f4d653186d8449cfcdf5e9fcbf5ac99555df3b491bbd71c5745671aac0a618cb315e577720fd3a9a88ee6d5eca165d49ae2562ea18920e02b8ee3dbd696d61f98fcea07b83fe1505a3b97dbd403c861919f5fad5fbabc86ceca591a3455442ecc371381ce064d6cbbb381ab3508eece07e22eaaf26b496f03b2a266571fed31e33f41fccd614093473d95c4c0c692826273c02725411ff000200557bcd41b54bdfb436c125c48ef2315055300138ef85538fc3bd472de2b4ed090c96c1cbc047de8c71c1f5e83f119f5cf8f565cf3723f55cb70df56c3428f54b5f5ea5fb14371656cbbf06367b6dc7a157198d4ffc0b7fe7ed4dd2a4681f4bb904a2c778543138213284fe03737fdf46ac42219a478ad65064b8cb3aaa1540eb928541c1cf518c606e38e38a6eba668ed9156d3c9b66677498ab65839058649c70401c566cee5bd8c8696393cb9248c452646e788707a0c95e9efc62b66dd6d9af6e8c9700c662c968b18772143678fbbb9893dc806b3ada08e4b779194bc68002bc8dc4e70323e84fd14d496934a80abdc3c48e0aec4271b4f18c03d393c5497e8738d17972c90b70c8c50e7b107159d3c3e53ee424007fef93fe15b9acc4c9a84b91f3361f81c1fa7eb54ae149507a7ad05059c81e321beef435992426ceef2c4346877c61b90c4f6c7f3fa7bd5cb70c8e0c4783c019e2acea96eb2db931364a8dcbc609f6a004d2666df19695d58303bc72c39ebf5fc6ba09e38adaff0075acad2dbc849590ae371cf381cfb71d466b95b16f957e6e400720e4576a524b8d2c14d33ecf1840de62a4bb5f68ff005809246700e7db26b2a90e78b46b46a7b395cded1e52d1823ad7436720ce3e95c76813121437d0d75969d46d3fad7855236763dd83ba3a1b59720679ad184a91c30c1ebcd6359647deec7f2ad581b8eb9f4159a2da3411b8e49ce3f3ab2adf2827fc6a945d319e3d2a78cfa1e2a8cd92baab02101c7bd543163a1c7b55b41c1c363d454121e791c51712294e46d6522bcdfe265bb0b5b7b9880c063131c0270791f4e47eb5e9538c9c8cd72fe30b1fb5e89791a0cb6c2eb8f55e47f2ae8c2d4f675548cb114f9e9b89e3b131031b79fd6ade9ee4c8368dd82320f22ab47ce3fbdcf3e95245308d846781d0e79afab4ee7cb4958f62f07edfecf518503daba48c0c90b5e7be08d4d550c3238ce7b9e95e8116d652549ac651b3296a897b834c18248614a4e06053306a4657bdb382ea068ae6249626ea8ea181ae42f3c1f25b5c8bbf0edd359dca0f954b123f06ea3e8722bb6624d3495039a994149599719ca2f4394d26e6e355d512cfc511c897830b6f1300b0c87bb023827dabd5ac2dad34c8406986e7c649fe42b8db9892e21649115d0f62335aba66a02dd556ea3f311400acbd401ea0f5ae3a9866b589d11ac9ee74f34cbcb47ce38ace9f05bf7b821b2083dc53d6fa0b88736ceaecdcedc720fa11d69235e3749f31c72076ae751e52dcae7cb9e34d25b46f10ded8e3f771484c7ee87953f962b9b71c9e2bdb3e3b6941d2c75644008cdb4854751c9527ff001e1f9578acaa41afb1c255f6d4633ea78d523c951c488d3a36dad519eb4a2b7d856d0ecbc2f798655cf35da0f9d3807079c9af2ed1ae3cb9d4e71cd7a469b309add48c703d2b5dd1e6d58f2c8982e32718ce3ad2608e3152b0c8e4d35870411f954589bd8f5592ee49fe695cb11ebdaa359148e0f02b31ee4ae40fa546b71d46eeb5f9ea91f6b63619f2383f8d56c9049c669a4e21df23aaafa93518bb4d842005483b5cf00ff5a1d815cad79a85b5b92277c4bd428e4d73717f6a6a1a848ea63b5b766003364904678f6ff3f86e3db411933dc059a43805b048ebd147e43dea95d6a85d7ca8080146140f940fc3a54d9c8ae54b5631746d31cab5ecb71a8dcc830ef2a00a39c1c67a7518e95a905958ca883cb8d02a808bd7e5ff0038ac2b692532ac8ec48c8232f8cf35a96d6935c3021c88d7ab16ce7e947b34b70523a3b236d689b2de352e07000000a5965de374b95e38159e6586cd06c9374c78cf06a94f7b2bc809def9e0f34580b97126e3f3300739e9d3a522dc2c409072e7a9273cd67f984b6e2c739e3269a64c0cedc01820819aa42341a7738cb1208a456f90070703bf5aa8b229e49cb138e94f370a33e9e8280b133cdf29dad8feb50cb36e1c1e460702a1694b9e3a546e53761c6581e38a03525e32486cf1c549080abf32fca7be0f351aa8c9218601e29be744a46d05b07259a9016565039c00bd02e28372769008c75e7ad54df921890d9ed510762e7cb5c2b7f174ef4583987cae7765b01b39e6999c924904fe543025b71e557a93de9378099c609fc6a91222ee049e003ed8a936ed407af39ebcd42c7919663dba726940655c8240f6ef4ee04b9c7dd2581c6727a52066e8cc33d8761f4a6160781f88a693807e5cfb13d2802c2b9f50c7daa50eca368c123a77fcaa92b70c73c9ab56fd4e5b8fd6902346d42b152fb98f1c0cd6829c0000c91d80aceb62181da7b55c5902275c0c73ff00d6a4d8d22dae0264a839eded513c8a370665c8ec4f5aa6f7123f09c293824718a4089bbab3303d48a5b0c93f79295f2c055cf7a73304273b9c8e38ed51c99c00cd907a81d0553966f2c003207a53422e4b3a8e15db83c63201ef4c9667da1d4f19c722a08639ae70707fde7e83f0ad182ca289c193f7bc743fd0517b011d946d29dc8bb88e32dcafe557d2d52056925f9d8919e2a39b5086d54f961723f8471cd64b5cdeea93186ca277f5d87007d4f40292770b1ab77ab4708da992c3b0c62a0b08eef5598fd9e12c0724f403ea4f4ab9a4f86a1806fbf9bcf90904c319f907d5ba9fc2ba5f382c42285521897858d0600fc0552b12efd0ada7e8704041b9613381c85c8407f99ad90c1542a00aa3a00300566f9f8eff008d2adc973b579355cdd89b772f82a5f24e7d2be71f8b5a51d2fc51a8055c43718b843db0c4e7f5cd7d066411a92587be2bcd3e36e9ff006cf0f5bea51a0dd049e5927a946ffeb8fd6b6a2ed2d44781c7681e47d996c02471dba9a9a2b529c8c0a450db46dceea96369595a3dbce739ef5ddca6628b5788fde0c1802003bb3919edf5a73c0cccc181dd9e73d734be61b648dbce0664f986d3cae0f1fe34d875101f7cc37e4e483dfeb53ca6898d6497c9f2573e5eede17b6718cd43e46d8983463792086c9e073918fcbf2ad94ba8eea47916354dc49daab8033d80a75d2c26573023ac59f943904e3dc802a4ab1842206376670acb8da9b49ddf8f6a7476eee1d9518aa0dcc40fba338e7f13576f961b6387923fba189560c3919eddeb2259e59b0b002a87bfad31093bc509f9dc67d075355e5bf95c8f2e22400141c761d2adc16a2356258ef6186e7a8ff2054f088e36cb461d7046d2481d38e9f9d1b0ac623ddca8412a41ef93c54cdb2f63883cbe51c617278033fe24d692dac733aa3ec40c40dcfc01ee715467d3d7ef408334d30b32b9b4b989098e62475c0acdba432bb38561267e6ef9ff00ebd6ec735d471470ba208909206d0339eb93d4f41d68bc8a19e25fb3bfef48cb21e32d93d3f0c7eb549d8971b987a602cee37aa8552e777b5695bb402da6db1acd26f55c96f94727e63edce3b76acabf84da5cba0c820f52a54fe47a52413b236fc839241079cfae7eb5d309ab599c35a8b727245ebb096b77711285907dd1bb9db9e7f31d2a18b61dde6315f9495c0ce4f61492ba02cb1e19490c18fdec63a7ebfa522e366eddf3671b7dbd6b096eceba57e45726851a4dfb3042a973c81c0a17ae319a8f6398cc983e5860a5bb679207e869f04cd0b97462af82b91e84107f426a0d0b71079a5c7cf24ac7a004926a49ee5647de446a76a8c20c0e001fd33f5aaba7ddf917d0cbbca156c86dbbbf4cd6c7f64417b3858678ed942bb966dcc187f0803b1cf1ce2b68d1738732dce4a98b54aaf24d68fa9917570aa7113971b412718c1c723f039159f71724e023673d7dab69f490f63298c3c9382381d8632781df8f7aa17c96a6d2da6882239caba03cf18c7f5a2541c15e410c6c6a4b96067a217f9a4c051dfd6a65dd20d918dabfcea2126f6c01c55f332862c15533fc2a381f4ac4ea487c31ac6abb882546071d3927fa9ab426668963f9762b161c0ce4e01e7af6154de6126dc22a951838cf3d7939effe14f57fdd8054020939e72738e3f4fd691a22e472158e450148700124648c1cf1e94b0c9e533332a302acbf372064119fa8ce47bd5713a24526465b8c1ce31cfa77aa86e83390c0b2e08c671ce0e0fe7834ac172dfdb0c732baed6d8c1b0c320e0e70477159f24858f07afa5496f1b9757281829c90dd0e3d6a58a11caa7271d4d3d82f72b488f2b9924c0ce3a003f414f58a49822b16daa36a83d8649c7e64d692b4493c93ddc51b6f56f917e40a48201007a1c1c7b55437d2248af648db95b2af8e84734136ee38dbc70a9dc5547b73504f7247c900078ce41068fb25c5c9335c3a92cc72030ce7ae71e9cd76de1cd3adeeb44115c430b889cb280d8620e41247e5df3c035b50a3eda5ca99c58ec62c1d3551ababd8f3e58269d8ef75418272c4e3a575df0c26687529ed8b7de50c3f3c1fe62a0d43419a295961daff003b00bc0c01d3927924554f0c5c7d975eb627237379671efd3f5c554632a335cc8e4c64e9e3709354ddf4b9ea97323170c73fddebe948084dec339e952c4a2e224f5cf3fd7f98a475c05fa9635e81f029a5a12d97cedc8e17bd7456abf716de40ac540690e46dcfa9c7039edf8d65e990aac009fe239ad10536aa221c81b8e5b8c8efd2b48ab1c55a69c9a43ac93f78fcfde3c135ce7c4abcfb3e8020dc55aee5588e0e0edea7f901f8d74d08290838c7191cd79f78fb56075fb786485268ade1f302b641121248607db6af1df907d956972d3674e4b86789c747b475fbbfe0d8e52157b307ca646b49810b2b47923ae42fbf507b608271c5593125dec29365d48555f2c2649fc71ebd6a2b4842346db77b2aac8b19e5141e7e6cfa8e71db23bf15a461805b48aaf016f330a91a1195209392401c1000efc9af24fd3e2476eef6f6e254709233f9619721d78e79f420e3f03ea692666504c2c5371c9dbc0ff39abf776cf2cd2dac480bc889315c722558cb37f3917eb8a758e9b35d8b2471e5adcc823473d393b727be33fa54b344d11c2a25135b44a774cf1cc8887afca72a0773f3fe869b7b764dc24be4c6c59554f988186140c60f6c819cf079eb4fbc8238ade02f3afdaa376460ae1f2a3055811d39278ce7815279d35d840638e5900c8caa93d4f5f5e73d693408a5aad9fda02ba808ca80a839ced61b801ebc1ff3d2b0fc821886000cf7fe55d6d8b30797cf560e13782f9c839041fcff009d2df410de5adc2450595b6c75915b9ddb3046dcf53d57f2ec290ce0a55313e5791d78ad0b7532c65159148e4647e7fe7ffaf56b55b28a14864866333480b3c7e5153191c7d09e3b76aaf6ca0f2814a9c6303057dc6298ce75d4dbea1e5648563c67d0d77f0b4463ba179a84516a489f24b0c6c86418c6c62000411d1bf03d78e4bc410ed812e954128d87047404ff00fabf3f7ad485e09ed2c648250ce50a3c6df7979e39ee7393ff00021480d5d16731cc00e87d45771a7be5473c1af3ab72d15c293cb1e7f1effaff003aeeb49977dba90460d7938da7695cf5f07539a36674d6efb0f538f5ad389f040e302b0ad2e3a039cf15a31cd835e79de6cc4f938fd6ad292a38ac68a7c9241e956e0b80c38f4cd510d1a41c007a71dea0924c67be7d2a25940eaddbbd1e67f9cd04a44721e323f2aa172320e715618bf9a087f971c8c54737cc0e0d0b719e19abc06cb55bab5036f972151feef6fd3155b6962a48ceee413f88ae8fe21da987c40240b81344ad9f71c7f202b0208d98f15f5d869f3d38cbc8f95c54392a491774b9dede60c8db79e6bd77c357fe7e9ea4b866fad78ec519df824f1dc5767e15b8963982824a1c706b6a8ae8e68bb33d2c3023348cd5515c94eb4e0f83d6b9cd89c9ce690807ad41e664f5a796e3ae2801fbb0b8c62a32dfa5358e41a6678e6802449364ab246595d7a329c11f8d5e8efd816627639fe30a0e7ea3fad6493df34a1ca8c139a99414b72949a1de24b66d6fc3fa8586f1219532a7fbae3953edc815f395c464165604303820f6afa3629dd640509561d08e08fc6b9fd73c11a46aef2cc15ed2ea4259a584f05bd4a1e0fe18aedc0d7587bc65b331af0751a92dcf06618269a0f3d2bb1f11f81756d20b388bed96c39f36dc16c0ff00697a8fd47bd72450835eaa9466b9a2ee73eda31d6edb6407a57a17862eb7c3b4f2315e788a41ae9bc377262940ed5ac35d0e5c4c6eae77d8c000e0d0473dbdf34b0fce81979c8a7ed24639fc696c723d74371eef1f22ab337b7352dbc2eca1a59427ea7f2a863ff5a7e9449d1ffdd1ff00a157e728fbb7a166e6f040c8a92191d415395c927fa5539afa59650c50a818000ef4c5eb40fbc95b28a48cef716e6e27921de8e10e40050e1875fc6a2b7b545c12c5dc820f3c5595ff0057f80ffd08544dd2802c4290a61a66dde88bc002ac4d7ecdfbb8814407b1ff0038aceed5243d3f1a56044ca3a92793f8d06464ced18ed934c5fbe7eb4927fac93e9fe148072b86fbe4f07d296491b71524a8ed9ee2a21feb23fa8a493fd6c940128941e37738c703069e24404ab63279627bd107dc4fc7fa531bfe3e8fd696e55892e5d5231b800846e3b4f6aade76c01b69e7a714927fc7c3ff009ee69a9d4fd6a9225b2645f3d373e02e72734d2cc06d5e17d4f7a68e8df4feb4f4ff0057ff00021fd6810f6236641cfa6693cd2a850fcc339dddf151765fa1a4fe134580707de00624023273d6909c28da0609a60fbcff0051fd69cffc5f5a005cb74e492720eea01dc016ceef4cd3dbef9faff5a61fbdf850200fb5892a4e4f14d25ba33633d00a7afdd1f434dec3e94d6a0395c796031248e326acc598dceeea7f1c5558eb22fbfd79aecc360d57766ec72d7c4fb25b5ceb92e13cb6dcca003c027b7f8d28bd81157cc9816ebc9271f5ae774bff00522ad8fbe6bd3864d4fac99e74b369f48a3506a36800df719f50118ff4a736b168a02c66461ebb08aa7175ab12ff00aa6a6f29a0bab0599557d10a97f03f4129fa8a916e6dc12fb5c91d318ac693afe15227dda8fecda1e65fd7aaf91b3fda6ab9c2b7d38ff1a8ee35566c84460b81e9d7f3ac87ea69074349e5747cc6b30abe46ed947a7c8fe6ea1741c9e918ca8fc4ff0087e75d0d9ddda2c422b496058c7f0a30ae0476a67f0c9f87f2aca596412f7646b0c7ca5ba3d2d66edbaa37bb4495903658283b4727bd731e16fb92568597fab93fdeaf22ac3d9cdc4f462f995cd61365ff0078dc63eea9fe66927d41215d8303bed5ea7f0aa29d4d6743ff001f571fefd0846d2dd4b370cfe547ec72d4ed56d63d5f45bcb09a5dc2788a2f4003763f9e2b28fdc355e7fba7e94d3b3b899e24d60c92989d4ab2b153c7423b53afa21a7d936e03cd93a64720574979ff001f2fff005d0ff3ae6fc5bff1f2bf4af561aa466d58c4b4044a92a93bc3670ca08f6ebd7bd6a5b69c8658da48f7230ced076fafe99c1aa56fd16ba5ff0096d6bff5c53ff4014e43895d34e482191de6442aa0aa9072dce3031f9f359d2b4d26f5b789e4daa59b6827681d49f415aba87fa893eb54ec7fd55cff00d733fcc566cd518ff626918bcc4b37a54f25bcccaa642405508b939c01d00f6aeabc33ff0021db2ffaea2b22e7a9fad02b19336cf2e3560094cfdd1cb67d7f2a150342708eb2161b4f1b71ce7df3d2a63feb6a73fea13ea7fa5032a4766ed14927056300b12c07538e0753f853925f25d1e30a5d48232a187e20f152bf435049ff001e571ff5c9bf95202a3bda99d52e5cedc80db06f603bf03bfe349140d39916c2d597602c5e5213e51df1cfe54cd3ff00e3c57fcf7abd674c56332ff4e927888b9903301c305e95cb4f1496f2149010c3d6bd027ff527e9fd2b96d73fe3d21ff7dbfa554599c9753203b6d5046001c1c633fe352165daa431271c823a541d8538743546699632428638c1e9cd383b889b1908d804e3838e71502f4ab43fe3cbfeda0ffd04d234238ddbe6d80648c7233f88a912e261b821f988c6ef4f5a58ff00d5b530ff00aa14e326b62254e32dd1ad2ea2d069f6cd0ba35cc84e40e581ce02803f9f5ac3b8967bb937dcc8cd8e9939c5470ffc7d2ffbe3f9d483fad6952aca5a339f0f86853d56e2f009c75fa54a40662db428f404ff005a857ef1fa9a997a7e3581d8894b290a1540da3048cfcdc9393f9e3f0a37663dab19df9ceecf6f4c5362ebf8d5cb7e948a2aa5b9607ccebd8e7a559b68e18cb83199095214838c1ec7ff00ad48dd6ac43fea13fde7fe4b48111b29019a43f281938ec2a9c97c01db6cb93ebd69fa8ffa99ff00dc1ffa10a8ec7eefe03f953b69714a5695878b498c8df6adc1c1c143c60fbd5ffb3889b67c9d01f95830e403dbeb4a9fc5fe7b9a961a4d95626fb2b4223259183a86c236719ec7d0f1d2b73c336f22cde7ad9f9c1f722b2cde59057693dc67ef2ff9cd638ead51affc7c27fbdfe35ae1a6e355338f31a2aae1a70f2febb1d16a72ac7226f4750586d2c3054f4c1f6e48cf4ae5b5ff00dc25bcd6e023c32920a8e993915d46b1ff001ecbf4ff000ae7fc45ff001e6df5af52babc59f2f97bb4a27a0683769716f04c0e1658c38f62455abd7e032f5c76ac1f097fc8bf67fee1ff00d08d6bbfdda88bf74f06bd250af24ba368d2b7b9508149c702adc777b432ab61986d38ee339ac35fbffe7d2a51f78568a4ce49515b9d04f7d0d969f717333a811c7e6121ba003f99c578e4b34d777d34d76c1e4666ce5890bf31381cf4e4d761e28ff917eeff00e03ffa1ad70f1ffc7b7e3fd4d736266dd91f51c35858c14eaf56ec6f3dd47f68fb447965990a4aae3f8987cc38e9ce5863b63d081341a8c36e55e0830d8dbf3b97f9b82081c639158f6bff0020cbdff757f9d6af873fe3e66ff71ff9ad71dcfade54896db5178e50d0a792e5b2085c9273efd7a1ad16bd7fb7473cd731977d9b1276f97e501431230107a76f5c0eaaff00f20b1ff5f517fe87583a87dfb6ff00ae117fe822842dcd3d42ced96f1ed95a6f393f76cecc31e60e0f18e99c8ebefed5484f341690ed6daacecaeb8e770e4127bf0d8fc0d374bff511fd29350ff5727fd77ffe2a95ca6ac5fb3909b60f202634700fd1830651f5dbf8114eba89e2209c1238cf4cd49ff302b2ff00ae8ffcaac6a3f75bfe05ff00a13520b94757b68ee226ba862168022911bca1b78e8368ebd87af7e7b561b5ab295961015ba8f4ebd0fa5741abff00ad6fc3f90acb7ff5127d1bff004114fa022b5dc1f698658990a6f1b4ab7519edf876ae7b44631c92dbcf1a9707904e0ab03ebf9576577ff2116faa7f25ae26dffe4353ff00d756fe745811d708566b759e3e3182ca7afa1ae87c3937ee1e36fbca7b560e9bff001e4bf43fcc56f695feb0ff00d734ff00d04571e2e29d3676e0e4d4cde8a51dd87d2ac2dd00bf7803ea6b23d6953a1af0d9ec9d05bcdf2f5e9d2aec72f00839efcd61dafddfc7fc6b420ff5c3fdda16c234bcf6c677118a72cdd06463daaa8ef483ad30b174c807707f1a4675233557b1a6bfdda096727f126dbcd8ac6e230095668ce3dc023ff4135c9da5bc8a3843edc66bbcd5fee0ff007ffa1acf8bee9afa6cb5de823e773156ac625bd9396036f079240e6bb4f0fd8ac281b0319aca6fbd5d0587fc7b8fa0aec9b3cf8ab9aa1940e08a8778a8693bd645a25dff0037dea5f38e3ad4228ec698c9fce38231da85901e7766a0ed494876276707f2a88b360e4d30529a0092293939ce454e93803155474a43d7f1a0468c7718e871595adf85b45d79da4bd8563b8618f3e0c23e7d4f186fc41a9453877aa8c9c5dd31b57d19e5de23f87ba9e97ba5b1ff008985a8e77423f78bf54ebf967f0ae7f4e491251b54f07d3bd7b98e86b93f117fc857fed9ff00eccd5ea60b132a92e491c588a518c6e88f47909b71b81e07e55758819e95422ff563e94a6bbe5a1e5257d0ffd9, 'uploadImage/admin2017_10_20_05_58_13.jpg', '', '2017-10-20 04:58:13', NULL, 'Active', 0, 0);
INSERT INTO `user_master` (`id`, `user_id`, `f_name`, `m_name`, `l_name`, `email_1`, `email_2`, `telephone`, `mobile_num`, `screen_name`, `auth_string`, `tutor_id`, `tutor_type`, `school_id`, `image`, `imagepath`, `avatar`, `created_on`, `updated_on`, `status`, `isFirstLogin`, `isForgotPassword`) VALUES
(115, 'najnhksj', 'ssas', 'ss', 'kumar', 'nanunlucky@gmail.com', NULL, '45454578', NULL, 'najnhksj', '286518d58080fb18495aea00f10bfc9c', NULL, 'Student', 0, NULL, 'uploadImage/default.png', '', '2018-02-07 05:01:21', NULL, 'In Active', 1, 0),
(104, 'nandha', 'namdha', 'kumar', 'nallathampi', 'nandha@bmassociates.com', NULL, '1111111111', NULL, 'nandha', '1c982a0ac1d6f3ab2f8a4336ba330f8d', NULL, 'Student', 0, NULL, 'uploadImage/default.png', '', '2017-12-26 05:05:59', NULL, 'In Active', 1, 0),
(96, 'Nantha', 'Nantha', 'Nantha', 'Nantha', 'Nantha', NULL, '1111111111', NULL, 'Nantha', '71060c542f5bd109cbea8ddd6d7b3696', NULL, 'Student', 0, NULL, 'uploadImage/default.png', '', '2017-09-16 05:31:57', NULL, 'In Active', 1, 0),
(86, 'nanthaarapps', 'Nnnn', 'Aaaa', 'Kkkk', 'nanthakumar.arapps@gmail.com', NULL, '9944568708', NULL, 'nanthaarapps', '1c982a0ac1d6f3ab2f8a4336ba330f8d', NULL, 'Student', 0, NULL, 'uploadImage/default.png', '', '2017-09-08 04:55:33', NULL, 'In Active', 0, 0),
(101, 'nanthanantha', 'Nantha', 'Kamar', 'Nallathampi', 'nanda@bmassociates.com', NULL, '787845', NULL, 'nanthanantha', 'ee2582d92c92e5d09d5ecf969f1f6f2b', NULL, 'Student', 0, NULL, 'uploadImage/nanthanantha2017_10_20_08_33_37.jpg', '', '2018-02-14 12:00:46', NULL, 'Active', 0, 0),
(85, 'nanthu1095', 'Nantha', NULL, 'Kumar', 'nantha1095@gmail.com', NULL, '9944568707', NULL, 'nanthu1095', '1c982a0ac1d6f3ab2f8a4336ba330f8d', NULL, 'Student', 0, NULL, 'uploadImage/default.png', '', '2017-09-08 04:32:56', NULL, 'In Active', 0, 0),
(100, 'nanthubma', 'Nantha', '', 'kumar', 'nanthu1095@gmail.com', NULL, '1111111111', NULL, 'nanthubma', '1c982a0ac1d6f3ab2f8a4336ba330f8d', NULL, 'Student', 0, NULL, 'uploadImage/default.png', '', '2017-10-06 10:28:42', NULL, 'Active', 0, 0),
(102, 'Nanthunanthu', 'nantha', 'nanthu', 'kumar', 'nanthu1095.testing@gmail.com', NULL, '1111111111', NULL, 'Nanthunanthu', '1c982a0ac1d6f3ab2f8a4336ba330f8d', NULL, 'Student', 0, NULL, 'uploadImage/default.png', '', '2017-11-18 05:45:42', NULL, 'In Active', 0, 0),
(88, 'nnnnn', 'nn', 'nn', 'nn', 'nnnnn@gmail.com', NULL, NULL, NULL, 'nnnnn', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'student', 0, NULL, 'uploadImage/default.png', '', '2017-09-15 11:23:45', NULL, 'In Active', 1, 0),
(112, 'rammano', 'ramm', 'kumar', 'mano', 'ram@gmail.com', NULL, '', NULL, 'rammano', '1c982a0ac1d6f3ab2f8a4336ba330f8d', NULL, 'Student', 0, NULL, 'uploadImage/default.png', '', '2018-01-31 11:09:35', NULL, 'In Active', 1, 0),
(97, 'SacredSource', 'Hieu', 'Cat-Thanh', 'Nguyen', 'hieu.cth.nguyen@gmail.com', NULL, '408-515-8639', NULL, 'SacredSource', '8061cf7e9dccee4917d30d4a9702161f', 3, 'Volunteer', 5, NULL, 'uploadImage/default.png', '', '2017-09-16 06:09:57', NULL, 'In Active', 0, 0),
(18, 'sangeetha', 'Sangeetha', '', 'Mohan', 'sangeetha@gmail.com', '', '222-222-2222', '(+22) 222 222 2222', 'Sangeetha Mohan', 'e10adc3949ba59abbe56e057f20f883e', 1, 'Not interested', 4, 0x89504e470d0a1a0a0000000d49484452000000d7000000d70803000000bea3348700000300504c5445ffe3dace74721b75bbf6cdc5f8d3caac593c723d2dffffffc06342c7eef9bae5f16ca9ba14639cfb9d92bb60400c4a6d804430fedfd7fcdcd38f4b34995037ecb6b0b15b3daf5a3cf3c7c0854632c1e9f5f1c3bba8573b7b412ffcded5b35c3db0dce9fcbfb8b5e1edbe6141bde6f2b65e3ffad8cfd88a86e7aba6a3543afee2d99d5238a5d5e23d281cf9d5cd71adbdda8f8c8ec2d1de97937a473882bac999cbd9763f2edf9e9a94c6d5b85f3ffbd9d1f9d6cdb89e96f7d0c8f5cdc4753e2d936254dbcecad6ada29ecfddd58582964e36d07977934c358b4833dcb9aeeebcb5176ba97db5c5f4dedac3ebf6e4a49fabd8e576b1c188bece186fb1f1c1b9874732fdf7f77e6443d17d797fb7c7d17a78d37f7db95f40a1533979402ee2a09b15649d0c4e74e0a8a61a72b7f6f3f2ecb9b3d5827ed78885844f40da9695bfe8f31567a3125e93105989c6edf8ee948a75acbce5a9a3795f3ffba59bb5887be8afa9de877f956658956d61a6867be9b2ace9c2c1835547dce9edf6e5e4f8edec844531fba196fcb8af0e537eefc0b9e6c2b76c5439a3bdc6725a3ca1776be6b9b8db918deccbcaaf9289cab6b0f6d8cfa0584f70acbd85bac9c1aaa397b4c1cca499cd7b75efd5d1c3998ed88e8bfff2edffe8e1fecfc67ab4c460a0b8b890834690b9eff4f6b0847ce3d8d4654d33fdc0b6e4dad77eb1c02c80bafdc7be8c5a4ba16f63efc9c05d402f8c6154bac8cbfbaaa02a607e856a479c6a5db76a63ac625bffede74288acfcaea587b3c0fed5ccfcb3a9d2c2bd5596af3d6e8aa2876bd8d3d1eed0c5c7dee5568198a67b6d9d92912e78a5eddbd6579cbac4d0d5ede6e3e7c9b997cad8dfb1a0b1c9d4be9185d1e0e53988ba678da366a4b8ac7e71e4eef2e3b0afbe7b79e88e85afc1c6136298f5f9fa1b5677c57052789aac2e6c8ad2c8c5c5bcb74a3425a7a7ae5139278a9ba7855b47a3c9d3d39684796551f4cac285a4b68e4e42bbb3af875147c5716d92867e8e7c6eb5d4dccba1a490b7c2c68584c68981aa9d9da95f46bed9e02376b1f2f1f0be888b244f6d54596ec3c3c4bb344ae600001f3f4944415478dac59d77601347f6c7b558fbb0bd41966d61cb582eb191b12c9f7b019b98802b18e3128aa9a1773820217442e884164a2e90500221218124a45d2efd5248bd5c7abd5cdaa55cafbf2bbffefbbd99d9d5acb492adb22b7fff485c54f6b3efcd77debc191953ff70b50eaa9cb13eb2882d608b0d4f1667aefc952b0da07cf8dcfe91286caefd509512eba35cd1055596d8c82512b267fa82eb00c7e24a119369b874227bf09ea873bd510ecd9a6b19263a4660b87492c30a7024da5c0f0288da2c149b2139563fd948c8a2ca351c00349791258a33c019aba352ac507e208a5c6f20569a9f704d8796a09c8f2bb7f7901d891ed75a4846026db82680a337a6dc695922516a96735a3043d15505ebe64689eb00a4d9c0a60d9738a32ab6670d93a15c8d2ed112642e66c09eb9d1e12a0734089bc60c4577cfae91cba01c8d5bac8e50e66b2bac9d1b0daee19883da792a55c45ac3151b5072fe356e816432f18506b6270a5c73cbc149b8b4699801968054a98c6a062493f92164b075c6730dc76cb368b89c986060ed99ca6d052ba10a076cb8815c3c5c9646b069dc90fd4c2b4b0a1b571320ec222ba50a9e31980bc38597ea86664d1a4e0031b05b88b611604d0950c8673172a694942ced0ce0808d738de2e2e18ab5b87ce6650b7179f0978222530b06cbe2877a981a494d97352cd77b825e672817868b624095eff0e2a8da60b932a0cae1275259a256a91830a773986f2d9201238de4da082934edace0f4195e38556b0b7c196b06cf418d9ba842843481172eb0d140ae037250f85cc5672fcdf052a2e1c880344ba050ca551512f5a21638621cd78320322e9b776d218a18418bff0b9f8e58da60a9a0542349e4f2057542f95ca3b8ee810c65650c193eb60119de58a90a161aa14563fd3cfba6c903d49d9696015eaa4a4b569791c930dc28ae75e0527c620b3834b611002bd912380587919b644bb3025386d52390656d7658948019c385265f655102d408c95e23c90d36eff98cc9815881a9b2726353dc344a23ac136ceee9a2971caec6e6b42ac6e6a4013b600cd7117e8de4829d6adb6806977fcbb006b68b694e9b95302192972d7a79bcc5d14c1e94e62293b3315c68f2fcc2b144e4d1e176a8c1b2049ab052c56402b5a551f523a75f5b64414d7366c03d4670dda3baf74e75ef69986287fc7ba6095e58c3bc262c1a2a6ba3434d9adb63afa32a03d619c1b50edc6a079c008df237c4dd46c034fe3b59366c090798864900463473283ee0020a830fe5467095ab6728e28023c469b9328703ace2340b29615352549e21fa3377872d790b52b15069c8024fd096168003fa731d8016df364d8b28ca1c6ed8227acb6d65369d964c5c818d434b8abb1199a801bac4004a094c960c6bf5e7da030edf4a173ccedc0c13dcfc4aa737b690a459b3a61cfca8fcf2e9519721431b2e5e8104e07202ccd59b6b2e54f9ae4c92c12a63ccf073f5a70f9a4ca61da38f5d54d12d5c73f6f46813eae005186113038bd6565a59e119bdb90ef84cb064a0709c35a74f9f3ecb01d69c1d6dea59072f0264343a7a20f3df27ddaf37174f436e8213e4285c1e650a5dc7ca01d192dd2a365b32973bd5e26fb5f2a0ce5c3c0d39970bca0f9ac2d7c16317a0278d6899a60103d099eb1968d170b5c06953647ae1569abc7cf85d3c7d6c34d5ad17d7209966a99a062375e5e2a53ce7c2f909c3659c460368d6d9cd70445fae8de0645528f78d64b86c32966b86d5b737e782fdba72bd212f1b9dd32d9e5a7706bc6028d70eb08acd232043f4328eb53a72f1258ad3e5566adb465863325630837611bc46006cd4918bd7bc4ed1d3092887d1467381dc7a4c561ba2ae5c1b4194cb8c19224b43375c3019ac72f0b48a2ddc10efd1930b40299f2658d90a790bdc6a34d71a70296d55ab3334a33785d48842e1b072937474c14293f15c6e65ddcd8e8bb026878e5c233db3722aeeb63ae9aaf298e15c67c1c657de32980d86ebc875c4338d6461c0ac0ed1414a28a3751a92c9022f9583e9cd351c5cbc516bc5b553327c60325ca36082e864ed1e06a63bd73abea2a7d99e31027e663cd70b604de53d84099061d19b6b2de7caa260b027c964bc00b278db8776b774e67a90b76ca6b105e5a8c42870adf16e4a5ad1bd44d8af231780778b7a06ec3045416761bababb810b08371688ba73f1662e405134b84679f71e725d50e58675ba7289ea6eee74b8501b0dae83ac1ce06a842a18ae2b57b33a11dd707592291abae0bb099a013a7355a9375d71f68a0ed7adbebb4ca2ae5c6f807a119422b6c0f589a6e8246295a6c1a123d748c0a9d8c2b9acdce60dd645df238d2e7db9d254db5da9cce6a39488693e89a83397a50a5214dfc0a2d76c38115f5b1aca15eb00abe2f33678b4c814b58059bdb81c7a73c5b6c8de944ad65eb5d1e24a5a484636970d9ed1992b2b837aa285ec4dde1f3daed1e5b439cab946eacc95eb1a41c052c446d8638e1e97f96ac09597715c9880d3b1ee7492a277b4392f5a5c99c8a56e2136ebcfe514116c0229a2cce6a46871252297bb19c1789f4d6fae5c918265c0e8687361ea438ac2d55f5f2e5416058347cd51e74230ab215cc066640a767ff4b9f8e17cd0978ba581931eac31479f0b9561d57fdf01b9dc6c4eee3b2ed70827e55aab2b979cde96bee3129ba7ebbeff3517009cf23e11f4111782e512ae75ba71a1c0b31f9ad5775c2e275d7ee9cca57450e0ea28733dcab8a6599c788ecfa633575a861cb094a8735d0f8d88458fed5b4839af2b97d5217fe25aec03ae64c265c8f98d72884d63ad36375c4fb8f2fa8ceb1e3db9d6422caeba1cb49e3e46b86aa3cd95a5f40ffbebcc6569a4bbd719b023ca5c6f532e27e302bdb99c16b24f93e2c0e11565ae51b0c5c3e5d4f93cdb7e1073e99621760e7db962eca879f94cf3ecf61893b7e66dd7ac81cb927c7e80af902f6bbb1d95c47f855c56c6c5cb0d1df761c55891ac16305c5445cadbae9f2f6835a5a41a0993e803f28532932fa950c29e1f8334250b043faa2ef2cbe580753a73b949cd2b36636b83c9c42e7a8ad093169494e003947871e10f4be8af020bd165aefb6186c2c5a6655dcf39d8d88718e0828acbbe40e85d3c5c5cdb852034259f7199e971220b3fa6a7f3f90d275d0501e7ca178251bbbf297cde14210895e053f338179f96753c4794c63ec630017d832a31a944201a72ed7a7b0cca3e70e0c0f66b514350535503c5e457312a30f28c32f2547c8931314463ae2d69a2218b31d59ab1f09dae7059e11e9db9aad08c50c9702be3ba6a01b9a27664d28a7132d94d01c0e4dfc704d2c0328266a75c6e850ba0bfbe5c6b816d2cdbb08c22b24f159acac6c704215320b0de95df200863cce60fa051e6b240b9ce5ceb40a403cc0d1f10acba86a9f918aa48b8ae0ae6c963ca9ac6b342cac2a72f7dcf8bba693b4aae37ca06e6c5a022e13207f5ec227b59dd31d8227339608f7e5c9b67639e3f06c92c112997dd6cae0912ecaa405c35413d3d13df0c276699cb06b708a8459b75e06aeb1688c08ae9cdb8a86ad589347ee0b565436495115fe3396a0e58f879bb0413f343ae9a447cabfb0164ae64c62574b745ceb50867562cdb1602fb2cc09f40e1ca948d2fbfa461ea105f353594e5b32b330552111d40edd7969069816bea9076cf6da9c1b217550e2ec695061fe3a59461c422e6ba5110d69b509741a4014be31373e698188d6473c7000e6186591090abe0aaf525885136d05738938da1299c44cb0d6af48c2b83ed6baf17841b23e5da204c4962671cddf251005e70acc75b4b957f2dcd43e1cf3f267aecb13f3794ad27b168589919100babb005d7e68f8f19d85ea2e46f3bcfc3abcc45e6fc18996b0f24332e0056334e113644ca552d94c81f3e68217bcb9c2baf8814e6b21aaa8f7dfffdaa733fa0dab97be7b7c36737b59b6b32637ac06ac717a82b9bff8f3f7dfffdf70fa0e04f8f3ef6985c7f1c2fc1327f3d12e499516fc316ca95a29c292e11aa23e55a24e4ab8e2ae572aec4ed58add345caf10d98157fd9b97bd50f98be5db5fb8197fb4fbc792f52f5a8a2ea45fbfaffebdb9dbb1f604ffcd5aadde7feda76f371b9b0b4dbd717d59a51a32083d6f3a2f249847c6151a45c0dc845b5901e414cf57025c9d16a60a6fbd79dbbd7bdfc2bc63569f7b9978993b66fef19abe1367cd4cb0fecdc8dcfa39ab46af76fc998beb981a1cd3399a90028970d2e2b5c0d91727513aea47641f80388a4ddcbb93095e60bdd374f648ffbe3b9dd73fbff855eddb949ab1e789e0dce793d60cdfb883ef5eb07763ef2d5cb0ad7cebf30b75a44aade792699eb024ccfa2ab945b70f542b9ba23cf435c3f55e3bbdc023632c0f8f8a283a4cdd3c2dfbdfbaf3f7d8066d3a449abf0ae53bd1a3815b7ef931fb373e7f0feffc506e6a455e7be56a6cdbdb8642636cf8cc396426dfec77821085616791e2e22be214c11f6fe931a8745e6e21d8ec76f670ffc7ae7aa498fec3c77ee1c62ed545649134d01c5d297457ad5b96ff17eec7e84df90898f9b500a17b6a452a8cdff732f82a16f44ce359bbcce8212a1ec7ed6a1f770a90a893b1ebf7d22824d5a3569d2238f20d6a4bbd8b5dd7e07bb38ff608f4f549a423bc91351f8cc37e8f31ee75d1b22da92a2366fde2b942c883109c2ecc8e72f21a6a868bbd06466c6b1a59c73f9e885753fa5dabff9761432290a544bdd71fb44caf6d56f57ad9a84dafdd3b6db1fe7cfe35ca4c5416cbedc8cdd92227b8c10f9fcd586ae94443a2df6474164db29b2823fa957d49be1d7fc8c4afb31b95a33d34210e9d6c078610ac2a211b7455c1fb2a57cbb30e67ab079716506dfdb4c0faf9dcfb970af88d8fc07ab857613b5313deadef9c4f88481a3a0857385b6a512939e181e979989ec15916afefa7681f415e6475cf7a26e1604924642fb0ed2e3b0e0e90d5921c42029dd1c16568159163d709e06a3da05729704e1e6c8b9360bb4e228d96e267fc24ca4fd8d905bf4e961048cdb3c1a0759fe55c1e8f612d6dfdbacc37ab99b26627b3a2e171c6aae5042f0bbf4daf00e7d295a98416dbebd9da661b71e7d80d93411d7dbcdc4385c702c1c2e737a5d7887f4145d0d7468cf5b4fd370b61e5cb7d144b4c798c919621bf64543377ae44a0f87abc697abce4ed3f0363db826d244b49b6a47f97065867081e9e949e1db3caa9c702d3427da691a4e8c8c8b27a2dd9464aa1d8d951469038461f445e9e935617015991531dfd88129622769a80b571b9b9a6bcd00b43c0cc3e8af0a8fcbac68343b38fd76229d94dbf4e1c2b5a5405b2800345e6118bd1df3304c9be7f3970b1ec5ab10704da913d706ac11c9c968b0122eaee0fd3a1d7d23122eb462da9da72d950d7a7161af6d0172a16f787315849086bf8bc8e659cd6dc536db02ecb1e9d69faf265358a2862b31f87223ac79398fdb065d23b9e174118e751dfaf37c0a5bcfb8926147e886886e684f8cc4e6e50f738870914c5efa71612d55622a2049de08a342e742d728324562877bc0cdb6bfd62cc01a4a1f2ede0d205ccd6aaebca0c3959e1909d7fd5871cb670471f2d2936b1f999ad7800bb9de0ed5e813112b26a26afe6de5afd0c2424c433db93613a7bf00a2c50d1743357a3372d54454f55e0007e572916da289fa71a148ed0b6019e6865b8236443e77d9b147133e17a9dfa892b17f78bcbfde5c2fe07ad9e98085e343e38a41aeabb0ab16be1d7e80e35ade35c7c6a1be5c0d4235a9d19ce208ebea900c11c3456aa83bee08bfeabd00ca21a2cbba7361db977159616f488688e19ab7d76e7a3c0c2ec50de53474621fc038ae16782c144344331cd334df845c61dba1f2d9ec6438866dcc8ff4e5aa1616102e8b885bf2752118626d7a7a995016916d5c8fd38bb2a9879d287db9b0dbc6b85cb0706008952f9afc025c6e47d204b81a5258b86e35868bee58924f2196856088c8d5ee39fc555d529d14ba1d2e04d90c0f1ac0854bb022dc78a07f0febe3a00c91171b7b719913430d2ebf647be8551454b1f3ed67690f609fbe5c6d584891cfea6789cd38c04230c4a4dfa58f994f4edc856b1b3b58119501a3e80187367db926e23e363126a7381dfec0075830657a5e5d7a7593303f294cdb1845b99cb0906f38e8c6853a2ecc3f08f42f7d81b53ad425738d7daf901f866d702e175ca6e736aaf5e6c201b6fe2cd8708059e147e6d07b88dba78418b05a0f9735977ecc82a6e13ebdb9b03b2afc0632708061f55917460fb1a828c46a837339c95eca6882d5a0ffdffdde8c6056704e43ae5b56ab2a0e8394a8e21273918b1cc5e9deac27175f5bfe011c16c2a59ac18ce24a527365312ecc42ddb95037cebe88038c7035a967666394a7dafa12c55c1b5c5c34fb46a3fe3d8ee160cb155b70d53a3e8c0116def062c7e7b35cf404ac515cfbc1360dfdf063813b7d9ea1c30b55b7105c0806e506723d08629603609f303594015673e2ee279ed8cabe7e68c0435bef7b2a9456efea5ba011b932e019c3b80e4055ae68c38ce816c6073bc09eda7add00aa87ee3b71e2c4d3d7d5d49cd87ad3755b4f04ddeaddfb1858e94799d619c6b5115ce460e5016c27560735c09ebaefa6015c0cefca9a9afbf0ff373d7d5f6630c3ab4e1036821b03f6e3b946711dc06939c5051b495f7b6a2f3358d27684c248f5a8ebee3e11e0b664f234148ee3fb92cf8d1a36bed68283b8e17edac619d34b89987efc931f52cdff11d57c4af2c36efcb2fb861b6e60bffb647efb53bda4e1109cb4cac9088b6d338aabdc8ae77b67c01b749959d65b2226adc4cb2704d7110d98ffe71b060ce89e4fbebb09816e60bab2b70d583bd94c1e4e3f18709b515c0fe267db300de5658bbdd752ea6e12a1a7af64ba0e03d7fd090e2faa8758226eedd5e5cb48a3662e8043b48c362c0fc5d8d4664c4314718eded72ac435aebb52d6d3377df2c3014fd02fb7dec4b17a4ec33ab68bb7961ca0ffb9515cc3b1bd31019e91b7309b3c457d4d603f24605b15b2adf2574f0c603ad1cbb12854bb309bd539cd06728da6c7cc65bbfda8f780a13209c3430a19a39283f5d053bd4fcaf6a6ee1b1957b2186b18d76d944b598f1d1756073385d119ecba2718dad6a7716051ddb435b3f7536c750db8472e736519c73511f3700bcce55b47e383e906d43c3dc0573829d7045343ed158e7beaed694671a13e8f4d6d84917c3dd6343ea8e2b7e6bea7bdca8e27ee2354bd87abccb38edc4ffe8eef0ec3b8aa63b31c238ef0cd59f48e60db1c4f9db89be9c489601b1bed741dc9ff311023e62f3ec09af7a83885a90a5881ee0be595fc00ca1bf4388081eb946e6cdb2cc401c6bd4301abd57be1b552d5b23e42fea4c96f0ce46afb3c57740c57394983d02083d5e8835550ab94bbaa1da18de0c0e16520178259c4e923552d8f6e61aa6c1e997ab63556abcf331c211b1e9ff737900b417e6349fdf73655f7adc1e38a89ba0c2e2dd6c8720cd7e76dc67221d98e51ea94f8f063a189f5eb8b0af4185c5a2c806432b88ce4d2eac5152bfe21c895476d813e58d5048b6be3fe9f6331155daeb7a4b183e2fe4d1056ead19b2a50a2a53d611865ae17a5d241717104ac8c158a3a586119998efb96eb45122da2af11ac2e4230c462a5aef0cd877dc9c5b150dfe05607038b18eb47df49d2e14d7dc8f50ec78a97be698a0cac804e5ce3a70ac2771539a5c5d2d0cffa8aeb438ac5542aed1bdf244f6489e1cfc7ab9b84bdc277c57171832aa5c39ff50dd7872b8a114b099784f7ba4198ba9a82858955b797f8aaf09d1487ca293edc275c9f1d2ece89e3e192bec2eb2a6b62bd81a4b0c616e66003065c7859a2f72b5b7ab12fb84aa56c0f568ed429fd9f3c3c86d411b030b056d39b42b9b23103e2e23a87f601d7afa5c23855b8e28b8fb286c41061ea1802162a565db5d0c48a16e12c727520d75029ea5ce8f04339d620a90bd15ef02c72cb08586858683a98830a5761763dbe6ca17426ca5ce8195d715cf5523d8e864fcd4c6358819f174a4d882546bbb2f03efeb1d4d5c506d8a628737d76be73908a6b2cf9ae62050b18b10f0c99dd9c5710ec270d0736095395133c4505258224c5f70dd7afd10ab9e2698d982ded322b1a3315972ec12d5b92a8bb572bc1aa293095ec972ae3fa82eb43ea195c955207895e973492efc5b50b64bc240531b4c823952da75a32f3fd51aa88eb03ae17cf4bf21bf3348c1f47dca3f8c936be6b651f220843ec79bd0cada29558a4acf4748d49802f6115137dae4de7a543a552699c771a2217aa43da65caacf5900d6c40b2313dd51ee6f626f40b3b0f166a177b71c6f51f9ba2c3b5a9543a3434a7de3b0d0ba5c2f8e5f4aba1d225534192d9a3d55305348440a38c98a050e6a14a3231ac4ad5f441548a05b0c15cbf96a4aeecf8f8a1c4aeb8ba0ec52bdf8f959e3779910d1c8264d5dbb55045eb8f0b429327564548c5b00ad5093eb970e8e193d22683b9fe2675c5131d2e8e53abf8b0876bd0d8157799085911b746129529d5f362541668cf5f2020efca3a1e2baab6278bb3e354aa988cef566834d7196217846b7285f7f01acab858118e6094ac967be3ca21f29f50659a2210a832c503f3329521f8ea939d39de77ac9472bd632cd75b987ecb0997b76d744885321707a368352ab4d5650d82474d43dac77bf28f8fbee7cf573023e477ac9e72497f3392ebf5f388338e72557acf5e399c8b83112562d4b8c6c8f28ca93c84e2bab40267772f951ecaa15c15d2e1338670bd73f4bd87137e291532ae42a9234e257491f8c1711a30ce969457ab515e52a69aa9a0c07454760cae6c4c70d49b527676e78a17f5e6da74f4a504aa2fa578854b3bb8e3bcc0a4d7436d87be7adee318fc654e122c745ff4a32e69e886b689ba71bdf3fbe708d2b665335bfbdd29c531ae7a2947cba556fc58e9120942f03df9d7578c8dd762e5302efa761dc5d2d9ee451f6dd683ebe8c3046ad9cc6bfa11bd369672b11b18988bd93d561ea6a0b7576e3bca17731c0b0797cc554c3234be427a59402d9abd6162245c677effcb848459cb5afb293a45dc7d792f5c7c01fd645b4d7001431f2cee88f31fadc17823279f3c29753083fae26381aa61f686cd6172fd3e01a97ed14f25e6827eb8d08de53aca6ba9b96264502bcbb64f259e831c0b6f1662e1cbc663e1d6c91a5f3963a57f552f10988edfbc3974ae4dcf2115864acbc5a765ce8560e3e23497d6297d1a44bfedf515f8ba5a2cea847257aa1e9daa94e5f750e9ef6da679ed0a5bf5bed0b8dec11464b1e2ba17d7faa8c11aae52e9a454aae1a21e76b4ad17aabbfe4e82a5bd25f5846ab91c784cc82ea522cd2e5ef13c3ddb583685a16d0881ebccc309b3125a355cd48817732e3e2f4f26f753abfae2f3cff744f5ea2ea9b83e4e8b75383b7ef1384f3a10b7ef904af9ddda65a26245a6503d3168ae9712b6cd4998e99f6b901f2e723f7909c44506c4a78163b54b22fd03ed93ea49a4782df5262d498b5523d733ed17e563d4fefbe87bcf1d0d86ebf58459d7f45bb6d48bea9a25afb0596b1cbe47a9860be73436af6aede3c957fd9be093b8eaf6fb94789f57cf265cf5aa1aa71803266be437fffb3f0944ef9de99debe104649ab94d05d53af38a2b7ec25c70397255fa79e78e436cfc6943b6e253ed28bb8454a53971bd6b50315b1ae548a5aa37a4b7eaabef5ec2f995cc453397cc4a786e536f5cbb12661196592a2814e5628678c897ab301e8583ac0bb34aabc2cef37779876ad70aa9b31e1f1b8486b270e1cdec54b15efaea1b56dccd928b8639db121edea4e1d2860bb58d3e9e42712e6a8852a1968b1506daf995b9733137c6572f61dba70b1f1794b2b175c2f4a66a8d5efa3e2dee963226a6651a3093265c73c803975ed30fa1b89eedf470657bbf377231759cd4d6432cc6a52b2e11b2bb48fe551406172a5e4c8d1b441cb150e5255f2e9b394721e260677ae27a8e85abb5b5b5df922bd45c15f2dd0fc485cae992c6e604209388c69612a8e0b1a40e824567cd43aa5b56f11ae751813d772630d73b09097348029218b76ab8a8214a715a2e458587b4e5434e47655767674565072287a2c262492ac45a8ab9d5e10a7507ec5e2d178eb12f02737d91b08cbac515ade43f2a9d920d697900aec172c84aa5b1d91c69390d5636fec4bf96f3a94a5b3a3ffb92347431fb6671fc9bea6651e79dfd5a7fb1c427155b13125e0fc8f5cb8425e4313309d71c3597270ef1157eb9e2962f6664f59d52a527d93a86064abc413971cb072d5e1c882ba7427a6956022689cc8f034ced55ef6f9be92f13df5373694c9e460af1d4036ca667621cace122d51ceb640f9643d659e8b9fcecd237ebe335c3adb0b41423cccb656d09f6fe97b3962d256b59c5ae0e65abab90772989266081b85e925d0341bcb95ef1b8c5e24a9f1b2ff1e21b4340d03a702e5358c66104bb4e5654d667cbaaecc215c06412e39e82f5da7f922c7b57caf1bccc617532579ceae747b312def2cf75262101fd8225e01c8ac7b906291cbe930fe5e2ad9b718b11adfea427199713d2ecfaaec992accec9a51d01a9d86ae4941c8e7b79f9143fb4d2abb977af5f4bfcc23fd7d1846d2c0d51d7b0fff36999cb1f17cf3516b5c2cee2420ea65160bbaf2c7eff4ef5a24f499342cec59c43ab2509cff9e77a09975d4afeb57a735504e6a23581325678d80a0f57e4c85f6ba878ac345597f41a0b45ebcca5db6671ae71395d5e05d6299256ad3e569f90708673f94d43661caae9ab2b309754af8d00bb14b40c39809c69305f5b69943d567af695a54b11288109b978227a0d41e95ebcebbe8bdf6d648069b9de626ed8ca1cd08beb54650f5c341307fbb700c465644ce330523d509dfa3241d12c2c005b918b27a2f766e29d7855cb7ca6b0a5648069b9de4337e43638476d88526160ae9ffc048d9df46ec216a7421c8c57ab52d1aab8c6795f41fdfb33916b49e00166524fcaad4a1a32e358a2b579ada43bafb9f7943419f79823502552bdabe070a90be91c9fe9e515e45aa619605a2e9686dc2d967871c5f7c0854fbaf37ddcf20b176a10bac59d68ed5abd16d8aeba9e45ae599a01f63ae7e26948f0f9ac358773719bd7aa9859eebba7a4ced270d0e22b8ba90786c85528cdbc6269c212df01e66975fc3f433546d2bc1f38d00000000049454e44ae426082, 'uploadImage/default.png', '', '2018-01-23 07:23:59', NULL, 'In Active', 1, 0),
(52, 'Sathish', 'sathish', 'kumar', 'D', 'sathish@bmassociates.com', NULL, '978-951-9640', '9789519640', 'Sathish', '202cb962ac59075b964b07152d234b70', 2, 'Teacher', 24, NULL, 'uploadImage/Sathish2017_03_30_07_26_46.jpg', 'uploadImage/Sathish2017_03_30_07_26_46.jpg', '2017-08-17 05:53:58', NULL, 'In Active', 0, 1),
(50, 'SathishkumarD', 'sathish', 'kumar', 'D', 'sathishmcasow@gmail.com', NULL, '978-951-9640', NULL, 'SathishkumarD', 'eb0820d5af31a097009d3c210487f628', 2, 'Teacher', 0, NULL, 'uploadImage/default.png', '', '2017-08-17 05:55:35', NULL, 'In Active', 1, 1),
(74, 'sathsu', 'sathish', 'kumar', 'D', 'sathish_sow@ymail.com', NULL, '9789519640', NULL, 'sathsu', '81dc9bdb52d04dc20036dbd8313ed055', 2, 'Teacher', 0, NULL, 'uploadImage/default.png', '', '2017-09-01 06:45:14', NULL, 'Active', 0, 1),
(77, 'sd', 'Ajith', '', 'Senthil', 'ajith.senthil@gmail.com', NULL, '916-813-9966', NULL, 'sd', '3de048c7205bf4c6cf02bb99384d0188', 2, 'Teacher', 0, NULL, 'uploadImage/default.png', '', '2017-09-04 02:09:45', NULL, 'In Active', 0, 0),
(80, 'sdddsdf', 'gdgs', 'sdggsdg', 'sds', 'ezhil6@bmassociates.com', NULL, '454-364-5677', NULL, 'sdddsdf', 'fca812f055d5fdcd3a355b63ceaad991', 3, 'Volunteer', 0, NULL, 'uploadImage/default.png', '', '2017-09-05 04:45:35', NULL, 'In Active', 1, 0),
(21, 'senthil', 'Senthil', 'K', 'Muniappan', 'senthilbma@gmail.com', '', '810-423-4279', '(+01) 810 423 4279', 'Senthil', '827ccb0eea8a706c4c34a16891f84e7b', 2, 'Teacher', 5, NULL, 'uploadImage/senthil2017_09_06_11_45_56.jpg', '', '2017-09-06 18:48:24', NULL, 'Active', 0, 0),
(46, 'Senthilbma', 'Senthil', 'K', 'Muniappan', 'Senthil@bmassociates.com', NULL, '8104234279', NULL, NULL, 'cc03e747a6afbbcbf8be7668acfebee5', 3, 'Volunteer', 0, NULL, 'uploadImage/default.png', '', '2017-05-11 09:53:51', NULL, 'Active', 0, 0),
(37, 'shahul', 'Shahul', 'S', 'A', 'shahul@gmail.com', NULL, '54645656767', '4545454545', 'Shahul', '81dc9bdb52d04dc20036dbd8313ed055', 4, 'student', 0, NULL, 'uploadImage/default.png', '', '2018-01-23 07:26:06', NULL, 'In Active', 1, 0),
(39, 'shahul_2', 'Shahul_2', 'Sri', 'A', 'shahul_2@gmail.com', NULL, '546456546', '4545454545', 'Shahul', '81dc9bdb52d04dc20036dbd8313ed055', 4, 'student', 0, NULL, 'uploadImage/default.png', '', '2018-01-23 07:25:57', NULL, 'In Active', 1, 0),
(42, 'Shoba', 'Shobana', 'shri', 'Krish', 'shobanashri.santhanakrishnan@gmail.com', '', '735-828-9166', '(+91) 735 828 9166', 'shoba', '2eefce305478a6f8d3bc10ac1d4eea70', 3, 'Volunteer', 0, NULL, 'uploadImage/default.png', '', '2017-09-19 09:38:04', NULL, 'Active', 0, 1),
(99, 'shoba18', 'shobana', 's', 'e', 'shobana@bmassociates.com', NULL, '735-828-9166', NULL, 'shoba18', '67f9e4d8bf9b4fa6a7ba19cc220abf15', 2, 'Teacher', 0, NULL, 'uploadImage/shoba182017_09_19_02_42_57.jpg', '', '2017-09-19 09:51:47', NULL, 'Active', 0, 0),
(2, 'ssdfs', 'asdad', 'aa', 'ccc', 'wqe@a.com', '', '123123', '12312331313123', 'ffff', '4297f44b13955235245b2497399d7a93', 1, 'Not interested', 1, NULL, 'uploadImage/default.png', '', '2018-01-23 07:19:15', NULL, 'In Active', 1, 0),
(114, 'sssssss', 'sssss', 'ssss', 'ddddd', 'sssssss@gmail.com', NULL, '', NULL, 'sssssss', '1c982a0ac1d6f3ab2f8a4336ba330f8d', NULL, 'Teacher', 0, NULL, 'uploadImage/default.png', '', '2018-02-06 11:20:02', NULL, 'In Active', 1, 0),
(48, 'Study', 'Study', 'S', 'Collab', 'Ksahuja188@yahoo.com', NULL, '9168827288', NULL, 'Study', 'd5029374377771fd628239fd1f4e9d02', 4, 'Student', 0, NULL, 'uploadImage/default.png', '', '2018-01-23 07:26:28', NULL, 'In Active', 0, 0),
(59, 'Suba', 'Suba', 'Sri', 'A', 'sadsadsa@bmassociates.com', NULL, '546456546', NULL, 'Suba', 'fcea920f7412b5da7be0cf42b8c93759', 4, 'student', 0, NULL, 'uploadImage/default.png', '', '2018-01-23 07:27:47', NULL, 'In Active', 0, 0),
(55, 'Tara', 'Tara3', 'Sri', 'A', '23123123@gmail.com', NULL, '546456546', NULL, 'Tara', '827ccb0eea8a706c4c34a16891f84e7b', 4, 'student', 2, NULL, 'uploadImage/default.png', '', '2017-05-20 05:27:06', NULL, 'In Active', 0, 1),
(44, 'Tara1', 'Tara1', 'Sri', 'A', 'Tara1@gmail.com', NULL, '546456546', NULL, 'Tara1', '827ccb0eea8a706c4c34a16891f84e7b', 4, 'student', 0, NULL, 'uploadImage/default.png', '', '2017-05-11 09:53:51', NULL, NULL, 0, 0),
(61, 'Tara20', 'Tara20', 'Srisdf', 'Asdfsd', 'ezhil@bmassociates.com', NULL, '546456546', NULL, 'Tara20', '7a6e5dfb9aa36392370de4ef411438af', 2, 'Teacher', 0, NULL, 'uploadImage/default.png', '', '2017-09-20 04:18:24', NULL, 'Active', 0, 0),
(56, 'Tara7', 'Tara7', 'Sri', 'A', 'sdfdgd@bmassociates.com', NULL, '546456546', NULL, 'Tara7', '827ccb0eea8a706c4c34a16891f84e7b', 4, 'student', 0, NULL, 'uploadImage/default.png', '', '2017-05-11 09:53:51', NULL, 'In Active', 1, 0),
(87, 'Taranantha', 'Tara', 'Sri', 'A', 'Taranantha@gmail.com', NULL, NULL, NULL, 'Taranantha', '827ccb0eea8a706c4c34a16891f84e7b', NULL, 'student', 0, NULL, 'uploadImage/default.png', '', '2017-09-15 11:22:29', NULL, 'In Active', 1, 0),
(48, 'test', 'test', '', 'test', 'test@bmassociates.com', NULL, '9003723111', NULL, 'Balamurugan3', '098f6bcd4621d373cade4e832627b4f6', 4, 'Student', 0, NULL, 'uploadImage/default.png', '', '2018-01-23 07:26:28', NULL, 'In Active', 0, 0),
(62, 'test1', 'test1', 'test1', 'test1', 'shrutika.gurav@inscripts.com', NULL, '999-999-9999', NULL, 'test1', '5a105e8b9d40e1329780d62ea2265d8a', 4, 'Student', 0, NULL, 'uploadImage/default.png', '', '2017-05-11 09:53:51', NULL, 'In Active', 0, 0),
(63, 'test123', 'test', 'user', 'me', 'test123@gmail.com', NULL, '999-999-9999', NULL, 'test123', '5a105e8b9d40e1329780d62ea2265d8a', 4, 'Student', 0, NULL, 'uploadImage/default.png', '', '2017-05-11 09:53:51', NULL, 'In Active', 1, 0),
(64, 'test1234', 'test', 'user', 'me', 'testcometchat@gmail.com', NULL, '999-999-9999', NULL, 'test1234', '5a105e8b9d40e1329780d62ea2265d8a', 4, 'Student', 0, NULL, 'uploadImage/default.png', '', '2017-05-11 09:53:51', NULL, 'In Active', 1, 0),
(3, 'test_1', 'fwf', 'ass', 'fsf', 'wqe@a.com', '', '22222222', '22222211', 'test1', '96e79218965eb72c92a549dd5a330112', 1, 'Not interested', 1, NULL, 'uploadImage/default.png', '', '2018-01-23 07:21:57', NULL, 'In Active', 1, 0),
(76, 'tut1', 'Mega', '', 'Tutor', 'cdcr1@bmassociates.com', NULL, '111-111-1123', NULL, 'tut1', 'ecc4208a7778c1d76e7e89c5253128c5', 2, 'Teacher', 0, NULL, 'uploadImage/default.png', '', '2017-08-31 06:21:33', NULL, 'In Active', 0, 0),
(84, 'tut2', 'Megao', '', 'Tutor', 'invoices@bmassociates.com', NULL, '111-222-4444', NULL, 'tut2', 'c375b8abb2eb79d220bb3cf1e687e323', 3, 'Volunteer', 0, NULL, 'uploadImage/default.png', '', '2017-09-06 19:11:05', NULL, 'Active', 1, 0),
(105, 'validation', 'validation', 'test', 'example', 'validation@gmail.com', NULL, '1111111111', NULL, 'validation', '1c982a0ac1d6f3ab2f8a4336ba330f8d', NULL, 'Student', 0, NULL, 'uploadImage/default.png', '', '2017-12-26 05:55:56', NULL, 'In Active', 1, 0),
(106, 'validationa', 'validation', 'test', 'example', 'validaation@gmail.com', NULL, '1111111111', NULL, 'validationa', '1c982a0ac1d6f3ab2f8a4336ba330f8d', NULL, 'Student', 0, NULL, 'uploadImage/default.png', '', '2017-12-26 05:56:27', NULL, 'In Active', 1, 0),
(94, 'watercan', 'watercan', 'watercan', 'watercan', 'watercan', NULL, '1594826123', NULL, 'watercan', '279135e844719293fc047161e1b03dc9', NULL, 'Student', 0, NULL, 'uploadImage/default.png', '', '2017-09-15 12:27:12', NULL, 'In Active', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_subjects`
--

CREATE TABLE IF NOT EXISTS `user_subjects` (
  `id` int(10) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `subcategory_id` bigint(20) NOT NULL,
  `grade_id` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_subjects`
--

INSERT INTO `user_subjects` (`id`, `user_id`, `subject_id`, `subcategory_id`, `grade_id`) VALUES
(16, 'bala', 1, 0, 7),
(17, 'bala', 2, 0, 9),
(18, 'bala', 3, 0, 4),
(19, 'bala', 4, 0, 5),
(20, 'bala', 5, 0, 3),
(21, 'bala', 11, 0, 10),
(22, 'bala', 12, 0, 4),
(23, 'bala', 13, 0, 2),
(24, 'bala', 14, 0, 4),
(25, 'bala', 17, 0, 5),
(26, 'bala', 18, 0, 10),
(27, 'bala', 20, 0, 10),
(28, 'bala', 27, 0, 9),
(29, 'bala', 28, 0, 3),
(30, 'bala', 55, 0, 5),
(31, 'bala', 56, 0, 5),
(32, 'bala', 57, 0, 5),
(33, 'bala', 58, 0, 9),
(34, 'bala', 62, 0, 5),
(35, 'bala', 21, 0, 9),
(36, 'bala', 22, 0, 10),
(37, 'bala', 26, 0, 1),
(38, 'bala', 24, 0, 8),
(39, 'bala', 41, 0, 2),
(40, 'Jenny', 27, 0, 2),
(41, 'Jenny', 28, 0, 5),
(42, 'Jenny', 29, 0, 10),
(43, 'Jenny', 30, 0, 10),
(44, 'Jenny', 31, 0, 10),
(45, 'Jenny', 32, 0, 2),
(46, 'Tara20', 1, 0, 2),
(47, 'Tara20', 2, 0, 1),
(48, 'Tara20', 3, 0, 1),
(49, 'Tara20', 4, 0, 4),
(50, 'Sathish', 27, 0, 2),
(51, 'Sathish', 28, 0, 9),
(52, 'Sathish', 29, 0, 10),
(53, 'Sathish', 30, 0, 10),
(54, 'Sathish', 31, 0, 10),
(55, 'Sathish', 32, 0, 10),
(56, 'Sathish', 33, 0, 10),
(57, 'Sathish', 34, 0, 10),
(58, 'Sathish', 35, 0, 10),
(59, 'Sathish', 36, 0, 10),
(60, 'Sathish', 21, 0, 2),
(61, 'Sathish', 22, 0, 5),
(62, 'Sathish', 23, 0, 6),
(63, 'Sathish', 24, 0, 3),
(64, 'Sathish', 25, 0, 10),
(65, 'Sathish', 26, 0, 10),
(66, 'senthil', 56, 0, 8),
(67, 'Sathish', 55, 0, 10),
(68, 'Sathish', 56, 0, 10),
(69, 'Sathish', 57, 0, 9),
(70, 'Sathish', 58, 0, 7),
(71, 'Sathish', 59, 0, 9),
(72, 'Sathish', 60, 0, 8),
(73, 'Sathish', 61, 0, 10),
(74, 'senthil', 28, 0, 5),
(75, 'senthil', 29, 0, 8),
(76, 'Ajith Senthil', 28, 0, 10),
(77, 'Ajith Senthil', 29, 0, 9),
(78, 'Ajith Senthil', 30, 0, 6),
(79, 'Ajith Senthil', 31, 0, 7),
(80, 'Ajith Senthil', 32, 0, 8),
(81, 'Ajith Senthil', 33, 0, 10),
(82, 'Ajith Senthil', 34, 0, 9),
(83, 'Ajith Senthil', 35, 0, 9),
(84, 'Ajith Senthil', 36, 0, 8),
(85, 'Tara', 3, 0, 10),
(86, 'Tara', 10, 0, 9),
(87, 'Tara', 18, 0, 10),
(88, 'Tara', 39, 0, 6),
(89, 'Tara', 41, 0, 10),
(90, 'manish', 1, 0, 1),
(91, 'manish', 2, 0, 5),
(92, 'manish', 27, 0, 5),
(93, 'manish', 28, 0, 3),
(94, 'tut1', 21, 0, 10),
(95, 'tut1', 22, 0, 9),
(96, 'tut1', 23, 0, 7),
(97, 'tut1', 24, 0, 7),
(98, 'tut1', 25, 0, 9),
(99, 'tut1', 26, 0, 9),
(100, 'tut1', 27, 0, 10),
(101, 'tut1', 28, 0, 7),
(102, 'tut1', 29, 0, 7),
(103, 'tut1', 30, 0, 5),
(104, 'senthil', 23, 0, 8),
(105, 'sd', 28, 0, 8),
(106, 'sd', 29, 0, 5),
(107, 'senthil', 32, 0, 5),
(108, 'SacredSource', 21, 0, 10),
(109, 'SacredSource', 22, 0, 10),
(110, 'SacredSource', 23, 0, 10),
(111, 'SacredSource', 24, 0, 10),
(112, 'SacredSource', 25, 0, 10),
(113, 'SacredSource', 26, 0, 10),
(114, 'Tara20', 17, 0, 2),
(115, 'shoba18', 37, 0, 7),
(116, 'shoba18', 38, 0, 7),
(117, 'shoba18', 39, 0, 8),
(118, 'shoba18', 40, 0, 9),
(119, 'shoba18', 41, 0, 5),
(120, 'shoba18', 42, 0, 3),
(121, 'shoba18', 43, 0, 2),
(122, 'shoba18', 44, 0, 9),
(123, 'shoba18', 45, 0, 9),
(124, 'shoba18', 46, 0, 3),
(125, 'bala', 66, 0, 5),
(126, 'bala', 63, 0, 5),
(127, 'bala', 65, 0, 5),
(128, 'bala', 64, 0, 5),
(129, 'bala', 6, 0, 3),
(131, 'nanthanantha', 62, 0, 1),
(132, 'nanthanantha', 67, 0, 1),
(133, 'bala', 67, 0, 5),
(134, 'nanthanantha', 66, 0, 1),
(135, 'nanthanantha', 1, 0, 1),
(136, 'nanthanantha', 2, 0, 1),
(137, 'nanthanantha', 3, 0, 1),
(138, 'nanthanantha', 4, 0, 1),
(139, 'nanthanantha', 5, 0, 1),
(140, 'nanthanantha', 6, 0, 1),
(141, 'nanthanantha', 7, 0, 1),
(142, 'nanthanantha', 8, 0, 1),
(143, 'nanthanantha', 9, 0, 1),
(144, 'nanthanantha', 10, 0, 1),
(145, 'nanthanantha', 11, 0, 1),
(146, 'nanthanantha', 12, 0, 1),
(147, 'nanthanantha', 13, 0, 1),
(148, 'nanthanantha', 14, 0, 1),
(149, 'nanthanantha', 15, 0, 1),
(150, 'nanthanantha', 16, 0, 1),
(151, 'nanthanantha', 17, 0, 1),
(152, 'nanthanantha', 18, 0, 1),
(153, 'nanthanantha', 19, 0, 1),
(154, 'nanthanantha', 63, 0, 1),
(155, 'nanthanantha', 64, 0, 1),
(156, 'nanthanantha', 65, 0, 1),
(157, 'nanthanantha', 20, 0, 1),
(158, 'nanthanantha', 27, 0, 8),
(159, 'nanthanantha', 28, 0, 5),
(160, 'nanthanantha', 29, 0, 5),
(161, 'nanthanantha', 30, 0, 6),
(162, 'nanthanantha', 31, 0, 6),
(163, 'nanthanantha', 32, 0, 3),
(164, 'nanthanantha', 33, 0, 4),
(165, 'nanthanantha', 34, 0, 7),
(166, 'nanthanantha', 35, 0, 8),
(167, 'nanthanantha', 36, 0, 9),
(168, 'nanthanantha', 21, 0, 7),
(169, 'nanthanantha', 22, 0, 7),
(170, 'nanthanantha', 23, 0, 9),
(171, 'nanthanantha', 24, 0, 10),
(172, 'nanthanantha', 25, 0, 6),
(173, 'nanthanantha', 26, 0, 9),
(175, 'bala', 25, 0, 1),
(176, 'bala', 7, 0, 9),
(177, 'bala', 8, 0, 7),
(178, 'bala', 9, 0, 3),
(179, 'bala', 10, 0, 5),
(180, 'bala', 15, 0, 7),
(181, 'bala', 16, 0, 3),
(182, 'bala', 19, 0, 10),
(183, 'senthil', 21, 0, 9),
(184, 'senthil', 18, 0, 10),
(189, 'AjithSenthil', 68, 0, 9),
(190, 'bala', 23, 0, 7),
(191, 'bala', 68, 0, 7),
(192, 'bala', 59, 0, 9),
(193, 'bala', 60, 0, 9),
(194, 'bala', 61, 0, 3),
(200, 'bala', 34, 0, 6),
(201, 'bala', 35, 0, 6),
(202, 'bala', 36, 0, 6),
(203, 'bala', 69, 0, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_master`
--
ALTER TABLE `admin_master`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `s_no` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `tutor_type` (`tutor_type`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cometchat`
--
ALTER TABLE `cometchat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `to` (`to`),
  ADD KEY `from` (`from`),
  ADD KEY `direction` (`direction`),
  ADD KEY `read` (`read`),
  ADD KEY `sent` (`sent`);

--
-- Indexes for table `cometchat_announcements`
--
ALTER TABLE `cometchat_announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `to` (`to`),
  ADD KEY `time` (`time`),
  ADD KEY `to_id` (`to`,`id`);

--
-- Indexes for table `cometchat_archive`
--
ALTER TABLE `cometchat_archive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `to` (`to`),
  ADD KEY `from` (`from`),
  ADD KEY `direction` (`direction`),
  ADD KEY `read` (`read`),
  ADD KEY `sent` (`sent`);

--
-- Indexes for table `cometchat_block`
--
ALTER TABLE `cometchat_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fromid` (`fromid`),
  ADD KEY `toid` (`toid`),
  ADD KEY `fromid_toid` (`fromid`,`toid`);

--
-- Indexes for table `cometchat_bots`
--
ALTER TABLE `cometchat_bots`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `cometchat_chatroommessages`
--
ALTER TABLE `cometchat_chatroommessages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `chatroomid` (`chatroomid`),
  ADD KEY `sent` (`sent`);

--
-- Indexes for table `cometchat_chatroommessages_archive`
--
ALTER TABLE `cometchat_chatroommessages_archive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `chatroomid` (`chatroomid`),
  ADD KEY `sent` (`sent`);

--
-- Indexes for table `cometchat_chatrooms`
--
ALTER TABLE `cometchat_chatrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastactivity` (`lastactivity`),
  ADD KEY `createdby` (`createdby`),
  ADD KEY `type` (`type`),
  ADD KEY `guid` (`guid`);

--
-- Indexes for table `cometchat_chatrooms_archive`
--
ALTER TABLE `cometchat_chatrooms_archive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lastactivity` (`lastactivity`),
  ADD KEY `createdby` (`createdby`),
  ADD KEY `type` (`type`),
  ADD KEY `guid` (`guid`);

--
-- Indexes for table `cometchat_chatrooms_users`
--
ALTER TABLE `cometchat_chatrooms_users`
  ADD PRIMARY KEY (`userid`,`chatroomid`) USING BTREE,
  ADD KEY `chatroomid` (`chatroomid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `userid_chatroomid` (`chatroomid`,`userid`),
  ADD KEY `isbanned` (`isbanned`);

--
-- Indexes for table `cometchat_chatrooms_users_archive`
--
ALTER TABLE `cometchat_chatrooms_users_archive`
  ADD PRIMARY KEY (`userid`,`chatroomid`) USING BTREE,
  ADD KEY `chatroomid` (`chatroomid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `userid_chatroomid` (`chatroomid`,`userid`),
  ADD KEY `isbanned` (`isbanned`);

--
-- Indexes for table `cometchat_colors`
--
ALTER TABLE `cometchat_colors`
  ADD UNIQUE KEY `color_index` (`color_key`,`color`);

--
-- Indexes for table `cometchat_guests`
--
ALTER TABLE `cometchat_guests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cometchat_guests_archive`
--
ALTER TABLE `cometchat_guests_archive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cometchat_languages`
--
ALTER TABLE `cometchat_languages`
  ADD UNIQUE KEY `lang_index` (`lang_key`(50),`code`,`type`,`name`(20)) USING BTREE;

--
-- Indexes for table `cometchat_messages_old_1491809295`
--
ALTER TABLE `cometchat_messages_old_1491809295`
  ADD PRIMARY KEY (`id`),
  ADD KEY `to` (`to`),
  ADD KEY `from` (`from`),
  ADD KEY `direction` (`direction`),
  ADD KEY `read` (`read`),
  ADD KEY `sent` (`sent`);

--
-- Indexes for table `cometchat_recentconversation`
--
ALTER TABLE `cometchat_recentconversation`
  ADD UNIQUE KEY `userid` (`convo_id`),
  ADD KEY `from` (`from`),
  ADD KEY `to` (`to`);

--
-- Indexes for table `cometchat_report`
--
ALTER TABLE `cometchat_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cometchat_session`
--
ALTER TABLE `cometchat_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `cometchat_settings`
--
ALTER TABLE `cometchat_settings`
  ADD PRIMARY KEY (`setting_key`),
  ADD KEY `key` (`setting_key`);

--
-- Indexes for table `cometchat_status`
--
ALTER TABLE `cometchat_status`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `typingto` (`typingto`),
  ADD KEY `typingtime` (`typingtime`),
  ADD KEY `status` (`status`),
  ADD KEY `lastactivity` (`lastactivity`),
  ADD KEY `isdevice` (`isdevice`);

--
-- Indexes for table `cometchat_status_archive`
--
ALTER TABLE `cometchat_status_archive`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `typingto` (`typingto`),
  ADD KEY `typingtime` (`typingtime`),
  ADD KEY `status` (`status`),
  ADD KEY `lastactivity` (`lastactivity`),
  ADD KEY `isdevice` (`isdevice`);

--
-- Indexes for table `cometchat_users`
--
ALTER TABLE `cometchat_users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `username_2` (`username`),
  ADD KEY `role` (`role`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `cometchat_videochatsessions`
--
ALTER TABLE `cometchat_videochatsessions`
  ADD PRIMARY KEY (`username`),
  ADD KEY `username` (`username`),
  ADD KEY `identity` (`identity`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `county`
--
ALTER TABLE `county`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district_master`
--
ALTER TABLE `district_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_chat`
--
ALTER TABLE `group_chat`
  ADD PRIMARY KEY (`chat_id`,`group_id`);

--
-- Indexes for table `group_master`
--
ALTER TABLE `group_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_member`
--
ALTER TABLE `group_member`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`) USING BTREE;

--
-- Indexes for table `postquestion`
--
ALTER TABLE `postquestion`
  ADD PRIMARY KEY (`post_Id`),
  ADD KEY `cat_id` (`subject_id`),
  ADD KEY `user_Id` (`user_Id`),
  ADD KEY `sub_subject_id` (`sub_subject_id`);

--
-- Indexes for table `postquestion_comment`
--
ALTER TABLE `postquestion_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_Id` (`post_Id`),
  ADD KEY `user_Id` (`user_Id`);

--
-- Indexes for table `question_notification`
--
ALTER TABLE `question_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`chat_id`,`user_id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `state_id` (`state_id`),
  ADD KEY `county_id` (`county_id`),
  ADD KEY `country_id` (`country_id`),
  ADD KEY `district_id` (`district_id`) USING BTREE;

--
-- Indexes for table `school_link`
--
ALTER TABLE `school_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `tutor_appointment`
--
ALTER TABLE `tutor_appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutor_master`
--
ALTER TABLE `tutor_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `s_no` (`id`),
  ADD KEY `school_id` (`school_id`),
  ADD KEY `tutor_id` (`tutor_id`);

--
-- Indexes for table `user_subjects`
--
ALTER TABLE `user_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `grade_id` (`grade_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_master`
--
ALTER TABLE `admin_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=124;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=664;
--
-- AUTO_INCREMENT for table `cometchat`
--
ALTER TABLE `cometchat`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2034;
--
-- AUTO_INCREMENT for table `cometchat_announcements`
--
ALTER TABLE `cometchat_announcements`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5003;
--
-- AUTO_INCREMENT for table `cometchat_archive`
--
ALTER TABLE `cometchat_archive`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cometchat_block`
--
ALTER TABLE `cometchat_block`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cometchat_bots`
--
ALTER TABLE `cometchat_bots`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cometchat_chatroommessages`
--
ALTER TABLE `cometchat_chatroommessages`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `cometchat_chatroommessages_archive`
--
ALTER TABLE `cometchat_chatroommessages_archive`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cometchat_chatrooms`
--
ALTER TABLE `cometchat_chatrooms`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cometchat_chatrooms_archive`
--
ALTER TABLE `cometchat_chatrooms_archive`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cometchat_guests`
--
ALTER TABLE `cometchat_guests`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10000002;
--
-- AUTO_INCREMENT for table `cometchat_guests_archive`
--
ALTER TABLE `cometchat_guests_archive`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cometchat_messages_old_1491809295`
--
ALTER TABLE `cometchat_messages_old_1491809295`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `cometchat_report`
--
ALTER TABLE `cometchat_report`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cometchat_users`
--
ALTER TABLE `cometchat_users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `county`
--
ALTER TABLE `county`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `district_master`
--
ALTER TABLE `district_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `group_chat`
--
ALTER TABLE `group_chat`
  MODIFY `chat_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=153;
--
-- AUTO_INCREMENT for table `group_master`
--
ALTER TABLE `group_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `group_member`
--
ALTER TABLE `group_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `postquestion`
--
ALTER TABLE `postquestion`
  MODIFY `post_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `postquestion_comment`
--
ALTER TABLE `postquestion_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `question_notification`
--
ALTER TABLE `question_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `school_link`
--
ALTER TABLE `school_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `tutor_appointment`
--
ALTER TABLE `tutor_appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `tutor_master`
--
ALTER TABLE `tutor_master`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=117;
--
-- AUTO_INCREMENT for table `user_subjects`
--
ALTER TABLE `user_subjects`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=204;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_master` (`user_id`);

--
-- Constraints for table `district_master`
--
ALTER TABLE `district_master`
  ADD CONSTRAINT `district_master_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `postquestion`
--
ALTER TABLE `postquestion`
  ADD CONSTRAINT `postquestion_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `postquestion_ibfk_2` FOREIGN KEY (`user_Id`) REFERENCES `user_master` (`user_id`),
  ADD CONSTRAINT `postquestion_ibfk_3` FOREIGN KEY (`sub_subject_id`) REFERENCES `subcategory` (`id`);

--
-- Constraints for table `postquestion_comment`
--
ALTER TABLE `postquestion_comment`
  ADD CONSTRAINT `postquestion_comment_ibfk_1` FOREIGN KEY (`post_Id`) REFERENCES `postquestion` (`post_Id`),
  ADD CONSTRAINT `postquestion_comment_ibfk_2` FOREIGN KEY (`user_Id`) REFERENCES `user_master` (`user_id`);

--
-- Constraints for table `question_notification`
--
ALTER TABLE `question_notification`
  ADD CONSTRAINT `question_notification_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `postquestion` (`post_Id`),
  ADD CONSTRAINT `question_notification_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user_master` (`user_id`);

--
-- Constraints for table `school`
--
ALTER TABLE `school`
  ADD CONSTRAINT `school_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `district_master` (`id`),
  ADD CONSTRAINT `school_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `school_ibfk_3` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `school_ibfk_4` FOREIGN KEY (`county_id`) REFERENCES `county` (`id`),
  ADD CONSTRAINT `school_ibfk_5` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Constraints for table `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `user_master`
--
ALTER TABLE `user_master`
  ADD CONSTRAINT `user_master_ibfk_1` FOREIGN KEY (`tutor_id`) REFERENCES `tutor_master` (`id`);

--
-- Constraints for table `user_subjects`
--
ALTER TABLE `user_subjects`
  ADD CONSTRAINT `user_subjects_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_master` (`user_id`),
  ADD CONSTRAINT `user_subjects_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subcategory` (`id`),
  ADD CONSTRAINT `user_subjects_ibfk_4` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
