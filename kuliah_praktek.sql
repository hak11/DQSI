-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2017 at 02:55 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kpupin`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id_area` int(11) NOT NULL,
  `nama_area` varchar(50) NOT NULL,
  `alamat` text,
  `no_tlf` varchar(20) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id_area`, `nama_area`, `alamat`, `no_tlf`, `pic`) VALUES
(2101, 'DSO Sunter', 'Jakarta ', NULL, 'Hakim');

-- --------------------------------------------------------

--
-- Table structure for table `ldp`
--

CREATE TABLE `ldp` (
  `id_ldp` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_pembuatan` date NOT NULL,
  `no_rangka` varchar(50) NOT NULL,
  `model` varchar(30) NOT NULL,
  `no_mesin` varchar(20) NOT NULL,
  `no_type` varchar(20) NOT NULL,
  `part_penyebab` text NOT NULL,
  `part_lokasi` text NOT NULL,
  `problem` text NOT NULL,
  `status_kirim` tinyint(1) NOT NULL,
  `km` int(11) NOT NULL,
  `tanggal_penyerahan` date NOT NULL,
  `tanggal_perbaikan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ldp`
--

INSERT INTO `ldp` (`id_ldp`, `id_area`, `id_user`, `tanggal_pembuatan`, `no_rangka`, `model`, `no_mesin`, `no_type`, `part_penyebab`, `part_lokasi`, `problem`, `status_kirim`, `km`, `tanggal_penyerahan`, `tanggal_perbaikan`) VALUES
(1, 2101, 1, '2017-01-11', 'MHKG2CJ1JEK027480', 'B100RS-GMDFJ', 'A025406', '1NR-VE', 'part penyebab', 'part lokasi', 'problem', 0, 130, '2017-01-11', '2017-01-11'),
(2, 2101, 1, '2017-01-11', 'MHKG2CJ2JEK094936', 'B401RS-GMZFJ', 'A209652', 'K3-VE', 'a', 'b', 'c', 0, 40, '2017-01-11', '2017-01-11');

-- --------------------------------------------------------

--
-- Table structure for table `ldp_detail`
--

