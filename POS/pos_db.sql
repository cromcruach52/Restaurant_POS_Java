-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2023 at 11:21 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `cid` int(11) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`cid`, `fname`, `lname`, `contact`, `sex`, `address`, `time`, `date`, `email`) VALUES
(1, 'Kurt', 'Magcawas', '09209882246', 'Male', 'Lipa city', '', '', 'kurtmagcawas@gmail.com'),
(2, 'Nicko', 'Laygo', '09278759653', 'Male', 'Lipa', '06:41:14 AM', '15-05-2023', 'nickolaygo@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `invoice_id` int(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `costumer` varchar(50) NOT NULL,
  `paid_amount` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `balance` varchar(50) NOT NULL,
  `sub_total` varchar(50) NOT NULL,
  `total_quantity` varchar(50) NOT NULL,
  `transaction_no` int(30) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`invoice_id`, `user`, `costumer`, `paid_amount`, `status`, `balance`, `sub_total`, `total_quantity`, `transaction_no`, `date`, `time`) VALUES
(11, 'Nicko', 'Regular Costumer', '1000', 'Paid', '500.0', '500.0', '10.0', 12, '12-05-2023', '04:43:56 PM'),
(12, 'Nicko', 'Regular Costumer', '1110', 'Paid', '660.0', '450.0', '30.0', 13, '12-05-2023', '05:30:47 PM'),
(13, 'Nicko', 'Regular Costumer', '11111', 'Paid', '10411.0', '700.0', '10', 14, '12-05-2023', '05:40:41 PM'),
(14, 'Nicko', 'Regular Costumer', '50', 'Paid', '0.0', '50.0', '1', 15, '12-05-2023', '05:42:06 PM'),
(15, 'Nicko', 'Regular Costumer', '1000', 'Paid', '500.0', '500.0', '10.0', 16, '12-05-2023', '05:57:28 PM'),
(16, 'Nicko', 'Nicko', '1000', 'Paid', '500.0', '500.0', '10.0', 17, '15-05-2023', '06:42:45 AM'),
(17, 'Nicko', 'Regular Costumer', '230', 'Paid', '0.0', '230.0', '10', 18, '24-05-2023', '02:45:24 AM'),
(18, 'Nicko', 'Regular Costumer', '230', 'Paid', '0.0', '230.0', '10', 19, '24-05-2023', '07:09:47 PM'),
(19, 'Nicko', 'Regular Customer', '80', 'Partial', '-20.0', '100.0', '2.0', 20, '25-05-2023', '07:11:58 PM'),
(20, 'Nicko', 'Regular Customer', '500', 'Paid', '185.0', '315.0', '2.0', 21, '25-05-2023', '07:50:57 PM'),
(26, 'Nicko', 'Nicko', '0', 'Paid', '-60.0', '60.0', '1', 27, '25-05-2023', '08:39:47 PM'),
(27, 'Nicko', 'Kurt', '100', 'Paid', '10.0', '90.0', '1.0', 28, '27-05-2023', '03:26:22 PM'),
(28, 'Nicko', 'Regular Costumer', '100', 'Partial', '-20.0', '120.0', '2.0', 29, '27-05-2023', '03:27:04 PM'),
(29, 'Nicko', 'Kurt', '50', 'Paid', '-40.0', '90.0', '1.0', 30, '27-05-2023', '03:28:24 PM'),
(30, 'Nicko', 'Nicko', '200', 'Paid', '60.0', '140.0', '2.0', 31, '30-05-2023', '09:21:22 PM'),
(31, 'Nicko', 'Nicko', '50', 'Paid', '-40.0', '90.0', '1.0', 32, '30-05-2023', '09:25:07 PM'),
(32, 'Nicko', 'Nicko', '50', 'Paid', '-50.0', '100.0', '1.0', 33, '30-05-2023', '09:29:30 PM'),
(33, 'Nicko', 'Nicko', '50', 'Paid', '-10.0', '60.0', '1.0', 34, '30-05-2023', '09:31:45 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tbllog`
--

CREATE TABLE `tbllog` (
  `Logid` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `type` int(50) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbllog`
--

INSERT INTO `tbllog` (`Logid`, `Username`, `Password`, `type`) VALUES
(3, 'Nicko', 'Belick', 1),
(4, 'User', 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblnum`
--

CREATE TABLE `tblnum` (
  `numid` int(11) NOT NULL,
  `value` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnum`
--

INSERT INTO `tblnum` (`numid`, `value`) VALUES
(1, 34);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `prod_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `bar_code` varchar(50) DEFAULT NULL,
  `price` int(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `mark_up` int(50) NOT NULL,
  `exp_date` varchar(50) DEFAULT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`prod_id`, `product_name`, `bar_code`, `price`, `quantity`, `mark_up`, `exp_date`, `date`, `time`) VALUES
(15, 'Lomi - Special', '', 75, '100', 20, '', '25-05-2023', '06:51:37 PM'),
(16, 'Lomi - Family', '', 275, '99.0', 50, '', '25-05-2023', '06:55:43 PM'),
(17, 'Nestea ', '', 40, '27.0', 5, '', '25-05-2023', '07:08:04 PM'),
(18, 'Canton - Special', '', 60, '46.0', 20, '', '25-05-2023', '07:08:49 PM'),
(19, 'Chicken Canton', '', 85, '50', 35, '', '25-05-2023', '07:09:42 PM'),
(20, 'Goto', '', 60, '43.0', 20, '', '25-05-2023', '07:52:45 PM'),
(22, 'Chami', '', 90, '49.0', 30, '', '27-05-2023', '03:25:39 PM'),
(24, 'Iced Tea', '', 30, '20', 5, '', '30-05-2023', '09:16:59 PM'),
(25, 'Chami Special', '', 100, '98.0', 35, '', '30-05-2023', '09:20:17 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tblremove`
--

CREATE TABLE `tblremove` (
  `remove_id` int(11) NOT NULL,
  `remove_by` varchar(50) NOT NULL,
  `product_id` int(30) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblremove`
--

INSERT INTO `tblremove` (`remove_id`, `remove_by`, `product_id`, `product_name`, `quantity`, `unit_price`, `date`, `time`) VALUES
(9, 'Nicko', 1, 'Select product', '10', '15', '24-05-2023', '07:07:52 PM'),
(10, 'Nicko', 4, 'Meat loaf', '1', '23', '25-05-2023', '06:23:52 PM');

-- --------------------------------------------------------

--
-- Table structure for table `tblselling`
--

CREATE TABLE `tblselling` (
  `selling_id` int(11) NOT NULL,
  `product_id` int(100) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `total_price` varchar(50) NOT NULL,
  `unit_price` varchar(50) NOT NULL,
  `profit` varchar(50) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblselling`
--

INSERT INTO `tblselling` (`selling_id`, `product_id`, `product_name`, `quantity`, `total_price`, `unit_price`, `profit`, `date`, `time`) VALUES
(47, 18, 'Canton - Special', '1', '60.0', '60', '20.0', '25-05-2023', '07:09:55 PM'),
(48, 17, 'Nestea ', '1', '40.0', '40', '5.0', '25-05-2023', '07:11:39 PM'),
(49, 16, 'Lomi - Family', '1', '275.0', '275', '50.0', '25-05-2023', '07:50:21 PM'),
(50, 17, 'Nestea ', '1', '40.0', '40', '5.0', '25-05-2023', '07:50:40 PM'),
(51, 20, 'Goto', '2', '120.0', '60', '40.0', '25-05-2023', '07:54:13 PM'),
(52, 21, 'Salad', '4', '200.0', '50', '40.0', '25-05-2023', '07:58:24 PM'),
(53, 20, 'Goto', '2', '120.0', '60', '40.0', '25-05-2023', '08:09:16 PM'),
(54, 20, 'Goto', '1', '60.0', '60', '20.0', '25-05-2023', '08:12:09 PM'),
(55, 20, 'Goto', '1', '60.0', '60', '20.0', '25-05-2023', '08:34:45 PM'),
(56, 18, 'Canton - Special', '1', '60.0', '60', '20.0', '25-05-2023', '08:39:20 PM'),
(57, 22, 'Chami', '1', '90.0', '90', '30.0', '27-05-2023', '03:26:02 PM'),
(58, 18, 'Canton - Special', '2', '120.0', '60', '40.0', '27-05-2023', '03:26:55 PM'),
(59, 22, 'Chami', '1', '90.0', '90', '30.0', '27-05-2023', '03:28:13 PM'),
(60, 25, 'Chami Special', '1', '100.0', '100', '35.0', '30-05-2023', '09:20:41 PM'),
(61, 17, 'Nestea ', '1', '40.0', '40', '5.0', '30-05-2023', '09:20:55 PM'),
(62, 22, 'Chami', '1', '90.0', '90', '30.0', '30-05-2023', '09:24:45 PM'),
(63, 25, 'Chami Special', '1', '100.0', '100', '35.0', '30-05-2023', '09:29:17 PM'),
(64, 20, 'Goto', '1', '60.0', '60', '20.0', '30-05-2023', '09:31:36 PM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `tbllog`
--
ALTER TABLE `tbllog`
  ADD PRIMARY KEY (`Logid`);

--
-- Indexes for table `tblnum`
--
ALTER TABLE `tblnum`
  ADD PRIMARY KEY (`numid`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `tblremove`
--
ALTER TABLE `tblremove`
  ADD PRIMARY KEY (`remove_id`);

--
-- Indexes for table `tblselling`
--
ALTER TABLE `tblselling`
  ADD PRIMARY KEY (`selling_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `invoice_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbllog`
--
ALTER TABLE `tbllog`
  MODIFY `Logid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblnum`
--
ALTER TABLE `tblnum`
  MODIFY `numid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblproduct`
--
ALTER TABLE `tblproduct`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblremove`
--
ALTER TABLE `tblremove`
  MODIFY `remove_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblselling`
--
ALTER TABLE `tblselling`
  MODIFY `selling_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
