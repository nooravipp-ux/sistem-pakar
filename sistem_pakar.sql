-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 09, 2019 at 06:59 PM
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
-- Database: `sistem_pakar`
--

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
('U004', 'mira', 36, 'laki-laki', '363B'),
('U201', 'marcopolo', 23, 'laki-laki', '367B'),
('U229', 'jhon wick', 43, 'laki-laki', '363A'),
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
('000', 'tidak di kenakan hukuman', 'Pelaku tidak terjerat kasus pidana pencurian'),
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
('T005B', 'pencurian dilakukan oleh 2 orang lebih'),
('T005R', 'pencurian dilakukan oleh 2 orang lebih'),
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
