-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15 Okt 2017 pada 12.03
-- Versi Server: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arfatrakker`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `blog_date` date NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog_foto`
--

CREATE TABLE `blog_foto` (
  `id_foto_blog` int(11) NOT NULL,
  `id_blog` int(11) NOT NULL,
  `foto_blog` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailgalery`
--

CREATE TABLE `detailgalery` (
  `id_detail_galery` int(11) NOT NULL,
  `id_galery` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detailgalery`
--

INSERT INTO `detailgalery` (`id_detail_galery`, `id_galery`, `foto`) VALUES
(12, 3, '20170917113301828000.JPG'),
(13, 3, '20170917113301942261.JPG'),
(14, 3, '20170917113301109472.JPG'),
(15, 3, '20170917113301294883.JPG'),
(16, 3, '20170917113301232514.JPG'),
(17, 3, '20170917113301846965.jpg'),
(18, 3, '2017091711330127466.JPG'),
(19, 3, '20170917113301721537.JPG'),
(20, 3, '20170917113301475678.jpg'),
(21, 3, '2017091711330165319.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailpackage`
--

CREATE TABLE `detailpackage` (
  `id_detail_package` int(11) NOT NULL,
  `id_package` int(11) NOT NULL,
  `price` int(50) NOT NULL,
  `package_name` varchar(50) NOT NULL,
  `max_people` int(2) NOT NULL,
  `min_people` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detailpackage`
--

INSERT INTO `detailpackage` (`id_detail_package`, `id_package`, `price`, `package_name`, `max_people`, `min_people`) VALUES
(1, 2, 3900000, '2 - 3 participants = Rp. 3.900.000 / person', 3, 2),
(2, 2, 3800000, '4 - 6 participants = Rp. 3.800.000 / person', 6, 4),
(3, 2, 3700000, '7 - 10 participants = Rp. 3.700.000 / person', 10, 7),
(4, 2, 3600000, '11 - 15 participants = Rp. 3.700.000 / person', 15, 11),
(5, 3, 3200000, '2 - 3 participants = Rp. 3.200.000 / person', 3, 2),
(6, 3, 3150000, '4 - 6 participants = Rp. 3.150.000 / person', 6, 4),
(7, 3, 3000000, '7 - 10 participants = Rp. 3,000,000 / person', 10, 7),
(8, 3, 2850000, '11-15 participants = Rp. 2.850.000 / person', 15, 11),
(9, 4, 2900000, '2 - 3 participants = Rp. 2.900.000 / person', 3, 1),
(10, 4, 2700000, '4 - 6 participants = Rp. 2.700.000 / person', 6, 4),
(11, 4, 2500000, '7 - 10 participants = Rp. 2.500.000 / person', 10, 7),
(12, 4, 2300000, '11-15 participants: Rp. 2.300.000 / person', 15, 11),
(13, 5, 2800000, '2 - 3 participants = Rp. 2.800.000 / person', 3, 2),
(14, 5, 2600000, '4 - 6 participants = Rp. 2.600.000 / person', 6, 4),
(15, 5, 2400000, '7 - 10 participants = Rp. 2.400.000 / person', 10, 7),
(16, 5, 2200000, ' 11-15 participants = Rp. 2.200.000 / person', 15, 11),
(17, 6, 5400000, '2 - 3 participants = Rp. 5.400.000 / person', 3, 2),
(18, 6, 5300000, '4 - 6 participants = Rp. 5.300.000 / person', 6, 4),
(19, 6, 5200000, '7 - 10 participants = Rp. 5.200.000 / person', 10, 7),
(20, 6, 5100000, '11 - 15 participants = Rp. 5.100.000 / person', 15, 11),
(21, 7, 4800000, '2 - 3 participants = Rp. 4.800.000 / person', 3, 2),
(22, 7, 4650000, '4 - 6 participants = Rp. 4.650.000 / person', 6, 4),
(23, 7, 4500000, '7 - 10 participants = Rp. 4.500.000 / person', 10, 7),
(24, 7, 4350000, '11 - 15 participants = Rp. 4.350.000 / person', 15, 11),
(25, 8, 4400000, '2 - 3 participants = Rp. 4.400.000 / person', 3, 2),
(26, 8, 4200000, '4 - 6 participants = Rp. 4.200.000 / person', 6, 4),
(27, 8, 4000000, '7 - 10 participants = Rp. 4.000.000 / person', 10, 7),
(28, 8, 3800000, '11 - 15 participants = Rp. 3.800.000 / person', 15, 11),
(29, 9, 4300000, '2 - 3 participants = Rp. 4.300.000 / person', 3, 2),
(30, 9, 4100000, '4 - 6 participants = Rp. 4.100.000 / person', 6, 4),
(31, 9, 3900000, '7 - 10 participants = Rp. 3.900.000 / person', 10, 7),
(32, 9, 3700000, '11 - 15 participants = Rp. 3.700.000 / person', 15, 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `food`
--

CREATE TABLE `food` (
  `id_food` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `foto` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galery`
--

CREATE TABLE `galery` (
  `id_galary` int(11) NOT NULL,
  `upload_date` date NOT NULL,
  `name_galery` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galery`
--

INSERT INTO `galery` (`id_galary`, `upload_date`, `name_galery`) VALUES
(3, '2017-09-17', 'Upload new');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_package`
--

CREATE TABLE `order_package` (
  `id_order` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_telpon` int(15) NOT NULL,
  `id_package` int(11) NOT NULL,
  `number_people` int(3) NOT NULL,
  `pickup_location` varchar(100) NOT NULL,
  `date_pickup` date NOT NULL,
  `date_order` date NOT NULL,
  `total_price` int(50) NOT NULL,
  `islocal` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `order_package`
--

INSERT INTO `order_package` (`id_order`, `name`, `email`, `no_telpon`, `id_package`, `number_people`, `pickup_location`, `date_pickup`, `date_order`, `total_price`, `islocal`) VALUES
(1, 'mujur', 'sahe@gmai.com', 445454, 2, 2, 'asas', '0000-00-00', '2017-10-15', 7600000, 1),
(2, 'mujur', 'sahe@gmai.com', 445454, 2, 2, 'asas', '0000-00-00', '2017-10-15', 7600000, 1),
(3, 'mujur', 'sahe@gmai.com', 445454, 2, 2, 'asas', '0000-00-00', '2017-10-15', 7600000, 1),
(4, 'mujur', 'sahe@gmai.com', 445454, 2, 2, 'asas', '0000-00-00', '2017-10-15', 7600000, 1),
(5, 'mujur', 'sahe@gmai.com', 445454, 2, 2, 'asas', '0000-00-00', '2017-10-15', 7600000, 1),
(6, 'mujur', 'sahe@gmai.com', 445454, 2, 2, 'asas', '0000-00-00', '2017-10-15', 7600000, 1),
(24, 'mujur', 'mujurakakom@gmail.com', 2323, 1, 2, '2', '0000-00-00', '2017-10-15', 7800000, 1),
(25, 'mujur', 'mujurakakom@gmail.com', 2323, 1, 2, '2', '0000-00-00', '2017-10-15', 7800000, 1),
(26, 'mujur', 'mujurakakom@gmail.com', 2323, 1, 2, '2', '0000-00-00', '2017-10-15', 7800000, 1),
(27, 'mujur', 'mujurakakom@gmail.com', 9989565, 1, 3, 'Jogja', '0000-00-00', '2017-10-15', 11700000, 1),
(28, 'mujur', 'mujurakakom@gmail.com', 9989565, 1, 3, 'Jogja', '0000-00-00', '2017-10-15', 11700000, 1),
(29, 'mujur', 'mujurakakom@gmail.com', 9989565, 1, 3, 'Jogja', '0000-00-00', '2017-10-15', 11700000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `package`
--

CREATE TABLE `package` (
  `id_package` int(11) NOT NULL,
  `package_name` varchar(50) NOT NULL,
  `islocal` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `package`
--

INSERT INTO `package` (`id_package`, `package_name`, `islocal`) VALUES
(2, 'Climb 5 days 4 nights', 1),
(3, 'Climb 4 days 3 nights', 1),
(4, 'Climb 3 days 2 nights', 1),
(5, 'Climb 2 days 1 nights', 1),
(6, 'Climb 5 days 4 nights', 2),
(7, 'Climb 4 days 3 nights', 2),
(8, 'Climb 3 days 2 nights', 2),
(9, 'Climb 2 days 1 nights', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indexes for table `blog_foto`
--
ALTER TABLE `blog_foto`
  ADD PRIMARY KEY (`id_foto_blog`),
  ADD KEY `id_blog` (`id_blog`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `detailgalery`
--
ALTER TABLE `detailgalery`
  ADD PRIMARY KEY (`id_detail_galery`),
  ADD KEY `id_galery` (`id_galery`);

--
-- Indexes for table `detailpackage`
--
ALTER TABLE `detailpackage`
  ADD PRIMARY KEY (`id_detail_package`),
  ADD KEY `id_package` (`id_package`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id_food`);

--
-- Indexes for table `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id_galary`);

--
-- Indexes for table `order_package`
--
ALTER TABLE `order_package`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `id_package` (`id_package`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id_package`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `blog_foto`
--
ALTER TABLE `blog_foto`
  MODIFY `id_foto_blog` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `detailgalery`
--
ALTER TABLE `detailgalery`
  MODIFY `id_detail_galery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `detailpackage`
--
ALTER TABLE `detailpackage`
  MODIFY `id_detail_package` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id_food` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `galery`
--
ALTER TABLE `galery`
  MODIFY `id_galary` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `order_package`
--
ALTER TABLE `order_package`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id_package` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `blog_foto`
--
ALTER TABLE `blog_foto`
  ADD CONSTRAINT `blog_foto_ibfk_1` FOREIGN KEY (`id_blog`) REFERENCES `blog` (`id_blog`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detailgalery`
--
ALTER TABLE `detailgalery`
  ADD CONSTRAINT `detailgalery_ibfk_1` FOREIGN KEY (`id_galery`) REFERENCES `galery` (`id_galary`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detailpackage`
--
ALTER TABLE `detailpackage`
  ADD CONSTRAINT `detailpackage_ibfk_1` FOREIGN KEY (`id_package`) REFERENCES `package` (`id_package`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `order_package`
--
ALTER TABLE `order_package`
  ADD CONSTRAINT `order_package_ibfk_1` FOREIGN KEY (`id_package`) REFERENCES `detailpackage` (`id_detail_package`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
