-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21 Feb 2019 pada 17.14
-- Versi Server: 5.6.21
-- PHP Version: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `reservasi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bus`
--

CREATE TABLE IF NOT EXISTS `bus` (
  `No_Pol` varchar(10) NOT NULL,
  `Jenis` varchar(15) NOT NULL,
  `Merk` varchar(15) NOT NULL,
  `Seat` varchar(4) NOT NULL,
  `Kondisi` varchar(10) NOT NULL,
  `Id_Driver` varchar(10) NOT NULL,
  `Nama_Driver` varchar(30) NOT NULL,
  `Telpon_Driver` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bus`
--

INSERT INTO `bus` (`No_Pol`, `Jenis`, `Merk`, `Seat`, `Kondisi`, `Id_Driver`, `Nama_Driver`, `Telpon_Driver`) VALUES
('B 7210', 'Medium Bus', 'White Horse', '27', 'Ready', '9965785', 'Sutono', '089765895213'),
('B 7410 FGA', 'medium bus', 'Trac', '3', 'ready', '99887766', 'Santoso', '082124768649'),
('B 7411', 'Big Bus', 'Trac', '47', 'Ready', '99886654', 'Sabar', '09876534589'),
('B 7415', 'medium bus', 'Trac', '29', 'ready', '99887766', 'Slamet', '082124768649');

-- --------------------------------------------------------

--
-- Struktur dari tabel `costumer`
--

CREATE TABLE IF NOT EXISTS `costumer` (
  `No_Costumer` varchar(10) NOT NULL,
  `Nama_Costumer` varchar(30) NOT NULL,
  `Telpon_Costumer` varchar(14) NOT NULL,
  `Alamat_Costumer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `costumer`
--

INSERT INTO `costumer` (`No_Costumer`, `Nama_Costumer`, `Telpon_Costumer`, `Alamat_Costumer`) VALUES
('1', 'Heni Ardiana', '089674885474', 'Kebon Baru V'),
('2', 'Heni Ardiana', '089674885474', 'Tebet'),
('3', 'Heni Ardiana', '089674885474', 'Jalan H');

-- --------------------------------------------------------

--
-- Struktur dari tabel `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `Id_Driver` varchar(12) NOT NULL,
  `Nama_Driver` varchar(30) NOT NULL,
  `Telpon_Driver` varchar(14) NOT NULL,
  `Alamat_Driver` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `driver`
--

INSERT INTO `driver` (`Id_Driver`, `Nama_Driver`, `Telpon_Driver`, `Alamat_Driver`) VALUES
('99113366', 'Slamet', '082166457825', 'Jalan Melati'),
('99880077', 'suryono', '0989776655', 'jl kenangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE IF NOT EXISTS `pembayaran` (
  `No_Pembayaran` varchar(15) NOT NULL,
  `Tanggal_Pembayaran` varchar(20) NOT NULL,
  `No_Pemesanan` varchar(10) NOT NULL,
  `Tanggal_Pemesanan` varchar(20) NOT NULL,
  `No_Costumer` varchar(10) NOT NULL,
  `Nama_Costumer` varchar(30) NOT NULL,
  `No_Pol` varchar(10) NOT NULL,
  `Jenis` varchar(10) NOT NULL,
  `Merk` varchar(15) NOT NULL,
  `Seat` varchar(8) NOT NULL,
  `Total_Biaya` varchar(15) NOT NULL,
  `Uang_Muka` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`No_Pembayaran`, `Tanggal_Pembayaran`, `No_Pemesanan`, `Tanggal_Pemesanan`, `No_Costumer`, `Nama_Costumer`, `No_Pol`, `Jenis`, `Merk`, `Seat`, `Total_Biaya`, `Uang_Muka`) VALUES
('1', '19 feb 2019', '10', '198feb 2019', '6', 'Heni', 'B 7788', 'Medium Bus', 'Panorama', '31', '2700000', '1500000'),
('2', '13 Feb', '2', '13 Feb', '2', 'Heni', 'B 7688', 'Big Bus', 'White Horse', '47', '2000000', '1200000'),
('3', '13 Feb 2019', '1', '13 Feb 2019', '1', 'Heni Ardiana', 'B 7411', 'Medium Bus', 'Trac', '31', '1850000', '1000000'),
('4', '18 feb', '5', '10 feb', '6', 'heni', 'B 7412', 'medium', 'white horse', '27', '2100000', '1500000'),
('5', '18 feb', '5', '10 feb', '6', 'heni', 'B 7412', 'medium', 'discovery', '27', '2100000', '1500000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
  `No_Pemesanan` varchar(10) NOT NULL,
  `Tanggal_Pemesanan` varchar(20) NOT NULL,
  `No_Costumer` varchar(10) NOT NULL,
  `Nama_Costumer` varchar(30) NOT NULL,
  `Telpon_Costumer` varchar(14) NOT NULL,
  `No_Pol` varchar(10) NOT NULL,
  `Jenis` varchar(10) NOT NULL,
  `Merk` varchar(15) NOT NULL,
  `Seat` varchar(5) NOT NULL,
  `Nama_Driver` varchar(30) NOT NULL,
  `Harga` varchar(10) NOT NULL,
  `Durasi` varchar(8) NOT NULL,
  `Total_Biaya` varchar(10) NOT NULL,
  `Uang_Muka` varchar(10) NOT NULL,
  `Tanggal_Berangkat` varchar(10) NOT NULL,
  `Tanggal_Pulang` varchar(10) NOT NULL,
  `Tujuan` varchar(20) NOT NULL,
  `Keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`No_Pemesanan`, `Tanggal_Pemesanan`, `No_Costumer`, `Nama_Costumer`, `Telpon_Costumer`, `No_Pol`, `Jenis`, `Merk`, `Seat`, `Nama_Driver`, `Harga`, `Durasi`, `Total_Biaya`, `Uang_Muka`, `Tanggal_Berangkat`, `Tanggal_Pulang`, `Tujuan`, `Keterangan`) VALUES
('1', '13 Februari 2019', '1', 'Heni Ardiana', '089674885474', 'B 7411', 'Medium Bus', 'Trac', '31', 'Slamet', '1850000', '1 hari', '1800000', '1000000', '18 Feb ', '20 Feb', 'Dalam Kota', 'Standby Pukul 13.00'),
('5', '18 Feb', '1', 'Heni', '081513981313', 'B 7210', 'Medium Bus', 'White Horse', '27', 'sutono', '2100000', '4 Hari', '8000000', '3500000', '20 Feb', '20 Feb', 'Bogor', 'Standby Pukul 08.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
 ADD PRIMARY KEY (`No_Pol`);

--
-- Indexes for table `costumer`
--
ALTER TABLE `costumer`
 ADD PRIMARY KEY (`No_Costumer`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
 ADD PRIMARY KEY (`Id_Driver`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
 ADD PRIMARY KEY (`No_Pembayaran`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
 ADD PRIMARY KEY (`No_Pemesanan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
