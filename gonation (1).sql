-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 19, 2022 at 09:25 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gonation`
--

-- --------------------------------------------------------

--
-- Table structure for table `avail_hotel`
--

CREATE TABLE `avail_hotel` (
  `hotel_id` int(11) NOT NULL,
  `tanggal_masuk` varchar(10) NOT NULL,
  `tanggal_keluar` varchar(10) NOT NULL,
  `harga` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `avail_hotel`
--

INSERT INTO `avail_hotel` (`hotel_id`, `tanggal_masuk`, `tanggal_keluar`, `harga`) VALUES
(1, '16-12-2022', '17-12-2022', '1000000'),
(2, '22-02-2022', '28-02-2022', '1000000'),
(3, 'aku', '2', '50000'),
(4, 'aku', '2', '50000'),
(5, '22', '27', 'Rp5000000,-'),
(6, '22-02-2023', '1-03-2023', 'Rp10000000,-'),
(7, '22-02-2023', '24-02-2023', 'Rp2000000,-'),
(8, '25-12-2022', '01-01-2023', 'Rp7000000,-'),
(9, '22-02-2023', '24-02-2023', 'Rp2000000,-'),
(10, '22-02-2023', '24-02-2023', 'Rp2000000,-'),
(11, '22-02-2023', '24-02-2023', 'Rp2000000,-');

-- --------------------------------------------------------

--
-- Table structure for table `avail_train`
--

CREATE TABLE `avail_train` (
  `train_id` int(11) NOT NULL,
  `class_id` varchar(3) NOT NULL,
  `train_departure` varchar(30) NOT NULL,
  `train_arrival` varchar(30) NOT NULL,
  `train_seats` int(11) NOT NULL,
  `train_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `avail_train`
--

INSERT INTO `avail_train` (`train_id`, `class_id`, `train_departure`, `train_arrival`, `train_seats`, `train_price`) VALUES
(20220001, 'EXC', 'Jakarta', 'Semarang', 11, 450000),
(20220002, 'ECO', 'Jakarta', 'Yogyakarta', 8, 230000),
(20220003, 'EXC', 'Jakarta', 'Yogyakarta', 3, 530000),
(20220004, 'EXC', 'Jakarta', 'Surabaya', 8, 615000),
(20220005, 'BSN', 'Jakarta', 'Semarang', 6, 370000),
(20220006, 'ECO', 'Jakarta', 'Surabaya', 5, 300000),
(20220007, 'BSN', 'Semarang', 'Jakarta', 10, 270000),
(20220008, 'BSN', 'Yogyakarta', 'Jakarta', 4, 320000),
(20220009, 'ECO', 'Yogyakarta', 'Jakarta', 2, 220000),
(20220010, 'ECO', 'Surabaya', 'Jakarta', 6, 200000);

-- --------------------------------------------------------

--
-- Table structure for table `kereta`
--

