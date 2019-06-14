-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2019 at 07:18 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `itmtrackdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
  `bus_id` int(11) NOT NULL,
  `registration_number` varchar(255) DEFAULT NULL,
  `bus_number` varchar(255) DEFAULT NULL,
  `driver_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`bus_id`, `registration_number`, `bus_number`, `driver_name`) VALUES
(1, 'CG 04 EA 0240', '1', 'HEMCHAND SAHU '),
(2, 'CG 04 EA 0238', '2', 'VIJAY SAHU'),
(3, 'CG 04 E2631', '3', 'MITHLESH DHIWAR'),
(4, 'CG 04 EA 0241', '4', 'UMESH SAHU'),
(5, 'CG 04 EA 0197', '5', 'HARPAL SINGH '),
(6, 'CG 04 E3101', '6', 'KULDEEP SINGH'),
(7, 'CG 04 EA 0239', '7', 'THAKUR RAM YADAV'),
(8, 'CG 04 EA 0243', '8', 'NILKARAN VERMA'),
(9, 'CG 04 E 1945', '9', 'POSHAN TIWARI'),
(10, 'CG 04 EA 0242', '10', 'FATTE PATEL'),
(11, 'CG 04 E 2625', '11', 'SATISH SAHU'),
(12, 'CG 04 E 2633', '12', 'MUNNA THAKUR'),
(13, 'CG 04 E 2624', '13', 'NANDLAL KURRE'),
(14, 'CG 04 EA 0604', '14', 'ISHU SAHU'),
(15, 'CG 04 EA 3104', '15', 'NAIM KHAN'),
(16, 'CG 04 EA 0602', '16', 'NAROTTAM SAHU'),
(17, 'CG 04 LW 7257', '17', 'RUPESH KU. TANDI'),
(18, 'CG 04 E 0199', '18', 'NOMAN SAHU'),
(19, 'JH09S 2599', '19', 'PRANAY');

-- --------------------------------------------------------

--
-- Table structure for table `bus_route_allotement`
--

CREATE TABLE `bus_route_allotement` (
  `route_id` int(11) NOT NULL,
  `stop_name` longtext NOT NULL,
  `bus_number` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_route_allotement`
--

INSERT INTO `bus_route_allotement` (`route_id`, `stop_name`, `bus_number`, `date`, `updated_at`) VALUES
(1, 'CAMPUS\nPACHPEDI NAKA\nTAIGORE NAGAR\nSAILENDRA NAGAR\nVIVEKA NAND NAGAR\nBAIRAN BAZAR\nCIVIL LINE\nRAJBHAWAN\nGHADI CHOWK\nFAFADIH CHOWK\nSTATION CHOWK\nTELGHANI NAKA\nAGRASEN CHOWK\n', 1, NULL, '2018-07-23 21:12:59'),
(2, 'CAMPUS\nPACHPEDI NAKA\nMINING OFFICE\nTELIBANDHA THANA\nTELIBANDHA CHOWK\nJAIJAWAN PETROL PUMP\nSANKAR NAGAR\nDISHA TOWER\nTURNING POINT\nLODHI PARA\nMATA GARAZ\nBUS STAND\nPANDRI\nSHYAM PLAZA\n', 2, NULL, '2018-07-23 21:16:13'),
(3, 'CAMPUS\nPACHPEDI NAKA\nSIDDHARTH CHOWK\nPOLICE LINE GATE\nKALIBADI CHOWK\nMAHILA THANA\nNAL GHAR CHOWK\nMOTI BAGH CHOWK\nSHASTRI CHOWK\nJAI STAMBH CHOWK\nSHARDA CHOWK\nTATYA PARA\nAJAD CHOWK\nVISHAL MEGA MART\nAGRASEN CHOWK\nSAMTA COLONY\nPRAGATI COLLEGE\nCHOUBEY COLONY\n', 3, NULL, '2018-07-23 21:28:00'),
(4, 'CAMPUS\nMMI HOSPITAL\nCANAL ROAD\nMINING OFFICE\nTELIBANDHA THANA\nAVANTI VIHAR\nKHAMHARDIH CHOWK\nKACHNA\nSADDU\nAAMA NAKA\nVIDHAN SABHA\n', 4, NULL, '2018-07-23 21:29:59'),
(5, 'CAMPUS\nPACHPEDI NAKA\nKHURSHI PAR\nPOWER HOUSE\nSECTOR AREA\nMALVIYA NAGAR\nDURG\n', 5, NULL, '2018-07-23 21:31:25'),
(6, 'CAMPUS\nPACHPEDI NAKA\nTATIBANDH\nKUMHARI\nCHAORDA\nBHILAI 3\nKHURSHI PAR\nPOWER HOUSE\nSUPELA\nNEHRU NAGAR\n', 6, NULL, '2018-07-23 21:33:26'),
(7, 'CAMPUS\nPACHPEDI NAKA\nRAJENDRA NAGAR\nNETA JI CHOWK\nKATORA TALAB\nKALI MATA MANDIR\nNAL GHAR CHOWK\nSASTRI CHOWK\nJAI STAMBH CHOWK\nSHARDA CHOWK\nTATYA PARA\nAJAD CHOWK\nVISHAL MEGHA MART\nVANDANA AUTO\nRKC\nNIT GATE\nAAMA NAKA\nMAHOBA BAZAR\n', 7, NULL, '2018-07-23 21:39:48'),
(8, 'CAMPUS\nNAYA RAIPUR\nSERIKHERI\nRAJU DHABA\nKACHNA ROAD\nVINDHAN SABHA CHOWK\nMOWA THANA\nLODHI PARA CHOWK\nMANDI GATE\nHERITEGE HOSPITAL\nDEVENDRA NAGAR\nFAFADIH\nPILIBILDING\nDRM OFFICE\n', 8, NULL, '2018-07-23 21:42:48'),
(9, 'CAMPUS\nABHANPUR\nRAJIM\n', 9, NULL, '2018-11-15 08:45:35'),
(10, 'CAMPUS\nABHANPUR\nFAFADIH\nBAIRAN BAZAR\n', 15, NULL, '2018-11-15 09:37:43');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `driver_id` int(11) NOT NULL,
  `driver_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`driver_id`, `driver_name`, `address`, `phone_number`) VALUES
