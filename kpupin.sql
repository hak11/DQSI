-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 25 Jan 2017 pada 16.45
-- Versi Server: 10.1.13-MariaDB
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
-- Struktur dari tabel `area`
--

CREATE TABLE `area` (
  `id_area` int(11) NOT NULL,
  `nama_area` varchar(50) NOT NULL,
  `alamat` text,
  `no_tlf` varchar(20) DEFAULT NULL,
  `pic` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `area`
--

INSERT INTO `area` (`id_area`, `nama_area`, `alamat`, `no_tlf`, `pic`) VALUES
(2101, 'DSO Sunter', 'Jakarta ', NULL, 'Hakim');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldp`
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
-- Dumping data untuk tabel `ldp`
--

INSERT INTO `ldp` (`id_ldp`, `id_area`, `id_user`, `tanggal_pembuatan`, `no_rangka`, `model`, `no_mesin`, `no_type`, `part_penyebab`, `part_lokasi`, `problem`, `status_kirim`, `km`, `tanggal_penyerahan`, `tanggal_perbaikan`) VALUES
(1, 2101, 1, '2017-01-11', 'MHKG2CJ1JEK027480', 'B100RS-GMDFJ', 'A025406', '1NR-VE', 'part penyebab', 'part lokasi', 'problem', 0, 130, '2017-01-11', '2017-01-11'),
(2, 2101, 1, '2017-01-11', 'MHKG2CJ2JEK094936', 'B401RS-GMZFJ', 'A209652', 'K3-VE', 'a', 'b', 'c', 0, 40, '2017-01-11', '2017-01-11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldp_detail`
--

CREATE TABLE `ldp_detail` (
  `id` int(11) NOT NULL,
  `id_ldp` int(11) NOT NULL,
  `permintaan_perbaikan` text NOT NULL,
  `pengaruh_market` text NOT NULL,
  `permintaan_konkret` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ldp_detail`
--

INSERT INTO `ldp_detail` (`id`, `id_ldp`, `permintaan_perbaikan`, `pengaruh_market`, `permintaan_konkret`) VALUES
(1, 1, 'Permintaan perbaikan sebelum problem terjadi,Perbaikan membutuhkan waktu lama,Perbaikan sementara (kemungkinan perbaikan ulang)', 'Jumlah customer / VIP,Berurusan dengan polisi,Masuk media massa', 'Instruksi untuk diperbaiki,Kirim service informasi'),
(2, 2, 'Ganti mobil,Permintaan perbaikan sebelum problem terjadi', 'Jumlah customer / VIP,Berurusan dengan instansi pemerintahan', 'Penanganan sementara (early resolution),Lain-lain');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldp_kerusakan`
--

CREATE TABLE `ldp_kerusakan` (
  `id` int(11) NOT NULL,
  `id_ldp` int(11) NOT NULL,
  `customer_complaint` text NOT NULL,
  `detail_kerusakan` text NOT NULL,
  `kemungkinan_penyebab` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ldp_kerusakan`
--

INSERT INTO `ldp_kerusakan` (`id`, `id_ldp`, `customer_complaint`, `detail_kerusakan`, `kemungkinan_penyebab`) VALUES
(1, 1, 'customer complaint', 'detail kerusakan', 'kemungkianan penyebab'),
(2, 2, 'x', 'y', 'z');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldp_kondisi_kendaraan`
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
-- Dumping data untuk tabel `ldp_kondisi_kendaraan`
--

INSERT INTO `ldp_kondisi_kendaraan` (`id`, `id_ldp`, `kondisi_jalan`, `kondisi_kendaraan`, `kecepatan_kendaraan`, `posisi_gigi`, `t1`, `t2`) VALUES
(1, 1, 'rata', 'kecepatan_tetap,ada_muatan,saat_deselerasi', 40, 3, '0', '0'),
(2, 2, 'rusak', 'saat_akselerasi,saat_deselerasi', 50, 3, '0', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ldp_perbaikan`
--

CREATE TABLE `ldp_perbaikan` (
  `id` int(11) NOT NULL,
  `id_ldp` int(11) NOT NULL,
  `prioritas` varchar(5) NOT NULL,
  `perbaikan_tindakan` text NOT NULL,
  `komentar_bengkel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ldp_perbaikan`
--

INSERT INTO `ldp_perbaikan` (`id`, `id_ldp`, `prioritas`, `perbaikan_tindakan`, `komentar_bengkel`) VALUES
(1, 1, 's', 'perbaikan yang dilakukan', 'komentar bengkel'),
(2, 2, 'y', 'yu', 'ni');

-- --------------------------------------------------------

--
-- Struktur dari tabel `main_master`
--

CREATE TABLE `main_master` (
  `id` int(11) NOT NULL,
  `model_code` varchar(13) NOT NULL,
  `chassis_no` varchar(30) NOT NULL,
  `eg_no` varchar(10) NOT NULL,
  `eg_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `main_master`
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
-- Struktur dari tabel `master_mesin`
--

CREATE TABLE `master_mesin` (
  `no_mesin` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_mesin`
--

INSERT INTO `master_mesin` (`no_mesin`, `keterangan`) VALUES
('A014299', 'AYLA'),
('A017238', 'AYLA'),
('A019282', 'AYLA'),
('A022228', 'AYLA'),
('A025406', 'AYLA'),
('A028583', 'AYLA'),
('A030175', 'AYLA'),
('A036958', 'AYLA'),
('A044589', 'AYLA'),
('A052924', 'AYLA'),
('A053304', 'AYLA'),
('A056338', 'AYLA'),
('A057027', 'AYLA'),
('A057580', 'AYLA'),
('A062597', 'AYLA'),
('A065969', 'AYLA'),
('A070672', 'AYLA'),
('A079610', 'AYLA'),
('A081358', 'AYLA'),
('A099805', 'AYLA'),
('A102799', 'AYLA'),
('A103638', 'AYLA'),
('A122262', 'AYLA'),
('A127685', 'AYLA'),
('A131185', 'AYLA'),
('A131622', 'AYLA'),
('A141847', 'AYLA'),
('A146316', 'AYLA'),
('A148378', 'AYLA'),
('A159546', 'AYLA'),
('A164137', 'AYLA'),
('A164551', 'AYLA'),
('A169382', 'AYLA'),
('A170694', 'AYLA'),
('A171429', 'AYLA'),
('A185225', 'AYLA'),
('A188739', 'AYLA'),
('A193889', 'AYLA'),
('A198548', 'AYLA'),
('A205016', 'AYLA'),
('A209652', 'AYLA'),
('A217599', 'AYLA'),
('A220027', 'AYLA'),
('A223343', 'AYLA'),
('A233838', 'AYLA'),
('A236627', 'AYLA'),
('A238595', 'AYLA'),
('A239971', 'AYLA'),
('A241230', 'AYLA'),
('A246543', 'AYLA'),
('A251942', 'AYLA'),
('A269528', 'AYLA'),
('A275021', 'AYLA'),
('A281253', 'AYLA'),
('A281661', 'AYLA'),
('A287339', 'AYLA'),
('A287444', 'AYLA'),
('A288326', 'AYLA'),
('A291974', 'AYLA'),
('A294967', 'AYLA'),
('A298267', 'AYLA'),
('A300385', 'AYLA'),
('A303187', 'AYLA'),
('A306850', 'AYLA'),
('A307287', 'AYLA'),
('A307405', 'AYLA'),
('A309173', 'AYLA'),
('A314070', 'AYLA'),
('A331172', 'AYLA'),
('A332674', 'AYLA'),
('A333732', 'AYLA'),
('A334823', 'AYLA'),
('A339002', 'AYLA'),
('A339104', 'AYLA'),
('A345835', 'AYLA'),
('A366695', 'AYLA'),
('DBR4862', 'Terios'),
('DCF8479', 'Terios'),
('DDR6808', 'Terios'),
('DE38433', 'Xenia'),
('DEA2303', 'Terios'),
('DEB3777', 'Terios'),
('DEC7349', 'Terios'),
('DED9856', 'Terios'),
('DEF2499', 'Terios'),
('DEH5481', 'Terios'),
('DEK3798', 'Luxio'),
('DEK8153', 'Terios'),
('DEL8965', 'Terios'),
('DEM3678', 'Terios'),
('DEN5327', 'Luxio'),
('DER7015', 'Terios'),
('DES3701', 'Terios'),
('DET7058', 'Terios'),
('DEU6975', 'Terios'),
('DEV4452', 'Terios'),
('DFA1032', 'Terios'),
('DFA2884', 'Terios'),
('DFA6338', 'Terios'),
('DFB5183', 'Terios'),
('DFC9983', 'Luxio'),
('DFD8870', 'Terios'),
('DFF3817', 'Terios'),
('DFG2477', 'Luxio'),
('DFH0317', 'Terios'),
('DFK1876', 'Terios'),
('DFK9961', 'Terios'),
('DFL1075', 'Terios'),
('DFM2983', 'Terios'),
('DFN7958', 'Terios'),
('DFR0949', 'Terios'),
('DFS2124', 'Terios'),
('DFT7198', 'Terios'),
('DFU2869', 'Terios'),
('DFU3646', 'Luxio'),
('DFX1619', 'Terios'),
('DFX6423', 'Terios'),
('DFX7276', 'Terios'),
('DFY1492', 'Terios'),
('DFY5920', 'Terios'),
('DFZ4990', 'Terios'),
('DGA0765', 'Terios'),
('DGB2603', 'Terios'),
('DL04251', 'Xenia'),
('DP81119', 'XENIA'),
('DP91051', 'XENIA'),
('DP92538', 'XENIA'),
('DP94065', 'Xenia'),
('DP95040', 'Xenia'),
('DP97813', 'Xenia'),
('DP99477', 'XENIA'),
('DR06204', 'XENIA'),
('F015593', 'GREAT NEW XENIA'),
('F019231', 'GREAT NEW XENIA'),
('F031114', 'GREAT NEW XENIA'),
('F057149', 'GREAT NEW XENIA'),
('F070126', 'GREAT NEW XENIA'),
('F081577', 'GREAT NEW XENIA'),
('F081638', 'GREAT NEW XENIA'),
('F087492', 'GREAT NEW XENIA'),
('F089601', 'GREAT NEW XENIA'),
('F089658', 'GREAT NEW XENIA'),
('F089981', 'GREAT NEW XENIA'),
('F090843', 'GREAT NEW XENIA'),
('F091814', 'GREAT NEW XENIA'),
('F100744', 'GREAT NEW XENIA'),
('F119779', 'GREAT NEW XENIA'),
('F126913', 'GREAT NEW XENIA'),
('F131752', 'GREAT NEW XENIA'),
('F132047', 'GREAT NEW XENIA'),
('F155835', 'GREAT NEW XENIA'),
('F168686', 'GREAT NEW XENIA'),
('F176388', 'GREAT NEW XENIA'),
('F196194', 'GREAT NEW XENIA'),
('H009756', 'SIGRA'),
('H013957', 'SIGRA'),
('H022206', 'SIGRA'),
('H025875', 'SIGRA'),
('H036743', 'SIGRA'),
('H036953', 'SIGRA'),
('H037675', 'SIGRA'),
('H056621', 'SIGRA'),
('MA25488', 'Xenia'),
('MB40260', 'Xenia'),
('MC60883', 'Xenia'),
('MC71089', 'Xenia'),
('MD03842', 'Xenia'),
('MD10069', 'Xenia'),
('MD14599', 'Xenia'),
('MD34725', 'Xenia'),
('MD38953', 'Xenia'),
('MD45612', 'Xenia'),
('MD55807', 'Xenia'),
('MD91673', 'Xenia'),
('ME25195', 'Xenia'),
('ME32151', 'Xenia'),
('ME34867', 'Xenia'),
('ME42223', 'Xenia'),
('ME44608', 'Xenia'),
('ME63500', 'Xenia'),
('MF00436', 'Xenia'),
('MF17764', 'Xenia'),
('MF26095', 'Xenia'),
('MF59844', 'Xenia'),
('MF78990', 'Xenia'),
('MF81355', 'Xenia'),
('MF89046', 'Xenia'),
('MF91919', 'Xenia'),
('MF92149', 'Xenia'),
('MF93316', 'Xenia'),
('MF97982', 'Xenia'),
('MG01630', 'Xenia'),
('MG20828', 'Xenia'),
('MG29885', 'Xenia'),
('MG33405', 'Xenia'),
('MG39515', 'Xenia'),
('MG40990', 'Xenia'),
('MG55770', 'Granmax'),
('MG78571', 'Granmax'),
('T62B34H', 'Sirion'),
('T63B47G', 'Sirion'),
('T75A59K', 'Sirion');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_mobil`
--

CREATE TABLE `master_mobil` (
  `model_code` varchar(13) NOT NULL,
  `model_name` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_mobil`
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
-- Struktur dari tabel `master_rangka`
--

CREATE TABLE `master_rangka` (
  `no_rangka` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_rangka`
--

INSERT INTO `master_rangka` (`no_rangka`, `keterangan`) VALUES
('MHKG2CJ1JEK025547', 'Terios'),
('MHKG2CJ1JEK027480', 'Terios'),
('MHKG2CJ1JEK027704', 'Terios'),
('MHKG2CJ1JFK028396', 'Terios'),
('MHKG2CJ1JFK030240', 'Terios'),
('MHKG2CJ1JGK034339', 'Terios'),
('MHKG2CJ2JBK048129', 'Terios'),
('MHKG2CJ2JDK084801', 'Terios'),
('MHKG2CJ2JEK088801', 'Terios'),
('MHKG2CJ2JEK093711', 'Terios'),
('MHKG2CJ2JEK094936', 'Terios'),
('MHKG2CJ2JEK096000', 'Terios'),
('MHKG2CJ2JEK096421', 'Terios'),
('MHKG2CJ2JEK097609', 'Terios'),
('MHKG2CJ2JFK098243', 'Terios'),
('MHKG2CJ2JFK099877', 'Terios'),
('MHKG2CJ2JFK102578', 'Terios'),
('MHKG2CJ2JFK105201', 'Terios'),
('MHKG2CJ2JFK105875', 'Terios'),
('MHKG2CJ2JGK106469', 'Terios'),
('MHKG2CJ2JGK109144', 'Terios'),
('MHKG2CJ2JGK109536', 'Terios'),
('MHKG2CJ2JGK109959', 'Terios'),
('MHKG2CJ2JGK111559', 'Terios'),
('MHKG2CJ2JGK112570', 'Terios'),
('MHKG2CK1JDK003747', 'Terios'),
('MHKG2CK1JDK004093', 'Terios'),
('MHKG2CK1JEK004243', 'Terios'),
('MHKG2CK1JEK004383', 'Terios'),
('MHKG2CK2JAK005992', 'Terios'),
('MHKG2CK2JDK000031', 'Terios'),
('MHKG2CK2JEK017782', 'Terios'),
('MHKG2CK2JEK017858', 'Terios'),
('MHKG2CK2JEK018343', 'Terios'),
('MHKG2CK2JEK018644', 'Terios'),
('MHKG2CK2JFK019762', 'Terios'),
('MHKG2CK2JFK019929', 'Terios'),
('MHKG2CK2JFK019947', 'Terios'),
('MHKG2CK2JFK020543', 'Terios'),
('MHKG2CK2JGK022223', 'Terios'),
('MHKG2CK2JGK022463', 'Terios'),
('MHKS4DA1JFJ005377', 'AYLA'),
('MHKS4DA1JGJ008049', 'AYLA'),
('MHKS4DA2JEJ005681', 'AYLA'),
('MHKS4DA2JEJ006308', 'AYLA'),
('MHKS4DA2JEJ007540', 'AYLA'),
('MHKS4DA2JEJ012894', 'AYLA'),
('MHKS4DA2JFJ016895', 'AYLA'),
('MHKS4DA2JFJ018870', 'AYLA'),
('MHKS4DA2JGJ020513', 'AYLA'),
('MHKS4DA2JGJ023345', 'AYLA'),
('MHKS4DA2JGJ024184', 'AYLA'),
('MHKS4DA2JGJ025528', 'AYLA'),
('MHKS4DA2JGJ025848', 'AYLA'),
('MHKS4DA2JGJ025851', 'AYLA'),
('MHKS4DA3JDJ002766', 'AYLA'),
('MHKS4DA3JEJ009472', 'AYLA'),
('MHKS4DA3JEJ011111', 'AYLA'),
('MHKS4DA3JEJ011115', 'AYLA'),
('MHKS4DA3JEJ011693', 'AYLA'),
('MHKS4DA3JEJ015803', 'AYLA'),
('MHKS4DA3JEJ019178', 'AYLA'),
('MHKS4DA3JEJ019844', 'AYLA'),
('MHKS4DA3JEJ023770', 'AYLA'),
('MHKS4DA3JEJ024653', 'AYLA'),
('MHKS4DA3JEJ025347', 'AYLA'),
('MHKS4DA3JEJ025363', 'AYLA'),
('MHKS4DA3JEJ027119', 'AYLA'),
('MHKS4DA3JEJ027942', 'AYLA'),
('MHKS4DA3JFJ028866', 'AYLA'),
('MHKS4DA3JFJ029633', 'AYLA'),
('MHKS4DA3JFJ029676', 'AYLA'),
('MHKS4DA3JFJ030530', 'AYLA'),
('MHKS4DA3JFJ030627', 'AYLA'),
('MHKS4DA3JFJ030753', 'AYLA'),
('MHKS4DA3JFJ034347', 'AYLA'),
('MHKS4DA3JFJ035075', 'AYLA'),
('MHKS4DA3JFJ035836', 'AYLA'),
('MHKS4DA3JFJ038611', 'AYLA'),
('MHKS4DA3JFJ041395', 'AYLA'),
('MHKS4DA3JFJ042584', 'AYLA'),
('MHKS4DA3JFJ043378', 'AYLA'),
('MHKS4DA3JGJ046981', 'AYLA'),
('MHKS4DA3JGJ048005', 'AYLA'),
('MHKS4DA3JGJ048091', 'AYLA'),
('MHKS4DA3JGJ049442', 'AYLA'),
('MHKS4DA3JGJ050762', 'AYLA'),
('MHKS4DA3JGJ051255', 'AYLA'),
('MHKS4DA3JGJ052705', 'AYLA'),
('MHKS4DA3JGJ058479', 'AYLA'),
('MHKS4DA3JGJ063430', 'AYLA'),
('MHKS4DB2JDJ000471', 'AYLA'),
('MHKS4DB2JDJ000691', 'AYLA'),
('MHKS4DB2JGJ005567', 'AYLA'),
('MHKS4DB2JGJ005681', 'AYLA'),
('MHKS4DB3JDJ001963', 'AYLA'),
('MHKS4DB3JDJ002295', 'AYLA'),
('MHKS4DB3JDJ002584', 'AYLA'),
('MHKS4DB3JDJ003077', 'AYLA'),
('MHKS4DB3JDJ003698', 'AYLA'),
('MHKS4DB3JEJ005142', 'AYLA'),
('MHKS4DB3JEJ005275', 'AYLA'),
('MHKS4DB3JEJ005770', 'AYLA'),
('MHKS4DB3JEJ008013', 'AYLA'),
('MHKS4DB3JFJ012689', 'AYLA'),
('MHKS4DB3JFJ012952', 'AYLA'),
('MHKS4DB3JFJ014822', 'AYLA'),
('MHKS4DB3JFJ015657', 'AYLA'),
('MHKS4DB3JFJ015873', 'AYLA'),
('MHKS4DB3JFJ016142', 'AYLA'),
('MHKS4DB3JGJ019188', 'AYLA'),
('MHKS4DB3JGJ019246', 'AYLA'),
('MHKS4DB3JGJ020099', 'AYLA'),
('MHKS4DB3JGJ020661', 'AYLA'),
('MHKS4DB3JGJ020670', 'AYLA'),
('MHKS4DB3JGJ020786', 'AYLA'),
('MHKS4DB3JGJ022268', 'AYLA'),
('MHKS6GJ3JGJ003654', 'SIGRA'),
('MHKS6GJ6JGJ001510', 'SIGRA'),
('MHKS6GJ6JGJ004531', 'SIGRA'),
('MHKS6GJ6JGJ011161', 'SIGRA'),
('MHKS6GK6JGJ000480', 'SIGRA'),
('MHKS6GK6JGJ000768', 'SIGRA'),
('MHKS6GK6JGJ001400', 'SIGRA'),
('MHKS6GK6JGJ001439', 'SIGRA'),
('MHKV1AA1JFK015140', 'Xenia'),
('MHKV1AA1JFK015828', 'Xenia'),
('MHKV1AA2JDK020372', 'XENIA'),
('MHKV1AA2JEK025114', 'XENIA'),
('MHKV1AA2JEK025787', 'XENIA'),
('MHKV1BA1JDK022394', 'Xenia'),
('MHKV1BA1JDK034424', 'Xenia'),
('MHKV1BA1JEJ001481', 'Xenia'),
('MHKV1BA1JEK034557', 'Xenia'),
('MHKV1BA1JEK038012', 'Xenia'),
('MHKV1BA1JEK039241', 'Xenia'),
('MHKV1BA1JEK043937', 'Xenia'),
('MHKV1BA1JEK044426', 'Xenia'),
('MHKV1BA1JFJ005580', 'Xenia'),
('MHKV1BA1JFJ007912', 'Xenia'),
('MHKV1BA1JFJ008904', 'Xenia'),
('MHKV1BA1JFK048986', 'Xenia'),
('MHKV1BA1JFK049042', 'Xenia'),
('MHKV1BA1JFK049373', 'Xenia'),
('MHKV1BA1JFK049577', 'Xenia'),
('MHKV1BA1JFK049849', 'Xenia'),
('MHKV1BA2J9K039834', 'Xenia'),
('MHKV1BA2JDK057001', 'Xenia'),
('MHKV1BA2JEJ017356', 'Xenia'),
('MHKV1BA2JEJ017576', 'Xenia'),
('MHKV1BA2JEJ019562', 'Xenia'),
('MHKV1BA2JEJ021829', 'Xenia'),
('MHKV1BA2JEJ023068', 'Xenia'),
('MHKV1BA2JEJ025206', 'Xenia'),
('MHKV1BA2JEJ026599', 'Xenia'),
('MHKV1BA2JEK058100', 'Xenia'),
('MHKV1BA2JEK063767', 'Xenia'),
('MHKV1BA2JFJ027626', 'Xenia'),
('MHKV1BA2JFJ029330', 'Xenia'),
('MHKV1BA2JFJ030014', 'Xenia'),
('MHKV1BA2JFJ032814', 'Xenia'),
('MHKV1BA2JFK066561', 'Xenia'),
('MHKV1BB2JCK002644', 'Xenia'),
('MHKV1BB2JCK005415', 'Xenia'),
('MHKV1BB2JDK008131', 'Xenia'),
('MHKV1BB2JEK010033', 'Xenia'),
('MHKV1BB2JFK011127', 'Xenia'),
('MHKV3BA3JFK039595', 'Granmax'),
('MHKV3BA3JGK043282', 'Granmax'),
('MHKV5AA1JFK000291', 'Xenia'),
('MHKV5AA2JFK001100', 'XENIA'),
('MHKV5AA2JGK006290', 'XENIA'),
('MHKV5EA1JFJ001107', 'GREAT NEW XENIA'),
('MHKV5EA1JGJ003913', 'GREAT NEW XENIA'),
('MHKV5EA1JGK003453', 'GREAT NEW XENIA'),
('MHKV5EA1JGK003477', 'GREAT NEW XENIA'),
('MHKV5EA1JGK005660', 'GREAT NEW XENIA'),
('MHKV5EA1JGK010433', 'GREAT NEW XENIA'),
('MHKV5EA2JFK001033', 'GREAT NEW XENIA'),
('MHKV5EA2JFK001549', 'GREAT NEW XENIA'),
('MHKV5EA2JGJ004639', 'GREAT NEW XENIA'),
('MHKV5EA2JGJ005792', 'GREAT NEW XENIA'),
('MHKV5EA2JGJ006656', 'GREAT NEW XENIA'),
('MHKV5EA2JGK002174', 'GREAT NEW XENIA'),
('MHKV5EA2JGK002843', 'GREAT NEW XENIA'),
('MHKV5EA2JGK003207', 'GREAT NEW XENIA'),
('MHKV5EA2JGK003664', 'GREAT NEW XENIA'),
('MHKV5EA2JGK005565', 'GREAT NEW XENIA'),
('MHKV5EA2JGK009990', 'GREAT NEW XENIA'),
('MHKV5EA2JGK012402', 'GREAT NEW XENIA'),
('MHKV5EB1JGK000787', 'GREAT NEW XENIA'),
('MHKV5EB2JFK000241', 'GREAT NEW XENIA'),
('MHKV5EB2JGK000898', 'GREAT NEW XENIA'),
('MHKV5EB2JGK001851', 'GREAT NEW XENIA'),
('MHKW3CA1JFK009166', 'Luxio'),
('MHKW3CA3JEK010656', 'Luxio'),
('MHKW3CA3JEK011114', 'Luxio'),
('MHKW3CA3JEK012400', 'Luxio'),
('MHKW3CA3JGK014980', 'Luxio'),
('PM2M602S1G2013287', 'Sirion'),
('PM2M602S2D2003556', 'Sirion'),
('PM2M602S2F2008704', 'Sirion');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_type`
--

CREATE TABLE `master_type` (
  `no_type` varchar(50) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_type`
--

INSERT INTO `master_type` (`no_type`, `keterangan`) VALUES
('1KR-DE', 'AYLA'),
('1KR-VE', 'AYLA'),
('1NR-VE', 'GREAT NEW XENIA'),
('3NR-VE', 'GREAT NEW XENIA'),
('3SZ', 'Terios'),
('EJ-VE', 'XENIA'),
('K3-DE', 'Granmax'),
('K3-VE', 'Xenia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
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
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `password`, `id_area`, `admin`) VALUES
(1, 'admin', 'Administrator', '21232f297a57a5a743894a0e4a801fc3', 2101, 0);

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
-- Indexes for table `main_master`
--
ALTER TABLE `main_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_mesin`
--
ALTER TABLE `master_mesin`
  ADD PRIMARY KEY (`no_mesin`);

--
-- Indexes for table `master_mobil`
--
ALTER TABLE `master_mobil`
  ADD PRIMARY KEY (`model_code`);

--
-- Indexes for table `master_rangka`
--
ALTER TABLE `master_rangka`
  ADD PRIMARY KEY (`no_rangka`);

--
-- Indexes for table `master_type`
--
ALTER TABLE `master_type`
  ADD PRIMARY KEY (`no_type`);

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