CREATE TABLE `kereta` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jumlah_penumpang` varchar(255) NOT NULL,
  `tipe_kelas` varchar(255) NOT NULL,
  `total_harga` varchar(255) NOT NULL,
  `metode_pembayaran` varchar(255) NOT NULL,
  `tujuan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kereta`
--

INSERT INTO `kereta` (`id`, `nama`, `jumlah_penumpang`, `tipe_kelas`, `total_harga`, `metode_pembayaran`, `tujuan`) VALUES
(7, 'aku', '2', 'economy', '450000', 'cash', 'jogja'),
(8, 'juragan', '5', 'Buisness', '2750000', 'Credit', 'Jakarta-Semarang'),
(9, 'Juragan', '10', 'Buisness', 'Rp7800000,-', 'Cash', 'Jakarta - Yogyakarta'),
(10, 'name', '15', 'Buisness', 'Rp8250000,-', 'Cash', 'Jakarta - Semarang'),
(11, 'juragan', '8', 'Buisness', 'Rp6240000,-', 'Cash', 'Jakarta - Yogyakarta'),
(12, 'juragan', '4', 'Buisness', 'Rp2200000,-', 'Credit', 'Semarang - Jakarta'),
(13, 'joko', '3', 'Executive', 'Rp1650000,-', '- Pilih Metode -', 'Yogyakarta - Jakarta'),
(15, 'juragan', '10', 'Buisness', 'Rp7800000,-', 'Credit', 'Surabaya - Jakarta'),
(18, 'bbb', '3', 'Buisness', 'Rp2250000,-', 'Cash', 'Jakarta - Yogyakarta'),
(19, 'ccc', '5', 'Executive', 'Rp3250000,-', 'Cash', 'Jakarta - Surabaya'),
(20, 'greg', '12', 'Executive', 'Rp5400000,-', 'Cash', 'Semarang - Jakarta'),
(21, 'ordinal', '3', 'Executive', 'Rp1350000,-', 'Cash', 'Jakarta - Semarang'),
(22, 'Badrun', '2', 'Executive', 'Rp1300000,-', 'Credit', 'Surabaya - Jakarta'),
(23, 'Derrel', '14', 'Buisness', 'Rp10920000,-', 'Cash', 'Surabaya - Jakarta'),
(24, 'Emil', '4', 'Buisness', 'Rp2200000,-', 'Cash', 'Jakarta - Semarang'),
(25, 'Emil', '5', 'Buisness', 'Rp2750000,-', 'Cash', 'Jakarta - Semarang');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `username`, `email`, `password`) VALUES
(1, 'namasaya', 'namasaya', '$2y$10$IhL9s4yJKFxhU4wkfHdNCOJ6bEE16kuXIRfsoA3RSXhpzkJErRjxm'),
(2, 'SignUp', 'signup', '$2y$10$i5SNd0cejmNlyCG/h90T0.1Lzc.YXonEexPeDaYcKMOfSH1I0pJvW'),
(3, 'MyName', 'myname', '$2y$10$Yn/8BvDxrUWU96JXDnBV1uTpQdyInXSJSMscS2NlctszW42U2Qx72'),
(4, 'Juragan', 'juragan', '$2y$10$wpGhCf9tkGs00Baor.0Q3u7vJZXKQCt2lPvlISfycVYeL8AnOOZnK'),
(5, 'Hahaha', 'hahaha', '$2y$10$skkJzNzS/KZITfr0w6hBtOF3HLFkJW46ktxh.QcHNyJK/Q2H.sv3G'),
(6, 'Darrel', 'darrel', '$2y$10$PiBrHpneD4ZJOP1ZHMZ7K.vuhtYe1dt2sgCmtN11Ei7nvC3u2ARTC'),
(7, 'nama', 'nama', '$2y$10$9QDAw13u4Fljmm3lOR5mgeoUuJiaMDinKwDau0t2EiQXLt3lCvB9e'),
(8, 'name', 'name@gmail.com', '$2y$10$nRc2mdkoMopk3XMAc0AzuuZhVRUxlYPwqTLSm.IPpJw6T0w3XHB82'),
(9, 'Badrun', 'bad123', '$2y$10$iahIrRlFG7nbwdHLMUxb3u74MUHsifqJwEwKRpWQrvYtLYTJDnUsC'),
(10, 'Derrel', 'palabocorabis@gmail.com', '$2y$10$/PgSSdBkkl5D1l85Mo/lyuk6UQ2juoHU/2rTDC6DU8nDNckD0R3uO'),
(11, 'aku', 'aku@gmail.com', '$2y$10$YN.CdNm2p/XOWwTQJIy0BeKQwtYIzkkJf2quQtoNPj9JgIcjOgkqm'),
(12, 'NamaSaya', 'namasaya@gmail.com', '$2y$10$yN50uwCLV2mAN.WN1Myw5etT6vsdtjHA9Zb15HBRJBTfJkWdNA/Si'),
(13, 'NamaSaya', 'namasaya@gmail.com', '$2y$10$3Wef2T7YeuGYDjQICWIkwOUeRxO9ybzkO4H1IPo2TzhrrM0n62p2q'),
(14, 'Nama', 'nama@gmail.com', '$2y$10$I3tGDpYiWFOpmAwcG2LkOuRmQeSSPkXQ0NynCWrJBsPb/jjdoP.bK'),
(15, 'emil', 'emilRET@gmail.com', '$2y$10$a/mtwd5EzHpGmXqZvHkbV.ZSLg5dzY8cpz3o8Lw07.0lxzmcwIOo6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `avail_hotel`
--
ALTER TABLE `avail_hotel`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `avail_train`
--
ALTER TABLE `avail_train`
  ADD PRIMARY KEY (`train_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Indexes for table `kereta`
--
ALTER TABLE `kereta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `avail_hotel`
--
ALTER TABLE `avail_hotel`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `avail_train`
--
ALTER TABLE `avail_train`
  MODIFY `train_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20220011;

--
-- AUTO_INCREMENT for table `kereta`
--
ALTER TABLE `kereta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