(1, 'HEMCHAND SAHU', 'RAIPUR', '9630789283'),
(2, 'VIJAY SAHU', 'RAIPUR', '8085394953'),
(3, 'MITHLESH DHIWAR', 'RAIPUR', ' 9098780409'),
(4, 'UMESH SAHU', 'RAIPUR', ' 9644745177'),
(5, 'HARPAL SINGH', 'RAIPUR', '9685710502'),
(6, 'KULDEEP SINGH', 'RAIPUR', ' 7803887018'),
(7, 'THAKUR RAM YADAV', 'RAIPUR', '9907992902'),
(8, 'NILKARAN VERMA', 'RAIPUR', ' 7389170109'),
(9, 'POSHAN TIWARI', 'RAIPUR', '9977768263'),
(10, 'FATTE PATEL', 'RAIPUR', ' 7354040388'),
(11, 'SATISH SAHU', 'RAIPUR', ' 7974626105'),
(12, 'MUNNA THAKUR', 'RAIPUR', '9907085553'),
(13, 'NANDLAL KURRE', 'RAIPUR', ' 8770693246'),
(14, 'ISHU SAHU', 'RAIPUR', ' 9993104165'),
(15, 'NAIM KHAN', 'RAIPUR', '7747959491'),
(16, 'NAROTTAM SAHU', 'RAIPUR', '9131437642'),
(17, 'RUPESH KU. TANDI', 'RAIPUR', '7697146618'),
(18, 'NOMAN SAHU', 'RAIPUR', '7224867024'),
(19, 'GYANCHAND', 'RAIPUR', '9334254877');

-- --------------------------------------------------------

--
-- Table structure for table `stops`
--

