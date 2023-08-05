-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2022 at 02:42 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizza`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `addressid` int(11) NOT NULL,
  `houseno` varchar(10) NOT NULL,
  `appartment_street` varchar(100) NOT NULL,
  `area` varchar(50) NOT NULL,
  `pincode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`addressid`, `houseno`, `appartment_street`, `area`, `pincode`) VALUES
(1, '1', 'abc', 'abcd', 8789),
(2, '2', 'dawd', 'dawdd', 4224),
(3, '45', 'jfhj', 'sdfws', 53453),
(4, '65', 'fsf', 'fse', 5353),
(1, '54', 'efwerfw', 'fes', 53535);

-- --------------------------------------------------------

--
-- Table structure for table `addresstb`
--

CREATE TABLE `addresstb` (
  `addressid` int(11) NOT NULL,
  `custid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addresstb`
--

INSERT INTO `addresstb` (`addressid`, `custid`) VALUES
(1, 3),
(2, 4),
(3, 3),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `adminid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`adminid`, `name`, `password`, `email`) VALUES
(1, 'admin1', 'admin1@123', 'admin1@gmail.com'),
(2, 'admin2', 'admin2@123', 'admin2@gmail.com'),
(3, 'admin3', 'admin3@123', 'admin3@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `carttb`
--

CREATE TABLE `carttb` (
  `cartid` int(11) NOT NULL,
  `custid` int(11) NOT NULL,
  `pizzaid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `createddate` date NOT NULL,
  `priceid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carttb`
--

INSERT INTO `carttb` (`cartid`, `custid`, `pizzaid`, `quantity`, `createddate`, `priceid`) VALUES
(1, 3, 3, 2, '2022-05-10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contactustb`
--

CREATE TABLE `contactustb` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactustb`
--

INSERT INTO `contactustb` (`id`, `name`, `email`, `message`) VALUES
(1, 'dada', 'fdaw@gmail.com', 'dawdad');

-- --------------------------------------------------------

--
-- Table structure for table `customertb`
--

CREATE TABLE `customertb` (
  `custid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contactno` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customertb`
--

INSERT INTO `customertb` (`custid`, `name`, `email`, `contactno`) VALUES
(3, 'cust1', 'cust1@gmail.com', '97878849'),
(4, 'cust2', 'cust2@gmail.com', '15854187');

-- --------------------------------------------------------

--
-- Table structure for table `ordertb`
--

CREATE TABLE `ordertb` (
  `orderid` int(11) NOT NULL,
  `custid` int(11) NOT NULL,
  `pizzaid` int(11) NOT NULL,
  `priceid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` float NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordertb`
--

INSERT INTO `ordertb` (`orderid`, `custid`, `pizzaid`, `priceid`, `quantity`, `amount`, `date`) VALUES
(3, 4, 2, 3, 2, 1000, '2022-05-04');

-- --------------------------------------------------------

--
-- Table structure for table `paymenttb`
--

CREATE TABLE `paymenttb` (
  `paymentid` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` float NOT NULL,
  `transactionid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paymenttb`
--

INSERT INTO `paymenttb` (`paymentid`, `orderid`, `date`, `amount`, `transactionid`) VALUES
(1, 3, '2022-05-04', 1000, 'hfyufuyfuf');

-- --------------------------------------------------------

--
-- Table structure for table `pizzatb`
--

CREATE TABLE `pizzatb` (
  `pizzaid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `category` varchar(20) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pizzatb`
--

INSERT INTO `pizzatb` (`pizzaid`, `name`, `description`, `category`, `type`) VALUES
(1, 'axasd', 'ddwa', 'dwda', 'dawd'),
(2, 'dad', 'dawda', 'veg', 'italian'),
(3, 'rewer', 'qeeeeq', 'nonveg', 'mexican');

-- --------------------------------------------------------

--
-- Table structure for table `pricetb`
--

CREATE TABLE `pricetb` (
  `priceid` int(11) NOT NULL,
  `pizzaid` int(11) NOT NULL,
  `size` varchar(25) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pricetb`
--

INSERT INTO `pricetb` (`priceid`, `pizzaid`, `size`, `price`) VALUES
(1, 1, 'medium', 200),
(2, 1, 'large', 700),
(3, 2, 'medium', 500);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD KEY `addressid` (`addressid`);

--
-- Indexes for table `addresstb`
--
ALTER TABLE `addresstb`
  ADD PRIMARY KEY (`addressid`,`custid`),
  ADD KEY `custid` (`custid`);

--
-- Indexes for table `admintb`
--
ALTER TABLE `admintb`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `carttb`
--
ALTER TABLE `carttb`
  ADD PRIMARY KEY (`cartid`),
  ADD KEY `custid` (`custid`),
  ADD KEY `pizzaid` (`pizzaid`),
  ADD KEY `priceid` (`priceid`);

--
-- Indexes for table `contactustb`
--
ALTER TABLE `contactustb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customertb`
--
ALTER TABLE `customertb`
  ADD PRIMARY KEY (`custid`);

--
-- Indexes for table `ordertb`
--
ALTER TABLE `ordertb`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `custid` (`custid`),
  ADD KEY `pizzaid` (`pizzaid`),
  ADD KEY `priceid` (`priceid`);

--
-- Indexes for table `paymenttb`
--
ALTER TABLE `paymenttb`
  ADD PRIMARY KEY (`paymentid`),
  ADD KEY `orderid` (`orderid`);

--
-- Indexes for table `pizzatb`
--
ALTER TABLE `pizzatb`
  ADD PRIMARY KEY (`pizzaid`);

--
-- Indexes for table `pricetb`
--
ALTER TABLE `pricetb`
  ADD PRIMARY KEY (`priceid`),
  ADD KEY `pizzaid` (`pizzaid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresstb`
--
ALTER TABLE `addresstb`
  MODIFY `addressid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admintb`
--
ALTER TABLE `admintb`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `carttb`
--
ALTER TABLE `carttb`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactustb`
--
ALTER TABLE `contactustb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customertb`
--
ALTER TABLE `customertb`
  MODIFY `custid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ordertb`
--
ALTER TABLE `ordertb`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `paymenttb`
--
ALTER TABLE `paymenttb`
  MODIFY `paymentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pizzatb`
--
ALTER TABLE `pizzatb`
  MODIFY `pizzaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pricetb`
--
ALTER TABLE `pricetb`
  MODIFY `priceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`addressid`) REFERENCES `addresstb` (`addressid`);

--
-- Constraints for table `addresstb`
--
ALTER TABLE `addresstb`
  ADD CONSTRAINT `addresstb_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customertb` (`custid`);

--
-- Constraints for table `carttb`
--
ALTER TABLE `carttb`
  ADD CONSTRAINT `carttb_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customertb` (`custid`),
  ADD CONSTRAINT `carttb_ibfk_2` FOREIGN KEY (`pizzaid`) REFERENCES `pizzatb` (`pizzaid`),
  ADD CONSTRAINT `carttb_ibfk_3` FOREIGN KEY (`priceid`) REFERENCES `pricetb` (`priceid`);

--
-- Constraints for table `ordertb`
--
ALTER TABLE `ordertb`
  ADD CONSTRAINT `ordertb_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customertb` (`custid`),
  ADD CONSTRAINT `ordertb_ibfk_2` FOREIGN KEY (`pizzaid`) REFERENCES `pizzatb` (`pizzaid`),
  ADD CONSTRAINT `ordertb_ibfk_3` FOREIGN KEY (`priceid`) REFERENCES `pricetb` (`priceid`);

--
-- Constraints for table `paymenttb`
--
ALTER TABLE `paymenttb`
  ADD CONSTRAINT `paymenttb_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `ordertb` (`orderid`);

--
-- Constraints for table `pricetb`
--
ALTER TABLE `pricetb`
  ADD CONSTRAINT `pricetb_ibfk_1` FOREIGN KEY (`pizzaid`) REFERENCES `pizzatb` (`pizzaid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
