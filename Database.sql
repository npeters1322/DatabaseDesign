-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 07, 2021 at 10:55 AM
-- Server version: 10.3.25-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
--
-- Database: `natepete_3_db`
--
-- --------------------------------------------------------
--
-- Stand-in structure for view `big_10_standing`
-- (See below for the actual view)
--
CREATE TABLE `big_10_standing` (
`season` year(4)
,`university` varchar(75)
,`nickname` varchar(50)
,`win` int(10) unsigned
,`loss` int(10) unsigned
,`Win Percentage` decimal(14,4) unsigned
);
-- --------------------------------------------------------
--
-- Table structure for table `conference`
--
CREATE TABLE `conference` (
  `conference_id` int(11) NOT NULL,
  `name` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `conference`
--
INSERT INTO `conference` (`conference_id`, `name`) VALUES
(1, 'America East Conference'),
(2, 'American Athletic Conference'),
(3, 'Atlantic 10 Conference'),
(4, 'Atlantic Coast Conference'),
(5, 'Atlantic Sun Conference'),
(6, 'Big 12 Conference'),
(7, 'Big East Conference'),
(8, 'Big Sky Conference'),
(9, 'Big South Conference'),
(10, 'Big Ten Conference'),
(11, 'Big West Conference'),
(12, 'Colonial Athletic Association'),
(13, 'Conference USA'),
(14, 'Horizon League'),
(15, 'Ivy League'),
(16, 'Metro Atlantic Athletic Conference'),
(17, 'Mid-American Conference'),
(18, 'Mid-Eastern Athletic Conference'),
(19, 'Missouri Valley Conference'),
(20, 'Mountain West Conference'),
(21, 'Northeast Conference'),
(22, 'Ohio Valley Conference'),
(23, 'Pac-12 Conference'),
(24, 'Patriot League'),
(25, 'Southeastern Conference'),
(26, 'Southern Conference'),
(27, 'Southland Conference'),
(28, 'Southwestern Athletic Conference'),
(29, 'Sun Belt Conference'),
(30, 'Summit League'),
(31, 'West Coast Conference'),
(32, 'Western Athletic Conference');
-- --------------------------------------------------------
--
-- Table structure for table `game`
--
CREATE TABLE `game` (
  `game_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `season_id` int(11) DEFAULT NULL,
  `win_team_id` int(11) DEFAULT NULL,
  `win_score` int(10) UNSIGNED NOT NULL,
  `lose_team_id` int(11) DEFAULT NULL,
  `lose_score` int(10) UNSIGNED NOT NULL,
  `type_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `game`
--
INSERT INTO `game` (`game_id`, `date`, `season_id`, `win_team_id`, `win_score`, 
`lose_team_id`, `lose_score`, `type_id`) VALUES
(1, '2020-11-25', 12, 1, 83, 2, 67, 1),
(2, '2020-11-28', 12, 1, 80, 3, 70, 1),
(3, '2020-12-01', 12, 1, 75, 4, 69, 1),
(4, '2020-12-04', 12, 1, 83, 5, 76, 1),
(5, '2020-12-06', 12, 1, 79, 6, 61, 1),
(6, '2020-12-13', 12, 1, 109, 7, 91, 1),
(7, '2020-12-02', 12, 14, 92, 27, 49, 1),
(8, '2020-12-05', 12, 14, 111, 28, 66, 1),
(9, '2020-12-09', 12, 29, 71, 14, 70, 1),
(10, '2020-12-20', 12, 14, 79, 1, 65, 2),
(11, '2020-12-23', 12, 14, 74, 23, 67, 2),
(12, '2020-12-26', 12, 14, 71, 20, 70, 2),
(13, '2020-11-25', 12, 15, 77, 30, 67, 1),
(14, '2020-11-27', 12, 15, 92, 27, 58, 1),
(15, '2020-12-01', 12, 15, 82, 31, 42, 1),
(16, '2020-12-04', 12, 32, 67, 15, 65, 1),
(17, '2020-12-09', 12, 15, 73, 33, 62, 1),
(18, '2020-12-15', 12, 15, 77, 34, 63, 1),
(19, '2020-11-25', 12, 16, 99, 31, 69, 1),
(20, '2020-11-28', 12, 16, 88, 35, 73, 1),
(21, '2020-11-30', 12, 16, 67, 35, 64, 1),
(22, '2020-12-04', 12, 16, 76, 36, 67, 1),
(23, '2020-12-08', 12, 16, 85, 37, 80, 1),
(24, '2020-12-10', 12, 16, 90, 38, 61, 1),
(25, '2020-11-25', 12, 17, 102, 39, 55, 1),
(26, '2020-11-26', 12, 40, 69, 17, 66, 1),
(27, '2020-11-28', 12, 17, 79, 41, 57, 1),
(28, '2020-12-01', 12, 17, 76, 42, 69, 1),
(29, '2020-12-09', 12, 43, 75, 17, 64, 1),
(30, '2020-12-11', 12, 44, 98, 17, 74, 1),
(31, '2020-11-25', 12, 18, 86, 45, 63, 1),
(32, '2020-11-27', 12, 18, 96, 46, 75, 1),
(33, '2020-11-29', 12, 18, 70, 47, 56, 1),
(34, '2020-12-08', 12, 18, 79, 48, 69, 1),
(35, '2020-12-14', 12, 18, 74, 25, 60, 2),
(36, '2020-12-20', 12, 18, 91, 24, 88, 2),
(37, '2020-11-25', 12, 19, 77, 49, 64, 1),
(38, '2020-11-26', 12, 50, 81, 19, 70, 1),
(39, '2020-12-01', 12, 19, 93, 7, 50, 1),
(40, '2020-12-04', 12, 19, 68, 51, 61, 1),
(41, '2020-12-08', 12, 52, 58, 19, 54, 1),
(42, '2020-12-12', 12, 19, 80, 53, 68, 1),
(43, '2020-11-25', 12, 20, 94, 54, 67, 1),
(44, '2020-11-29', 12, 20, 74, 55, 64, 1),
(45, '2020-12-02', 12, 20, 77, 56, 44, 1),
(46, '2020-12-08', 12, 20, 90, 3, 85, 1),
(47, '2020-12-13', 12, 20, 67, 57, 61, 1),
(48, '2020-12-16', 12, 19, 67, 20, 60, 2),
(49, '2020-11-25', 12, 21, 97, 58, 67, 1),
(50, '2020-11-27', 12, 21, 103, 59, 76, 1),
(51, '2020-12-03', 12, 21, 99, 60, 58, 1),
(52, '2020-12-08', 12, 21, 93, 61, 80, 1),
(53, '2020-12-11', 12, 21, 105, 62, 77, 1),
(54, '2020-12-13', 12, 21, 106, 63, 53, 1),
(55, '2020-11-28', 12, 22, 86, 64, 65, 1),
(56, '2020-12-02', 12, 22, 72, 65, 69, 1),
(57, '2020-12-06', 12, 10, 98, 22, 92, 1),
(58, '2020-12-08', 12, 22, 75, 12, 55, 1),
(59, '2020-12-13', 12, 26, 62, 22, 58, 2),
(60, '2020-12-23', 12, 24, 98, 22, 81, 2),
(61, '2020-11-25', 12, 23, 89, 66, 59, 1),
(62, '2020-11-30', 12, 23, 79, 67, 58, 1),
(63, '2020-12-01', 12, 68, 66, 23, 44, 1),
(64, '2020-12-02', 12, 23, 79, 69, 63, 1),
(65, '2020-12-09', 12, 70, 69, 23, 67, 1),
(66, '2020-12-13', 12, 23, 87, 71, 52, 1),
(67, '2020-11-25', 12, 24, 122, 72, 60, 1),
(68, '2020-11-26', 12, 24, 97, 28, 38, 1),
(69, '2020-11-27', 12, 24, 77, 73, 75, 1),
(70, '2020-12-02', 12, 74, 82, 24, 69, 1),
(71, '2020-12-08', 12, 24, 83, 4, 68, 1),
(72, '2020-12-12', 12, 75, 81, 24, 78, 1),
(73, '2020-11-25', 12, 25, 85, 76, 67, 1),
(74, '2020-11-27', 12, 25, 82, 77, 52, 1),
(75, '2020-11-29', 12, 25, 79, 78, 61, 1),
(76, '2020-12-04', 12, 25, 90, 79, 57, 1),
(77, '2020-12-09', 12, 50, 67, 25, 51, 1),
(78, '2020-11-25', 12, 26, 96, 80, 82, 1),
(79, '2020-11-29', 12, 26, 81, 7, 71, 1),
(80, '2020-12-02', 12, 26, 84, 81, 65, 1),
(81, '2020-12-06', 12, 26, 80, 82, 58, 1),
(82, '2020-12-09', 12, 26, 91, 83, 71, 1),
(83, '2019-11-05', 11, 8, 69, 1, 62, 1),
(84, '2019-11-10', 11, 1, 100, 9, 47, 1),
(85, '2019-11-14', 11, 1, 76, 10, 73, 1);
--
-- Triggers `game`
--
DELIMITER $$
CREATE TRIGGER `record_after_game` AFTER INSERT ON `game` FOR EACH ROW BEGIN
UPDATE record
SET
record.win = record.win + 1
WHERE record.season_id = NEW.season_id AND record.team_id = 
NEW.win_team_id;
    UPDATE record
     SET
record.loss = record.loss + 1
WHERE record.season_id = NEW.season_id AND record.team_id = 
NEW.lose_team_id ;
END
$$
DELIMITER ;
-- --------------------------------------------------------
--
-- Table structure for table `game_stat`
--
CREATE TABLE `game_stat` (
  `player_id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `minute` int(10) UNSIGNED DEFAULT 0,
  `point` int(10) UNSIGNED DEFAULT 0,
  `assist` int(10) UNSIGNED DEFAULT 0,
  `rebound` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `game_stat`
--
INSERT INTO `game_stat` (`player_id`, `game_id`, `minute`, `point`, `assist`, 
`rebound`) VALUES
(1, 1, 25, 6, 7, 4),
(1, 2, 26, 14, 3, 8),
(1, 3, 35, 14, 5, 5),
(1, 83, 23, 9, 3, 2),
(1, 84, 24, 16, 1, 2),
(1, 85, 24, 9, 1, 1),
(2, 1, 23, 15, 2, 9),
(2, 2, 23, 10, 4, 16),
(2, 3, 23, 11, 0, 10),
(3, 1, 21, 10, 1, 2),
(3, 2, 26, 8, 4, 0),
(3, 3, 29, 3, 0, 3),
(4, 1, 23, 2, 3, 2),
(4, 2, 20, 13, 6, 2),
(4, 3, 25, 20, 2, 3),
(4, 83, 22, 0, 2, 0),
(4, 84, 23, 5, 2, 2),
(4, 85, 26, 8, 2, 5),
(5, 1, 17, 12, 1, 0),
(5, 2, 22, 9, 1, 2),
(5, 3, 17, 0, 0, 3),
(5, 83, 21, 8, 0, 3),
(5, 84, 13, 7, 1, 0),
(5, 85, 23, 7, 1, 4),
(6, 1, 17, 6, 5, 4),
(6, 2, 18, 4, 3, 4),
(6, 3, 29, 10, 2, 10),
(6, 83, 9, 0, 1, 3),
(6, 84, 13, 0, 2, 3),
(6, 85, 19, 17, 0, 5),
(7, 1, 3, 2, 0, 2),
(7, 2, 3, 3, 0, 0),
(7, 3, 12, 12, 0, 2),
(7, 83, 4, 0, 0, 2),
(7, 84, 6, 4, 0, 0),
(7, 85, 2, 0, 0, 0),
(8, 1, 15, 6, 3, 2),
(8, 2, 15, 7, 1, 7),
(8, 3, 10, 0, 0, 3),
(8, 83, 17, 7, 1, 6),
(8, 84, 12, 13, 0, 6),
(8, 85, 3, 0, 0, 1),
(9, 1, 25, 20, 2, 2),
(9, 2, 17, 3, 3, 2),
(9, 3, 15, 5, 0, 5),
(9, 83, 3, 0, 0, 0),
(9, 84, 12, 0, 2, 0),
(9, 85, 7, 5, 1, 1),
(10, 1, 3, 0, 0, 1),
(10, 2, 4, 0, 0, 0),
(11, 1, 15, 2, 2, 1),
(11, 2, 15, 6, 1, 3),
(11, 3, 5, 0, 0, 2),
(11, 83, 19, 7, 1, 3),
(11, 84, 20, 10, 3, 3),
(11, 85, 24, 6, 3, 5),
(12, 1, 6, 0, 0, 2),
(12, 2, 3, 3, 0, 1),
(13, 1, 3, 2, 0, 0),
(13, 2, 3, 0, 0, 0),
(14, 1, 2, 0, 0, 0),
(14, 2, 2, 0, 0, 1),
(15, 1, 2, 0, 1, 0),
(15, 2, 3, 0, 0, 0),
(16, 7, 21, 16, 0, 5),
(16, 8, 20, 20, 4, 8),
(16, 9, 33, 12, 2, 3),
(17, 7, 27, 18, 3, 1),
(17, 8, 26, 16, 1, 2),
(17, 9, 32, 8, 0, 6),
(18, 7, 26, 11, 0, 7),
(18, 8, 27, 12, 3, 8),
(18, 9, 31, 5, 3, 7),
(19, 7, 21, 8, 7, 4),
(19, 8, 22, 9, 7, 2),
(19, 9, 34, 14, 6, 4),
(20, 7, 11, 10, 0, 7),
(20, 8, 10, 8, 2, 6),
(20, 9, 23, 13, 3, 7),
(21, 7, 22, 7, 1, 7),
(21, 8, 25, 19, 2, 5),
(21, 9, 17, 7, 0, 3),
(22, 7, 19, 15, 1, 6),
(22, 8, 21, 14, 2, 4),
(22, 9, 10, 3, 1, 1),
(23, 7, 19, 2, 3, 2),
(23, 8, 23, 6, 2, 12),
(23, 9, 10, 2, 0, 2),
(24, 7, 22, 3, 8, 4),
(24, 8, 17, 3, 4, 2),
(24, 9, 10, 6, 0, 1),
(25, 7, 6, 2, 1, 2),
(26, 7, 1, 0, 0, 1),
(27, 7, 1, 0, 0, 0),
(28, 7, 1, 0, 0, 0),
(29, 7, 3, 0, 1, 0),
(30, 13, 29, 11, 5, 2),
(30, 14, 19, 15, 3, 3),
(30, 15, 23, 4, 5, 4),
(31, 13, 23, 9, 2, 8),
(31, 14, 20, 19, 3, 5),
(31, 15, 24, 14, 2, 8),
(32, 13, 30, 6, 1, 5),
(32, 14, 15, 5, 2, 3),
(32, 15, 23, 10, 1, 3),
(33, 13, 18, 1, 2, 3),
(33, 14, 25, 10, 2, 4),
(33, 15, 23, 13, 0, 3),
(34, 13, 30, 18, 1, 9),
(34, 14, 21, 14, 1, 2),
(34, 15, 19, 13, 0, 4),
(35, 13, 15, 8, 1, 2),
(35, 14, 25, 9, 2, 8),
(35, 15, 19, 2, 1, 5),
(36, 13, 19, 9, 0, 0),
(36, 14, 18, 5, 0, 1),
(36, 15, 20, 11, 4, 15),
(37, 14, 21, 9, 1, 4),
(38, 13, 17, 13, 1, 2),
(38, 15, 16, 4, 1, 1),
(47, 19, 30, 35, 4, 7),
(47, 20, 37, 28, 8, 2),
(47, 21, 36, 26, 3, 7),
(48, 19, 18, 10, 0, 9),
(48, 20, 19, 10, 2, 8),
(48, 21, 22, 5, 1, 5),
(49, 20, 21, 8, 0, 7),
(49, 21, 18, 2, 0, 4),
(50, 19, 14, 5, 2, 0),
(50, 20, 11, 2, 1, 1),
(50, 21, 12, 3, 1, 0),
(51, 19, 29, 14, 4, 5),
(51, 20, 33, 17, 6, 6),
(51, 21, 34, 10, 4, 3),
(52, 19, 32, 17, 1, 1),
(52, 20, 25, 9, 1, 3),
(52, 21, 30, 8, 2, 1),
(54, 19, 15, 4, 2, 3),
(54, 20, 10, 4, 1, 2),
(54, 21, 24, 6, 0, 3),
(55, 19, 22, 6, 1, 2),
(57, 19, 19, 2, 3, 8),
(57, 20, 16, 6, 3, 3),
(57, 21, 10, 4, 0, 1),
(61, 25, 24, 14, 2, 5),
(61, 26, 28, 17, 1, 6),
(61, 27, 31, 22, 2, 7),
(62, 25, 19, 14, 3, 3),
(62, 26, 23, 0, 2, 2),
(62, 27, 34, 19, 1, 5),
(63, 25, 22, 14, 6, 6),
(63, 26, 38, 18, 5, 7),
(63, 27, 30, 12, 8, 9),
(64, 25, 24, 13, 1, 6),
(64, 26, 27, 7, 1, 5),
(64, 27, 22, 12, 1, 4),
(65, 25, 23, 13, 2, 2),
(65, 26, 20, 13, 1, 0),
(65, 27, 17, 4, 2, 4),
(66, 25, 22, 14, 2, 6),
(66, 26, 21, 9, 0, 3),
(66, 27, 12, 3, 0, 1),
(67, 25, 26, 8, 1, 2),
(67, 26, 28, 0, 2, 4),
(67, 27, 29, 3, 1, 3),
(69, 25, 24, 9, 0, 7),
(69, 26, 15, 2, 1, 3),
(69, 27, 19, 4, 0, 7),
(77, 31, 30, 18, 2, 10),
(77, 32, 33, 30, 2, 4),
(77, 33, 29, 15, 4, 9),
(78, 31, 31, 5, 8, 3),
(78, 32, 30, 24, 7, 4),
(78, 33, 37, 17, 2, 3),
(79, 31, 9, 1, 1, 1),
(80, 31, 30, 17, 3, 2),
(80, 32, 31, 15, 3, 4),
(80, 33, 37, 14, 1, 6),
(81, 31, 16, 10, 2, 4),
(81, 32, 15, 8, 2, 4),
(81, 33, 19, 4, 1, 9),
(82, 31, 33, 15, 7, 4),
(82, 32, 32, 2, 3, 7),
(82, 33, 34, 3, 7, 9),
(84, 31, 22, 14, 0, 11),
(84, 32, 22, 5, 0, 4),
(84, 33, 21, 7, 2, 7),
(85, 31, 12, 2, 0, 4),
(85, 32, 17, 6, 0, 5),
(85, 33, 12, 5, 0, 2),
(87, 32, 13, 2, 0, 4),
(88, 33, 6, 3, 0, 0),
(224, 83, 32, 21, 4, 1),
(224, 84, 26, 17, 11, 2),
(224, 85, 28, 21, 5, 2),
(225, 83, 29, 7, 1, 9),
(225, 84, 25, 17, 2, 8),
(225, 85, 32, 3, 2, 11),
(226, 83, 21, 3, 1, 1),
(226, 84, 13, 4, 0, 4),
(226, 85, 12, 0, 0, 2);
-- --------------------------------------------------------
--
-- Table structure for table `game_type`
--
CREATE TABLE `game_type` (
  `type_id` int(11) NOT NULL,
  `type` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `game_type`
--
INSERT INTO `game_type` (`type_id`, `type`) VALUES
(1, 'Non-Conference Regular Season'),
(2, 'Conference Regular Season'),
(3, 'Conference Tournament'),
(4, 'NCAA Tournament'),
(5, 'National Invitation Tournament'),
(6, 'College Basketball Invitational'),
(7, 'CollegeInsider.com Postseason Tournament');
-- --------------------------------------------------------
--
-- Table structure for table `player`
--
CREATE TABLE `player` (
  `player_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `player`
--
INSERT INTO `player` (`player_id`, `first_name`, `last_name`) VALUES
(1, 'Aaron', 'Henry'),
(2, 'Joey', 'Hauser'),
(3, 'Joshua', 'Langford'),
(4, 'Rocket', 'Watts'),
(5, 'Gabe', 'Brown'),
(6, 'Malik', 'Hall'),
(7, 'Julius', 'Marble'),
(8, 'Marcus', 'Bingham'),
(9, 'Foster', 'Loyer'),
(10, 'A.J.', 'Hoggard'),
(11, 'Thomas', 'Kithier'),
(12, 'Mady', 'Sissoko'),
(13, 'Jack', 'Hoiberg'),
(14, 'Steven', 'Izzo'),
(15, 'Davis', 'Smith'),
(16, 'Chase', 'Audige'),
(17, 'Miller', 'Kopp'),
(18, 'Pete', 'Nance'),
(19, 'Boo', 'Buie'),
(20, 'Ryan', 'Young'),
(21, 'Robbie', 'Beran'),
(22, 'Ty', 'Berry'),
(23, 'Anthony', 'Gaines'),
(24, 'Ryan', 'Greer'),
(25, 'Matthew', 'Nicholson'),
(26, 'Dom', 'Martinelli'),
(27, 'Roy', 'Dixon'),
(28, 'Dylan', 'Sandhu'),
(29, 'Eric', 'Zalewski'),
(30, 'D\'Mitrik', 'Trice'),
(31, 'Micah', 'Potter'),
(32, 'Brad', 'Davison'),
(33, 'Aleem', 'Ford'),
(34, 'Nate', 'Reuvers'),
(35, 'Jonathan', 'Davis'),
(36, 'Tyler', 'Wahl'),
(37, 'Trevor', 'Anderson'),
(38, 'Ben', 'Carlson'),
(39, 'Steven', 'Crowl'),
(40, 'Jordan', 'Davis'),
(41, 'Joe', 'Hedstrom'),
(42, 'Carter', 'Gilmore'),
(43, 'Carter', 'Higginbottom'),
(44, 'Walt', 'McGrory'),
(45, 'Justin', 'Taphorn'),
(46, 'Lorne', 'Bowman II'),
(47, 'Marcus', 'Carr'),
(48, 'Liam', 'Robbins'),
(49, 'Brandon', 'Johnson'),
(50, 'Jamal', 'Mashburn'),
(51, 'Both', 'Gach'),
(52, 'Gabe', 'Kalscheur'),
(53, 'Tre\'', 'Williams'),
(54, 'Eric', 'Curry'),
(55, 'Isaiah', 'Ihnen'),
(56, 'Sam', 'Freeman'),
(57, 'Jarvis', 'Omersa'),
(58, 'David', 'Mutaf'),
(59, 'Martice', 'Mitchell'),
(60, 'Hunt', 'Conroy'),
(61, 'Teddy', 'Allen'),
(62, 'Trey', 'McGowens'),
(63, 'Dalano', 'Banton'),
(64, 'Lat', 'Mayen'),
(65, 'Kobe', 'Webster'),
(66, 'Shamiel', 'Stevenson'),
(67, 'Thorir', 'Thorbjarnarson'),
(68, 'Derrick', 'Walker'),
(69, 'Yvan', 'Ouedraogo'),
(70, 'Eduardo', 'Andre'),
(71, 'Trevor', 'Lakes'),
(72, 'Elijah', 'Wood'),
(73, 'Jace', 'Piatkowski'),
(74, 'Bret', 'Porter'),
(75, 'Akol', 'Arop'),
(76, 'Chris', 'McGraw'),
(77, 'Ron', 'Harper'),
(78, 'Jacob', 'Young'),
(79, 'Geo', 'Baker'),
(80, 'Montez', 'Mathis'),
(81, 'Myles', 'Johnson'),
(82, 'Paul', 'Mulcahy'),
(83, 'Caleb', 'McConnell'),
(84, 'Clifford', 'Omoruyi'),
(85, 'Mawot', 'Mag'),
(86, 'Mamadou', 'Doucoure'),
(87, 'Dean', 'Reiber'),
(88, 'Oskar', 'Palmquist'),
(89, 'Jaden', 'Jones'),
(90, 'Nick', 'Brooks'),
(91, 'Daniel', 'Lobach'),
(92, 'Luke', 'Nathan'),
(93, 'Aiden', 'Terry'),
(94, 'Trevion', 'Williams'),
(95, 'Jaden', 'Ivey'),
(96, 'Zach', 'Edey'),
(97, 'Sasha', 'Stefanovic'),
(98, 'Brandon', 'Newman'),
(99, 'Eric', 'Hunter'),
(100, 'Mason', 'Gillis'),
(101, 'Isaiah', 'Thompson'),
(102, 'Aaron', 'Wheeler'),
(103, 'Ethan', 'Morton'),
(104, 'Matt', 'Frost'),
(105, 'Jared', 'Wulbrun'),
(106, 'Carson', 'Barrett'),
(107, 'Chase', 'Martin'),
(108, 'Emmanuel', 'Dowuona'),
(109, 'Duane', 'Washington'),
(110, 'E.J.', 'Liddell'),
(111, 'Justice', 'Sueing'),
(112, 'CJ', 'Walker'),
(113, 'Kyle', 'Young'),
(114, 'Justin', 'Ahrens'),
(115, 'Zed', 'Key'),
(116, 'Seth', 'Towns'),
(117, 'Musa', 'Jallow'),
(118, 'Eugene', 'Brown'),
(119, 'Meechie', 'Johnson Jr.'),
(120, 'Jimmy', 'Sotos'),
(121, 'Harrison', 'Hookfin'),
(122, 'Jansen', 'Davidson'),
(123, 'Ibrahima', 'Diallo'),
(124, 'Abel', 'Porter'),
(125, 'Luka', 'Garza'),
(126, 'Joe', 'Wieskamp'),
(127, 'Jordan', 'Bohannon'),
(128, 'Keegan', 'Murray'),
(129, 'CJ', 'Fredrick'),
(130, 'Patrick', 'McCaffery'),
(131, 'Jack', 'Nunge'),
(132, 'Joe', 'Toussaint'),
(133, 'Connor', 'McCaffery'),
(134, 'Tony', 'Perkins'),
(135, 'Ahron', 'Ulis'),
(136, 'Austin', 'Ash'),
(137, 'Kris', 'Murray'),
(138, 'Josh', 'Ogundele'),
(139, 'Michael', 'Baer'),
(140, 'Nicolas', 'Hobbs'),
(141, 'Myreon', 'Jones'),
(142, 'Izaiah', 'Brockington'),
(143, 'Seth', 'Lundy'),
(144, 'John', 'Harrar'),
(145, 'Sam', 'Sessoms'),
(146, 'Jamari', 'Wheeler'),
(147, 'Myles', 'Dread'),
(148, 'Trent', 'Buttrick'),
(149, 'Abdou', 'Tsimbila'),
(150, 'Caleb', 'Dorsey'),
(151, 'Dallion', 'Johnson'),
(152, 'Kyle', 'McCloskey'),
(153, 'DJ', 'Gordon'),
(154, 'Patrick', 'Kelly'),
(155, 'Taylor', 'Nussbaum'),
(156, 'Andy', 'Christos'),
(157, 'Trayce', 'Jackson-Davis'),
(158, 'Aljami', 'Durham'),
(159, 'Armaan', 'Franklin'),
(160, 'Race', 'Thompson'),
(161, 'Rob', 'Phinisee'),
(162, 'Jerome', 'Hunter'),
(163, 'Trey', 'Galloway'),
(164, 'Khristian', 'Lander'),
(165, 'Jordan', 'Geronimo'),
(166, 'Anthony', 'Leal'),
(167, 'Cooper', 'Bybee'),
(168, 'Nathan', 'Childress'),
(169, 'Michael', 'Shipp'),
(170, 'Joey', 'Brunk'),
(171, 'Jacquez', 'Henderson'),
(172, 'Sebastien', 'Scott'),
(173, 'Parker', 'Stewart'),
(174, 'Ayo', 'Dosunmu'),
(175, 'Kofi', 'Cockburn'),
(176, 'Trent', 'Frazier'),
(177, 'Andre', 'Curbelo'),
(178, 'Adam', 'Miller'),
(179, 'Da\'Monte', 'Williams'),
(180, 'Giorgi', 'Bezhanishvili'),
(181, 'Jacob', 'Grandison'),
(182, 'Coleman', 'Hawkins'),
(183, 'Jermaine', 'Hamlin'),
(184, 'Tyler', 'Underwood'),
(185, 'Zach', 'Griffith'),
(186, 'Brandon', 'Lieb'),
(187, 'Benjamin', 'Bosmans-Verdonk'),
(188, 'Connor', 'Serven'),
(189, 'Edgar', 'Padilla'),
(190, 'Austin', 'Hutcherson'),
(191, 'Aaron', 'Wiggins'),
(192, 'Eric', 'Ayala'),
(193, 'Donta', 'Scott'),
(194, 'Darryl', 'Morsell'),
(195, 'Hakim', 'Hart'),
(196, 'Jairus', 'Hamilton'),
(197, 'Galin', 'Smith'),
(198, 'Aquan', 'Smart'),
(199, 'Chol', 'Marial'),
(200, 'Marcus', 'Dockery'),
(201, 'James', 'Graham III'),
(202, 'Reese', 'Mona'),
(203, 'Jade', 'Brahmbhatt'),
(204, 'Arnaud', 'Revaz'),
(205, 'Aidan', 'McCool'),
(206, 'Connor', 'Odom'),
(207, 'Hunter', 'Dickinson'),
(208, 'Franz', 'Wagner'),
(209, 'Isaiah', 'Livers'),
(210, 'Eli', 'Brooks'),
(211, 'Mike', 'Smith'),
(212, 'Chaundee', 'Brown'),
(213, 'Brandon', 'Johns Jr.'),
(214, 'Austin', 'Davis'),
(215, 'Terrance', 'Williams'),
(216, 'Zeb', 'Jackson'),
(217, 'Jace', 'Howard'),
(218, 'Adrien', 'Nunez'),
(219, 'Jaron', 'Faulds'),
(220, 'C.J.', 'Baird'),
(221, 'Rico', 'Ozuna-Harrison'),
(222, 'Brandon', 'Wade'),
(223, 'Luke', 'Wilson'),
(224, 'Cassius', 'Winston'),
(225, 'Xavier', 'Tillman'),
(226, 'Kyle', 'Ahrens');
-- --------------------------------------------------------
--
-- Table structure for table `player_historical`
--
CREATE TABLE `player_historical` (
  `player_id` int(11) NOT NULL,
  `season_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `player_historical`
--
INSERT INTO `player_historical` (`player_id`, `season_id`, `team_id`) VALUES
(1, 11, 1),
(1, 12, 1),
(2, 10, 32),
(2, 12, 1),
(3, 12, 1),
(4, 11, 1),
(4, 12, 1),
(5, 11, 1),
(5, 12, 1),
(6, 11, 1),
(6, 12, 1),
(7, 11, 1),
(7, 12, 1),
(8, 11, 1),
(8, 12, 1),
(9, 11, 1),
(9, 12, 1),
(10, 12, 1),
(11, 11, 1),
(11, 12, 1),
(12, 12, 1),
(13, 11, 1),
(13, 12, 1),
(14, 12, 1),
(15, 12, 1),
(16, 12, 14),
(17, 12, 14),
(18, 12, 14),
(19, 12, 14),
(20, 12, 14),
(21, 12, 14),
(22, 12, 14),
(23, 12, 14),
(24, 12, 14),
(25, 12, 14),
(26, 12, 14),
(27, 12, 14),
(28, 12, 14),
(29, 12, 14),
(30, 12, 15),
(31, 12, 15),
(32, 12, 15),
(33, 12, 15),
(34, 12, 15),
(35, 12, 15),
(36, 12, 15),
(37, 12, 15),
(38, 12, 15),
(39, 12, 15),
(40, 12, 15),
(41, 12, 15),
(42, 12, 15),
(43, 12, 15),
(44, 12, 15),
(45, 12, 15),
(46, 12, 15),
(47, 12, 16),
(48, 12, 16),
(49, 12, 16),
(50, 12, 16),
(51, 12, 16),
(52, 12, 16),
(53, 12, 16),
(54, 12, 16),
(55, 12, 16),
(56, 12, 16),
(57, 12, 16),
(58, 12, 16),
(59, 12, 16),
(60, 12, 16),
(61, 12, 17),
(62, 12, 17),
(63, 12, 17),
(64, 12, 17),
(65, 12, 17),
(66, 12, 17),
(67, 12, 17),
(68, 12, 17),
(69, 12, 17),
(70, 12, 17),
(71, 12, 17),
(72, 12, 17),
(73, 12, 17),
(74, 12, 17),
(75, 12, 17),
(76, 12, 17),
(77, 12, 18),
(78, 12, 18),
(79, 12, 18),
(80, 12, 18),
(81, 12, 18),
(82, 12, 18),
(83, 12, 18),
(84, 12, 18),
(85, 12, 18),
(86, 12, 18),
(87, 12, 18),
(88, 12, 18),
(89, 12, 18),
(90, 12, 18),
(91, 12, 18),
(92, 12, 18),
(93, 12, 18),
(94, 12, 19),
(95, 12, 19),
(96, 12, 19),
(97, 12, 19),
(98, 12, 19),
(99, 12, 19),
(100, 12, 19),
(101, 12, 19),
(102, 12, 19),
(103, 12, 19),
(104, 12, 19),
(105, 12, 19),
(106, 12, 19),
(107, 12, 19),
(108, 12, 19),
(109, 12, 20),
(110, 12, 20),
(111, 12, 20),
(112, 12, 20),
(113, 12, 20),
(114, 12, 20),
(115, 12, 20),
(116, 12, 20),
(117, 12, 20),
(118, 12, 20),
(119, 12, 20),
(120, 12, 20),
(121, 12, 20),
(122, 12, 20),
(123, 12, 20),
(124, 12, 20),
(125, 12, 21),
(126, 12, 21),
(127, 12, 21),
(128, 12, 21),
(129, 12, 21),
(130, 12, 21),
(131, 12, 21),
(132, 12, 21),
(133, 12, 21),
(134, 12, 21),
(135, 12, 21),
(136, 12, 21),
(137, 12, 21),
(138, 12, 21),
(139, 12, 21),
(140, 12, 21),
(141, 12, 22),
(142, 12, 22),
(143, 12, 22),
(144, 12, 22),
(145, 12, 22),
(146, 12, 22),
(147, 12, 22),
(148, 12, 22),
(149, 12, 22),
(150, 12, 22),
(151, 12, 22),
(152, 12, 22),
(153, 12, 22),
(154, 12, 22),
(155, 12, 22),
(156, 12, 22),
(157, 12, 23),
(158, 12, 23),
(159, 12, 23),
(160, 12, 23),
(161, 12, 23),
(162, 12, 23),
(163, 12, 23),
(164, 12, 23),
(165, 12, 23),
(166, 12, 23),
(167, 12, 23),
(168, 12, 23),
(169, 12, 23),
(170, 12, 23),
(171, 12, 23),
(172, 12, 23),
(173, 12, 23),
(174, 12, 24),
(175, 12, 24),
(176, 12, 24),
(177, 12, 24),
(178, 12, 24),
(179, 12, 24),
(180, 12, 24),
(181, 12, 24),
(182, 12, 24),
(183, 12, 24),
(184, 12, 24),
(185, 12, 24),
(186, 12, 24),
(187, 12, 24),
(188, 12, 24),
(189, 12, 24),
(190, 12, 24),
(191, 12, 25),
(192, 12, 25),
(193, 12, 25),
(194, 12, 25),
(195, 12, 25),
(196, 12, 25),
(197, 12, 25),
(198, 12, 25),
(199, 12, 25),
(200, 12, 25),
(201, 12, 25),
(202, 12, 25),
(203, 12, 25),
(204, 12, 25),
(205, 12, 25),
(206, 12, 25),
(207, 12, 26),
(208, 12, 26),
(209, 12, 26),
(210, 12, 26),
(211, 12, 26),
(212, 12, 26),
(213, 12, 26),
(214, 12, 26),
(215, 12, 26),
(216, 12, 26),
(217, 12, 26),
(218, 12, 26),
(219, 12, 26),
(220, 12, 26),
(221, 12, 26),
(222, 12, 26),
(223, 12, 26),
(224, 11, 1),
(225, 11, 1),
(226, 11, 1);
-- --------------------------------------------------------
--
-- Table structure for table `record`
--
CREATE TABLE `record` (
  `season_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `win` int(10) UNSIGNED DEFAULT 0,
  `loss` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `record`
--
INSERT INTO `record` (`season_id`, `team_id`, `win`, `loss`) VALUES
(11, 1, 2, 1),
(11, 8, 1, 0),
(11, 9, 0, 1),
(11, 10, 0, 1),
(11, 11, 0, 0),
(11, 12, 0, 0),
(11, 13, 0, 0),
(12, 1, 6, 1),
(12, 2, 0, 1),
(12, 3, 0, 2),
(12, 4, 0, 2),
(12, 5, 0, 1),
(12, 6, 0, 1),
(12, 7, 0, 3),
(12, 10, 1, 0),
(12, 12, 0, 1),
(12, 14, 5, 1),
(12, 15, 5, 1),
(12, 16, 6, 0),
(12, 17, 3, 3),
(12, 18, 6, 0),
(12, 19, 5, 2),
(12, 20, 5, 2),
(12, 21, 6, 0),
(12, 22, 3, 3),
(12, 23, 4, 3),
(12, 24, 5, 3),
(12, 25, 4, 2),
(12, 26, 6, 0),
(12, 27, 0, 2),
(12, 28, 0, 2),
(12, 29, 1, 0),
(12, 30, 0, 1),
(12, 31, 0, 2),
(12, 32, 1, 0),
(12, 33, 0, 1),
(12, 34, 0, 1),
(12, 35, 0, 2),
(12, 36, 0, 1),
(12, 37, 0, 1),
(12, 38, 0, 1),
(12, 39, 0, 1),
(12, 40, 1, 0),
(12, 41, 0, 1),
(12, 42, 0, 1),
(12, 43, 1, 0),
(12, 44, 1, 0),
(12, 45, 0, 1),
(12, 46, 0, 1),
(12, 47, 0, 1),
(12, 48, 0, 1),
(12, 49, 0, 1),
(12, 50, 2, 0),
(12, 51, 0, 1),
(12, 52, 1, 0),
(12, 53, 0, 1),
(12, 54, 0, 1),
(12, 55, 0, 1),
(12, 56, 0, 1),
(12, 57, 0, 1),
(12, 58, 0, 1),
(12, 59, 0, 1),
(12, 60, 0, 1),
(12, 61, 0, 1),
(12, 62, 0, 1),
(12, 63, 0, 1),
(12, 64, 0, 1),
(12, 65, 0, 1),
(12, 66, 0, 1),
(12, 67, 0, 1),
(12, 68, 1, 0),
(12, 69, 0, 1),
(12, 70, 1, 0),
(12, 71, 0, 1),
(12, 72, 0, 1),
(12, 73, 0, 1),
(12, 74, 1, 0),
(12, 75, 1, 0),
(12, 76, 0, 1),
(12, 77, 0, 1),
(12, 78, 0, 1),
(12, 79, 0, 1),
(12, 80, 0, 1),
(12, 81, 0, 1),
(12, 82, 0, 1),
(12, 83, 0, 1);
-- --------------------------------------------------------
--
-- Table structure for table `season`
--
CREATE TABLE `season` (
  `season_id` int(11) NOT NULL,
  `season` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Dumping data for table `season`
--
INSERT INTO `season` (`season_id`, `season`) VALUES
(1, 2010),
(2, 2011),
(3, 2012),
(4, 2013),
(5, 2014),
(6, 2015),
(7, 2016),
(8, 2017),
(9, 2018),
(10, 2019),
(11, 2020),
(12, 2021),
(13, 2022);
-- --------------------------------------------------------
--
-- Table structure for table `team`
--
CREATE TABLE `team` (
  `team_id` int(11) NOT NULL,
  `university` varchar(75) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `conference_id` int(11) NOT NULL,
  `detail` longtext DEFAULT NULL
) ;
--
-- Dumping data for table `team`
--
INSERT INTO `team` (`team_id`, `university`, `nickname`, `conference_id`, `detail`)
VALUES
(1, 'Michigan State University', 'Spartans', 10, '{\"national_champion\": 
[\"1979\", \"2000 National Champion\"] , \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 13}}}\r\n'),
(2, 'Eastern Michigan University', 'Eagles', 17, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(3, 'University of Notre Dame', 'Fighting Irish', 4, '{\"color\": 
{\"primary\": \"navy\", \"secondary\": \"gold\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(4, 'Duke University', 'Blue Devils', 4, '{\"national_champion\":
[\"1991\", \"1992\", \"2001\", \"2010\", \"2015 National Champion\"] ,\"color\": 
{\"primary\": \"blue\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 9}}}'),
(5, 'University of Detroit Mercy', 'Titans', 14, '{\"color\": 
{\"primary\": \"blue\", \"secondary\": \"red\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(6, 'Western Michigan University', 'Broncos', 17, '{\"color\": 
{\"primary\": \"brown\", \"secondary\": \"gold\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(7, 'Oakland University', 'Golden Grizzlies', 14, '{\"color\": 
{\"primary\": \"black\", \"secondary\": \"gold\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(8, 'University of Kentucky', 'Wildcats', 25, '{\"national_champion\":
[\"1948\", \"1949\", \"1951\", \"1958\", \"1978\", \"1996\", \"1998\", \"2012 
National Champion\"] ,\"color\": {\"primary\": \"blue\", \"secondary\": \"white\"},
\"ranking\": {\r\n\"2021\": {\"Preseason\": 10}}}'),
(9, 'Binghamton University', 'Bearcats', 1, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(10, 'Seton Hall University', 'Pirates', 7, '{\"color\": 
{\"primary\": \"blue\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(11, 'Charleston Southern University', 'Buccaneers', 9, '{\"color\": 
{\"primary\": \"navy\", \"secondary\": \"gold\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(12, 'Virginia Tech University', 'Hokies', 4, '{\"color\": 
{\"primary\": \"maroon\", \"secondary\": \"orange\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(13, 'University of Georgia', 'Bulldogs', 25, '{\"color\": 
{\"primary\": \"red\", \"secondary\": \"black\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(14, 'Northwestern University', 'Wildcats', 10, '{\"color\": 
{\"primary\": \"purple\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(15, 'University of Wisconsin', 'Badgers', 10, '{\"national_champion\": [\"1941 
National Champion\"] , \"color\": {\"primary\": \"red\", \"secondary\": \"white\"},
\"ranking\": {\r\n\"2021\": {\"Preseason\": 7}}}'),
(16, 'University of Minnesota', 'Golden Gophers', 10, '{\"color\": 
{\"primary\": \"maroon\", \"secondary\": \"gold\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(17, 'University of Nebraska', 'Cornhuskers', 10, '{\"color\": 
{\"primary\": \"red\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(18, 'Rutgers University', 'Scarlet Knights', 10, '{\"color\": 
{\"primary\": \"red\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 24}}}'),
(19, 'Purdue University', 'Boilermakers', 10, '{\"color\": 
{\"primary\": \"gold\", \"secondary\": \"black\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(20, 'Ohio State University', 'Buckeyes', 10, '{\"national_champion\": [\"1960 
National Champion\"] , \"color\": {\"primary\": \"red\", \"secondary\": \"white\"},
\"ranking\": {\r\n\"2021\": {\"Preseason\": 23}}}'),
(21, 'University of Iowa', 'Hawkeyes', 10, '{\"color\": 
{\"primary\": \"yellow\", \"secondary\": \"black\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 5}}}'),
(22, 'Penn State University', 'Nittany Lions', 10, '{\"color\": 
{\"primary\": \"navy\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(23, 'Indiana University', 'Hoosiers', 10, '{\"national_champion\": 
[\"1940\", \"1953\", \"1976\", \"1981\", \"1987 National Champion\"] , \"color\": 
{\"primary\": \"red\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(24, 'University of Illinois', 'Fighting Illini', 10, '{\"conference_champion\":
[\"2021 Big Ten Conference Tournament Champion\"], \"color\": 
{\"primary\": \"orange\", \"secondary\": \"blue\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 8}}}'),
(25, 'University of Maryland', 'Terrapins', 10, '{\"national_champion\": [\"2002 
National Champion\"] , \"color\": 
{\"primary\": \"red\", \"secondary\": \"gold\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(26, 'University of Michigan', 'Wolverines', 10, '{\"national_champion\": [\"1989 
National Champion\"] , \"color\": 
{\"primary\": \"navy\", \"secondary\": \"yellow\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 25}}}'),
(27, 'University of Arkansas-Pine Bluff', 'Golden Lions', 28, '{\"color\": 
{\"primary\": \"black\", \"secondary\": \"gold\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(28, 'Chicago State University', 'Cougars', 32, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(29, 'University of Pittsburgh', 'Panthers', 4, '{\"color\": 
{\"primary\": \"navy\", \"secondary\": \"gold\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(30, 'Eastern Illinois University', 'Panthers', 22, '{\"color\": 
{\"primary\": \"blue\", \"secondary\": \"black\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(31, 'University of Wisconsin-Green Bay', 'Phoenix', 14, '{\"color\": {\"primary\":
\"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(32, 'Marquette University', 'Golden Eagles', 7, '{\"national_champion\": [\"1977 
National Champion\"] , \"color\": 
{\"primary\": \"navy\", \"secondary\": \"yellow\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(33, 'University of Rhode Island', 'Rams', 3, '{\"color\": 
{\"primary\": \"blue\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(34, 'Loyola University Chicago', 'Ramblers', 19, '{\"conference_champion\":[\"2021
Missouri Valley Conference Tournament Champion\"], \"national_champion\": [\"1963 
National Champion\"], \"color\": 
{\"primary\": \"maroon\", \"secondary\": \"gold\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(35, 'Loyola Marymount University', 'Lions', 31, '{\"color\": 
{\"primary\": \"red\", \"secondary\": \"blue\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(36, 'University of North Dakota', 'Fighting Hawks', 30, '{\"color\": {\"primary\":
\"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(37, 'Boston College', 'Eagles', 4, '{\"color\": 
{\"primary\": \"maroon\", \"secondary\": \"gold\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(38, 'University of Missouri-Kansas City', 'Kangaroos', 30, '{\"color\": 
{\"primary\": \"blue\", \"secondary\": \"gold\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(39, 'McNeese State University', 'Cowboys', 27, '{\"color\": 
{\"primary\": \"blue\", \"secondary\": \"gold\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(40, 'University of Nevada', 'Wolf Pack', 20, '{\"color\": 
{\"primary\": \"navy\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(41, 'North Dakota State University', 'Bison', 30, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"yellow\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(42, 'University of South Dakota', 'Coyotes', 30, '{\"color\": 
{\"primary\": \"red\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(43, 'Georgia Tech', 'Yellow Jackets', 4, '{\"conference_champion\":[\"2021 
Atlantic Coast Conference Tournament Champion\"], \"color\": 
{\"primary\": \"gold\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(44, 'Creighton University', 'Bluejays', 7, '{\"color\": 
{\"primary\": \"blue\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 11}}}'),
(45, 'Sacred Heart University', 'Pioneers', 21, '{\"color\": {\"primary\": \"red\",
\"secondary\": \"grey\"}, \"ranking\": {\r\n\"2021\": {\"Preseason\": \"NR\"}}}'),
(46, 'Fairleigh Dickinson University', 'Knights', 21, '{\"color\": 
{\"primary\": \"blue\", \"secondary\": \"red\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(47, 'Hofstra University', 'Pride', 12, '{\"color\": 
{\"primary\": \"blue\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(48, 'Syracuse University', 'Orange', 4, '{\"national_champion\": [\"2003 National 
Champion\"] , \"color\": 
{\"primary\": \"orange\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(49, 'Liberty University', 'Flames', 5, '{\"conference_champion\":[\"2021 Atlantic 
Sun Conference Tournament Champion\"], \"color\": 
{\"primary\": \"red\", \"secondary\": \"navy\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(50, 'Clemson University', 'Tigers', 4, '{\"color\": 
{\"primary\": \"orange\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(51, 'Valparaiso University', 'Crusaders', 19, '{\"color\": 
{\"primary\": \"brown\", \"secondary\": \"gold\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(52, 'University of Miami', 'Hurricanes', 4, '{\"color\": {\"primary\": \"orange\",
\"secondary\": \"green\"}, \"ranking\": {\r\n\"2021\": {\"Preseason\": \"NR\"}}}'),
(53, 'Indiana State University', 'Sycamores', 19, '{\"color\": 
{\"primary\": \"blue\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(54, 'Illinois State University', 'Redbirds', 19, '{\"color\": 
{\"primary\": \"red\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(55, 'University of Massachusetts Lowell', 'River Hawks', 1, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(56, 'Morehead State University', 'Eagles', 22, '{\"conference_champion\":[\"2021 
Ohio Valley Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(57, 'Cleveland State University', 'Vikings', 14, '{\"conference_champion\":[\"2021
Horizon League Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(58, 'North Carolina Central University', 'Eagles', 18, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(59, 'Southern University', 'Jaguars', 28, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(60, 'Western Illinois University', 'Leathernecks', 30, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(61, 'University of North Carolina', 'Tarheels', 4, '{\"national_champion\": 
[\"1957\", \"1982\", \"1993\", \"2005\", \"2009\", \"2017 National 
Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 16}}}'),
(62, 'Iowa State University', 'Cyclones', 6, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(63, 'Northern Illinois University', 'Huskies', 17, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(64, 'Virginia Military Institute', 'Keydets', 26, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(65, 'Virginia Commonwealth University', 'Rams', 3, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(66, 'Tennessee Tech University', 'Golden Eagles', 22, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(67, 'Providence College', 'Friars', 7, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(68, 'University of Texas', 'Longhorns', 6, '{\"conference_champion\":[\"2021 Big 
12 Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 19}}}'),
(69, 'Stanford University', 'Cardinal', 23, '{\"national_champion\": [\"1942 
National Champion\"] , \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(70, 'Florida State University', 'Seminoles', 4, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 21}}}'),
(71, 'University of North Alabama', 'Lions', 5, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(72, 'North Carolina A&T State University', 'Aggies', 18, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(73, 'Ohio University', 'Bobcats', 17, '{\"conference_champion\":[\"2021 Mid-
American Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(74, 'Baylor University', 'Bears', 6, '{\"national_champion\": [\"2021 National 
Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 2}}}'),
(75, 'University of Missouri', 'Tigers', 25, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(76, 'Old Dominion University', 'Monarchs', 13, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(77, 'United States Naval Academy', 'Midshipmen', 24, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(78, 'Mount St. Mary\'s University', 'Mountaineers', 21, '{\"conference_champion\":
[\"2021 Northeast Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(79, 'Saint Peter\'s University', 'Peacocks', 16, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(80, 'Bowling Green State University', 'Falcons', 17, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(81, 'Ball State University', 'Cardinals', 17, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(82, 'University of Central Florida', 'Knights', 2, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(83, 'University of Toledo', 'Rockets', 17, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(84, 'Southern Utah University', 'Thunderbirds', 8, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(85, 'University of California Santa Barbara', 'Gauchos', 11, 
'{\"conference_champion\":[\"2021 Big West Conference Tournament 
Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(86, 'Harvard University', 'Crimson', 15, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(87, 'Georgia State University', 'Panthers', 29, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(88, 'University of Hartford', 'Hawks', 1, '{\"conference_champion\":[\"2021 
America East Conference Tournament Champion\"], \"color\": {\"primary\": \"green\",
\"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": {\"Preseason\": \"NR\"}}}'),
(89, 'University of Houston', 'Cougars', 2, '{\"conference_champion\":[\"2021 
American Athletic Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 17}}}'),
(90, 'St. Bonaventure University', 'Bonnies', 3, '{\"conference_champion\":[\"2021 
Atlantic 10 Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(91, 'Georgetown University', 'Hoyas', 7, '{\"conference_champion\":[\"2021 Big 
East Conference Tournament Champion\"], \"national_champion\": [\"1984 National 
Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(92, 'Eastern Washington University', 'Eagles', 8, '{\"conference_champion\":
[\"2021 Big Sky Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(93, 'Winthrop University', 'Eagles', 9, '{\"conference_champion\":[\"2021 Big 
South Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(94, 'Drexel University', 'Dragons', 12, '{\"conference_champion\":[\"2021 Colonial
Athletic Association Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(95, 'University of North Texas', 'Mean Green', 13, '{\"conference_champion\":
[\"2021 Conference USA Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(96, 'Iona College', 'Gaels', 16, '{\"conference_champion\":[\"2021 Metro Atlantic 
Athletic Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(97, 'Norfolk State University', 'Spartans', 18, '{\"conference_champion\":[\"2021 
Mid-Eastern Athletic Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(98, 'San Diego State University', 'Aztecs', 20, '{\"conference_champion\":[\"2021 
Mountain West Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(99, 'Oregon State University', 'Beavers', 23, '{\"conference_champion\":[\"2021 
Pac-12 Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(100, 'Colgate University', 'Raiders', 24, '{\"conference_champion\":[\"2021 
Patriot League Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(101, 'University of Alabama', 'Crimson Tide', 25, '{\"conference_champion\":
[\"2021 Southeastern Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(102, 'University of North Carolina Greensboro', 'Spartans', 26, 
'{\"conference_champion\":[\"2021 Southern Conference Tournament 
Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(103, 'Abilene Christian University', 'Wildcats', 27, '{\"conference_champion\":
[\"2021 Southland Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(104, 'Texas Southern University', 'Tigers', 28, '{\"conference_champion\":[\"2021 
Southwestern Athletic Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(105, 'Oral Roberts University', 'Golden Eagles', 30, '{\"conference_champion\":
[\"2021 Summit League Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(106, 'Appalachian State University', 'Mountaineers', 29, 
'{\"conference_champion\":[\"2021 Sun Belt Conference Tournament 
Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(107, 'Gonzaga University', 'Bulldogs', 31, '{\"conference_champion\":[\"2021 West 
Coast Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 1}}}'),
(108, 'Grand Canyon University', 'Antelopes', 32, '{\"conference_champion\":[\"2021
Western Athletic Conference Tournament Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": \"NR\"}}}'),
(109, 'Villanova University', 'Wildcats', 7, '{\"national_champion\": 
[\"1985\", \"2016\", \"2018 National Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 3}}}'),
(110, 'University of Kansas', 'Jayhawks', 6, '{\"national_champion\": 
[\"1952\", \"1988\", \"2008 National Champion\"] , \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 6}}}'),
(111, 'University of Virginia', 'Cavaliers', 4, '{\"national_champion\": [\"2019 
National Champion\"], \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 4}}}'),
(112, 'University of Tennessee', 'Volunteers', 25, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 12}}}'),
(113, 'Texas Tech University', 'Red Raiders', 6, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 14}}}'),
(114, 'West Virginia University', 'Mountaineers', 6, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 15}}}'),
(115, 'Arizona State University', 'Sun Devils', 23, '{\"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 18}}}'),
(116, 'University of Oregon', 'Ducks', 23, '{\"national_champion\": [\"1939 
National Champion\"] , \"color\": 
{\"primary\": \"green\", \"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": 
{\"Preseason\": 20}}}'),
(117, 'University of California, Los Angeles', 'Bruins', 23, 
'{\"national_champion\": 
[\"1964\", \"1965\", \"1967\", \"1968\", \"1969\", \"1970\", \"1971\", \"1972\", \"
1973\", \"1975\", \"1995 National Champion\"] , \"color\": {\"primary\": \"green\",
\"secondary\": \"white\"}, \"ranking\": {\r\n\"2021\": {\"Preseason\": 22}}}');
-- --------------------------------------------------------
--
-- Stand-in structure for view `top_10_scorer_2021`
-- (See below for the actual view)
--
CREATE TABLE `top_10_scorer_2021` (
`first_name` varchar(50)
,`last_name` varchar(50)
,`season` year(4)
,`university` varchar(75)
,`nickname` varchar(50)
,`Conference` varchar(75)
,`Points per Game` decimal(14,4)
);
-- --------------------------------------------------------
--
-- Structure for view `big_10_standing`
--
DROP TABLE IF EXISTS `big_10_standing`;
CREATE ALGORITHM=UNDEFINED DEFINER=`natepete`@`localhost` SQL SECURITY DEFINER VIEW
`big_10_standing`  AS  select `s`.`season` AS `season`,`t`.`university` AS 
`university`,`t`.`nickname` AS `nickname`,`r`.`win` AS `win`,`r`.`loss` AS 
`loss`,`r`.`win` / (`r`.`win` + `r`.`loss`) AS `Win Percentage` from (((`team` `t` 
join `record` `r` on(`t`.`team_id` = `r`.`team_id`)) join `conference` `c` 
on(`t`.`conference_id` = `c`.`conference_id`)) join `season` `s` on(`r`.`season_id`
= `s`.`season_id`)) where `c`.`name` = 'Big Ten Conference' and `s`.`season` = 2021
order by `r`.`win` / (`r`.`win` + `r`.`loss`) desc ;
-- --------------------------------------------------------
--
-- Structure for view `top_10_scorer_2021`
--
DROP TABLE IF EXISTS `top_10_scorer_2021`;
CREATE ALGORITHM=UNDEFINED DEFINER=`natepete`@`localhost` SQL SECURITY DEFINER VIEW
`top_10_scorer_2021`  AS  select `p`.`first_name` AS `first_name`,`p`.`last_name` 
AS `last_name`,`s`.`season` AS `season`,`t`.`university` AS 
`university`,`t`.`nickname` AS `nickname`,`c`.`name` AS 
`Conference`,avg(`g`.`point`) AS `Points per Game` from ((((((`player_historical` 
join `player` `p` on(`player_historical`.`player_id` = `p`.`player_id`)) join 
`season` `s` on(`player_historical`.`season_id` = `s`.`season_id`)) join `team` `t`
on(`player_historical`.`team_id` = `t`.`team_id`)) join `conference` `c` 
on(`t`.`conference_id` = `c`.`conference_id`)) join `game` on((`t`.`team_id` = 
`game`.`win_team_id` or `t`.`team_id` = `game`.`lose_team_id`) and `s`.`season_id` 
= `game`.`season_id`)) join `game_stat` `g` on(`game`.`game_id` = `g`.`game_id` and
`p`.`player_id` = `g`.`player_id`)) where `s`.`season` = 2021 group by 
`p`.`player_id`,`s`.`season_id` order by avg(`g`.`point`) desc limit 10 ;
--
-- Indexes for dumped tables
--
--
-- Indexes for table `conference`
--
ALTER TABLE `conference`
  ADD PRIMARY KEY (`conference_id`);
--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`game_id`),
  ADD KEY `season_id` (`season_id`),
  ADD KEY `win_team_id` (`win_team_id`),
  ADD KEY `lose_team_id` (`lose_team_id`),
  ADD KEY `type_id` (`type_id`);
--
-- Indexes for table `game_stat`
--
ALTER TABLE `game_stat`
  ADD PRIMARY KEY (`player_id`,`game_id`),
  ADD KEY `game_id` (`game_id`);
--
-- Indexes for table `game_type`
--
ALTER TABLE `game_type`
  ADD PRIMARY KEY (`type_id`);
--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`player_id`),
  ADD KEY `last_name` (`last_name`);
--
-- Indexes for table `player_historical`
--
ALTER TABLE `player_historical`
  ADD PRIMARY KEY (`player_id`,`season_id`,`team_id`),
  ADD KEY `season_id` (`season_id`),
  ADD KEY `team_id` (`team_id`);
--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`season_id`,`team_id`),
  ADD KEY `team_id` (`team_id`);
--
-- Indexes for table `season`
--
ALTER TABLE `season`
  ADD PRIMARY KEY (`season_id`);
--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`team_id`),
  ADD KEY `conference_id` (`conference_id`);
--
-- AUTO_INCREMENT for dumped tables
--
--
-- AUTO_INCREMENT for table `conference`
--
ALTER TABLE `conference`
  MODIFY `conference_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;
--
-- AUTO_INCREMENT for table `game_type`
--
ALTER TABLE `game_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;
--
-- AUTO_INCREMENT for table `season`
--
ALTER TABLE `season`
  MODIFY `season_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--
--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_ibfk_1` FOREIGN KEY (`season_id`) REFERENCES `season` 
(`season_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `game_ibfk_2` FOREIGN KEY (`win_team_id`) REFERENCES `team` 
(`team_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `game_ibfk_3` FOREIGN KEY (`lose_team_id`) REFERENCES `team` 
(`team_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `game_ibfk_4` FOREIGN KEY (`type_id`) REFERENCES `game_type` 
(`type_id`) ON UPDATE CASCADE;
--
-- Constraints for table `game_stat`
--
ALTER TABLE `game_stat`
  ADD CONSTRAINT `game_stat_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES `player` 
(`player_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `game_stat_ibfk_2` FOREIGN KEY (`game_id`) REFERENCES `game` 
(`game_id`) ON UPDATE CASCADE;
--
-- Constraints for table `player_historical`
--
ALTER TABLE `player_historical`
  ADD CONSTRAINT `player_historical_ibfk_1` FOREIGN KEY (`player_id`) REFERENCES 
`player` (`player_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `player_historical_ibfk_2` FOREIGN KEY (`season_id`) REFERENCES 
`season` (`season_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `player_historical_ibfk_3` FOREIGN KEY (`team_id`) REFERENCES 
`team` (`team_id`) ON UPDATE CASCADE;
--
-- Constraints for table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `record_ibfk_1` FOREIGN KEY (`season_id`) REFERENCES `season` 
(`season_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `record_ibfk_2` FOREIGN KEY (`team_id`) REFERENCES `team` 
(`team_id`) ON UPDATE CASCADE;
--
-- Constraints for table `team`
--
ALTER TABLE `team`
  ADD CONSTRAINT `team_ibfk_1` FOREIGN KEY (`conference_id`) REFERENCES 
`conference` (`conference_id`) ON UPDATE CASCADE;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
