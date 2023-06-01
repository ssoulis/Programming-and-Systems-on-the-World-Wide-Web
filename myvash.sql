-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 02 Σεπ 2022 στις 17:31:10
-- Έκδοση διακομιστή: 10.4.17-MariaDB
-- Έκδοση PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `myvash`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `checkins`
--

CREATE TABLE `checkins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `popularity_estimation` int(12) NOT NULL,
  `timestamp` date NOT NULL DEFAULT current_timestamp(),
  `place` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `checkins`
--

INSERT INTO `checkins` (`id`, `name`, `popularity_estimation`, `timestamp`, `place`) VALUES
(2, 'Nikos', 12, '2022-07-16', 'Bocas'),
(6, 'Kwstas', 5, '2022-07-16', 'Zolotas S.A.'),
(7, 'Petros', 5, '2022-07-16', 'Zolotas S.A.'),
(8, 'Spyros', 5, '2022-07-16', 'Zolotas S.A.'),
(9, 'Dimitra', 5, '2022-07-16', 'Bocas'),
(10, 'Alekos', 5, '2022-08-01', 'Zolotas S.A.'),
(11, 'Katerina', 5, '2022-08-16', 'B.M.G. RENTACAR'),
(12, 'Thomai', 5, '2022-08-16', 'B.M.G. RENTACAR'),
(13, 'Dimitris', 5, '2022-08-16', 'B.M.G. RENTACAR'),
(14, 'Tania', 5, '2022-08-27', 'Coffee Lab'),
(16, 'Nikos', 22, '2022-09-20', 'adidas Store Patra'),
(17, 'Nikos', 12, '2022-09-06', 'adidas Store Patra');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `generic`
--

CREATE TABLE `generic` (
  `mainid` int(11) NOT NULL,
  `id` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `types0` varchar(100) DEFAULT NULL,
  `types1` varchar(100) DEFAULT NULL,
  `types2` varchar(100) DEFAULT NULL,
  `types3` varchar(100) DEFAULT NULL,
  `types4` varchar(100) DEFAULT NULL,
  `types5` varchar(100) DEFAULT NULL,
  `coordinateslat` double DEFAULT NULL,
  `coordinateslng` double DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `rating_n` double DEFAULT NULL,
  `current_popularity` double DEFAULT NULL,
  `populartimes0name` varchar(100) DEFAULT NULL,
  `populartimes0data0` double DEFAULT NULL,
  `populartimes0data1` double DEFAULT NULL,
  `populartimes0data2` double DEFAULT NULL,
  `populartimes0data3` double DEFAULT NULL,
  `populartimes0data4` double DEFAULT NULL,
  `populartimes0data5` double DEFAULT NULL,
  `populartimes0data6` double DEFAULT NULL,
  `populartimes0data7` double DEFAULT NULL,
  `populartimes0data8` double DEFAULT NULL,
  `populartimes0data9` double DEFAULT NULL,
  `populartimes0data10` double DEFAULT NULL,
  `populartimes0data11` double DEFAULT NULL,
  `populartimes0data12` double DEFAULT NULL,
  `populartimes0data13` double DEFAULT NULL,
  `populartimes0data14` double DEFAULT NULL,
  `populartimes0data15` double DEFAULT NULL,
  `populartimes0data16` double DEFAULT NULL,
  `populartimes0data17` double DEFAULT NULL,
  `populartimes0data18` double DEFAULT NULL,
  `populartimes0data19` double DEFAULT NULL,
  `populartimes0data20` double DEFAULT NULL,
  `populartimes0data21` double DEFAULT NULL,
  `populartimes0data22` double DEFAULT NULL,
  `populartimes0data23` double DEFAULT NULL,
  `populartimes1name` varchar(100) DEFAULT NULL,
  `populartimes1data0` double DEFAULT NULL,
  `populartimes1data1` double DEFAULT NULL,
  `populartimes1data2` double DEFAULT NULL,
  `populartimes1data3` double DEFAULT NULL,
  `populartimes1data4` double DEFAULT NULL,
  `populartimes1data5` double DEFAULT NULL,
  `populartimes1data6` double DEFAULT NULL,
  `populartimes1data7` double DEFAULT NULL,
  `populartimes1data8` double DEFAULT NULL,
  `populartimes1data9` double DEFAULT NULL,
  `populartimes1data10` double DEFAULT NULL,
  `populartimes1data11` double DEFAULT NULL,
  `populartimes1data12` double DEFAULT NULL,
  `populartimes1data13` double DEFAULT NULL,
  `populartimes1data14` double DEFAULT NULL,
  `populartimes1data15` double DEFAULT NULL,
  `populartimes1data16` double DEFAULT NULL,
  `populartimes1data17` double DEFAULT NULL,
  `populartimes1data18` double DEFAULT NULL,
  `populartimes1data19` double DEFAULT NULL,
  `populartimes1data20` double DEFAULT NULL,
  `populartimes1data21` double DEFAULT NULL,
  `populartimes1data22` double DEFAULT NULL,
  `populartimes1data23` double DEFAULT NULL,
  `populartimes2name` varchar(100) DEFAULT NULL,
  `populartimes2data0` double DEFAULT NULL,
  `populartimes2data1` double DEFAULT NULL,
  `populartimes2data2` double DEFAULT NULL,
  `populartimes2data3` double DEFAULT NULL,
  `populartimes2data4` double DEFAULT NULL,
  `populartimes2data5` double DEFAULT NULL,
  `populartimes2data6` double DEFAULT NULL,
  `populartimes2data7` double DEFAULT NULL,
  `populartimes2data8` double DEFAULT NULL,
  `populartimes2data9` double DEFAULT NULL,
  `populartimes2data10` double DEFAULT NULL,
  `populartimes2data11` double DEFAULT NULL,
  `populartimes2data12` double DEFAULT NULL,
  `populartimes2data13` double DEFAULT NULL,
  `populartimes2data14` double DEFAULT NULL,
  `populartimes2data15` double DEFAULT NULL,
  `populartimes2data16` double DEFAULT NULL,
  `populartimes2data17` double DEFAULT NULL,
  `populartimes2data18` double DEFAULT NULL,
  `populartimes2data19` double DEFAULT NULL,
  `populartimes2data20` double DEFAULT NULL,
  `populartimes2data21` double DEFAULT NULL,
  `populartimes2data22` double DEFAULT NULL,
  `populartimes2data23` double DEFAULT NULL,
  `populartimes3name` varchar(100) DEFAULT NULL,
  `populartimes3data0` double DEFAULT NULL,
  `populartimes3data1` double DEFAULT NULL,
  `populartimes3data2` double DEFAULT NULL,
  `populartimes3data3` double DEFAULT NULL,
  `populartimes3data4` double DEFAULT NULL,
  `populartimes3data5` double DEFAULT NULL,
  `populartimes3data6` double DEFAULT NULL,
  `populartimes3data7` double DEFAULT NULL,
  `populartimes3data8` double DEFAULT NULL,
  `populartimes3data9` double DEFAULT NULL,
  `populartimes3data10` double DEFAULT NULL,
  `populartimes3data11` double DEFAULT NULL,
  `populartimes3data12` double DEFAULT NULL,
  `populartimes3data13` double DEFAULT NULL,
  `populartimes3data14` double DEFAULT NULL,
  `populartimes3data15` double DEFAULT NULL,
  `populartimes3data16` double DEFAULT NULL,
  `populartimes3data17` double DEFAULT NULL,
  `populartimes3data18` double DEFAULT NULL,
  `populartimes3data19` double DEFAULT NULL,
  `populartimes3data20` double DEFAULT NULL,
  `populartimes3data21` double DEFAULT NULL,
  `populartimes3data22` double DEFAULT NULL,
  `populartimes3data23` double DEFAULT NULL,
  `populartimes4name` varchar(100) DEFAULT NULL,
  `populartimes4data0` double DEFAULT NULL,
  `populartimes4data1` double DEFAULT NULL,
  `populartimes4data2` double DEFAULT NULL,
  `populartimes4data3` double DEFAULT NULL,
  `populartimes4data4` double DEFAULT NULL,
  `populartimes4data5` double DEFAULT NULL,
  `populartimes4data6` double DEFAULT NULL,
  `populartimes4data7` double DEFAULT NULL,
  `populartimes4data8` double DEFAULT NULL,
  `populartimes4data9` double DEFAULT NULL,
  `populartimes4data10` double DEFAULT NULL,
  `populartimes4data11` double DEFAULT NULL,
  `populartimes4data12` double DEFAULT NULL,
  `populartimes4data13` double DEFAULT NULL,
  `populartimes4data14` double DEFAULT NULL,
  `populartimes4data15` double DEFAULT NULL,
  `populartimes4data16` double DEFAULT NULL,
  `populartimes4data17` double DEFAULT NULL,
  `populartimes4data18` double DEFAULT NULL,
  `populartimes4data19` double DEFAULT NULL,
  `populartimes4data20` double DEFAULT NULL,
  `populartimes4data21` double DEFAULT NULL,
  `populartimes4data22` double DEFAULT NULL,
  `populartimes4data23` double DEFAULT NULL,
  `populartimes5name` varchar(100) DEFAULT NULL,
  `populartimes5data0` double DEFAULT NULL,
  `populartimes5data1` double DEFAULT NULL,
  `populartimes5data2` double DEFAULT NULL,
  `populartimes5data3` double DEFAULT NULL,
  `populartimes5data4` double DEFAULT NULL,
  `populartimes5data5` double DEFAULT NULL,
  `populartimes5data6` double DEFAULT NULL,
  `populartimes5data7` double DEFAULT NULL,
  `populartimes5data8` double DEFAULT NULL,
  `populartimes5data9` double DEFAULT NULL,
  `populartimes5data10` double DEFAULT NULL,
  `populartimes5data11` double DEFAULT NULL,
  `populartimes5data12` double DEFAULT NULL,
  `populartimes5data13` double DEFAULT NULL,
  `populartimes5data14` double DEFAULT NULL,
  `populartimes5data15` double DEFAULT NULL,
  `populartimes5data16` double DEFAULT NULL,
  `populartimes5data17` double DEFAULT NULL,
  `populartimes5data18` double DEFAULT NULL,
  `populartimes5data19` double DEFAULT NULL,
  `populartimes5data20` double DEFAULT NULL,
  `populartimes5data21` double DEFAULT NULL,
  `populartimes5data22` double DEFAULT NULL,
  `populartimes5data23` double DEFAULT NULL,
  `populartimes6name` varchar(100) DEFAULT NULL,
  `populartimes6data0` double DEFAULT NULL,
  `populartimes6data1` double DEFAULT NULL,
  `populartimes6data2` double DEFAULT NULL,
  `populartimes6data3` double DEFAULT NULL,
  `populartimes6data4` double DEFAULT NULL,
  `populartimes6data5` double DEFAULT NULL,
  `populartimes6data6` double DEFAULT NULL,
  `populartimes6data7` double DEFAULT NULL,
  `populartimes6data8` double DEFAULT NULL,
  `populartimes6data9` double DEFAULT NULL,
  `populartimes6data10` double DEFAULT NULL,
  `populartimes6data11` double DEFAULT NULL,
  `populartimes6data12` double DEFAULT NULL,
  `populartimes6data13` double DEFAULT NULL,
  `populartimes6data14` double DEFAULT NULL,
  `populartimes6data15` double DEFAULT NULL,
  `populartimes6data16` double DEFAULT NULL,
  `populartimes6data17` double DEFAULT NULL,
  `populartimes6data18` double DEFAULT NULL,
  `populartimes6data19` double DEFAULT NULL,
  `populartimes6data20` double DEFAULT NULL,
  `populartimes6data21` double DEFAULT NULL,
  `populartimes6data22` double DEFAULT NULL,
  `populartimes6data23` double DEFAULT NULL,
  `time_spent0` double DEFAULT NULL,
  `time_spent1` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `generic`
--

INSERT INTO `generic` (`mainid`, `id`, `name`, `address`, `types0`, `types1`, `types2`, `types3`, `types4`, `types5`, `coordinateslat`, `coordinateslng`, `rating`, `rating_n`, `current_popularity`, `populartimes0name`, `populartimes0data0`, `populartimes0data1`, `populartimes0data2`, `populartimes0data3`, `populartimes0data4`, `populartimes0data5`, `populartimes0data6`, `populartimes0data7`, `populartimes0data8`, `populartimes0data9`, `populartimes0data10`, `populartimes0data11`, `populartimes0data12`, `populartimes0data13`, `populartimes0data14`, `populartimes0data15`, `populartimes0data16`, `populartimes0data17`, `populartimes0data18`, `populartimes0data19`, `populartimes0data20`, `populartimes0data21`, `populartimes0data22`, `populartimes0data23`, `populartimes1name`, `populartimes1data0`, `populartimes1data1`, `populartimes1data2`, `populartimes1data3`, `populartimes1data4`, `populartimes1data5`, `populartimes1data6`, `populartimes1data7`, `populartimes1data8`, `populartimes1data9`, `populartimes1data10`, `populartimes1data11`, `populartimes1data12`, `populartimes1data13`, `populartimes1data14`, `populartimes1data15`, `populartimes1data16`, `populartimes1data17`, `populartimes1data18`, `populartimes1data19`, `populartimes1data20`, `populartimes1data21`, `populartimes1data22`, `populartimes1data23`, `populartimes2name`, `populartimes2data0`, `populartimes2data1`, `populartimes2data2`, `populartimes2data3`, `populartimes2data4`, `populartimes2data5`, `populartimes2data6`, `populartimes2data7`, `populartimes2data8`, `populartimes2data9`, `populartimes2data10`, `populartimes2data11`, `populartimes2data12`, `populartimes2data13`, `populartimes2data14`, `populartimes2data15`, `populartimes2data16`, `populartimes2data17`, `populartimes2data18`, `populartimes2data19`, `populartimes2data20`, `populartimes2data21`, `populartimes2data22`, `populartimes2data23`, `populartimes3name`, `populartimes3data0`, `populartimes3data1`, `populartimes3data2`, `populartimes3data3`, `populartimes3data4`, `populartimes3data5`, `populartimes3data6`, `populartimes3data7`, `populartimes3data8`, `populartimes3data9`, `populartimes3data10`, `populartimes3data11`, `populartimes3data12`, `populartimes3data13`, `populartimes3data14`, `populartimes3data15`, `populartimes3data16`, `populartimes3data17`, `populartimes3data18`, `populartimes3data19`, `populartimes3data20`, `populartimes3data21`, `populartimes3data22`, `populartimes3data23`, `populartimes4name`, `populartimes4data0`, `populartimes4data1`, `populartimes4data2`, `populartimes4data3`, `populartimes4data4`, `populartimes4data5`, `populartimes4data6`, `populartimes4data7`, `populartimes4data8`, `populartimes4data9`, `populartimes4data10`, `populartimes4data11`, `populartimes4data12`, `populartimes4data13`, `populartimes4data14`, `populartimes4data15`, `populartimes4data16`, `populartimes4data17`, `populartimes4data18`, `populartimes4data19`, `populartimes4data20`, `populartimes4data21`, `populartimes4data22`, `populartimes4data23`, `populartimes5name`, `populartimes5data0`, `populartimes5data1`, `populartimes5data2`, `populartimes5data3`, `populartimes5data4`, `populartimes5data5`, `populartimes5data6`, `populartimes5data7`, `populartimes5data8`, `populartimes5data9`, `populartimes5data10`, `populartimes5data11`, `populartimes5data12`, `populartimes5data13`, `populartimes5data14`, `populartimes5data15`, `populartimes5data16`, `populartimes5data17`, `populartimes5data18`, `populartimes5data19`, `populartimes5data20`, `populartimes5data21`, `populartimes5data22`, `populartimes5data23`, `populartimes6name`, `populartimes6data0`, `populartimes6data1`, `populartimes6data2`, `populartimes6data3`, `populartimes6data4`, `populartimes6data5`, `populartimes6data6`, `populartimes6data7`, `populartimes6data8`, `populartimes6data9`, `populartimes6data10`, `populartimes6data11`, `populartimes6data12`, `populartimes6data13`, `populartimes6data14`, `populartimes6data15`, `populartimes6data16`, `populartimes6data17`, `populartimes6data18`, `populartimes6data19`, `populartimes6data20`, `populartimes6data21`, `populartimes6data22`, `populartimes6data23`, `time_spent0`, `time_spent1`) VALUES
(1, 'ChIJYW7ZL-hJXhMR9ve2dpMf5Io', 'Ελληνικά Ταχυδρομεία (ΕΛΤΑ)', 'Maizonos 32, Patra', 'post_office', 'finance', 'point_of_interest', 'establishment', '', '', 38.2498044, 21.7389391, 1.5, 161, 60, 'Monday', 0, 0, 0, 0, 0, 0, 0, 22, 47, 71, 83, 89, 90, 80, 58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tuesday', 0, 0, 0, 0, 0, 0, 0, 30, 63, 88, 92, 90, 90, 81, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Wednesday', 0, 0, 0, 0, 0, 0, 0, 25, 59, 84, 91, 94, 100, 90, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thursday', 0, 0, 0, 0, 0, 0, 0, 10, 40, 80, 97, 86, 87, 85, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Friday', 0, 0, 0, 0, 0, 0, 0, 19, 44, 51, 49, 66, 92, 90, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Saturday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15),
(2, 'ChIJaczbf8JJXhMR9QcBFbdskRA', 'B.M.G. RENTACAR', 'Andrea Papandreou 1, Patra', 'car_rental', 'point_of_interest', 'establishment', '', '', '', 38.25064699999999, 21.737284, 1, 1, 0, 'Monday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 55, 51, 41, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tuesday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 48, 62, 51, 27, 10, 0, 0, 0, 3, 10, 0, 0, 0, 0, 0, 'Wednesday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, 72, 55, 24, 0, 0, 0, 0, 0, 3, 10, 0, 0, 0, 0, 'Thursday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, 72, 55, 27, 6, 0, 0, 0, 6, 13, 13, 0, 0, 0, 0, 'Friday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 72, 100, 75, 44, 17, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 'Saturday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 65, 51, 17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'ChIJFxIYOehJXhMRTnfIBMK7Cjw', 'eCig Hellas Ηλεκτρονικο Τσιγαρο - Πάτρα', 'Maizonos 47, Patra', 'electronics_store', 'point_of_interest', 'store', 'establishment', '', '', 38.24966320000001, 21.7390509, 4.9, 208, 0, 'Monday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, 80, 100, 92, 63, 33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tuesday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 31, 49, 59, 56, 40, 22, 12, 14, 31, 52, 56, 36, 0, 0, 0, 'Wednesday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 31, 50, 49, 28, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thursday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 54, 66, 64, 49, 29, 14, 8, 21, 56, 64, 31, 0, 0, 0, 'Friday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 42, 68, 78, 66, 42, 19, 8, 14, 42, 71, 64, 33, 0, 0, 0, 'Saturday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 22, 49, 68, 61, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'ChIJSap7relJXhMRUkopSQsXwuI', 'spelectronics.gr - ΗΛΕΚΤΡΟΝΙΚΑ ΗΛΕΚΤΡΟΛΟΓΙΚΑ ΠΑΤΡΑΣ', 'Satovriandou 43-47, Patra', 'electronics_store', 'point_of_interest', 'store', 'establishment', '', '', 38.250167, 21.739824, 4.8, 59, 0, 'Monday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 59, 54, 59, 64, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tuesday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 52, 80, 95, 95, 0, 0, 0, 28, 64, 59, 21, 0, 0, 0, 'Wednesday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 52, 88, 100, 78, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thursday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 21, 57, 92, 88, 0, 0, 0, 54, 64, 40, 14, 0, 0, 0, 'Friday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, 57, 73, 71, 50, 0, 0, 0, 21, 26, 26, 23, 0, 0, 0, 'Saturday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 40, 73, 97, 97, 73, 40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15),
(5, 'ChIJhT1xJuhJXhMRB_dOMAB9G8A', 'Κατσαρόλα της Τούλας', 'Riga Fereou 49, Patra', 'restaurant', 'food', 'point_of_interest', 'establishment', '', '', 38.2499822, 21.7379614, 4.6, 554, 6, 'Monday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 25, 39, 43, 33, 20, 12, 9, 7, 0, 0, 0, 0, 'Tuesday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 21, 45, 66, 62, 37, 17, 14, 19, 0, 0, 0, 0, 'Wednesday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 37, 60, 68, 53, 32, 19, 12, 9, 0, 0, 0, 0, 'Thursday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 22, 53, 91, 100, 72, 41, 27, 22, 15, 0, 0, 0, 0, 'Friday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 39, 80, 100, 72, 31, 11, 10, 13, 0, 0, 0, 0, 'Saturday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 21, 43, 64, 56, 30, 12, 6, 3, 0, 0, 0, 0, 'Sunday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, 60),
(6, 'ChIJHf2oKOhJXhMRU48jxmo1y6s', 'Zolotas S.A.', 'Riga Fereou 32, Patra', 'point_of_interest', 'store', 'establishment', '', '', '', 38.2501092, 21.7378917, 4.3, 75, 0, 'Monday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 76, 72, 74, 84, 42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tuesday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 70, 76, 68, 80, 86, 0, 0, 0, 52, 88, 100, 72, 0, 0, 0, 'Wednesday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 78, 76, 72, 56, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thursday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 46, 62, 64, 74, 62, 0, 0, 0, 34, 68, 76, 46, 0, 0, 0, 'Friday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 82, 90, 100, 44, 0, 0, 0, 36, 88, 98, 50, 0, 0, 0, 'Saturday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 68, 88, 84, 56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15),
(7, 'ChIJOeK7WuhJXhMRp1dmjE1OOmo', 'ΑΝΑΣΤΑΣΟΠΟΥΛΟΣ ΙΩΑΝΝΗΣ', 'Korinthou 156, Patra', 'electronics_store', 'point_of_interest', 'store', 'establishment', '', '', 38.24964899999999, 21.73991939999999, 4.5, 43, 0, 'Monday', 0, 0, 0, 0, 0, 0, 0, 0, 35, 81, 84, 50, 52, 66, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tuesday', 0, 0, 0, 0, 0, 0, 0, 0, 20, 50, 84, 100, 83, 49, 22, 0, 0, 22, 32, 32, 20, 0, 0, 0, 'Wednesday', 0, 0, 0, 0, 0, 0, 0, 0, 45, 66, 67, 84, 100, 83, 45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thursday', 0, 0, 0, 0, 0, 0, 0, 0, 32, 60, 75, 67, 45, 30, 24, 0, 0, 32, 30, 28, 22, 0, 0, 0, 'Friday', 0, 0, 0, 0, 0, 0, 0, 0, 16, 50, 75, 69, 64, 54, 30, 0, 0, 24, 32, 32, 24, 0, 0, 0, 'Saturday', 0, 0, 0, 0, 0, 0, 0, 0, 16, 30, 37, 43, 45, 37, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'ChIJLWNTMuhJXhMRc0uCYczaWys', 'Bocas', 'Riga Fereou 39, Patra', 'bar', 'point_of_interest', 'establishment', '', '', '', 38.250426, 21.7385406, 4.6, 403, 14, 'Monday', 20, 10, 0, 0, 0, 0, 0, 0, 0, 9, 12, 15, 17, 16, 13, 9, 6, 5, 6, 7, 7, 7, 7, 6, 'Tuesday', 6, 6, 0, 0, 0, 0, 0, 0, 0, 10, 11, 12, 12, 11, 10, 9, 8, 8, 10, 14, 21, 27, 31, 30, 'Wednesday', 25, 18, 0, 0, 0, 0, 0, 0, 0, 11, 12, 13, 12, 11, 9, 7, 5, 4, 3, 6, 13, 27, 42, 50, 'Thursday', 43, 29, 0, 0, 0, 0, 0, 0, 0, 9, 12, 15, 16, 14, 10, 6, 4, 5, 10, 19, 30, 39, 42, 37, 'Friday', 26, 15, 0, 0, 0, 0, 0, 0, 4, 6, 8, 9, 9, 9, 8, 7, 6, 6, 9, 17, 32, 51, 71, 83, 'Saturday', 78, 57, 0, 0, 0, 0, 0, 0, 10, 12, 14, 14, 14, 13, 11, 9, 7, 6, 7, 12, 27, 52, 82, 100, 'Sunday', 95, 70, 0, 0, 0, 0, 0, 0, 0, 8, 8, 9, 9, 8, 8, 7, 7, 7, 7, 9, 17, 28, 35, 31, 45, 150),
(14, 'ChIJ8yJ6relJXhMRo2XqEv0keZU', '\"SUPERMARKET \"\"3A ARAPIS\"\"\"', 'Maizonos 22-24, Patra', 'supermarket', 'grocery_or_supermarket', 'food', 'point_of_interest', 'store', 'establishment', 38.25060850000001, 21.7398956, 4.2, 232, 29, 'Monday', 0, 0, 0, 0, 0, 0, 0, 0, 19, 38, 60, 79, 89, 86, 70, 50, 33, 40, 71, 83, 49, 0, 0, 0, 'Tuesday', 0, 0, 0, 0, 0, 0, 0, 0, 16, 32, 49, 65, 74, 73, 62, 46, 37, 53, 84, 88, 49, 0, 0, 0, 'Wednesday', 0, 0, 0, 0, 0, 0, 0, 0, 12, 35, 51, 58, 81, 100, 78, 52, 46, 46, 44, 40, 33, 0, 0, 0, 'Thursday', 0, 0, 0, 0, 0, 0, 0, 0, 16, 30, 45, 59, 67, 66, 57, 46, 40, 46, 60, 64, 49, 0, 0, 0, 'Friday', 0, 0, 0, 0, 0, 0, 0, 0, 12, 26, 44, 60, 69, 64, 51, 36, 32, 47, 67, 68, 42, 0, 0, 0, 'Saturday', 0, 0, 0, 0, 0, 0, 0, 0, 5, 21, 44, 67, 80, 78, 64, 49, 38, 32, 25, 16, 0, 0, 0, 0, 'Sunday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, 15),
(15, 'ChIJ4e-5v05JXhMRDZp4UgNSSqg', 'Black Fox', 'Maizonos 30, Patra', 'cafe', 'food', 'point_of_interest', 'establishment', '', '', 38.2499404, 21.7391403, 5, 50, 0, 'Monday', 0, 0, 0, 0, 0, 14, 28, 44, 58, 63, 56, 45, 49, 66, 50, 20, 17, 31, 44, 48, 37, 20, 0, 0, 'Tuesday', 0, 0, 0, 0, 0, 19, 29, 40, 46, 48, 56, 75, 84, 63, 31, 16, 18, 25, 32, 34, 31, 23, 0, 0, 'Wednesday', 0, 0, 0, 0, 0, 14, 26, 41, 58, 72, 77, 73, 62, 48, 36, 29, 27, 26, 26, 24, 20, 15, 0, 0, 'Thursday', 0, 0, 0, 0, 0, 12, 26, 45, 62, 71, 79, 92, 94, 70, 36, 13, 8, 13, 24, 30, 28, 19, 0, 0, 'Friday', 0, 0, 0, 0, 0, 13, 0, 41, 56, 65, 71, 80, 84, 61, 29, 16, 17, 26, 33, 34, 28, 19, 0, 0, 'Saturday', 0, 0, 0, 0, 0, 13, 21, 32, 44, 57, 67, 70, 64, 53, 40, 32, 32, 35, 37, 35, 27, 17, 0, 0, 'Sunday', 0, 0, 0, 0, 0, 0, 0, 14, 20, 35, 58, 84, 100, 95, 76, 57, 46, 40, 35, 27, 18, 0, 0, 0, 20, 60),
(16, 'ChIJyRizl0hJXhMRYIWm34jaikk', 'MAD PIGEON', 'Riga Fereou 40, Patra', 'cafe', 'food', 'point_of_interest', 'establishment', '', '', 38.249669, 21.7373873, 5, 15, 0, 'Monday', 0, 0, 0, 0, 0, 0, 0, 9, 36, 34, 16, 21, 34, 43, 43, 34, 22, 16, 22, 36, 48, 48, 34, 0, 'Tuesday', 0, 0, 0, 0, 0, 0, 0, 6, 24, 54, 68, 53, 37, 34, 33, 28, 24, 24, 31, 42, 53, 57, 53, 0, 'Wednesday', 0, 0, 0, 0, 0, 0, 0, 21, 31, 43, 53, 59, 57, 51, 42, 33, 28, 31, 42, 54, 60, 57, 43, 0, 'Thursday', 0, 0, 0, 0, 0, 0, 0, 16, 30, 50, 68, 80, 83, 72, 56, 37, 24, 22, 36, 63, 90, 100, 83, 0, 'Friday', 0, 0, 0, 0, 0, 0, 0, 9, 18, 30, 45, 60, 68, 69, 60, 46, 31, 22, 22, 34, 57, 77, 81, 66, 'Saturday', 40, 19, 7, 0, 0, 0, 0, 4, 10, 22, 37, 54, 66, 66, 56, 40, 25, 16, 19, 31, 50, 65, 66, 54, 'Sunday', 34, 18, 7, 0, 0, 0, 0, 0, 3, 13, 34, 63, 78, 66, 37, 15, 6, 12, 33, 68, 90, 81, 48, 0, 25, 90),
(17, 'ChIJ_7nx_mxJXhMRSrp68dDU67M', 'Coffee Lab', 'Maizonos 47, Patra', 'cafe', 'food', 'point_of_interest', 'establishment', '', '', 38.2496651, 21.7390541, 4.4, 51, 0, 'Monday', 0, 0, 0, 0, 0, 0, 9, 16, 25, 38, 51, 64, 70, 64, 54, 38, 25, 16, 38, 67, 19, 3, 0, 0, 'Tuesday', 0, 0, 0, 0, 0, 0, 3, 12, 38, 70, 100, 100, 70, 41, 25, 25, 32, 45, 51, 54, 51, 41, 29, 0, 'Wednesday', 0, 0, 0, 0, 0, 0, 12, 16, 19, 29, 41, 48, 51, 41, 29, 22, 25, 38, 48, 51, 45, 32, 16, 0, 'Thursday', 0, 0, 0, 0, 0, 0, 12, 16, 29, 41, 51, 51, 45, 38, 35, 48, 64, 80, 87, 80, 61, 41, 25, 0, 'Friday', 0, 0, 0, 0, 0, 0, 0, 19, 29, 38, 51, 61, 67, 67, 70, 70, 77, 80, 74, 61, 38, 22, 12, 0, 'Saturday', 0, 0, 0, 0, 0, 0, 16, 32, 45, 45, 32, 25, 58, 74, 41, 32, 35, 35, 35, 32, 29, 22, 19, 0, 'Sunday', 0, 0, 0, 0, 0, 0, 0, 0, 3, 29, 77, 100, 58, 22, 38, 32, 19, 22, 29, 32, 29, 25, 19, 0, 0, 0),
(18, 'ChIJvdLwXS1JXhMRif9ab2ps-gA', 'Σαν όνειρο', 'Maizonos 29, Patra', 'clothing_store', 'point_of_interest', 'store', 'establishment', '', '', 38.2500604, 21.7395399, 5, 4, 0, 'Monday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19, 100, 76, 11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tuesday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 11, 26, 38, 42, 0, 0, 0, 11, 19, 19, 11, 0, 0, 0, 'Wednesday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Thursday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 15, 34, 57, 30, 0, 0, 0, 0, 15, 46, 38, 0, 0, 0, 'Friday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 19, 34, 38, 26, 0, 0, 0, 19, 23, 26, 19, 0, 0, 0, 'Saturday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sunday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(20, 'ChIJXXD-Nt1JXhMRWCTJyMxS_Xg', 'adidas Store Patra', '\"Agiou Nikolaou & Agiou Andreou 27\"', 'shoe_store', 'point_of_interest', 'clothing_store', 'store', 'establishment', '', 38.25045799999999, 21.737299, 3.7, 26, 0, 'Monday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 35, 45, 33, 19, 11, 7, 4, 23, 45, 14, 0, 0, 0, 'Tuesday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 33, 28, 21, 21, 23, 23, 21, 30, 66, 73, 0, 0, 0, 'Wednesday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 33, 16, 38, 47, 33, 16, 14, 19, 21, 14, 0, 0, 0, 'Thursday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 16, 26, 23, 19, 23, 40, 59, 66, 59, 38, 0, 0, 0, 'Friday', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, 40, 47, 42, 33, 21, 14, 19, 50, 83, 69, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 52, 80, 100, 97, 73, 45, 21, 21, 54, 26, 0, 0, 0, 0, '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `has_covid`
--

CREATE TABLE `has_covid` (
  `name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Άδειασμα δεδομένων του πίνακα `has_covid`
