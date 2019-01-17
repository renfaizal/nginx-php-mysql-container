-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2018 at 03:25 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_ol`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE IF NOT EXISTS `barang` (
  `idBarang` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `harga` int(11) NOT NULL DEFAULT '0',
  `stok` int(11) NOT NULL DEFAULT '0',
  `foto` varchar(70) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`idBarang`, `nama`, `harga`, `stok`, `foto`) VALUES
(1, 'Beras', 7500, 199, 'beras.png'),
(2, 'Popok', 30000, 49, 'pampers.jpg'),
(3, 'Minyak Goreng', 12000, 25, 'minyak.jpg'),
(4, 'Buku', 190000, 30, 'orderofphoenix.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `djual`
--

CREATE TABLE IF NOT EXISTS `djual` (
  `idDjual` int(11) NOT NULL,
  `idHjual` int(11) NOT NULL,
  `idBarang` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `djual`
--

INSERT INTO `djual` (`idDjual`, `idHjual`, `idBarang`, `qty`, `harga`) VALUES
(9, 1, 2, 1, 30000),
(10, 1, 1, 1, 7500);

-- --------------------------------------------------------

--
-- Table structure for table `hjual`
--

CREATE TABLE IF NOT EXISTS `hjual` (
  `idHjual` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `namacust` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `notelp` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hjual`
--

INSERT INTO `hjual` (`idHjual`, `tanggal`, `namacust`, `email`, `notelp`) VALUES
(1, '2018-06-04', 'Reno', 'reno@gmail.com', '085725719806');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE IF NOT EXISTS `pengguna` (
  `idpengguna` int(11) NOT NULL,
  `user` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `akses` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`idpengguna`, `user`, `password`, `nama_lengkap`, `akses`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'administrator', 'toko'),
(2, 'cust', '3aad3506aa11f05f265ea8304b8152b3', 'pelanggan', 'beli');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idBarang`),
  ADD KEY `nama` (`nama`);

--
-- Indexes for table `djual`
--
ALTER TABLE `djual`
  ADD PRIMARY KEY (`idDjual`);

--
-- Indexes for table `hjual`
--
ALTER TABLE `hjual`
  ADD PRIMARY KEY (`idHjual`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`idpengguna`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `idBarang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `djual`
--
ALTER TABLE `djual`
  MODIFY `idDjual` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `hjual`
--
ALTER TABLE `hjual`
  MODIFY `idHjual` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `idpengguna` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
