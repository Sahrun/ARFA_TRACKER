-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12 Sep 2017 pada 16.57
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

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailpackage`
--

CREATE TABLE `detailpackage` (
  `id_detail_package` int(11) NOT NULL,
  `id_package` int(11) NOT NULL,
  `price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `food`
--

CREATE TABLE `food` (
  `id_food` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(50) NOT NULL
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
  `date_order` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `order_package`
--

INSERT INTO `order_package` (`id_order`, `name`, `email`, `no_telpon`, `id_package`, `number_people`, `pickup_location`, `date_pickup`, `date_order`) VALUES
(30, 'mujur', 'sahrun_nawawie@yahoo.com', 445454, 1, 455454, '45454', '0000-00-00', '0000-00-00'),
(31, 'mujur', 'anggafitri16@gmail.com', 445454, 1, 455454, '45454', '0000-00-00', '0000-00-00'),
(32, 'mujur', 'sahrun_nawawie@yahoo.com', 445454, 1, 455454, 'sasas', '0000-00-00', '0000-00-00'),
(33, 'mujur', 'sahrun_nawawie@yahoo.com', 445454, 1, 455454, 'sdsdsd', '2017-10-03', '2017-09-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `package`
--

CREATE TABLE `package` (
  `id_package` int(11) NOT NULL,
  `package_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `package`
--

INSERT INTO `package` (`id_package`, `package_name`) VALUES
(1, 'makan');

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
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userid`, `name`, `email`, `password`) VALUES
(1, '', '', ''),
(2, 'Mujur Indra Jati', 'mujurindrajati@gmail.com', 'ere'),
(3, '', '', ''),
(4, 'test', 'mujurindrajati@gmail.com', 'tyy'),
(5, 'sahrun', 'sahrun@gmail.com', 'vccvc'),
(6, 'sahrun', 'sahrun@gmail.com', 'vccvc');

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
  MODIFY `id_detail_galery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `detailpackage`
--
ALTER TABLE `detailpackage`
  MODIFY `id_detail_package` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id_food` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `galery`
--
ALTER TABLE `galery`
  MODIFY `id_galary` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `order_package`
--
ALTER TABLE `order_package`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id_package` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
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
  ADD CONSTRAINT `order_package_ibfk_1` FOREIGN KEY (`id_package`) REFERENCES `package` (`id_package`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
