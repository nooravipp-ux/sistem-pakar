-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 03, 2019 at 02:40 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_gangguan_kehamilan`
--
CREATE DATABASE IF NOT EXISTS `db_gangguan_kehamilan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_gangguan_kehamilan`;

-- --------------------------------------------------------

--
-- Table structure for table `data_pakar`
--

CREATE TABLE `data_pakar` (
  `username` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `pertanyaan` varchar(50) NOT NULL,
  `jawaban` varchar(50) NOT NULL,
  `akses` varchar(5) NOT NULL DEFAULT 'pakar'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pakar`
--

INSERT INTO `data_pakar` (`username`, `password`, `pertanyaan`, `jawaban`, `akses`) VALUES
('admin', 'e10adc3949ba59abbe56e057f20f883e', 'Apa Makanan Favorit Anda?', 'bffa783a022fe2d98692014dda6d7a4c', 'pakar');

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE `data_user` (
  `username` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `usia` int(2) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `pertanyaan` varchar(50) NOT NULL,
  `jawaban` varchar(50) NOT NULL,
  `akses` varchar(4) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`username`, `password`, `nama_user`, `usia`, `jenis_kelamin`, `alamat`, `pertanyaan`, `jawaban`, `akses`) VALUES
('jhon_due', '123456', 'jhon', 24, 'L', 'bandung', 'Apa Makanan Favorit Anda?', 'soto', 'user'),
('nooravipp', '1234567', 'nooravipp', 12, 'L', 'bandung', 'Apa Makanan Favorit Anda?', 'mie', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` varchar(4) NOT NULL,
  `nama_gejala` varchar(100) NOT NULL,
  `kode_induk_ya` varchar(4) NOT NULL,
  `kode_induk_tidak` varchar(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `nama_gejala`, `kode_induk_ya`, `kode_induk_tidak`) VALUES
('G001', 'Apakah tekanan darah lebih dari 120/80 mmHg ?', '', ''),
('G002', 'Apakah tekanan darah kurang dari 120/80 mmHg ?', '', 'G001'),
('G003', 'Apakah tekanan darah normal atau sama dengan 120/80 mmHg ?', '', 'G002'),
('G004', 'Apakah usia kehamilan kurang dari 20 minggu ?', 'G006', ''),
('G005', 'Apakah usia kehamilan lebih dari 20 minggu ?', '', 'G004'),
('G006', 'Apakah proteinuria/tes celup urine ?', 'G001', ''),
('G007', 'Apakah trombosit kurang dari 100.000 mm3 ?', 'G014', ''),
('G008', 'Apakah mengalami trismus/Gangguan pembukaan mulut ?', '', 'G013'),
('G009', 'Apakah sering kelelahan ?', 'G002', ''),
('G010', 'Apakah sebelumnya mengalami pingsan ?', 'G009', ''),
('G011', 'Apakah merasa depresi ?', 'G010', ''),
('G012', 'Apakah merasa stres ?', 'G011', ''),
('G013', 'Apakah sebelumnya mengalami kejang ?', '', 'G019'),
('G014', 'Apakah hasil Proteinuria 2.0 g/hari atau lebih dari 2+ dispstick ?', 'G005', ''),
('G015', 'Apakah hasil Proteinuria lebih dari 300 mg/hari atau lebih dari 1+dispstick ?', '', 'G014'),
('G016', 'Apakah mengalami oliguria/gangguan air kemih ?', 'G007', ''),
('G017', 'Apakah volume air kemih/hari kurang dari 400 ml/jam ?', 'G016', ''),
('G018', 'Apakah mengalami spasme otot/Ketegangan otot ?', 'G043', ''),
('G019', 'Apakah merasa sakit kepala ?', 'G003', ''),
('G020', 'Apakah tekanan darah meningkat > 160/110 mmHg ?', 'G031', ''),
('G021', 'Apakah pertumbuhan janin terhambat ?', 'G020', ''),
('G022', 'Apakah mengalami peningkatan kadar enzim ALT atau AST ?', 'G021', ''),
('G023', 'Apakah LDH/Laktat Dehidrogenase meningkat ?', 'G022', ''),
('G024', 'Apakah mengalami demam ?', 'G019', ''),
('G025', 'Apakah mengalami kaku kuduk ?', 'G024', ''),
('G026', 'Apakah mengalami disorientasi ?', 'G025', ''),
('G027', 'Apakah mengalami gangguan penglihatan ?', 'G028', ''),
('G028', 'Apakah mengalami muntah-muntah ?', '', 'G024'),
('G029', 'Apakah kesulitan untuk berkonsentrasi ?', 'G012', ''),
('G030', 'Apakah mengalami kejang yang terjadi bersifat menyeluruh ?', '', 'G035'),
('G031', 'Apakah merasa sakit kepala yang berat ?', 'G017', ''),
('G032', 'Apakah memiliki riwayat hipertensi sebelum kehamilan ?', 'G004', ''),
('G033', 'Apakah menderita multipara ?', 'G032', ''),
('G034', 'Apakah ada riwayat hipertensi menurun dalam keluarga ?', 'G033', ''),
('G035', 'Apakah proteinuria bersifat persisten ?', '', 'G015'),
('G036', 'Apakah mengalami sakit ulu hati ?', 'G035', ''),
('G037', 'Apakah mengalami trombositopeni ?', 'G036', ''),
('G038', 'Apakah memiliki riwayat epilepsi ?', 'G027', ''),
('G039', 'Apakah sebelumnya merasa hilang kesadaran ?', 'G026', ''),
('G040', 'Apakah merasa kaku di  muka ?', 'G008', ''),
('G041', 'Apakah merasa kaku di leher ?', 'G040', ''),
('G042', 'Apakah merasa kaku di tengkuk ?', 'G041', ''),
('G043', 'Apakah dinding perut terasa kaku ?', 'G042', '');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_diagnosa`
--

CREATE TABLE `hasil_diagnosa` (
  `id_diagnosa` int(5) NOT NULL,
  `username` varchar(10) NOT NULL,
  `kode_penyakit` varchar(4) NOT NULL,
  `tanggal_diagnosa` datetime NOT NULL,
  `persentase` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hasil_diagnosa`
--

INSERT INTO `hasil_diagnosa` (`id_diagnosa`, `username`, `kode_penyakit`, `tanggal_diagnosa`, `persentase`) VALUES
(3, 'rahman', 'P002', '2013-09-13 19:26:53', 80),
(4, 'rahman', 'P002', '2013-09-13 19:28:23', 60),
(5, 'rahman', 'P001', '2013-09-13 19:30:04', 90),
(6, 'rahman', 'P002', '2015-02-25 14:17:48', 120),
(7, 'rahman', '', '2015-02-25 14:21:43', 0),
(8, 'rahman', 'P002', '2015-02-26 11:45:15', 120),
(9, 'rahman', 'P001', '2015-02-26 11:50:25', 105),
(10, 'rahman', 'P002', '2015-02-26 11:52:42', 100),
(11, 'rahman', 'P002', '2015-02-26 17:47:52', 120),
(12, 'rahman', 'P002', '2015-03-03 10:30:46', 80),
(13, 'rahman', 'P002', '2015-03-03 10:31:55', 120),
(14, 'rahman', 'P002', '2015-03-03 10:40:24', 120),
(15, 'rahman', 'P002', '2015-03-03 11:08:16', 60),
(16, 'pipii', 'P002', '2018-05-22 20:57:35', 60),
(17, 'pipii', 'P002', '2018-05-22 21:03:54', 120),
(18, 'pipii', 'P001', '2018-05-22 22:54:25', 45),
(19, 'pipii', '', '2018-05-22 23:30:43', 0),
(20, 'pipii', '', '2018-05-22 23:31:20', 0),
(21, 'pipii', '', '2018-05-22 23:31:56', 0),
(22, 'pipii', '', '2018-05-22 23:32:14', 0),
(23, 'pipii', 'P002', '2018-05-22 23:33:58', 120),
(24, 'pipii', 'P002', '2018-05-22 23:34:38', 80),
(25, 'pipii', 'P002', '2018-05-22 23:34:56', 120),
(26, 'pipii', '', '2018-05-22 23:35:17', 0),
(27, 'pipii', '', '2018-05-22 23:35:50', 0),
(28, 'pipii', '', '2018-05-22 23:36:27', 0),
(29, 'pipii', 'P002', '2018-05-22 23:37:33', 120),
(30, 'pipii', 'P001', '2018-05-22 23:41:45', 40),
(31, 'pipii', '', '2018-05-22 23:43:16', 0),
(32, 'pipii', 'P001', '2018-05-22 23:46:14', 120),
(33, 'pipii', 'P002', '2018-05-22 23:46:30', 120),
(34, 'pipii', 'P001', '2018-05-22 23:47:22', 80),
(35, 'pipii', '', '2018-05-23 02:58:25', 0),
(36, 'pipii', '', '2018-05-23 02:58:44', 0),
(37, 'pipii', 'P001', '2018-05-23 03:02:45', 120),
(38, 'pipii', '', '2018-05-23 03:17:37', 0),
(39, 'pipii', 'P001', '2018-05-23 03:17:46', 10),
(40, 'pipii', '', '2018-05-23 03:18:16', 0),
(41, 'pipii', '', '2018-05-23 03:18:40', 0),
(42, 'pipii', 'P001', '2018-05-23 03:18:53', 10),
(43, 'pipii', 'P001', '2018-05-23 03:22:23', 80),
(44, 'pipii', 'P001', '2018-05-23 03:22:41', 60),
(45, 'pipii', 'P001', '2018-05-23 03:22:54', 60),
(46, 'pipii', 'P001', '2018-05-23 03:23:07', 60),
(47, 'pipii', 'P001', '2018-05-23 03:23:27', 30),
(48, 'pipii', 'P001', '2018-05-23 03:23:42', 60),
(49, 'pipii', 'P001', '2018-05-23 03:24:49', 60),
(50, 'pipii', 'P011', '2018-05-23 03:25:37', 60),
(51, 'pipii', 'P001', '2018-05-23 03:25:51', 10),
(52, 'pipii', 'P001', '2018-05-23 03:26:15', 10),
(53, 'pipii', 'P001', '2018-05-23 03:30:46', 30),
(54, 'pipii', 'P001', '2018-05-23 03:32:46', 30),
(55, 'pipii', 'P001', '2018-05-23 03:33:36', 60),
(56, 'pipii', 'P001', '2018-05-23 20:16:21', 30),
(57, 'pipii', 'P005', '2018-05-23 20:22:05', 60),
(58, 'pipii', '', '2018-05-23 20:23:10', 0),
(59, 'pipii', 'P001', '2018-05-23 20:25:09', 60),
(60, 'pipii', '', '2018-05-23 20:34:52', 0),
(61, 'pipii', 'P001', '2018-05-23 20:39:26', 60),
(62, 'pipii', '', '2018-05-23 20:39:55', 0),
(63, 'pipii', 'P001', '2018-05-23 20:40:54', 60),
(64, 'pipii', '', '2018-05-23 20:44:41', 0),
(65, 'pipii', 'P001', '2018-05-23 20:46:43', 60),
(66, 'pipii', 'P001', '2018-05-23 20:47:16', 60),
(67, 'pipii', 'P005', '2018-05-24 15:19:13', 60),
(68, 'pipii', 'P001', '2018-05-24 21:56:14', 340),
(69, 'pipii', 'P001', '2018-05-24 21:56:37', 20),
(70, 'pipii', 'P001', '2018-05-24 22:02:16', 60),
(71, 'pipii', 'P001', '2018-05-24 22:08:07', 120),
(72, 'pipii', 'P001', '2018-05-24 22:20:06', 100),
(73, 'pipii', 'P001', '2018-05-24 22:21:22', 60),
(74, 'pipii', 'P001', '2018-05-24 22:27:31', 90),
(75, 'pipii', 'P001', '2018-05-24 22:28:27', 60),
(76, 'pipii', 'P001', '2018-05-24 23:41:10', 100),
(77, 'pipii', 'P001', '2018-05-24 23:41:50', 60),
(78, 'pipii', '', '2018-05-24 23:42:47', 0),
(79, 'pipii', 'P001', '2018-05-25 00:51:48', 70),
(80, 'pipii', 'P001', '2018-05-25 00:52:03', 20),
(81, 'pipii', 'P001', '2018-05-25 00:52:16', 60),
(82, 'pipii', 'P001', '2018-05-25 00:53:12', 60),
(83, 'pipii', 'P001', '2018-05-25 01:02:11', 20),
(84, 'pipii', 'P001', '2018-05-25 01:02:33', 60),
(85, 'pipii', 'P001', '2018-05-25 01:05:01', 20),
(86, 'pipii', 'P001', '2018-05-25 01:05:08', 20),
(87, 'pipii', 'P001', '2018-05-25 01:05:19', 20),
(88, 'pipii', 'P001', '2018-05-25 01:05:32', 20),
(89, 'pipii', 'P001', '2018-05-25 01:17:21', 60),
(90, 'pipii', 'P001', '2018-05-25 01:52:01', 60),
(91, 'pipii', 'P001', '2018-05-25 01:57:56', 60),
(92, 'pipii', 'P001', '2018-05-25 01:58:42', 20),
(93, 'pipii', 'P001', '2018-05-25 01:58:52', 20),
(94, 'pipii', 'P001', '2018-05-25 01:59:00', 20),
(95, 'pipii', 'P001', '2018-05-25 02:01:42', 60),
(96, 'pipii', 'P001', '2018-05-25 02:01:53', 20),
(97, 'pipii', 'P001', '2018-05-25 02:02:07', 20),
(98, 'pipii', 'P001', '2018-05-25 02:02:18', 20),
(99, 'pipii', 'P001', '2018-05-25 03:04:07', 70),
(100, 'pipii', 'P001', '2018-05-25 03:04:34', 60),
(101, 'pipii', 'P001', '2018-05-25 03:08:04', 70),
(102, 'pipii', 'P001', '2018-05-25 03:08:19', 60),
(103, 'pipii', 'P001', '2018-05-25 03:11:28', 60),
(104, 'pipii', 'P001', '2018-05-25 03:11:47', 60),
(105, 'pipii', 'P001', '2018-05-25 03:12:31', 60),
(106, 'pipii', 'P001', '2018-05-25 03:12:48', 60),
(107, 'pipii', 'P001', '2018-05-25 03:13:51', 60),
(108, 'pipii', 'P001', '2018-05-25 03:17:44', 60),
(109, 'pipii', 'P001', '2018-05-25 03:20:47', 60),
(110, 'pipii', 'P001', '2018-05-25 03:22:10', 60),
(111, 'pipii', 'P001', '2018-05-25 03:22:21', 60),
(112, 'pipii', 'P001', '2018-05-25 03:25:49', 60),
(113, 'pipii', 'P001', '2018-05-25 03:26:22', 60),
(114, 'pipii', 'P001', '2018-05-25 03:30:40', 60),
(115, 'pipii', 'P001', '2018-05-25 03:32:42', 60),
(116, 'pipii', 'P001', '2018-05-25 03:35:58', 120),
(117, 'pipii', 'P001', '2018-05-25 03:37:27', 60),
(118, 'pipii', '', '2018-05-25 04:25:36', 0),
(119, 'pipii', 'P001', '2018-05-25 04:26:26', 20),
(120, 'pipii', 'P001', '2018-05-25 04:27:10', 140),
(121, 'pipii', 'P001', '2018-05-25 04:27:29', 60),
(122, 'pipii', 'P001', '2018-05-25 04:28:49', 20),
(123, 'pipii', 'P001', '2018-05-25 04:32:09', 60),
(124, 'pipii', 'P001', '2018-05-25 04:33:36', 180),
(125, 'pipii', 'P001', '2018-05-25 04:33:45', 60),
(126, 'pipii', 'P001', '2018-05-25 04:33:58', 60),
(127, 'pipii', 'P001', '2018-05-25 04:34:20', 60),
(128, 'pipii', 'P001', '2018-05-25 04:34:45', 60),
(129, 'pipii', 'P001', '2018-05-25 04:57:45', 90),
(130, 'pipii', 'P001', '2018-05-25 04:58:08', 150),
(131, 'pipii', 'P001', '2018-05-25 04:58:23', 60),
(132, 'pipii', 'P001', '2018-05-25 04:58:40', 60),
(133, 'pipii', 'P001', '2018-05-25 05:06:56', 60),
(134, 'pipii', 'P001', '2018-05-25 05:17:24', 20),
(135, 'pipii', 'P001', '2018-05-25 05:54:30', 70),
(136, 'pipii', 'P001', '2018-05-25 05:54:41', 60),
(137, 'pipii', 'P001', '2018-05-25 05:56:15', 60),
(138, 'pipii', 'P001', '2018-05-25 07:14:11', 60),
(139, 'pipii', 'P001', '2018-05-25 07:17:01', 130),
(140, 'pipii', 'P001', '2018-05-25 07:22:38', 220),
(141, 'pipii', 'P001', '2018-05-25 07:24:43', 60),
(142, 'pipii', 'P001', '2018-05-25 07:25:09', 70),
(143, 'pipii', 'P001', '2018-05-25 07:25:29', 60),
(144, 'pipii', 'P001', '2018-05-25 07:27:13', 60),
(145, 'pipii', 'P001', '2018-05-25 15:19:32', 60),
(146, 'pipii', 'P001', '2018-05-26 07:29:08', 110),
(147, 'pipii', 'P001', '2018-05-26 07:50:35', 60),
(148, 'pipii', 'P001', '2018-05-26 08:03:02', 60),
(149, 'pipii', '', '2018-05-26 08:10:47', 0),
(150, 'pipii', 'P001', '2018-05-26 08:13:43', 60),
(151, 'pipii', 'P001', '2018-05-26 08:19:56', 60),
(152, 'pipii', 'P001', '2018-05-26 08:58:45', 20),
(153, 'pipii', 'P011', '2018-05-26 08:59:30', 60),
(154, 'pipii', 'P005', '2018-05-26 09:06:35', 60),
(155, 'pipii', 'P011', '2018-05-26 09:07:33', 20),
(156, 'pipii', 'P001', '2018-05-26 09:08:04', 60),
(157, 'pipii', 'P001', '2018-05-26 09:27:51', 60),
(158, 'pipii', 'P005', '2018-05-26 15:11:00', 60),
(159, 'pipii', 'P001', '2018-05-26 16:45:48', 60),
(160, 'pipii', 'P005', '2018-05-27 22:37:06', 20),
(161, 'pipii', 'P001', '2018-05-29 00:34:56', 20),
(162, 'pipii', 'P001', '2018-05-29 00:43:04', 40),
(163, 'pipii', 'P001', '2018-05-29 00:59:09', 70),
(164, 'pipii', 'P001', '2018-05-29 01:01:39', 40),
(165, 'pipii', 'P001', '2018-05-29 01:15:49', 40),
(166, 'pipii', '', '2018-05-29 01:25:31', 0),
(167, 'pipii', 'P011', '2018-05-29 01:26:46', 60),
(168, 'pipii', 'P001', '2018-05-29 01:41:35', 360),
(169, 'pipii', 'P001', '2018-05-29 01:42:08', 60),
(170, 'pipii', 'P001', '2018-05-29 01:47:49', 80),
(171, 'pipii', 'P001', '2018-05-29 07:27:02', 50),
(172, 'pipii', 'P001', '2018-05-29 08:28:00', 10),
(173, 'pipii', 'P001', '2018-05-29 08:28:10', 10),
(174, 'pipii', 'P001', '2018-05-29 08:28:24', 40),
(175, 'pipii', 'P001', '2018-05-29 08:28:34', 10),
(176, 'pipii', 'P011', '2018-05-29 08:28:45', 10),
(177, 'pipii', '', '2018-05-29 15:06:56', 0),
(178, 'pipii', '', '2018-05-29 15:07:27', 0),
(179, 'pipii', 'P001', '2018-05-29 15:09:49', 60),
(180, 'pipii', 'P001', '2018-05-29 15:10:02', 40),
(181, 'pipii', 'P005', '2018-05-29 15:11:06', 60),
(182, 'pipii', 'P001', '2018-05-29 15:12:28', 10),
(183, 'pipii', '', '2018-05-29 15:14:37', 0),
(184, 'pipii', '', '2018-05-29 16:52:11', 0),
(185, 'pipii', 'P001', '2018-05-29 16:52:45', 60),
(186, 'pipii', 'P001', '2018-05-29 20:48:07', 60),
(187, 'pipii', 'P001', '2018-05-29 22:43:08', 60),
(188, 'pipii', 'P001', '2018-05-30 00:01:45', 60),
(189, 'pipii', '', '2018-05-30 03:29:57', 0),
(190, 'pipii', 'P001', '2018-05-31 19:58:25', 70),
(191, 'pipii', '', '2018-05-31 19:58:51', 0),
(192, 'pipii', '', '2018-05-31 20:00:23', 0),
(193, 'pipii', 'P001', '2018-05-31 20:14:18', 60),
(194, 'pipii', '', '2018-05-31 20:14:35', 0),
(195, 'pipii', '', '2018-05-31 20:15:22', 0),
(196, 'pipii', 'P001', '2018-05-31 20:17:09', 60),
(197, 'pipii', '', '2018-05-31 20:18:16', 0),
(198, 'pipii', 'P001', '2018-05-31 20:19:11', 60),
(199, 'pipii', 'P001', '2018-05-31 20:21:19', 120),
(200, 'pipii', 'P001', '2018-05-31 20:24:56', 60),
(201, 'pipii', '', '2018-05-31 20:25:29', 0),
(202, 'pipii', '', '2018-05-31 20:26:13', 0),
(203, 'pipii', '', '2018-05-31 20:26:24', 0),
(204, 'pipii', '', '2018-05-31 20:28:32', 0),
(205, 'pipii', 'P011', '2018-05-31 20:30:34', 60),
(206, 'pipii', 'P001', '2018-05-31 20:33:38', 60),
(207, 'pipii', 'P001', '2018-05-31 20:35:08', 60),
(208, 'pipii', 'P001', '2018-05-31 20:39:08', 60),
(209, 'pipii', 'P001', '2018-05-31 20:39:36', 60),
(210, 'pipii', '', '2018-05-31 20:43:03', 0),
(211, 'pipii', '', '2018-05-31 20:44:49', 0),
(212, 'pipii', 'P001', '2018-05-31 20:48:02', 60),
(213, 'pipii', 'P011', '2018-05-31 20:48:23', 10),
(214, 'pipii', 'P008', '2018-05-31 20:48:56', 60),
(215, 'pipii', '', '2018-05-31 20:49:09', 0),
(216, 'pipii', 'P001', '2018-05-31 20:51:04', 60),
(217, 'pipii', 'P001', '2018-05-31 20:52:18', 60),
(218, 'pipii', '', '2018-06-02 00:16:37', 0),
(219, 'pipii', 'P001', '2018-06-02 00:21:36', 60),
(220, 'pipii', 'P001', '2018-06-02 04:37:28', 40),
(221, 'pipii', 'P001', '2018-06-02 04:37:40', 60),
(222, 'pipii', '', '2018-06-02 04:51:33', 0),
(223, 'pipii', 'P001', '2018-06-03 21:19:22', 60),
(224, 'user1', 'P001', '2018-06-04 21:14:42', 60),
(225, '', '', '2019-08-29 15:05:28', 0),
(226, 'jhon_due', '', '2019-08-29 15:10:01', 0),
(227, 'jhon_due', '', '2019-08-29 15:12:37', 0),
(228, 'jhon_due', '', '2019-08-29 15:12:49', 0);

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `kode_penyakit` varchar(4) NOT NULL,
  `nama_penyakit` varchar(50) NOT NULL,
  `definisi` varchar(1000) NOT NULL,
  `pengobatan` varchar(1000) NOT NULL,
  `pencegahan` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`kode_penyakit`, `nama_penyakit`, `definisi`, `pengobatan`, `pencegahan`) VALUES
('P001', 'Hipertensi Kronis', 'Hipertensi kronis didefinisikan sebagai tekanan darah sistolik lebih atau sama dengan 140 mmhg dan atau tekanan darah diastolik lebih atau sama dengan 90 mmhg yang telah ada sebelum kehamilan, yang bertahan sampai lebih dari 20 minggu pasca partus 1 atau setelah 12 minggu.', 'Konsultasi ke dokter.', 'Selain minum obat sesuai yang diresepkan dan konsultasi dengan dokter secara teratur, Anda perlu merawat diri Anda sendiri untuk mengurangi risiko komplikasi jangka panjang hipertensi, seperti penyakit jantung atau ginjal dan stroke. Cobalah untuk mempertahankan gaya hidup sehat, memberikan perhatian khusus pada menu makan dan berat badan, hindari tembakau, dan membatasi alkohol yang Anda minum.'),
('P002', 'Superimposed Pre-Eklampsia', 'Superimposed preeklampsia adalah tekanan darah tinggi, >=140/90 dan < 160/110 mm Hg yang disertai dengan proteinuria (protein dalam air kemih) atau edema (penimbunan cairan), yang terjadi pada kehamilan 20 minggu sampai akhir minggu pertama setelah persalinan.', 'Konsultasi ke dokter.', 'Penderita dianjurkan untuk mengkonsumsi garam dalam jumlah normal dan minum air lebih banyak. Sangat penting untuk menjalani tirah baring. Penderita juga dianjurkan untuk berbaring miring ke kiri sehingga tekanan terhadap vena besar di dalam perut yang membawa darah ke jantung berkurang dan aliran darah menjadi lebih lancar.'),
('P003', 'Hipertensi Gestasional', 'Hipertensi\r\n', 'Hipertensi Gestasional', 'Hipertensi Gestasional'),
('P004', 'Pre-Eklampsia Ringan', 'Pre Eklampsia ringan adalah tekanan darah tinggi, >=140/90 dan < 160/110 mm Hg yang disertai dengan proteinuria (protein dalam air kemih) atau edema (penimbunan cairan), yang terjadi pada kehamilan 20 minggu sampai akhir minggu pertama setelah persalinan.', 'Jika pre-eklamsianya bersifat ringan, penderita cukup menjalani tirah baring di rumah, tetapi harus memeriksakan diri ke dokter setiap 2 hari.\r\nJika perbaikan tidak segera terjadi, biasanya penderita harus dirawat dan jika kelainan ini terus berlanjut, maka persalinan dilakukan sesegera mungkin.', 'Penderita dianjurkan untuk mengkonsumsi garam dalam jumlah normal dan minum air lebih banyak. Sangat penting untuk menjalani tirah baring. Penderita juga dianjurkan untuk berbaring miring ke kiri sehingga tekanan terhadap vena besar di dalam perut yang membawa darah ke jantung berkurang dan aliran darah menjadi lebih lancar.'),
('P005', 'Pre-Eklampsia Berat', 'Pre Eklampsia adalah tekanan darah tinggi (>= 160/110) yang disertai dengan proteinuria (protein dalam air kemih) atau edema (penimbunan cairan),  yang terjadi pada kehamilan 20 minggu sampai akhir minggu pertama setelah persalinan.\r\n', 'Penderita pre-eklamsi berat dirawat di rumah sakit dan menjalani tirah baring. Cairan dan magnesium sulfat diberikan melalui infus. Dalam waktu 4-6 jam, biasanya tekanan darah kembali normal dan bayi dapat dilahirkan dengan selamat. Jika tekanan darah tetap tinggi, sebelum persalinan dimulai, diberikan obat tambahan.', 'Penderita dianjurkan untuk mengkonsumsi garam dalam jumlah normal dan minum air lebih banyak. Sangat penting untuk menjalani tirah baring. Penderita juga dianjurkan untuk berbaring miring ke kiri sehingga tekanan terhadap vena besar di dalam perut yang membawa darah ke jantung berkurang dan aliran darah menjadi lebih lancar.'),
('P006', 'Eklampsia', 'Bentuk pre-eklamsi yang lebih berat, yang menyebabkan terjadinya kejang atau koma.', 'Penderita harus dirawat di rumah sakit guna pengawasan  dan perawatan secar intensif. Diperlukan obat penenang yang cukup untuk menghidarkan timbulnya kejang dapat diberi diaezepam 20 mg im. Pertolongan pertama yang perlu diberikan jika timbulnya kejangan adalah mempertahankan jalan pernapasan bebas, menghindarkan tergigitnya lidah, pemberian oksigen, dan menjaga agar penderita tidak mengalami koma.\r\nSetelah kejangan dapat diatasi dan keadaan umum penderita dapat diperbaiki maka direncanakan untuk mengakhiri kehamilan atau mempercepat persalinan.', 'meningkatkan jumlah balai pemeriksaan antenatal dn mengusahakan agar semua wanita hamil memeriksakan diri sejak hamil muda. Mencari pada tiap pemeriksaan tanda-tanda pre eklampsia dan mengobatinya segera. Mengakhiri	 kehamilan sedapat-dapatnya pada kehamilan 37 minggu ke atas apabila setelah dirawat tanda-tanda pre eklampsia tidak juga dapat dihilangkan.'),
('P007', 'Epilepsi', 'Epilepsi adalah suatu gangguan pada sistem syaraf otak manusia karena terjadinya aktivitas yang berlbihan dari sekelompok sel neuron pada otak sehingga menyebabkan berbagai reaksi pada tubuh manusia mulai dari bengong sesaat, kesemutan, gangguan kesadaran, kejang-kejang dan atau kontraksi otot.', 'Konsultasi ke dokter.', 'Perbanyak jam tidur setiap malam, cobalah untuk mengatur jadwal tidur yang teratur, dan melakukan dengan disiplin. Anda bisa mencoba untuk mengatur stres dan mempelajari teknik relaksasi yang bisa menenangkan otak, tubuh, serta pikiran guna mencegah epilepsi muncul. Ini dapat Anda lakukan dengan cara yoga atau meditasi. Hindari mengonsumsi narkoba dan alkohol. Hindari cahaya yang terang, lampu kelap-kelip, dan rangsangan visual lainnya yang bisa memicu kaget. Kurangi waktu Anda menonton TV dan b'),
('P008', 'Malaria', 'Malaria', 'Malaria', 'Malaria'),
('P009', 'Migrain', 'MigrainMigrain', 'Migrain', 'Migrain'),
('P010', 'Tetanus', 'Tetanus', 'Tetanus', 'Tetanus'),
('P011', 'Hipotensi', 'Hipotensi k', 'Hipotensi', 'Hipotensi');

-- --------------------------------------------------------

--
-- Table structure for table `relasi_penyakit_gejala`
--

CREATE TABLE `relasi_penyakit_gejala` (
  `kode_penyakit` varchar(4) NOT NULL,
  `kode_gejala` varchar(4) NOT NULL,
  `bobot` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `relasi_penyakit_gejala`
--

INSERT INTO `relasi_penyakit_gejala` (`kode_penyakit`, `kode_gejala`, `bobot`) VALUES
('P003', 'G001', 10),
('P003', 'G005', 10),
('P003', 'G006', 20),
('P003', 'G035', 20),
('P003', 'G036', 20),
('P003', 'G037', 20),
('P004', 'G001', 20),
('P004', 'G005', 20),
('P004', 'G006', 30),
('P004', 'G015', 30),
('P005', 'G001', 5),
('P005', 'G005', 5),
('P005', 'G006', 5),
('P005', 'G007', 5),
('P005', 'G014', 10),
('P005', 'G016', 10),
('P005', 'G017', 10),
('P005', 'G020', 10),
('P005', 'G021', 10),
('P005', 'G022', 10),
('P005', 'G023', 10),
('P005', 'G031', 10),
('P006', 'G001', 25),
('P006', 'G005', 25),
('P006', 'G006', 25),
('P006', 'G030', 25),
('P007', 'G003', 30),
('P007', 'G013', 35),
('P007', 'G038', 35),
('P008', 'G003', 10),
('P008', 'G019', 10),
('P008', 'G024', 20),
('P008', 'G025', 20),
('P008', 'G026', 20),
('P008', 'G039', 20),
('P009', 'G003', 25),
('P009', 'G019', 25),
('P009', 'G027', 25),
('P009', 'G028', 25),
('P010', 'G003', 10),
('P010', 'G008', 10),
('P010', 'G018', 10),
('P010', 'G040', 10),
('P010', 'G041', 20),
('P010', 'G042', 20),
('P010', 'G043', 20),
('P011', 'G002', 10),
('P011', 'G009', 10),
('P011', 'G010', 20),
('P011', 'G011', 20),
('P011', 'G012', 20),
('P011', 'G029', 20),
('P002', 'G001', 20),
('P002', 'G004', 20),
('P002', 'G006', 30),
('P002', 'G032', 30),
('P001', 'G001', 10),
('P001', 'G004', 10),
('P001', 'G006', 20),
('P001', 'G032', 20),
('P001', 'G033', 20),
('P001', 'G034', 20);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_analisa`
--

CREATE TABLE `tmp_analisa` (
  `username` varchar(10) NOT NULL,
  `kode_penyakit` varchar(5) NOT NULL,
  `kode_gejala` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_gejala`
--

CREATE TABLE `tmp_gejala` (
  `username` varchar(10) NOT NULL,
  `kode_gejala` varchar(5) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_penyakit`
--

CREATE TABLE `tmp_penyakit` (
  `username` varchar(10) NOT NULL,
  `kode_penyakit` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_pakar`
--
ALTER TABLE `data_pakar`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `nama_user` (`nama_user`),
  ADD KEY `usia` (`usia`),
  ADD KEY `alamat` (`alamat`),
  ADD KEY `jenis_kelamin` (`jenis_kelamin`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode_gejala`),
  ADD KEY `kode_induk_ya` (`kode_induk_ya`);

--
-- Indexes for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  ADD PRIMARY KEY (`id_diagnosa`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`kode_penyakit`);

--
-- Indexes for table `relasi_penyakit_gejala`
--
ALTER TABLE `relasi_penyakit_gejala`
  ADD KEY `kode_penyakit` (`kode_penyakit`),
  ADD KEY `kode_gejala` (`kode_gejala`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hasil_diagnosa`
--
ALTER TABLE `hasil_diagnosa`
  MODIFY `id_diagnosa` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=229;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `relasi_penyakit_gejala`
--
ALTER TABLE `relasi_penyakit_gejala`
  ADD CONSTRAINT `relasi_penyakit_gejala_ibfk_1` FOREIGN KEY (`kode_penyakit`) REFERENCES `penyakit` (`kode_penyakit`),
  ADD CONSTRAINT `relasi_penyakit_gejala_ibfk_2` FOREIGN KEY (`kode_gejala`) REFERENCES `gejala` (`kode_gejala`);
--
-- Database: `forward_chaining`
--
CREATE DATABASE IF NOT EXISTS `forward_chaining` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `forward_chaining`;

-- --------------------------------------------------------

--
-- Table structure for table `kb_table_1`
--

CREATE TABLE `kb_table_1` (
  `id` int(5) NOT NULL,
  `fact_index` varchar(5) NOT NULL,
  `fact` varchar(150) NOT NULL,
  `is_derived` set('0','1') DEFAULT NULL,
  `level` int(3) DEFAULT NULL,
  `rules_in_lhs` varchar(300) DEFAULT NULL,
  `rules_in_rhs` varchar(300) DEFAULT NULL,
  `derived_from` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kb_table_1`
--

INSERT INTO `kb_table_1` (`id`, `fact_index`, `fact`, `is_derived`, `level`, `rules_in_lhs`, `rules_in_rhs`, `derived_from`) VALUES
(1, 'F1', 'animal has hair', '0', NULL, ' R1', NULL, NULL),
(2, 'F14', 'animal is a mammal', '1', NULL, ' R5 R6', ' R1 R2', 'F2+F1'),
(3, 'F2', 'animal gives milk', '0', NULL, ' R2', NULL, NULL),
(4, 'F3', 'animal has feathers', '0', NULL, ' R3', NULL, NULL),
(5, 'F15', 'animal is a bird', '1', NULL, ' R11 R12', ' R3 R4', 'F4.F5+F3'),
(6, 'F4', 'animal flies', '0', NULL, ' R4 R11', NULL, NULL),
(7, 'F5', 'animal lays eggs', '0', NULL, ' R4', NULL, NULL),
(8, 'F6', 'animal eats meat', '0', NULL, ' R5', NULL, NULL),
(9, 'F16', 'animal is a carnivore', '1', NULL, ' R7 R8', ' R5', 'F14.F6'),
(10, 'F7', 'animal chews grass', '0', NULL, ' R6', NULL, NULL),
(11, 'F17', 'animal is a herbivore', '1', NULL, ' R9 R10', ' R6', 'F14.F7'),
(12, 'F8', 'animal has tawny color', '0', NULL, ' R7 R8 R9 R10', NULL, NULL),
(13, 'F9', 'animal has dark spots', '0', NULL, ' R7 R9', NULL, NULL),
(14, 'F18', 'animal is a cheetah', '1', NULL, '', ' R7', 'F16.F8.F9'),
(15, 'F10', 'animal has black stripes', '0', NULL, ' R8 R10', NULL, NULL),
(16, 'F19', 'animal is a tiger', '1', NULL, '', ' R8', 'F16.F8.F10'),
(17, 'F20', 'animal is a giraffe', '1', NULL, '', ' R9', 'F17.F8.F9'),
(18, 'F21', 'animal is a zebra', '1', NULL, '', ' R10', 'F17.F8.F10'),
(19, 'F11', 'animal has long legs', '0', NULL, ' R11', NULL, NULL),
(20, 'F12', 'animal has long neck', '0', NULL, ' R11', NULL, NULL),
(21, 'F22', 'animal is a ostrich', '1', NULL, '', ' R11', 'F15.!F4.F11.F12'),
(22, 'F13', 'animal flies very well', '0', NULL, ' R12', NULL, NULL),
(23, 'F23', 'animal is a albatross', '1', NULL, '', ' R12', 'F15.F13');

-- --------------------------------------------------------

--
-- Table structure for table `kb_table_2`
--

CREATE TABLE `kb_table_2` (
  `id` int(5) NOT NULL,
  `rule_index` varchar(5) NOT NULL,
  `dependent_facts` varchar(300) DEFAULT NULL,
  `comes_from_previous_rule` varchar(300) DEFAULT NULL,
  `derived_fact` varchar(5) DEFAULT NULL,
  `leads_to_next_rule` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kb_table_2`
--

INSERT INTO `kb_table_2` (`id`, `rule_index`, `dependent_facts`, `comes_from_previous_rule`, `derived_fact`, `leads_to_next_rule`) VALUES
(1, 'R1', 'F1', '', 'F14', ' R5 R6'),
(2, 'R5', 'F14.F6', 'R2 R1 ', 'F16', ' R7 R8'),
(3, 'R6', 'F14.F7', 'R2 R1 ', 'F17', ' R9 R10'),
(4, 'R2', 'F2', '', 'F14', ' R5 R6'),
(5, 'R3', 'F3', '', 'F15', ' R11 R12'),
(6, 'R11', 'F15.!F4.F11.F12', 'R4 R3 ', 'F22', ''),
(7, 'R12', 'F15.F13', 'R4 R3 ', 'F23', ''),
(8, 'R4', 'F4.F5', '', 'F15', ' R11 R12'),
(9, 'R7', 'F16.F8.F9', 'R5 ', 'F18', ''),
(10, 'R8', 'F16.F8.F10', 'R5 ', 'F19', ''),
(11, 'R9', 'F17.F8.F9', 'R6 ', 'F20', ''),
(12, 'R10', 'F17.F8.F10', 'R6 ', 'F21', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_facts`
--

CREATE TABLE `tbl_facts` (
  `id` int(5) NOT NULL,
  `fact_index` varchar(5) NOT NULL,
  `fact` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_facts`
--

INSERT INTO `tbl_facts` (`id`, `fact_index`, `fact`) VALUES
(20, 'F1', 'animal has hair'),
(21, 'F2', 'animal gives milk'),
(22, 'F3', 'animal has feathers'),
(23, 'F4', 'animal flies'),
(24, 'F5', 'animal lays eggs'),
(25, 'F6', 'animal eats meat'),
(26, 'F7', 'animal chews grass'),
(27, 'F8', 'animal has tawny color'),
(28, 'F9', 'animal has dark spots'),
(29, 'F10', 'animal has black stripes'),
(30, 'F11', 'animal has long legs'),
(31, 'F12', 'animal has long neck'),
(32, 'F13', 'animal flies very well'),
(33, 'F14', 'animal is a mammal'),
(34, 'F15', 'animal is a bird'),
(35, 'F16', 'animal is a carnivore'),
(36, 'F17', 'animal is a herbivore'),
(37, 'F18', 'animal is a cheetah'),
(38, 'F19', 'animal is a tiger'),
(39, 'F20', 'animal is a giraffe'),
(40, 'F21', 'animal is a zebra'),
(41, 'F22', 'animal is a ostrich'),
(42, 'F23', 'animal is a albatross'),
(43, 'F24', 'animal dies');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_rules`
--

CREATE TABLE `tbl_rules` (
  `id` int(5) NOT NULL,
  `rule_index` varchar(5) NOT NULL,
  `rule` varchar(300) CHARACTER SET utf8 NOT NULL,
  `rule_short` varchar(300) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_rules`
--

INSERT INTO `tbl_rules` (`id`, `rule_index`, `rule`, `rule_short`) VALUES
(6, 'R1', 'IF animal has hair THEN animal is a mammal', 'IF+F1+THEN+F14'),
(7, 'R2', 'IF animal gives milk THEN animal is a mammal', 'IF+F2+THEN+F14'),
(9, 'R3', 'IF animal has feathers THEN animal is a bird', 'IF+F3+THEN+F15'),
(10, 'R4', 'IF animal flies AND animal lays eggs THEN animal is a bird', 'IF+F4+AND+F5+THEN+F15'),
(11, 'R5', 'IF animal is a mammal AND animal eats meat THEN animal is a carnivore', 'IF+F14+AND+F6+THEN+F16'),
(12, 'R6', 'IF animal is a mammal AND animal chews grass THEN animal is a herbivore', 'IF+F14+AND+F7+THEN+F17'),
(13, 'R7', 'IF animal is a carnivore AND animal has tawny color AND animal has dark spots THEN animal is a cheetah', 'IF+F16+AND+F8+AND+F9+THEN+F18'),
(14, 'R8', 'IF animal is a carnivore AND animal has tawny color AND animal has black stripes THEN animal is a tiger', 'IF+F16+AND+F8+AND+F10+THEN+F19'),
(15, 'R9', 'IF animal is a herbivore AND animal has tawny color AND animal has dark spots THEN animal is a giraffe', 'IF+F17+AND+F8+AND+F9+THEN+F20'),
(16, 'R10', 'IF animal is a herbivore AND animal has tawny color AND animal has black stripes THEN animal is a zebra', 'IF+F17+AND+F8+AND+F10+THEN+F21'),
(17, 'R11', 'IF animal is a bird AND ( NOT animal flies ) AND animal has long legs AND animal has long neck THEN animal is a ostrich', 'IF+F15+AND+(+NOT+F4+)+AND+F11+AND+F12+THEN+F22'),
(18, 'R12', 'IF animal is a bird AND animal flies very well THEN animal is a albatross', 'IF+F15+AND+F13+THEN+F23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kb_table_1`
--
ALTER TABLE `kb_table_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kb_table_2`
--
ALTER TABLE `kb_table_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_facts`
--
ALTER TABLE `tbl_facts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_rules`
--
ALTER TABLE `tbl_rules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kb_table_1`
--
ALTER TABLE `kb_table_1`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `kb_table_2`
--
ALTER TABLE `kb_table_2`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_facts`
--
ALTER TABLE `tbl_facts`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tbl_rules`
--
ALTER TABLE `tbl_rules`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'sistem_pakar', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"pelaku\",\"sangsi\",\"tindakan\",\"user\"],\"table_structure[]\":[\"pelaku\",\"sangsi\",\"tindakan\",\"user\"],\"table_data[]\":[\"pelaku\",\"sangsi\",\"tindakan\",\"user\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'server', 'pakar_hukum', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"db_gangguan_kehamilan\",\"forward_chaining\",\"phpmyadmin\",\"quize_db\",\"school\",\"sispak\",\"sistem_pakar\",\"test\",\"yii2basic\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(3, 'root', 'server', 'pakar-hukum', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"db_gangguan_kehamilan\",\"forward_chaining\",\"phpmyadmin\",\"quize_db\",\"school\",\"sispak\",\"sistem_pakar\",\"test\",\"yii2basic\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"sistem_pakar\",\"table\":\"tbl_hasil_bap\"},{\"db\":\"sistem_pakar\",\"table\":\"tbl_tindakan\"},{\"db\":\"sistem_pakar\",\"table\":\"tbl_pasal\"},{\"db\":\"sistem_pakar\",\"table\":\"user\"},{\"db\":\"sistem_pakar\",\"table\":\"tbl_pelaku\"},{\"db\":\"sistem_pakar\",\"table\":\"tbl_relasi\"},{\"db\":\"sispak\",\"table\":\"tb_kesimpulan\"},{\"db\":\"sispak\",\"table\":\"tb_solusi\"},{\"db\":\"sistem_pakar\",\"table\":\"tbl_ralasi\"},{\"db\":\"sispak\",\"table\":\"tb_pertanyaan\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'sistem_pakar', 'tbl_ralasi', '{\"sorted_col\":\"`tbl_ralasi`.`kd_tindakan`  ASC\"}', '2019-08-29 18:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-09-03 12:34:16', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `quize_db`
--
CREATE DATABASE IF NOT EXISTS `quize_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quize_db`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`) VALUES
(1, 'Sports'),
(2, 'HTML'),
(3, 'PHP'),
(4, 'CSS');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question_name` text NOT NULL,
  `answer1` varchar(250) NOT NULL,
  `answer2` varchar(250) NOT NULL,
  `answer3` varchar(250) NOT NULL,
  `answer4` varchar(250) NOT NULL,
  `answer` varchar(250) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_name`, `answer1`, `answer2`, `answer3`, `answer4`, `answer`, `category_id`) VALUES
(1, 'Where did India play its 1st one day international match?', 'Lords', 'Headingley', 'Taunton', 'The Oval', '2', 1),
(2, 'Who was the 1st ODI captain for India?\r\n', 'Ajit Wadekar ', 'Bishen Singh Bedi', 'Nawab Pataudi', 'Vinoo Mankad ', '1', 1),
(3, 'Who has made the Fastest Test century in Test Cricket ?\r\n\r\n\r\n\r\n', 'Sachin Tendulkar', ' Sahid Afridi', ' Virender Sehwag', 'Vivian Richards', '4', 1),
(4, 'Which Bowler had the Best figures in a Test Match ?\r\n\r\n\r\n\r\n\r\n', 'Muttiah Muralitharan', 'Bob Massie', 'Jim Laker', 'George Lohmann', '3', 1),
(5, 'Which team has the Largest successful run chase record in ODIs ?\r\n\r\n\r\n\r\n\r\n', 'England', 'South Africa', 'Australia', 'India', '2', 1),
(6, 'What does HTML stand for?\r\n\r\n	\r\n	\r\n	', 'Hyper Text Markup Language', 'Hyperlinks and Text Markup Language', 'Home Tool Markup Language', 'Highly Text Markup Language', '1', 2),
(7, 'Who is making the Web standards?\r\n\r\n	\r\n	\r\n	\r\n	\r\n', 'Microsoft', 'Google', 'The World Wide Web Consortium', 'Mozilla', '3', 2),
(8, 'What is the correct HTML for creating a hyperlink?\r\n\r\n	\r\n	\r\n	\r\n	', '&lt;a name=&quot;http://smarttutorials.net&quot;&gt;Smart Tutorials&lt;/a&gt;', '&lt;a&gt;http://smarttutorials.net&lt;/a&gt;', '&lt;a url=&quot;http://smarttutorials.net&quot;&gt;Smart Tutorials&lt;/a&gt;', '&lt;a href=&quot;http://smarttutorials.net&quot;&gt;Smart Tutorials&lt;/a&gt;', '4', 2),
(9, 'What is the HTML element to bold a text?\r\n\r\n\r\n\r\n\r\n', '&lt;b&gt;', '&lt;bold&gt;', '&lt;wide&gt;', '&lt;big&gt;', '1', 2),
(10, 'What is the HTML tag for a link?\r\n\r\n\r\n\r\n\r\n', '&lt;link&gt;', '&lt;ref&gt;', '&lt;a&gt;', '&lt;hper&gt;', '3', 2),
(11, 'What does CSS stand for?\r\n\r\n	\r\n	\r\n	\r\n	', 'Creative Style Sheets', 'Colorful Style Sheets', 'Computer Style Sheets', 'Cascading Style Sheets', '4', 4),
(12, 'Where in an HTML document is the correct place to refer to an external style sheet?\r\n\r\n	\r\n	\r\n	\r\n	', 'In the &lt;body&gt; section ', 'At the end of the document', 'At the top of the document', 'In the &lt;head&gt; section ', '4', 4),
(13, 'Which HTML tag is used to define an internal style sheet?\r\n\r\n	\r\n	\r\n	', '&lt;script&gt;', '&lt;css&gt;', '&lt;style&gt;', '&lt;link&gt;', '3', 4),
(14, 'Which is the correct CSS syntax?\r\n\r\n	\r\n	\r\n	\r\n	', 'body:color=black;', '{body;color:black;}', 'body {color: black;}', '{body:color=black;}', '3', 4),
(15, 'Which property is used to change the background color?\r\n\r\n	\r\n	\r\n	', 'background-color', 'color', 'bgcolor', 'bg-color', '1', 4),
(16, 'What does PHP stand for?\r\n\r\n	\r\n	\r\n	', ' PHP: Hypertext Preprocessor', 'Personal Hypertext Processor', 'Personal Home Page', 'Private Home Page', '1', 3),
(17, 'PHP server scripts are surrounded by delimiters, which?\r\n\r\n	\r\n	\r\n	\r\n	', '&lt;?php&gt;...&lt;/?&gt;', '&lt;?php ... ?&gt;', '&lt;script&gt;...&lt;/script&gt;', '&lt;&amp;&gt;...&lt;/&amp;&gt;', '2', 3),
(18, 'How do you write \"Hello World\" in PHP\r\n\r\n	\r\n	\r\n	', '&quot;Hello World&quot;', 'echo &quot;Hello World&quot;', 'Document.Write(&quot;Hello World&quot;);', 'print_f(&quot;Hello World&quot;);', '2', 3),
(19, ' Which of the following is the way to create comments in PHP?\r\n\r\n\r\n	\r\n	\r\n	', '// commented code to end of line', '/* commented code here */', '# commented code to end of line', 'all of the above - correct', '4', 3),
(20, 'What is the correct way to end a PHP statement?\r\n\r\n	\r\n	\r\n	\r\n	', '&lt;/php&gt;', '.', ';', 'New line', '3', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `score`, `category_id`) VALUES
(1, 'muni', 0, 2),
(2, 'muni2', 0, 3),
(3, 'muni16', 0, 1),
(4, 'muni55', 0, 1),
(5, 'muni17', 5, 2),
(6, 'MD. ROKONUZZAMAN', 0, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `school`
--
CREATE DATABASE IF NOT EXISTS `school` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `school`;
--
-- Database: `sispak`
--
CREATE DATABASE IF NOT EXISTS `sispak` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sispak`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3'),
('admin2', 'admin2');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kesimpulan`
--

CREATE TABLE `tb_kesimpulan` (
  `kode_kesimpulan` int(11) NOT NULL,
  `solusi` varchar(50) NOT NULL,
  `fakta` varchar(100) NOT NULL,
  `oleh` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kesimpulan`
--

INSERT INTO `tb_kesimpulan` (`kode_kesimpulan`, `solusi`, `fakta`, `oleh`, `status`) VALUES
(1, 'Informatika', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(2, 'Informatika', 'Jurusan adalah IPA', 'pakar', 'setuju'),
(3, 'Informatika', 'Tertarik masuk teknik', 'pakar', 'setuju'),
(4, 'Informatika', 'Rata-rata nilai matematika, bahasa inggris, kimia, fisika, biologi  kelas 10 dan kelas 11 >= 75', 'pakar', 'setuju'),
(5, 'Informatika', 'Tertarik dengan   bidang komputer', 'pakar', 'setuju'),
(6, 'Informatika', 'Ingin mempelajari komputasi yang lebih dalam', 'pakar', 'setuju'),
(7, 'Sistem Informasi', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(8, 'Sistem Informasi', 'Jurusan adalah IPA', 'pakar', 'setuju'),
(9, 'Sistem Informasi', 'Tertarik masuk teknik', 'pakar', 'setuju'),
(10, 'Sistem Informasi', 'Rata-rata nilai matematika, bahasa inggris, kimia, fisika, biologi  kelas 10 dan kelas 11 >= 75', 'pakar', 'setuju'),
(11, 'Sistem Informasi', 'Tertarik dengan   bidang komputer', 'pakar', 'setuju'),
(12, 'Sistem Informasi', 'Tidak tertarik  mempelajari komputasi yang lebih dalam', 'pakar', 'setuju'),
(13, 'Arsitektur', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(14, 'Arsitektur', 'Jurusan adalah IPA', 'pakar', 'setuju'),
(15, 'Arsitektur', 'Tertarik masuk teknik', 'pakar', 'setuju'),
(16, 'Arsitektur', 'Rata-rata nilai matematika, bahasa inggris, kimia, fisika, biologi  kelas 10 dan kelas 11 >= 75', 'pakar', 'setuju'),
(17, 'Arsitektur', 'Tidak tertarik dengan   bidang komputer', 'pakar', 'setuju'),
(18, 'Arsitektur', 'Tertarik dengan konstruksi bangunan', 'pakar', 'setuju'),
(19, 'Desain Produk', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(20, 'Desain Produk', 'Jurusan adalah IPA', 'pakar', 'setuju'),
(21, 'Desain Produk', 'Tertarik masuk teknik', 'pakar', 'setuju'),
(22, 'Desain Produk', 'Rata-rata nilai matematika, bahasa inggris, kimia, fisika, biologi  kelas 10 dan kelas 11 >= 75', 'pakar', 'setuju'),
(23, 'Desain Produk', 'Tidak tertarik dengan   bidang komputer', 'pakar', 'setuju'),
(24, 'Desain Produk', 'Tidak tertarik dengan konstruksi bangunan', 'pakar', 'setuju'),
(25, 'Akuntansi', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(26, 'Akuntansi', 'Jurusan adalah IPA', 'pakar', 'setuju'),
(27, 'Akuntansi', 'Tidak tertarik masuk teknik', 'pakar', 'setuju'),
(28, 'Akuntansi', 'Tertarik dengan ilmu bisnis', 'pakar', 'setuju'),
(29, 'Akuntansi', 'Senang belajar tentang pembukuan keuangan', 'pakar', 'setuju'),
(30, 'Manajemen', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(31, 'Manajemen', 'Jurusan adalah IPA', 'pakar', 'setuju'),
(32, 'Manajemen', 'Tidak tertarik masuk teknik', 'pakar', 'setuju'),
(33, 'Manajemen', 'Tertarik dengan ilmu bisnis', 'pakar', 'setuju'),
(34, 'Manajemen', 'Tidak senang belajar tentang pembukuan keuangan', 'pakar', 'setuju'),
(35, 'Kedokteran', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(36, 'Kedokteran', 'Jurusan adalah IPA', 'pakar', 'setuju'),
(37, 'Kedokteran', 'Tidak tertarik masuk teknik', 'pakar', 'setuju'),
(38, 'Kedokteran', 'Tidak tertarik dengan ilmu bisnis', 'pakar', 'setuju'),
(39, 'Kedokteran', 'Tertarik dengan ilmu biologi', 'pakar', 'setuju'),
(40, 'Kedokteran', 'Ingin belajar tentang kesehatan dan penyembuhan\r\n', 'pakar', 'setuju'),
(41, 'Bioteknologi', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(42, 'Bioteknologi', 'Jurusan adalah IPA', 'pakar', 'setuju'),
(43, 'Bioteknologi', 'Tidak tertarik masuk teknik', 'pakar', 'setuju'),
(44, 'Bioteknologi', 'Tidak tertarik dengan ilmu bisnis', 'pakar', 'setuju'),
(45, 'Bioteknologi', 'Tertarik dengan ilmu biologi\r\n', 'pakar', 'setuju'),
(46, 'Bioteknologi', 'Tidak ingin belajar tentang kesehatan secara spesifik dan penyembuhan', 'pakar', 'setuju'),
(47, 'Teologi', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(48, 'Teologi', 'Jurusan adalah IPA', 'pakar', 'setuju'),
(49, 'Teologi', 'Tidak tertarik masuk teknik', 'pakar', 'setuju'),
(50, 'Teologi', 'Tidak tertarik dengan ilmu bisnis', 'pakar', 'setuju'),
(51, 'Teologi', 'Tidak tertarik dengan ilmu biologi ', 'pakar', 'setuju'),
(52, 'Teologi', 'Ingin mendalami tentang agama Kristen', 'pakar', 'setuju'),
(53, 'Pendidikan Bahasa Inggris', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(54, 'Pendidikan Bahasa Inggris', 'Jurusan adalah IPA', 'pakar', 'setuju'),
(55, 'Pendidikan Bahasa Inggris', 'Tidak tertarik masuk teknik', 'pakar', 'setuju'),
(56, 'Pendidikan Bahasa Inggris', 'Tidak tertarik dengan ilmu bisnis', 'pakar', 'setuju'),
(57, 'Pendidikan Bahasa Inggris', 'Tidak tertarik dengan ilmu biologi ', 'pakar', 'setuju'),
(58, 'Pendidikan Bahasa Inggris', 'Tidak ingin mendalami tentang agama Kristen', 'pakar', 'setuju'),
(59, 'Pendidikan Bahasa Inggris', 'Tertarik belajar bahasa Inggris', 'pakar', 'setuju'),
(60, 'Informatika (non IPA)', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(61, 'Informatika (non IPA)', 'Bukan jurusan IPA', 'pakar', 'setuju'),
(62, 'Informatika (non IPA)', 'Tertarik masuk teknik', 'pakar', 'setuju'),
(63, 'Informatika (non IPA)', 'Rata-rata nilai matematika, bahasa inggris kelas 10 dan kelas 11 >= 75', 'pakar', 'setuju'),
(64, 'Informatika (non IPA)', 'Tertarik dengan bidang komputer', 'pakar', 'setuju'),
(65, 'Informatika (non IPA)', 'Ingin mempelajari komputasi yang lebih dalam', 'pakar', 'setuju'),
(66, 'Sistem Informasi (non IPA)', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(67, 'Sistem Informasi (non IPA)', 'Bukan jurusan IPA', 'pakar', 'setuju'),
(68, 'Sistem Informasi (non IPA)', 'Tertarik masuk teknik', 'pakar', 'setuju'),
(69, 'Sistem Informasi (non IPA)', 'Rata-rata nilai matematika, bahasa inggris kelas 10 dan kelas 11 >= 75', 'pakar', 'setuju'),
(70, 'Sistem Informasi (non IPA)', 'Tertarik dengan bidang komputer', 'pakar', 'setuju'),
(71, 'Sistem Informasi (non IPA)', 'Ingin mempelajari komputasi yang lebih dalam', 'pakar', 'setuju'),
(72, 'Arsitektur (non IPA)', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(73, 'Arsitektur (non IPA)', 'Bukan jurusan IPA', 'pakar', 'setuju'),
(74, 'Arsitektur (non IPA)', 'Tertarik masuk teknik', 'pakar', 'setuju'),
(75, 'Arsitektur (non IPA)', 'Rata-rata nilai matematika, bahasa inggris kelas 10 dan kelas 11 >= 75', 'pakar', 'setuju'),
(76, 'Arsitektur (non IPA)', 'Tidak tertarik dengan bidang komputer', 'pakar', 'setuju'),
(77, 'Arsitektur (non IPA)', 'Tertarik dengan konstruksi bangunan', 'pakar', 'setuju'),
(78, 'Desain Produk (non IPA)', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(79, 'Desain Produk (non IPA)', 'Bukan jurusan IPA', 'pakar', 'setuju'),
(80, 'Desain Produk (non IPA)', 'Tertarik masuk teknik', 'pakar', 'setuju'),
(81, 'Desain Produk (non IPA)', 'Rata-rata nilai matematika, bahasa inggris kelas 10 dan kelas 11 >= 75', 'pakar', 'setuju'),
(82, 'Desain Produk (non IPA)', 'Tidak tertarik dengan bidang komputer', 'pakar', 'setuju'),
(83, 'Desain Produk (non IPA)', 'Tertarik dengan konstruksi bangunan', 'pakar', 'setuju'),
(84, 'Akuntansi (non IPA)', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(85, 'Akuntansi (non IPA)', 'Bukan jurusan IPA', 'pakar', 'setuju'),
(86, 'Akuntansi (non IPA)', 'Tidak tertarik masuk teknik', 'pakar', 'setuju'),
(87, 'Akuntansi (non IPA)', 'Tertarik dengan ilmu bisnis', 'pakar', 'setuju'),
(88, 'Akuntansi (non IPA)', 'Senang belajar tentang pembukuan keuangan', 'pakar', 'setuju'),
(89, 'Manajemen (non IPA)', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(90, 'Manajemen (non IPA)', 'Bukan jurusan IPA', 'pakar', 'setuju'),
(91, 'Manajemen (non IPA)', 'Tidak tertarik masuk teknik', 'pakar', 'setuju'),
(92, 'Manajemen (non IPA)', 'Tertarik dengan ilmu bisnis', 'pakar', 'setuju'),
(93, 'Manajemen (non IPA)', 'Tidak senang belajar tentang pembukuan keuangan', 'pakar', 'setuju'),
(94, 'Kedokteran (non IPA)', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(95, 'Kedokteran (non IPA)', 'Bukan jurusan IPA', 'pakar', 'setuju'),
(96, 'Kedokteran (non IPA)', 'Tidak tertarik masuk teknik', 'pakar', 'setuju'),
(97, 'Kedokteran (non IPA)', 'Tidak Tertarik dengan ilmu bisnis', 'pakar', 'setuju'),
(98, 'Kedokteran (non IPA)', 'Tertarik dengan ilmu biologi', 'pakar', 'setuju'),
(99, 'Kedokteran (non IPA)', 'Ingin belajar tentang kesehatan dan penyembuhan', 'pakar', 'setuju'),
(100, 'Bioteknologi (non IPA)', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(101, 'Bioteknologi (non IPA)', 'Bukan jurusan IPA', 'pakar', 'setuju'),
(102, 'Bioteknologi (non IPA)', 'Tidak tertarik masuk teknik', 'pakar', 'setuju'),
(103, 'Bioteknologi (non IPA)', 'Tidak Tertarik dengan ilmu bisnis', 'pakar', 'setuju'),
(104, 'Bioteknologi (non IPA)', 'Tertarik dengan ilmu biologi', 'pakar', 'setuju'),
(105, 'Bioteknologi (non IPA)', 'Tidak ingin belajar tentang kesehatan dan penyembuhan', 'pakar', 'setuju'),
(106, 'Teologi (non IPA)', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(107, 'Teologi (non IPA)', 'Bukan jurusan IPA', 'pakar', 'setuju'),
(108, 'Teologi (non IPA)', 'Tidak tertarik masuk teknik', 'pakar', 'setuju'),
(109, 'Teologi (non IPA)', 'Tidak Tertarik dengan ilmu bisnis', 'pakar', 'setuju'),
(110, 'Teologi (non IPA)', 'Tidak tertarik dengan ilmu biologi', 'pakar', 'setuju'),
(111, 'Teologi (non IPA)', 'Ingin mendalami tentang agama Kristen', 'pakar', 'setuju'),
(112, 'Pendidikan Bahasa Inggris (non IPA)', 'Sekolah asal adalah SMA', 'pakar', 'setuju'),
(113, 'Pendidikan Bahasa Inggris (non IPA)', 'Bukan jurusan IPA', 'pakar', 'setuju'),
(114, 'Pendidikan Bahasa Inggris (non IPA)', 'Tidak tertarik masuk teknik', 'pakar', 'setuju'),
(115, 'Pendidikan Bahasa Inggris (non IPA)', 'Tidak Tertarik dengan ilmu bisnis', 'pakar', 'setuju'),
(116, 'Pendidikan Bahasa Inggris (non IPA)', 'Tidak tertarik dengan ilmu biologi', 'pakar', 'setuju'),
(117, 'Pendidikan Bahasa Inggris (non IPA)', 'Tidak ingin mendalami tentang agama Kristen', 'pakar', 'setuju'),
(118, 'Pendidikan Bahasa Inggris (non IPA)', 'Tertarik belajar bahasa Inggris', 'pakar', 'setuju'),
(119, 'Arsitek (non SMA)', 'Sekolah asal bukan SMA', 'pakar', 'setuju'),
(120, 'Arsitek (non SMA)', 'Jurusan asal adalah teknik bangunan dan perancangan produk', 'pakar', 'setuju'),
(121, 'Arsitek (non SMA)', 'Konsentrasi adalah teknik bangunan', 'pakar', 'setuju'),
(122, 'Desain Produk (non SMA)', 'Sekolah asal bukan SMA', 'pakar', 'setuju'),
(123, 'Desain Produk (non SMA)', 'Jurusan asal adalah teknik bangunan dan perancangan produk', 'pakar', 'setuju'),
(124, 'Desain Produk (non SMA)', 'Tidak konsentrasi teknik bangunan', 'pakar', 'setuju'),
(125, 'Informatika (non SMA)', 'Sekolah asal bukan SMA', 'pakar', 'setuju'),
(126, 'Informatika (non SMA)', 'Jurusan asal bukan teknik bangunan dan perancangan produk', 'pakar', 'setuju'),
(127, 'Informatika (non SMA)', 'Jurusan asal adalah bidang teknologi informasi dan komunikasi', 'pakar', 'setuju'),
(128, 'Informatika (non SMA)', 'Konsentrasi adalah Teknik komputer dan jaringan', 'pakar', 'setuju'),
(129, 'Sistem Informasi (non SMA)', 'Sekolah asal bukan SMA', 'pakar', 'setuju'),
(130, 'Sistem Informasi (non SMA)', 'Jurusan asal bukan teknik bangunan dan perancangan produk', 'pakar', 'setuju'),
(131, 'Sistem Informasi (non SMA)', 'Jurusan asal adalah bidang teknologi informasi dan komunikasi', 'pakar', 'setuju'),
(132, 'Sistem Informasi (non SMA)', 'Tidak konsentrasi Teknik komputer dan jaringan', 'pakar', 'setuju'),
(133, 'Akutansi (non SMA)', 'Sekolah asal bukan SMA', 'pakar', 'setuju'),
(134, 'Akutansi (non SMA)', 'Jurusan asal bukan teknik bangunan dan perancangan produk', 'pakar', 'setuju'),
(135, 'Akutansi (non SMA)', 'Jurusan asal bukan bidang teknologi informasi dan komunikasi', 'pakar', 'setuju'),
(136, 'Akutansi (non SMA)', 'Jurusan asal adalah bidang bisnis dan manajemen', 'pakar', 'setuju'),
(137, 'Akutansi (non SMA)', 'Konsentrasi adalah akuntansi', 'pakar', 'setuju'),
(138, 'Manajemen (non SMA)', 'Sekolah asal bukan SMA', 'pakar', 'setuju'),
(139, 'Manajemen (non SMA)', 'Jurusan asal bukan teknik bangunan dan perancangan produk', 'pakar', 'setuju'),
(140, 'Manajemen (non SMA)', 'Jurusan asal bukan bidang teknologi informasi dan komunikasi', 'pakar', 'setuju'),
(141, 'Manajemen (non SMA)', 'Jurusan asal adalah bidang bisnis dan manajemen', 'pakar', 'setuju'),
(142, 'Manajemen (non SMA)', 'Tidak Konsentrasi pada akuntansi', 'pakar', 'setuju'),
(150, 'Arsitektur (non IPA)', 'suka tidur', 'apip', 'setuju'),
(151, 'Sistem', 'ya', 'pakar', 'setuju'),
(152, 'Sistem', 'SUKA JAJAN', 'pakar', 'setuju');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pertanyaan`
--

CREATE TABLE `tb_pertanyaan` (
  `kode_pertanyaan` varchar(50) NOT NULL,
  `isi_pertanyaan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pertanyaan`
--

INSERT INTO `tb_pertanyaan` (`kode_pertanyaan`, `isi_pertanyaan`) VALUES
('m1', 'Apakah berasal dari SMA ?'),
('m10-a', 'Apakah tertarik dengan ilmu biologi ? '),
('m10-b', 'Apakah tertarik dengan ilmu biologi ? '),
('m11-a', 'Apakah Anda ingin belajar tentang kesehatan dan penyembuhan ?'),
('m11-b', 'Apakah Anda ingin belajar tentang kesehatan dan penyembuhan ?'),
('m12-a', 'Apakah Anda ingin mendalami tentang agama Kristen ?'),
('m12-b', 'Apakah Anda ingin mendalami tentang agama Kristen ?'),
('m13-a', 'Apakah Anda gemar berbahasa Inggris ?'),
('m13-b', 'Apakah Anda gemar berbahasa Inggris ?'),
('m14', 'Apakah jurusan asal Anda adalah teknik bangunan dan perancangan produk ?'),
('m15', 'Apakah konsentrasi Anda adalah teknik bangunan ?'),
('m16', '\r\nApakah jurusan asal Anda adalah bidang teknologi informasi dan komunikasi ?'),
('m17', '\r\nApakah konsentrasi penjurusan adalah teknik komputer dan jaringan ?'),
('m18', 'Apakah jurusan asal adalah bidang bisnis dan manajemen ?'),
('m19', 'Apakah konsentrasi jurusan Anda adalah Akuntansi ?'),
('m2', 'Apakah mengambil jurusan IPA ?'),
('m3-a', 'Apakah tertarik masuk teknik ?'),
('m3-b', 'Apakah tertarik masuk teknik ?'),
('m4-a', 'Apakah rata-rata nilai matematika, bahasa inggris, kimia, fisika, biologi kelas 10 dan kelas 11 adalah >= 75 ?'),
('m4-b', 'Apakah rata-rata nilai matematika, bahasa inggris, kimia, fisika, biologi kelas 10 dan kelas 11 adalah >= 75 ?'),
('m5-a', 'Apakah tertarik dengan hal-hal yang berkaitan dengan komputer ?'),
('m5-b', 'Apakah tertarik dengan hal-hal yang berkaitan dengan komputer ?'),
('m6-a', 'Apakah ingin mempelajari komputasi yang lebih dalam ?'),
('m6-b', 'Apakah ingin mempelajari komputasi yang lebih dalam ?'),
('m7-a', 'Apakah tertarik dengan konstruksi bangunan ?'),
('m7-b', 'Apakah tertarik dengan konstruksi bangunan ?'),
('m8-a', 'Apakah tertarik dengan ilmu bisnis ?'),
('m8-b', 'Apakah tertarik dengan ilmu bisnis ?'),
('m9-a', 'Apakah senang belajar tentang pembukuan keuangan ?'),
('m9-b', 'Apakah senang belajar tentang pembukuan keuangan ?');

-- --------------------------------------------------------

--
-- Table structure for table `tb_solusi`
--

CREATE TABLE `tb_solusi` (
  `kode_solusi` varchar(50) NOT NULL,
  `isi_solusi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_solusi`
--

INSERT INTO `tb_solusi` (`kode_solusi`, `isi_solusi`) VALUES
('S1', 'Informatika'),
('S10', 'Pendidikan Bahasa Inggris'),
('S11', 'x-1'),
('S12', 'x-2'),
('S13', 'Informatika (non IPA)'),
('S14', 'Sistem Informasi (non IPA)'),
('S15', 'Arsitektur (non IPA)'),
('S16', 'Desain Produk (non IPA)'),
('S17', 'Akuntansi (non IPA)'),
('S18', 'Manajemen (non IPA)'),
('S19', 'Kedokteran (non IPA)'),
('S2', 'Sistem Informasi'),
('S20', 'Bioteknologi (non IPA)'),
('S21', 'Teologi (non IPA)'),
('S22', 'Pendidikan Bahasa Inggris (non IPA)'),
('S23', 'x-3'),
('S24', 'x-4'),
('S25', 'Arsitektur (non SMA)'),
('S26', 'Desain Produk (non SMA)'),
('S27', 'Informatika (non SMA)'),
('S28', 'Sistem Informasi (non SMA)'),
('S29', 'Akutansi (non SMA)'),
('S3', 'Arsitektur'),
('S30', 'Manajemen (non SMA)'),
('S31', 'x-5'),
('S4', 'Desain Produk'),
('S5', 'Akuntansi'),
('S6', 'Manajemen'),
('S7', 'Kedokteran'),
('S8', 'Bioteknologi'),
('S9', 'Teologi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kesimpulan`
--
ALTER TABLE `tb_kesimpulan`
  ADD PRIMARY KEY (`kode_kesimpulan`);

--
-- Indexes for table `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  ADD PRIMARY KEY (`kode_pertanyaan`);

--
-- Indexes for table `tb_solusi`
--
ALTER TABLE `tb_solusi`
  ADD PRIMARY KEY (`kode_solusi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kesimpulan`
--
ALTER TABLE `tb_kesimpulan`
  MODIFY `kode_kesimpulan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
--
-- Database: `sistem_pakar`
--
CREATE DATABASE IF NOT EXISTS `sistem_pakar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sistem_pakar`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hasil_bap`
--

CREATE TABLE `tbl_hasil_bap` (
  `id_bap` varchar(50) NOT NULL,
  `nama_pelaku` varchar(50) NOT NULL,
  `umur` int(100) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `kd_pasal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hasil_bap`
--

INSERT INTO `tbl_hasil_bap` (`id_bap`, `nama_pelaku`, `umur`, `jenis_kelamin`, `kd_pasal`) VALUES
('U201', 'marcopolo', 23, 'laki-laki', '367B'),
('U301', 'markoni', 30, 'laki-laki', '363B'),
('U330', 'bbrandon', 27, 'laki-laki', '365D'),
('U332', 'rendy', 35, 'laki-laki', '363A'),
('U445', 'jhoni deep', 45, 'laki-laki', '363A');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pasal`
--

CREATE TABLE `tbl_pasal` (
  `kd_pasal` varchar(50) NOT NULL,
  `hukuman` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pasal`
--

INSERT INTO `tbl_pasal` (`kd_pasal`, `hukuman`, `keterangan`) VALUES
('362', '5', 'dikenakan hukuman penjara maksimal 5 tahun penjara'),
('363A', '7', 'di kenakan denda hukuman maksimal 7 tahun penjara'),
('363B', '9', 'dikenakan hukuman penjara maksimal 9 tahun penjara'),
('365A', '9 ', 'termasuk hukuman berat sehingga dikenakan hukuman 9 tahun penjara'),
('365B', '15', 'termasuk hukuman berat sehingga dikenakan hukuman penjara maksimal 15 tahun penjara'),
('365C', '15', 'termasuk hukuman berat sehingga dikenakan hukuman 15 tahun penjara'),
('365D', 'hukuman mati atau seumur hidup', 'dikenakan minimal hukuman seumur hidup dan maksimal hukuman mati'),
('366', 'pencabutan hak', 'pencabutan hak berdasarkan pasal 35 no 1-4'),
('367A', 'tidak mungkin di kenakan hukuman', 'tidak mungkin di kenakan hukuman'),
('367B', 'tidak dikenakan hukuman', 'di kenakan hukuman jika ada tuntutan dari korban');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_relasi`
--

CREATE TABLE `tbl_relasi` (
  `kd_pasal` varchar(50) NOT NULL,
  `kd_tindakan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_relasi`
--

INSERT INTO `tbl_relasi` (`kd_pasal`, `kd_tindakan`) VALUES
('362', 'T001'),
('363A', 'T002'),
('363A', 'T003'),
('363A', 'T004'),
('363A', 'T005'),
('363A', 'T006'),
('363B', 'T004'),
('363B', 'T005'),
('363B', 'T006'),
('364', 'T001'),
('364', 'T005'),
('364', 'T006'),
('364', 'T007'),
('365A', 'T008'),
('365B', 'T009'),
('365C', 'T010'),
('365D', 'T010'),
('365D', 'T005'),
('367A', 'T011'),
('367B', 'T012');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tindakan`
--

CREATE TABLE `tbl_tindakan` (
  `kd_tindakan` varchar(50) NOT NULL,
  `tindakan` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tindakan`
--

INSERT INTO `tbl_tindakan` (`kd_tindakan`, `tindakan`) VALUES
('T001', 'mengambil barang milik orang lain dengan maksud melawan hukum'),
('T002', 'pencurian berupa hewan ternak'),
('T003', 'pencurian dilakukan pada saat terjadi bencana'),
('T004', 'Pencurian dilakukan pada malam hari, pada pekarangan rumah yang tertutup'),
('T005', 'pencurian dilakukan oleh 2 orang lebih'),
('T006', 'pencurian dilakukan dengan cara merusak dan memakai kunci palsu'),
('T007', 'Harga barang yang dicuri tidak lebih dari 25 rupiah'),
('T008', 'pencurian di sertai dengan kekerasan, dan melarikan diri'),
('T009', 'Pencurian mengakibatkan luka berat'),
('T010', 'pencurian mengakibatkan kematian'),
('T011', 'pembuat atau pembantu dari salah satu pelaku pencurian adalah suami / istri yang tidak terpisah ranjang atau harta'),
('T012', 'Ada hubungann sedarah dan ada pengaduan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`) VALUES
('1', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_hasil_bap`
--
ALTER TABLE `tbl_hasil_bap`
  ADD PRIMARY KEY (`id_bap`);

--
-- Indexes for table `tbl_pasal`
--
ALTER TABLE `tbl_pasal`
  ADD PRIMARY KEY (`kd_pasal`);

--
-- Indexes for table `tbl_relasi`
--
ALTER TABLE `tbl_relasi`
  ADD KEY `kd_pasal` (`kd_pasal`),
  ADD KEY `kd_tindakan` (`kd_tindakan`);

--
-- Indexes for table `tbl_tindakan`
--
ALTER TABLE `tbl_tindakan`
  ADD PRIMARY KEY (`kd_tindakan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `backend_user`
--

CREATE TABLE `backend_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backend_user`
--
ALTER TABLE `backend_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backend_user`
--
ALTER TABLE `backend_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `yii2basic`
--
CREATE DATABASE IF NOT EXISTS `yii2basic` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `yii2basic`;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`code`, `name`, `population`) VALUES
('AU', 'Australia', 24016400),
('BR', 'Brazil', 205722000),
('CA', 'Canada', 35985751),
('CN', 'China', 1375210000),
('DE', 'Germany', 81459000),
('FR', 'France', 64513242),
('GB', 'United Kingdom', 65097000),
('IN', 'India', 1285400000),
('RU', 'Russia', 146519759),
('US', 'United States', 322976000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