CREATE TABLE `stops` (
  `stop_id` int(11) NOT NULL,
  `stop` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stops`
--

INSERT INTO `stops` (`stop_id`, `stop`) VALUES
(1, 'AGRASEN CHOWK'),
(2, 'TELGHANI NAKA'),
(3, 'STATION CHOWK'),
(4, 'FAFADIH CHOWK'),
(5, 'GHADI CHOWK'),
(6, 'RAJBHAWAN'),
(7, 'CIVIL LINE'),
(8, 'BAIRAN BAZAR'),
(9, 'VIVEKA NAND NAGAR'),
(10, 'SAILENDRA NAGAR'),
(11, 'TAIGORE NAGAR'),
(12, 'PACHPEDI NAKA'),
(13, 'SHYAM PLAZA'),
(14, 'PANDRI'),
(15, 'BUS STAND'),
(16, 'MATA GARAZ'),
(17, 'LODHI PARA'),
(18, 'TURNING POINT'),
(19, 'DISHA TOWER'),
(20, 'SANKAR NAGAR'),
(21, 'JAIJAWAN PETROL PUMP'),
(22, 'TELIBANDHA CHOWK'),
(23, 'TELIBANDHA THANA'),
(24, 'MINING OFFICE'),
(25, 'CHOUBEY COLONY'),
(26, 'PRAGATI COLLEGE'),
(27, 'SAMTA COLONY'),
(28, 'VISHAL MEGA MART'),
(29, 'AJAD CHOWK'),
(30, 'TATYA PARA'),
(31, 'SHARDA CHOWK'),
(32, 'JAI STAMBH CHOWK'),
(33, 'SHASTRI CHOWK'),
(34, 'MOTI BAGH CHOWK'),
(35, 'NAL GHAR CHOWK'),
(36, 'MAHILA THANA'),
(37, 'KALIBADI CHOWK'),
(38, 'POLICE LINE GATE'),
(39, 'SIDDHARTH CHOWK'),
(40, 'VIDHAN SABHA'),
(41, 'AAMA SHIONI'),
(42, 'SADDU'),
(43, 'KACHNA'),
(44, 'KHAMHARDIH CHOWK'),
(45, 'AVANTI VIHAR'),
(46, 'CANAL ROAD'),
(47, 'MMI HOSPITAL'),
(48, 'DURG'),
(49, 'MALVIYA NAGAR'),
(50, 'SECTOR AREA'),
(51, 'POWER HOUSE'),
(52, 'KHURSHI PAR'),
(53, 'NEHRU NAGAR'),
(54, 'SUPELA'),
(55, 'BHILAI 3'),
(56, 'CHAORDA'),
(57, 'KUMHARI'),
(58, 'TATIBANDH'),
(59, 'MAHOBA BAZAR'),
(60, 'AAMA NAKA'),
(61, 'NIT GATE'),
(62, 'RKC'),
(63, 'VANDANA AUTO'),
(64, 'VISHAL MEGHA MART'),
(65, 'JAI STAMBH CHOWK'),
(66, 'SASTRI CHOWK'),
(67, 'KALI MATA MANDIR'),
(68, 'KATORA TALAB'),
(69, 'NETA JI CHOWK'),
(70, 'RAJENDRA NAGAR'),
(71, 'DRM OFFICE'),
(72, 'PILIBILDING'),
(73, 'FAFADIH'),
(74, 'DEVENDRA NAGAR'),
(75, 'HERITEGE HOSPITAL'),
(76, 'MANDI GATE'),
(77, 'LODHI PARA CHOWK'),
(78, 'MOWA THANA'),
(79, 'VINDHAN SABHA CHOWK'),
(80, 'KACHNA ROAD'),
(81, 'RAJU DHABA'),
(82, 'SERIKHERI'),
(83, 'NAYA RAIPUR'),
(84, 'URLA THANA'),
(85, 'BIRGAON'),
(86, 'VINU PERTOL PUMP'),
(87, 'BHANPURI'),
(88, 'KHAMTARAI'),
(89, 'KALIBADIH CHOWK'),
(90, 'ASHOKA RATAN'),
(91, 'SHANKAR NAGAR CHOWK'),
(92, 'MARIN DRIVE'),
(93, 'RAIPURA'),
(94, 'SUNDER NAGAR'),
(95, 'ASHWANI NAGAR'),
(96, 'LAKHE NAGAR'),
(97, 'LILI CHOWK'),
(98, 'PURANI BASTI'),
(99, 'BUDHA TALAB'),
(100, 'SHYAM TAKIJ'),
(101, 'BUDHESHWAR CHOWK'),
(102, 'SHIDDHARTH CHOWK'),
(103, 'SANTOSHI NAGAR'),
(104, 'AVANTI ATM'),
(105, 'VIP CHOWK'),
(106, 'MAGNATO MALL'),
(107, 'LABHANDIH'),
(108, 'JORA'),
(109, 'TATIBANDH CHOWK'),
(110, 'KABIR NAGAR'),
(111, 'DHUPPAD PETROL PUMP'),
(112, 'AZAD CHOWK'),
(113, 'RAJIM'),
(114, 'NAYA PARA'),
(115, 'KURRA'),
(116, 'ABHANPUR'),
(117, 'MOWA'),
(118, 'FRUIT MARKET'),
(119, 'HOSTEL'),
(120, 'SEC. 27'),
(121, 'SEC. 29'),
(122, 'UPARWARA'),
(123, 'GOL CHOWK'),
(124, 'RAIPURA CHOWK'),
(125, 'KUSHALPUR CHOWK'),
(126, 'PROFFESOR COLONY'),
(127, 'BHATAGAON CHOWK'),
(128, 'RAVAN BHATA'),
(129, 'MARINDRIVE'),
(130, 'CAMPUS'),
(131, 'SHANKAR'),
(132, 'SARANGARH');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin` int(10) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Garry', 'garry@gmail.com', '123456', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `bus_route_allotement`
--
ALTER TABLE `bus_route_allotement`
  ADD PRIMARY KEY (`route_id`),
  ADD UNIQUE KEY `bus_number` (`bus_number`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `stops`
--
ALTER TABLE `stops`
  ADD PRIMARY KEY (`stop_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
  MODIFY `bus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `driver_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `stops`
--
ALTER TABLE `stops`
  MODIFY `stop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
