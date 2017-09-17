-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2017 at 12:44 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(11) NOT NULL,
  `blog_date` date NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blog_foto`
--

CREATE TABLE `blog_foto` (
  `id_foto_blog` int(11) NOT NULL,
  `id_blog` int(11) NOT NULL,
  `foto_blog` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detailgalery`
--

CREATE TABLE `detailgalery` (
  `id_detail_galery` int(11) NOT NULL,
  `id_galery` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detailgalery`
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
-- Table structure for table `detailpackage`
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
-- Dumping data for table `detailpackage`
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
(16, 5, 2200000, ' 11-15 participants = Rp. 2.200.000 / person', 15, 11);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id_food` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  `foto` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `galery`
--

CREATE TABLE `galery` (
  `id_galary` int(11) NOT NULL,
  `upload_date` date NOT NULL,
  `name_galery` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galery`
--

INSERT INTO `galery` (`id_galary`, `upload_date`, `name_galery`) VALUES
(3, '2017-09-17', 'Upload new');

-- --------------------------------------------------------

--
-- Table structure for table `order_package`
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

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id_package` int(11) NOT NULL,
  `package_name` varchar(50) NOT NULL,
  `islocal` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id_package`, `package_name`, `islocal`) VALUES
(2, 'Climb 5 days 4 nights', 1),
(3, 'Climb 4 days 3 nights', 1),
(4, 'Climb 3 days 2 nights', 1),
(5, 'Climb 2 days 1 nights', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
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
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `detailgalery`
--
ALTER TABLE `detailgalery`
  MODIFY `id_detail_galery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `detailpackage`
--
ALTER TABLE `detailpackage`
  MODIFY `id_detail_package` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
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
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id_package` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_foto`
--
ALTER TABLE `blog_foto`
  ADD CONSTRAINT `blog_foto_ibfk_1` FOREIGN KEY (`id_blog`) REFERENCES `blog` (`id_blog`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detailgalery`
--
ALTER TABLE `detailgalery`
  ADD CONSTRAINT `detailgalery_ibfk_1` FOREIGN KEY (`id_galery`) REFERENCES `galery` (`id_galary`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detailpackage`
--
ALTER TABLE `detailpackage`
  ADD CONSTRAINT `detailpackage_ibfk_1` FOREIGN KEY (`id_package`) REFERENCES `package` (`id_package`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_package`
--
ALTER TABLE `order_package`
  ADD CONSTRAINT `order_package_ibfk_1` FOREIGN KEY (`id_package`) REFERENCES `package` (`id_package`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
