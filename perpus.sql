-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2020 at 11:04 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id_admin` varchar(8) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_hp` char(13) NOT NULL,
  `img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_agama`
--

CREATE TABLE IF NOT EXISTS `tb_agama` (
`id_agama` int(2) NOT NULL,
  `agama` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_agama`
--

INSERT INTO `tb_agama` (`id_agama`, `agama`) VALUES
(2, 'Islam'),
(3, 'Konghucu'),
(4, 'Budha'),
(5, 'Katholik'),
(6, 'Hindu');

-- --------------------------------------------------------

--
-- Table structure for table `tb_anggota`
--

CREATE TABLE IF NOT EXISTS `tb_anggota` (
  `id_anggota` varchar(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `id_kelas` int(2) NOT NULL,
  `id_agama` int(2) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `hp` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_anggota`
--

INSERT INTO `tb_anggota` (`id_anggota`, `nama`, `id_kelas`, `id_agama`, `jenis_kelamin`, `hp`, `alamat`, `ket`) VALUES
('ANGG000002', 'Habliansyah Takdirillah', 16, 2, 'L', '086712221222', 'Jelegong', 'VSSU'),
('ANGG000003', 'Robby Takdirillah', 16, 2, 'L', '085382005325', 'Jelegong', ''),
('ANGG000004', 'Jennifer Nebula', 15, 5, 'P', '087798789955', 'Cibadak', ''),
('ANGG000005', 'Yuni Sonia', 5, 2, 'P', '345678909123981', 'Pawenang', ''),
('ANGG000006', 'Vikram Punjabi', 17, 6, 'L', '012861212134', 'Karan Tengah', 'Pindahan'),
('ANGG000007', 'Xiam Wei Long', 19, 3, 'L', '087765242312', 'Pamuruyan', ''),
('ANGG000008', 'Desta Vinceny', 8, 2, 'P', '09876422234', 'Cisaat', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE IF NOT EXISTS `tb_buku` (
  `id_buku` char(15) NOT NULL,
  `ISBN` varchar(20) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `id_kategori` int(3) NOT NULL,
  `id_penerbit` int(3) NOT NULL,
  `id_pengarang` int(3) NOT NULL,
  `no_rak` int(2) NOT NULL,
  `thn_terbit` year(4) NOT NULL,
  `stok` int(3) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `ISBN`, `judul`, `id_kategori`, `id_penerbit`, `id_pengarang`, `no_rak`, `thn_terbit`, `stok`, `ket`) VALUES
('1', '132142', 'Ekonomi Negara', 1, 5, 4, 1, 2010, 6, ''),
('2', '1213451', 'Sok Hok Gie', 3, 4, 6, 3, 2009, 2, ''),
('3', '131414', 'Machine Learning', 5, 4, 2, 5, 2017, 1, ''),
('4', '67322', 'Pesantren Impian', 2, 1, 5, 2, 2010, 3, ''),
('5', '24522', 'Tuntunan Shalat', 4, 6, 6, 4, 2019, 6, 'Donasi Siswa'),
('6', '096525', 'Mohammad Ali', 3, 6, 1, 3, 2012, 1, 'Donasi Guru');

-- --------------------------------------------------------

--
-- Table structure for table `tb_denda`
--

CREATE TABLE IF NOT EXISTS `tb_denda` (
`id_denda` int(6) NOT NULL,
  `denda` int(6) NOT NULL,
  `status` enum('A','N') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_denda`
--

INSERT INTO `tb_denda` (`id_denda`, `denda`, `status`) VALUES
(6, 500, 'A'),
(7, 1000, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_buku`
--

CREATE TABLE IF NOT EXISTS `tb_detail_buku` (
`id_detail_buku` int(11) NOT NULL,
  `id_buku` char(15) NOT NULL,
  `no_buku` int(4) NOT NULL,
  `status` char(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_detail_buku`
--

INSERT INTO `tb_detail_buku` (`id_detail_buku`, `id_buku`, `no_buku`, `status`) VALUES
(71, '1', 1, '1'),
(72, '1', 2, '0'),
(73, '1', 3, '0'),
(74, '1', 4, '1'),
(75, '1', 5, '0'),
(76, '1', 6, '1'),
(77, '2', 1, '0'),
(78, '2', 2, '1'),
(81, '3', 1, '1'),
(82, '4', 1, '1'),
(83, '4', 2, '1'),
(84, '4', 3, '0'),
(85, '5', 1, '1'),
(86, '5', 2, '1'),
(87, '5', 3, '1'),
(88, '5', 4, '0'),
(89, '5', 5, '1'),
(90, '5', 6, '1'),
(91, '6', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detail_pinjam`
--

CREATE TABLE IF NOT EXISTS `tb_detail_pinjam` (
`id_detail_pinjam` int(11) NOT NULL,
  `id_pinjam` int(11) NOT NULL,
  `id_buku` char(15) NOT NULL,
  `no_buku` int(4) NOT NULL,
  `flag` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_detail_pinjam`
--

INSERT INTO `tb_detail_pinjam` (`id_detail_pinjam`, `id_pinjam`, `id_buku`, `no_buku`, `flag`) VALUES
(83, 80, '5', 3, 1),
(84, 81, '2', 1, 0),
(85, 82, '6', 1, 1),
(86, 82, '3', 1, 1),
(87, 83, '1', 5, 0),
(89, 84, '1', 2, 0),
(90, 84, '5', 4, 0),
(91, 85, '4', 3, 0),
(92, 86, '5', 1, 1),
(93, 86, '4', 1, 1),
(94, 87, '1', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE IF NOT EXISTS `tb_kategori` (
`id_kategori` int(3) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `kategori`) VALUES
(1, 'SOSIAL'),
(2, 'NOVEL'),
(3, 'BIOGRAFI'),
(4, 'RELIGI'),
(5, 'MATEMATIKA');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE IF NOT EXISTS `tb_kelas` (
`id_kelas` int(2) NOT NULL,
  `kelas` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `kelas`) VALUES
(4, 'X IPS 1'),
(5, 'X IPS 2'),
(6, 'X IPS 3'),
(7, 'X IPA 1'),
(8, 'X IPA 2'),
(9, 'X IPA 3'),
(10, 'XI IPS 1'),
(11, 'XI IPS 2'),
(12, 'XI IPS 3'),
(13, 'XI IPA 1'),
(14, 'XI IPA 2'),
(15, 'XI IPA 3'),
(16, 'XII IPS 1'),
(17, 'XII IPS 2'),
(18, 'XII IPS 3'),
(19, 'XII IPA 1'),
(20, 'XII IPA 2'),
(21, 'XII IPA 3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kembali`
--

CREATE TABLE IF NOT EXISTS `tb_kembali` (
`id_kembali` int(11) NOT NULL,
  `id_pinjam` int(11) NOT NULL,
  `tgl_dikembalikan` date NOT NULL,
  `terlambat` int(2) NOT NULL,
  `id_denda` int(6) NOT NULL,
  `denda` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kembali`
--

INSERT INTO `tb_kembali` (`id_kembali`, `id_pinjam`, `tgl_dikembalikan`, `terlambat`, `id_denda`, `denda`) VALUES
(196, 86, '2019-10-18', 0, 6, 0),
(197, 80, '2019-10-19', 2, 6, 1000),
(198, 82, '2019-10-19', 0, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE IF NOT EXISTS `tb_login` (
  `username` varchar(15) NOT NULL,
  `password` varchar(75) NOT NULL,
  `stts` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`username`, `password`, `stts`) VALUES
('41517210046', '123', 'siswa'),
('admin', '0192023a7bbd73250516f069df18b500', 'admin'),
('petugas', 'afb91ef692fd08c445e8cb1bab2ccf9c', 'petugas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penerbit`
--

CREATE TABLE IF NOT EXISTS `tb_penerbit` (
`id_penerbit` int(3) NOT NULL,
  `nama_penerbit` varchar(50) NOT NULL,
  `id_provinsi` int(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penerbit`
--

INSERT INTO `tb_penerbit` (`id_penerbit`, `nama_penerbit`, `id_provinsi`) VALUES
(1, 'Erlangga', 1),
(4, 'Andi', 2),
(5, 'Gramedia', 8),
(6, 'HGS', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengarang`
--

CREATE TABLE IF NOT EXISTS `tb_pengarang` (
`id_pengarang` int(3) NOT NULL,
  `nama_pengarang` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengarang`
--

INSERT INTO `tb_pengarang` (`id_pengarang`, `nama_pengarang`) VALUES
(1, 'Susanto Sunaryo'),
(2, 'Tere Liye'),
(3, 'Graha Mulia'),
(4, 'Boy Candra'),
(5, 'Asma Nadia'),
(6, 'Bambang Kunaryo');

-- --------------------------------------------------------

--
-- Table structure for table `tb_petugas`
--

CREATE TABLE IF NOT EXISTS `tb_petugas` (
  `id_petugas` char(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `img` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `password` varchar(50) NOT NULL,
  `id_agama` int(2) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_petugas`
--

INSERT INTO `tb_petugas` (`id_petugas`, `nama`, `img`, `jenis_kelamin`, `alamat`, `password`, `id_agama`, `hp`, `ket`) VALUES
('admin', 'yudi prasetya', 'E0Q8K961C3SVPG2XR5FWMHBNDOJIYALUZ47T.JPG', 'L', 'asasa', 'admin123', 2, '089895656565', ''),
('petugas', 'Dedeh Rohmawati', 'C8RKU4GJQ025A9ZHDLMTSX17FYENBO3IVW6P.jpg', 'P', 'asaDADS', 'petugas', 2, '089622379257', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pinjam`
--

CREATE TABLE IF NOT EXISTS `tb_pinjam` (
`id_pinjam` int(11) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `id_anggota` varchar(11) NOT NULL,
  `tgl_kembali` date NOT NULL,
  `total_buku` int(4) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pinjam`
--

INSERT INTO `tb_pinjam` (`id_pinjam`, `tgl_pinjam`, `id_anggota`, `tgl_kembali`, `total_buku`, `status`) VALUES
(80, '2019-10-18', 'ANGG000003', '2019-10-17', 1, 1),
(81, '2019-10-18', 'ANGG000004', '2019-10-18', 1, 0),
(82, '2019-10-18', 'ANGG000006', '2019-10-20', 2, 1),
(83, '2019-10-18', 'ANGG000005', '2019-10-19', 1, 0),
(84, '2019-10-18', 'ANGG000002', '2019-10-18', 1, 0),
(85, '2019-10-18', 'ANGG000006', '2019-10-29', 1, 0),
(86, '2019-10-18', 'ANGG000003', '2019-10-18', 2, 1),
(87, '2019-10-18', 'ANGG000003', '2019-10-21', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_provinsi`
--

CREATE TABLE IF NOT EXISTS `tb_provinsi` (
`id_provinsi` int(2) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_provinsi`
--

INSERT INTO `tb_provinsi` (`id_provinsi`, `nama_provinsi`, `kota`) VALUES
(1, 'Sumatera Selatan', 'Palembang'),
(2, 'D.I.Y Yogyakarta', 'Yogya'),
(4, 'Jambi', 'Jambi Kota'),
(6, 'Pekan Baru', 'Riau'),
(7, 'Jakarta', 'Jakarta'),
(8, 'Jawa Barat', 'Bandung');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rak`
--

CREATE TABLE IF NOT EXISTS `tb_rak` (
`no_rak` int(2) NOT NULL,
  `nama_rak` varchar(50) NOT NULL,
  `id_kategori` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rak`
--

INSERT INTO `tb_rak` (`no_rak`, `nama_rak`, `id_kategori`) VALUES
(1, '1-150 SSL', 1),
(2, '150-300 NVL', 2),
(3, '300-370 BGF', 3),
(4, '390-500 RLG', 4),
(5, '500-567 MTK', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE IF NOT EXISTS `tb_siswa` (
  `id_siswa` char(18) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jk` varchar(10) NOT NULL,
  `agama` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL,
  `insert_at` datetime NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nama` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `email`, `jk`, `agama`, `telp`, `alamat`, `password`, `kelas`, `insert_at`, `update_at`, `nama`) VALUES
('00714868818', 'MuhammadDaffa@gmail.com', 'L', 'islam', '000000', 'Jakarta', '9987477a3844ccb3e0d3ac7dac6a824b', '7A', '0000-00-00 00:00:00', '2020-10-18 16:11:55', 'MUHAMMAD DAFFA DARYANTO'),
('0071853053', 'MuhammadFachri@gmail.com', 'L', 'islam', '000000', 'Jakarta', '9ba68e6dbdec5e5ef0de316acc7562ce', '7A', '0000-00-00 00:00:00', '2020-10-18 16:12:53', 'MUHAMMAD FACHRI RAMADHAN'),
('0073440946', 'FachryAdityo@gmail.com', 'L', 'islam', '000000', 'Depok', '5acec3786429a5e2340a9f0a6a112e25', '7A', '0000-00-00 00:00:00', '2020-10-18 15:58:53', 'FACHRY ADITYO WICAKSONO'),
('0073579960', 'MuhammadAinu@gmail.com', 'L', 'islam', '000000', 'Jakarta', 'e43c72746e971408e5e8bd2de142216c', '7A', '0000-00-00 00:00:00', '2020-10-18 16:07:13', 'MUHAMMAD AINU ROFIQ'),
('0074009765', 'ArganiGilang@gmail.com', 'L', 'islam', '000000', 'Bekasi', 'f7b3fdb44eb875df97ba7218ac43a179', '7A', '0000-00-00 00:00:00', '2020-10-18 15:46:42', 'ARGANI GILANG PRATAMA'),
('0075628772', 'Zahira@gmail.com', 'P', 'islam', '000000', 'Jakarta', '1a34a865579dfd689e0ce357e2dafc48', '7A', '0000-00-00 00:00:00', '2020-10-18 16:22:13', 'ZAHIRA QATHARUNNADA'),
('0076317436', 'FatihahZahra@gmail.com', 'P', 'islam', '000000', 'Jakarta', 'd23050136714f924f1e2ca33a389c26a', '7A', '0000-00-00 00:00:00', '2020-10-18 16:03:38', 'FATIHAH ZAHRA'),
('0076650168', 'FadhiaRizky@gmail.com', 'P', 'islam', '00000', 'Jakarta', '83f8a4d4e32057e5590162e45b82b534', '7A', '0000-00-00 00:00:00', '2020-10-18 15:59:53', 'FADHIA RIZKY AMALIA'),
('0076813357', 'RifdahAmbar@gmail.com', 'P', 'islam', '000000', 'Jakarta', '2bfd8caaa667c5180923ad8eb7193c8d', '7A', '0000-00-00 00:00:00', '2020-10-18 16:20:50', 'RIFDAH AMBAR QONITA'),
('0077603637', 'DzikraPutra@gmail.com', 'L', 'islam', '000000', 'Jakarta', 'fbe1f804214d3edb8f9a16ba4f7428ea', '7A', '0000-00-00 00:00:00', '2020-10-18 15:57:47', 'DZIKRA PUTRA HIDAYAT'),
('0078348890', 'NurIzzatul@gmail.com', 'P', 'islam', '000000', 'Bekasi', '6b695901793089a70015dbea3229ae43', '7A', '0000-00-00 00:00:00', '2020-10-18 16:16:58', 'NUR IZZATUL AMIRAH'),
('0079608601', 'AdeliaSugiarno@gmail.com', 'P', 'islam', '000000', 'Jakarta', '8118a65f15393bfc30ce00261e513dd7', '7A', '0000-00-00 00:00:00', '2020-10-18 15:39:28', 'ADELIA SUGIARNO'),
('0081189763', 'DindaAdzarine@gmail.com', 'P', 'islam', '000000', 'Jakarta', '0ba0697b21aeb08b8377f4788b24af39', '7A', '0000-00-00 00:00:00', '2020-10-18 15:56:39', 'DINDA ADZARINE KAMIL'),
('0081539469', 'AfiraMusya@gmail.com', 'P', 'islam', '000000', 'Jakarta', '7b0401c63a79b629f1494227d3e0c139', '7A', '0000-00-00 00:00:00', '2020-10-18 15:40:20', 'AFIRA MUSYRIFATUNNISA'),
('0081615927', 'MuhammadZaidan@gmail.com', 'L', 'islam', '000000', 'Sleman', '32eabfee7e6c6ceffffcf55b7462624c', '7A', '0000-00-00 00:00:00', '2020-10-18 16:14:47', 'MUHAMMAD ZAIDAN IRSYAD'),
('0082504985', 'AlSyam@gmail.com', 'P', 'islam', '000000', 'Jakarta Timur', 'c480a6dfdf0c2c8ab8a837ec5a6e6d30', '7A', '0000-00-00 00:00:00', '2020-10-18 15:42:18', 'AL SYAIMA ESSAM YAHIA'),
('0082508022', 'ChusnulKhotimah@gmail.com', 'P', 'islam', '000000', 'Depok', '9239599ca23ef1fa91f767264ea01469', '7A', '0000-00-00 00:00:00', '2020-10-18 15:49:28', 'CHUSNUL KHOTIMAH'),
('0083255915', 'NurshobahRizqiyah@gmail.com', 'P', 'islam', '000000', 'Jakarta', '4d0039e7d1f0346a36005ce84696958a', '7A', '0000-00-00 00:00:00', '2020-10-18 16:18:03', 'NURSHOBAH RIZQIYAH'),
('0083330376', 'RizkiJanuar@gmail.com', 'P', 'islam', '000000', 'Jakarta', 'fb1a81f753a4c0fd2db758184736d9dc', '7A', '0000-00-00 00:00:00', '2020-10-18 16:21:33', 'RIZKY JANUAR MABRURI'),
('0083499089', 'AchbarHidayah@gmail.com', 'L', 'islam', '00000', 'Sintang', 'd4a248bde9154fc872357c8d3c890cd6', '7A', '0000-00-00 00:00:00', '2020-10-18 15:38:26', 'ACHBAR HIDAYAH PUTRA'),
('0083640898', 'BayuPamungkas@gmail.com', 'L', 'islam', '000000', 'Bekasi', '413fbb8ab1bce9f62c7ac7340b722fa7', '7A', '0000-00-00 00:00:00', '2020-10-18 15:48:33', 'BAYU PAMUNGKAS'),
('0083743269', 'AndiniNirmalasari@gmail.com', 'P', 'islam', '000000', 'Sridadi', '4437c207cf23547fab6482b68024355a', '7A', '0000-00-00 00:00:00', '2020-10-18 15:43:13', 'ANDINI NIRMALASARI'),
('0084260409', 'NazninSiti@gmail.com', 'P', 'islam', '000000', 'Jakarta', '863af228fd3ef90abc7db16a8c2e8ab3', '7A', '0000-00-00 00:00:00', '2020-10-18 16:15:53', 'NAZNIN SITI SABINA LATIFAH'),
('0084277319', 'PanduIkhsan@gmail.com', 'L', 'islam', '000000', 'Jakarta', '3036f0c6c1a7b04e49664e50a965d39b', '7A', '0000-00-00 00:00:00', '2020-10-18 16:18:54', 'PANDU IKHSAN MAULID'),
('0085558340', 'CleopatraAngel@gmail.com', 'P', 'islam', '000000', 'Bekasi', 'df35ccb0d4b2b1826cf59d2f377286f5', '7A', '0000-00-00 00:00:00', '2020-10-18 15:50:21', 'CLEOPATRA ANGEL PARADISE'),
('0085615621', 'AimanGhifar@gmail.com', 'L', 'islam', '000000', 'Jakarta', '665d62e54191f912b74233613370efed', '7A', '0000-00-00 00:00:00', '2020-10-18 16:05:57', 'M.AIMAN AL GHIFAR'),
('0086050662', 'KamilaMarsya@gmail.com', 'P', 'islam', '000000', 'Jakarta', 'f65e033cd8b30624e6612105b7bc8767', '7A', '0000-00-00 00:00:00', '2020-10-18 16:04:38', 'KAMILA MARSYA NURADZRA NUGRAHA'),
('0086312550', 'FardhanAufa@gmail.com', 'L', 'islam', '000000', 'Depok', '6bf90a722c279c9b6f7b1a3c99983586', '7A', '0000-00-00 00:00:00', '2020-10-18 16:00:49', 'FARDHAN AUFA DZAHAB'),
('0086843319', 'MuhammadAkbar@gmail.com', 'L', 'islam', '000000', 'Jakarta', 'c480a6dfdf0c2c8ab8a837ec5a6e6d30', '7A', '0000-00-00 00:00:00', '2020-10-18 16:08:08', 'MUHAMMAD AKBAR GIBRANI'),
('0087328390', 'RidhoNur@gmail.com', 'L', 'islam', '000000', 'Bekasi', '73c516d3fc9a58f2d86cbf355678ffc8', '7A', '0000-00-00 00:00:00', '2020-10-18 16:20:00', 'RIDHO NUR HABIBIE'),
('0087659833', 'AzizahHam@gmail.com', 'P', 'islam', '000000', 'Jakarta', '05a90fef1a895efdda23b01de34ad87f', '7A', '0000-00-00 00:00:00', '2020-10-18 15:47:37', 'AZIZAH HAMHAM'),
('0088143059', 'MuhammadFakhri@gmail.com', 'L', 'islam', '000000', 'Jakarta', '7e90ab6951c03e7ee17f345cb5fcfcc4', '7A', '0000-00-00 00:00:00', '2020-10-18 16:13:45', 'MUHAMMAD FAKHRI IRAWAN'),
('41517210046', 'yudiprasetyaaa@outlook.com', 'L', 'islam', '000000', 'Jl.Raya Malaka bambu Hijau No 5', 'c607b247236765deb83ae95bddcb0333', '7A', '0000-00-00 00:00:00', '2020-10-18 20:21:55', 'yudi prasetya');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE IF NOT EXISTS `test` (
  `kode` varchar(12) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `mboh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`kode`, `nama`, `mboh`) VALUES
('', 'ari', ''),
('Kode000001', 'ari2', ''),
('Kode000002', 'ari2', ''),
('Kode000003', 'Ariandi AS', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
 ADD PRIMARY KEY (`id_admin`), ADD KEY `id_admin` (`id_admin`,`password`,`nama`,`alamat`,`no_hp`), ADD KEY `id_admin_2` (`id_admin`,`password`,`nama`,`alamat`,`no_hp`,`img`);

--
-- Indexes for table `tb_agama`
--
ALTER TABLE `tb_agama`
 ADD PRIMARY KEY (`id_agama`);

--
-- Indexes for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
 ADD PRIMARY KEY (`id_anggota`), ADD KEY `id_agama` (`id_agama`), ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `tb_buku`
--
ALTER TABLE `tb_buku`
 ADD PRIMARY KEY (`id_buku`), ADD KEY `id_kategori` (`id_kategori`), ADD KEY `id_penerbit` (`id_penerbit`), ADD KEY `id_pengarang` (`id_pengarang`), ADD KEY `no_rak` (`no_rak`), ADD KEY `id_buku` (`id_buku`,`ISBN`,`judul`,`id_kategori`,`id_penerbit`,`id_pengarang`,`no_rak`,`thn_terbit`,`stok`);

--
-- Indexes for table `tb_denda`
--
ALTER TABLE `tb_denda`
 ADD PRIMARY KEY (`id_denda`);

--
-- Indexes for table `tb_detail_buku`
--
ALTER TABLE `tb_detail_buku`
 ADD KEY `id_detail_buku` (`id_detail_buku`,`id_buku`,`no_buku`,`status`), ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `tb_detail_pinjam`
--
ALTER TABLE `tb_detail_pinjam`
 ADD PRIMARY KEY (`id_detail_pinjam`), ADD KEY `id_anggota` (`id_pinjam`), ADD KEY `id_detail_pinjam` (`id_detail_pinjam`,`id_pinjam`,`id_buku`,`no_buku`), ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
 ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_kembali`
--
ALTER TABLE `tb_kembali`
 ADD PRIMARY KEY (`id_kembali`), ADD KEY `id_detail` (`id_pinjam`), ADD KEY `id_kembali` (`id_kembali`,`id_pinjam`,`tgl_dikembalikan`,`terlambat`,`id_denda`);

--
-- Indexes for table `tb_login`
--
ALTER TABLE `tb_login`
 ADD PRIMARY KEY (`username`), ADD KEY `username` (`username`,`password`,`stts`);

--
-- Indexes for table `tb_penerbit`
--
ALTER TABLE `tb_penerbit`
 ADD PRIMARY KEY (`id_penerbit`), ADD KEY `id_penerbit` (`id_penerbit`,`nama_penerbit`,`id_provinsi`), ADD KEY `id_provinsi` (`id_provinsi`);

--
-- Indexes for table `tb_pengarang`
--
ALTER TABLE `tb_pengarang`
 ADD PRIMARY KEY (`id_pengarang`);

--
-- Indexes for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
 ADD PRIMARY KEY (`id_petugas`), ADD KEY `id_agama` (`id_agama`);

--
-- Indexes for table `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
 ADD PRIMARY KEY (`id_pinjam`), ADD KEY `id_detail` (`tgl_kembali`), ADD KEY `id_buku` (`id_anggota`), ADD KEY `id_pinjam` (`id_pinjam`,`tgl_pinjam`,`id_anggota`,`tgl_kembali`,`total_buku`);

--
-- Indexes for table `tb_provinsi`
--
ALTER TABLE `tb_provinsi`
 ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `tb_rak`
--
ALTER TABLE `tb_rak`
 ADD PRIMARY KEY (`no_rak`), ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
 ADD PRIMARY KEY (`id_siswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_agama`
--
ALTER TABLE `tb_agama`
MODIFY `id_agama` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_denda`
--
ALTER TABLE `tb_denda`
MODIFY `id_denda` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_detail_buku`
--
ALTER TABLE `tb_detail_buku`
MODIFY `id_detail_buku` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
--
-- AUTO_INCREMENT for table `tb_detail_pinjam`
--
ALTER TABLE `tb_detail_pinjam`
MODIFY `id_detail_pinjam` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=95;
--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
MODIFY `id_kategori` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
MODIFY `id_kelas` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tb_kembali`
--
ALTER TABLE `tb_kembali`
MODIFY `id_kembali` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=199;
--
-- AUTO_INCREMENT for table `tb_penerbit`
--
ALTER TABLE `tb_penerbit`
MODIFY `id_penerbit` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_pengarang`
--
ALTER TABLE `tb_pengarang`
MODIFY `id_pengarang` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `tb_provinsi`
--
ALTER TABLE `tb_provinsi`
MODIFY `id_provinsi` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_rak`
--
ALTER TABLE `tb_rak`
MODIFY `no_rak` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_anggota`
--
ALTER TABLE `tb_anggota`
ADD CONSTRAINT `tb_anggota_ibfk_1` FOREIGN KEY (`id_agama`) REFERENCES `tb_agama` (`id_agama`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tb_anggota_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_buku`
--
ALTER TABLE `tb_buku`
ADD CONSTRAINT `tb_buku_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tb_buku_ibfk_2` FOREIGN KEY (`id_penerbit`) REFERENCES `tb_penerbit` (`id_penerbit`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tb_buku_ibfk_3` FOREIGN KEY (`id_pengarang`) REFERENCES `tb_pengarang` (`id_pengarang`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tb_buku_ibfk_4` FOREIGN KEY (`no_rak`) REFERENCES `tb_rak` (`no_rak`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_detail_buku`
--
ALTER TABLE `tb_detail_buku`
ADD CONSTRAINT `tb_detail_buku_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `tb_buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_detail_pinjam`
--
ALTER TABLE `tb_detail_pinjam`
ADD CONSTRAINT `tb_detail_pinjam_ibfk_1` FOREIGN KEY (`id_pinjam`) REFERENCES `tb_pinjam` (`id_pinjam`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tb_detail_pinjam_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `tb_buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_kembali`
--
ALTER TABLE `tb_kembali`
ADD CONSTRAINT `tb_kembali_ibfk_1` FOREIGN KEY (`id_pinjam`) REFERENCES `tb_pinjam` (`id_pinjam`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_penerbit`
--
ALTER TABLE `tb_penerbit`
ADD CONSTRAINT `tb_penerbit_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `tb_provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
ADD CONSTRAINT `tb_petugas_ibfk_1` FOREIGN KEY (`id_agama`) REFERENCES `tb_agama` (`id_agama`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
ADD CONSTRAINT `tb_pinjam_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `tb_anggota` (`id_anggota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_rak`
--
ALTER TABLE `tb_rak`
ADD CONSTRAINT `tb_rak_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