--

INSERT INTO `has_covid` (`name`, `status`, `date`, `id`) VALUES
('Nikos', 'Positive', '2022-09-15', 64);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Άδειασμα δεδομένων του πίνακα `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Nikos', 'nikos@gmail.com', '1213'),
(2, 'Kwstas', 'kwstas@gmail.com', 'User123!'),
(3, 'Petros', 'petros@gmail.com', 'User123!'),
(4, 'Dimitra', 'dimitra@gmail.com', 'User123!'),
(5, 'Spyros', '', 'admin'),
(6, 'Alekos', 'alekos@gmail.com', 'User123!'),
(7, 'Katerina ', 'katerina@gmail.com', 'User123!'),
(8, 'Thomai', 'thomai@gmail.com', 'Thomai123!'),
(9, 'Dimitris', 'dimitris@gmail.com', 'Dimitris123!'),
(10, 'Tania', 'tania@gmail.com', 'Tania123!');

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `checkins`
--
ALTER TABLE `checkins`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `generic`
--
ALTER TABLE `generic`
  ADD PRIMARY KEY (`mainid`);

--
-- Ευρετήρια για πίνακα `has_covid`
--
ALTER TABLE `has_covid`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `checkins`
--
ALTER TABLE `checkins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT για πίνακα `generic`
--
ALTER TABLE `generic`
  MODIFY `mainid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT για πίνακα `has_covid`
--
ALTER TABLE `has_covid`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT για πίνακα `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