CREATE TABLE `ldp_detail` (
  `id` int(11) NOT NULL,
  `id_ldp` int(11) NOT NULL,
  `permintaan_perbaikan` text NOT NULL,
  `pengaruh_market` text NOT NULL,
  `permintaan_konkret` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ldp_detail`
--

INSERT INTO `ldp_detail` (`id`, `id_ldp`, `permintaan_perbaikan`, `pengaruh_market`, `permintaan_konkret`) VALUES
(1, 1, 'Permintaan perbaikan sebelum problem terjadi,Perbaikan membutuhkan waktu lama,Perbaikan sementara (kemungkinan perbaikan ulang)', 'Jumlah customer / VIP,Berurusan dengan polisi,Masuk media massa', 'Instruksi untuk diperbaiki,Kirim service informasi'),
(2, 2, 'Ganti mobil,Permintaan perbaikan sebelum problem terjadi', 'Jumlah customer / VIP,Berurusan dengan instansi pemerintahan', 'Penanganan sementara (early resolution),Lain-lain');

-- --------------------------------------------------------

--
-- Table structure for table `ldp_kerusakan`
--

CREATE TABLE `ldp_kerusakan` (
  `id` int(11) NOT NULL,
  `id_ldp` int(11) NOT NULL,
  `customer_complaint` text NOT NULL,
  `detail_kerusakan` text NOT NULL,
  `kemungkinan_penyebab` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ldp_kerusakan`
--

INSERT INTO `ldp_kerusakan` (`id`, `id_ldp`, `customer_complaint`, `detail_kerusakan`, `kemungkinan_penyebab`) VALUES
(1, 1, 'customer complaint', 'detail kerusakan', 'kemungkianan penyebab'),
(2, 2, 'x', 'y', 'z');

-- --------------------------------------------------------

--
-- Table structure for table `ldp_kondisi_kendaraan`
--

CREATE TABLE `ldp_kondisi_kendaraan` (
  `id` int(11) NOT NULL,
  `id_ldp` int(11) NOT NULL,
  `kondisi_jalan` varchar(50) NOT NULL,
  `kondisi_kendaraan` text NOT NULL,
  `kecepatan_kendaraan` int(11) NOT NULL,
  `posisi_gigi` int(11) NOT NULL,
  `t1` varchar(50) NOT NULL,
  `t2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ldp_kondisi_kendaraan`
--

INSERT INTO `ldp_kondisi_kendaraan` (`id`, `id_ldp`, `kondisi_jalan`, `kondisi_kendaraan`, `kecepatan_kendaraan`, `posisi_gigi`, `t1`, `t2`) VALUES
(1, 1, 'rata', 'kecepatan_tetap,ada_muatan,saat_deselerasi', 40, 3, '0', '0'),
(2, 2, 'rusak', 'saat_akselerasi,saat_deselerasi', 50, 3, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `ldp_perbaikan`
--

CREATE TABLE `ldp_perbaikan` (
  `id` int(11) NOT NULL,
  `id_ldp` int(11) NOT NULL,
  `prioritas` varchar(5) NOT NULL,
  `perbaikan_tindakan` text NOT NULL,
  `komentar_bengkel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ldp_perbaikan`
--

INSERT INTO `ldp_perbaikan` (`id`, `id_ldp`, `prioritas`, `perbaikan_tindakan`, `komentar_bengkel`) VALUES
(1, 1, 's', 'perbaikan yang dilakukan', 'komentar bengkel'),
(2, 2, 'y', 'yu', 'ni');

-- --------------------------------------------------------

--
-- Table structure for table `ldp_upload`
--

CREATE TABLE `ldp_upload` (
  `id` int(11) NOT NULL,
  `id_ldp` int(11) NOT NULL,
  `path_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `main_master`
--

CREATE TABLE `main_master` (
  `id` int(11) NOT NULL,
  `model_code` varchar(13) NOT NULL,
  `chassis_no` varchar(30) NOT NULL,
  `eg_no` varchar(10) NOT NULL,
  `eg_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_master`
--

INSERT INTO `main_master` (`id`, `model_code`, `chassis_no`, `eg_no`, `eg_type`) VALUES
(1, 'B100RS-GMDFJ', 'MHKS4DA2JEJ006308', 'A070672', '1KR-DE'),
(2, 'B100RS-GMDFJ', 'MHKS4DA2JFJ016895', 'A209652', '1KR-DE'),
(3, 'B100RS-GMDFJ', 'MHKS4DA2JGJ025851', 'A339002', '1KR-DE'),
(4, 'B100RS-GMQFJ', 'MHKS4DA3JDJ002766', 'A014299', '1KR-DE'),
(5, 'B100RS-GMQFJ', 'MHKS4DA3JEJ009472', 'A044589', '1KR-DE'),
(6, 'B100RS-GMQFJ', 'MHKS4DA3JEJ011111', 'A052924', '1KR-DE'),
(7, 'B100RS-GMQFJ', 'MHKS4DA3JEJ015803', 'A079610', '1KR-DE'),
(8, 'B100RS-GMQFJ', 'MHKS4DA3JEJ019178', 'A099805', '1KR-DE'),
(9, 'B100RS-GMQFJ', 'MHKS4DA3JEJ019844', 'A102799', '1KR-VE'),
(10, 'B100RS-GMQFJ', 'MHKS4DA3JEJ025363', 'A131622', '1KR-DE'),
(11, 'B100RS-GMQFJ', 'MHKS4DA3JEJ027119', 'A141847', '1KR-DE'),
(12, 'B100RS-GMQFJ', 'MHKS4DA3JFJ028866', 'A159546', '1KR-DE'),
(13, 'B100RS-GMQFJ', 'MHKS4DA3JFJ029676', 'A164551', '1KR-DE'),
(14, 'B100RS-GMQFJ', 'MHKS4DA3JFJ030530', 'A169382', '1KR-DE'),
(15, 'B100RS-GMQFJ', 'MHKS4DA3JFJ038611', 'A223343', '1KR-DE'),
(16, 'B100RS-GMQFJ', 'MHKS4DA3JFJ041395', 'A239971', '1KR-DE'),
(17, 'B100RS-GMQFJ', 'MHKS4DA3JGJ048005', 'A281253', '1KR-DE'),
(18, 'B100RS-GMQFJ', 'MHKS4DA3JGJ051255', 'A298267', '1KR-DE'),
(19, 'B100RS-GMQFJ', 'MHKS4DA3JGJ052705', 'A307287', '1KR-DE'),
(20, 'B100RS-GQDFJ', 'MHKS4DB2JDJ000471', 'A017238', '1KR-DE'),
(21, 'B100RS-GQDFJ', 'MHKS4DB2JDJ000691', 'A028583', '1KR-DE'),
(22, 'B100RS-GQDFJ', 'MHKS4DB2JGJ005567', 'A333732', '1KR-VE'),
(23, 'B100RS-GQQFJ', 'MHKS4DB3JDJ001963', 'A019282', '1KR-DE'),
(24, 'B100RS-GQQFJ', 'MHKS4DB3JDJ002584', 'A025406', '1KR-DE'),
(25, 'B100RS-GQQFJ', 'MHKS4DB3JFJ014822', 'A220027', '1KR-DE'),
(26, 'B100RS-GQQFJ', 'MHKS4DB3JFJ015873', 'A236627', '1KR-DE'),
(27, 'B100RS-GQQFJ', 'MHKS4DB3JFJ016142', 'A238595', '1KR-VE'),
(28, 'B100RS-GQQFJ', 'MHKS4DB3JGJ019188', 'A287339', '1KR-DE'),
(29, 'B100RS-GQQFJ', 'MHKS4DB3JGJ020661', 'A306850', '1KR-DE'),
(30, 'B100RS-GQQFJ', 'MHKS4DB3JGJ020670', 'A307405', '1KR-DE'),
(31, 'B100RS-GQQFJ', 'MHKS4DB3JGJ022268', 'A331172', '1KR-DE'),
(32, 'B401RS-GMZFJ', 'MHKS6GJ6JGJ004531', 'H025875', '3NR-VE'),
(33, 'B401RS-GQZFJ', 'MHKS6GK6JGJ001439', 'H036953', '3NR-VE'),
(34, 'F601RV-GMDFJJ', 'MHKV1BA2J9K039834', 'DE38433', 'K3-VE'),
(35, 'F650RV-GMDFJ', 'MHKV1AA2JDK020372', 'DP81119', 'EJ-VE'),
(36, 'F650RV-GMDFJ', 'MHKV1AA2JEK025114', 'DP91051', 'EJ-VE'),
(37, 'F650RV-GMDFJ', 'MHKV5AA2JFK001100', 'DP99477', 'EJ-VE'),
(38, 'F651RV-GMDFJ', 'MHKV1BA2JDK057001', 'MC71089', 'K3-VE'),
(39, 'F651RV-GMDFJ', 'MHKV1BA2JEJ017576', 'MD38953', 'K3-VE'),
(40, 'F651RV-GMDFJ', 'MHKV1BA2JFJ030014', 'MF97982', 'K3-VE'),
(41, 'F651RV-GMDFJ', 'MHKV1BA2JFK066561', 'MF92149', 'K3-VE'),
(42, 'F651RV-GMRFJ', 'MHKV1BA1JDK022394', 'MB40260', 'K3-VE'),
(43, 'F651RV-GMRFJ', 'MHKV1BA1JEK043937', 'ME32151', 'K3-VE'),
(44, 'F651RV-GMRFJ', 'MHKV1BA1JEK044426', 'ME34867', 'K3-VE'),
(45, 'F651RV-GMRFJ', 'MHKV1BA1JFK048986', 'MF78990', 'K3-VE'),
(46, 'F651RV-GMRFJ', 'MHKV1BA1JFK049373', 'MF93316', 'K3-VE'),
(47, 'F651RV-GMRFJ', 'MHKV1BA1JFK049577', 'MG01630', 'K3-VE'),
(48, 'F651RV-GMRFJ', 'MHKV1BA1JFK049849', 'MG20828', 'K3-VE'),
(49, 'F651RV-GQDFJ', 'MHKV1BB2JCK002644', 'DL04251', 'K3-VE'),
(50, 'F653RV-GMDFJ', 'MHKV5EA2JFK001549', 'F057149', '1NR-VE'),
(51, 'F653RV-GMDFJ', 'MHKV5EA2JGK002174', 'F070126', '1NR-VE'),
(52, 'F653RV-GMRFJ', 'MHKV5EA1JFJ001107', 'F015593', '1NR-VE'),
(53, 'F653RV-GMRFJ', 'MHKV5EA1JGJ003913', 'F089981', '1NR-VE'),
(54, 'F653RV-GQDFJ', 'MHKV5EB2JGK000898', 'F087492', '1NR-VE'),
(55, 'F653RV-GQDFJ', 'MHKV5EB2JGK001851', 'F155835', '1NR-VE'),
(56, 'F700RG-GMDFJ', 'MHKG2CJ2JBK048129', 'DCF8479', '3SZ'),
(57, 'F700RG-GMDFJ', 'MHKG2CJ2JDK084801', 'DEB3777', '3SZ'),
(58, 'F700RG-GMDFJ', 'MHKG2CJ2JEK093711', 'DER7015', '3SZ'),
(59, 'F700RG-GMDFJ', 'MHKG2CJ2JEK093711', 'DER7015', '3SZ'),
(60, 'F700RG-GMDFJ', 'MHKG2CJ2JEK094936', 'DET7058', '3SZ'),
(61, 'F700RG-GMDFJ', 'MHKG2CJ2JEK094936', 'DET7058', '3SZ'),
(62, 'F700RG-GMDFJ', 'MHKG2CJ2JEK096421', 'DFA2884', '3SZ'),
(63, 'F700RG-GMDFJ', 'MHKG2CJ2JFK105201', 'DFS2124', '3SZ'),
(64, 'F700RG-GMDFJ', 'MHKG2CJ2JFK105875', 'DFT7198', '3SZ'),
(65, 'F700RG-GMDFJ', 'MHKG2CJ2JGK109536', 'DFX7276', '3SZ'),
(66, 'F700RG-GMDFJ', 'MHKG2CJ2JGK109959', 'DFY1492', '3SZ'),
(67, 'F700RG-GMDFJ', 'MHKG2CJ2JGK111559', 'DFZ4990', '3SZ'),
(68, 'F700RG-GMRFJ', 'MHKG2CJ1JEK027480', 'DFA1032', '3SZ'),
(69, 'F700RG-GQDFJ ', 'MHKG2CK2JAK005992', 'DBR4862', '3SZ'),
(70, 'F700RG-GQDFJ ', 'MHKG2CK2JAK005992', 'DBR4862', '3SZ'),
(71, 'F700RG-GQDFJ ', 'MHKG2CK2JDK000031', 'DDR6808', '3SZ'),
(72, 'F700RG-GQDFJ ', 'MHKG2CK2JEK017858', 'DEM3678', '3SZ'),
(73, 'F700RG-GQDFJ ', 'MHKG2CK2JFK020543', 'DFN7958', '3SZ'),
(74, 'F700RG-GQDFJ ', 'MHKG2CK2JGK022223', 'DFX6423', '3SZ'),
(75, 'F700RG-GQRFJ', 'MHKG2CK1JDK003747', 'DEA2303', '3SZ'),
(76, 'F700RG-GQRFJ', 'MHKG2CK1JDK003747', 'DEA2303', '3SZ'),
(77, 'F700RG-GQRFJ', 'MHKG2CK1JDK004093', 'DEC7349', '3SZ'),
(78, 'F700RG-GQRFJ', 'MHKG2CK1JEK004243', 'DED9856', '3SZ'),
(79, 'F700RG-GQRFJ', 'MHKG2CK1JEK004383', 'DEF2499', '3SZ'),
(80, 'S402RG-ZMGFJJ', 'MHKW3CA1JFK009166', 'DFG2477', '3SZ'),
(81, 'S402RG-ZMXFJJ', 'MHKW3CA3JEK010656', 'DEK3798', '3SZ'),
(82, 'S402RG-ZMXFJJ', 'MHKW3CA3JEK011114', 'DEN5327', '3SZ'),
(83, 'S402RG-ZMXFJJ', 'MHKW3CA3JEK012400', 'DFC9983', '3SZ'),
(84, 'S402RG-ZMXFJJ', 'MHKW3CA3JGK014980', 'DFU3646', 'K3-VE');

-- --------------------------------------------------------

--
-- Table structure for table `master_mobil`
--

CREATE TABLE `master_mobil` (
  `model_code` varchar(13) NOT NULL,
  `model_name` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_mobil`
--

INSERT INTO `master_mobil` (`model_code`, `model_name`, `status`) VALUES
('B100RS-GMDFJ', 'AYLA', 1),
('B401RS-GMZFJ', 'SIGRA', 1),
('B401RS-GQZFJ', 'SIGRA', 1),
('F601RV-GMDFJJ', 'Xenia', 1),
('F650RV-GMDFJ', 'XENIA', 1),
('F651RV-GMRFJ', 'Xenia', 1),
('F651RV-GQDFJ', 'Xenia', 1),
('F653RV-GMDFJ', 'GREAT NEW XENIA', 1),
('F653RV-GMRFJ', 'GREAT NEW XENIA', 1),
('F653RV-GQDFJ', 'GREAT NEW XENIA', 1),
('F700RG-GMDFJ', 'Terios', 1),
('F700RG-GMRFJ', 'Terios', 1),
('F700RG-GQDFJ', 'Terios', 1),
('F700RG-GQRFJ', 'Terios', 1),
('S402RG-ZMGFJJ', 'Luxio', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_area` int(11) NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `password`, `id_area`, `admin`) VALUES
(1, 'hakim', 'hakim', 'c96041081de85714712a79319cb2be5f', 2101, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id_area`);

--
-- Indexes for table `ldp`
--
ALTER TABLE `ldp`
  ADD PRIMARY KEY (`id_ldp`);

--
-- Indexes for table `ldp_detail`
--
ALTER TABLE `ldp_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ldp_kerusakan`
--
ALTER TABLE `ldp_kerusakan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ldp_kondisi_kendaraan`
--
ALTER TABLE `ldp_kondisi_kendaraan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ldp_perbaikan`
--
ALTER TABLE `ldp_perbaikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ldp_upload`
--
ALTER TABLE `ldp_upload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_master`
--
ALTER TABLE `main_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_mobil`
--
ALTER TABLE `master_mobil`
  ADD PRIMARY KEY (`model_code`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ldp`
--
ALTER TABLE `ldp`
  MODIFY `id_ldp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ldp_detail`
--
ALTER TABLE `ldp_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ldp_kerusakan`
--
ALTER TABLE `ldp_kerusakan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ldp_kondisi_kendaraan`
--
ALTER TABLE `ldp_kondisi_kendaraan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ldp_perbaikan`
--
ALTER TABLE `ldp_perbaikan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `ldp_upload`
--
ALTER TABLE `ldp_upload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `main_master`
--
ALTER TABLE `main_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
