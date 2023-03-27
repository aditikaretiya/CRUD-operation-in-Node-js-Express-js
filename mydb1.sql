-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 23, 2023 at 11:29 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydb1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cg_id` int(100) NOT NULL,
  `cg_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cg_id`, `cg_name`) VALUES
(1, 'plastic'),
(3, '1234'),
(4, 'pinal'),
(7, 'hiral123');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pro_id` int(100) NOT NULL,
  `pro_name` varchar(100) NOT NULL,
  `pro_details` varchar(100) NOT NULL,
  `pro_price` int(100) NOT NULL,
  `pro_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pro_id`, `pro_name`, `pro_details`, `pro_price`, `pro_image`) VALUES
(2, 'Aditi', '1234', 1234, '123'),
(3, 'Aditi', '1234', 123, '123'),
(6, 'priyanka', 'jvhudv', 123, 'sds'),
(7, '123', 'egfe', 123, 'ds'),
(8, 'pinal123', 'swqedwd', 123, '2sas');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

CREATE TABLE `tbl_subcategory` (
  `subcg_id` int(100) NOT NULL,
  `subcg_name` varchar(100) NOT NULL,
  `subcg_categoryid` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`subcg_id`, `subcg_name`, `subcg_categoryid`) VALUES
(1, 'Aditi', 12),
(2, 'Aditi', 123),
(3, 'Aditi', 1234),
(4, 'Aditi', 1234),
(6, 'Aditi', 12),
(8, 'meghaji', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_gender` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_mobile` int(100) NOT NULL,
  `user_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_gender`, `user_email`, `user_password`, `user_mobile`, `user_address`) VALUES
(3, 'krishna123', 'Male', 'aasd@gmail.com', '12345', 123456789, ''),
(4, 'Aditi', 'Male', 'dcknk@jvcnd', 'asd3234', 1233456777, ''),
(7, 'Aditi', 'Female', 'aditi@gmail.com', '123', 24214213, 'sdsfdsfscs'),
(8, 'ishi', 'Female', 'aditi@gmail.com', '1234', 12213213, 'sdsfdsfscs'),
(9, 'Aditi', 'Female', 'aditi@gmail.com', '12343', 232132132, 'dcdsfsddscds'),
(10, 'Aditi', 'Female', 'aditi@gmail.com', '1234', 213213213, '252365263283283'),
(11, 'Aditi', 'Female', 'aditi@gmail.com', '1234', 3213213, 'sdsfdsfscs'),
(12, 'Aditi', 'Female', 'aditi@gmail.com', '1234', 2147483647, 'sdsfdsfscs'),
(13, 'aditi', 'Female', 'aditi@gmail.com', '1234', 321321211, 'sdsfdsfscs'),
(14, 'meera', 'Female', 'meera@gmail.com', '12345', 132323223, 'sdsfdsfscs'),
(15, 'palak', 'Female', 'palak@gmail.com', '4321', 122323213, 'sdsfdsfscs'),
(16, 'palak', 'Female', 'palak@gmail.com', '54321', 2147483647, 'sdsfdsfscs'),
(17, 'vinay', 'Male', 'vinay@gmail.com', '123456', 2147483647, 'sdsfdsfscs'),
(18, 'vivek', 'Female', 'vivek@gmail.com', '0987', 213213213, 'sdsfdsfscs'),
(19, 'veer', 'Male', 'veer@gmail.com', '1234', 232132121, 'sdsfdsfscs'),
(20, 'vivek', 'Male', 'vivek@gmail.com', '12345', 3243432, 'sdsfdsfscs'),
(21, 'veer', 'Male', 'veer@gmail.com', '12345', 2147483647, 'fwdsfdfdef'),
(22, 'axita', 'Female', 'axita@gmail.com', '1234', 2147483647, 'sdsfdsfscs'),
(23, 'rupal', 'Female', 'rupal@gmail.com', '1234', 2147483647, 'sdsfdsfscs'),
(24, 'ishita', 'Female', 'ishita@gmail.com', 'ishi123', 123232132, 'dfdfdsfd'),
(25, 'aditi', 'Female', 'aditi@gmail.com', '1234', 2147483647, '252365263283283'),
(26, 'aditi', 'Female', 'aditi@gmail.com', '1234', 3432432, 'sdsfdsfscs'),
(27, 'aditi1', 'Female', 'adi@gmail.com', '12345', 213242, 'sdsfdsfscs'),
(28, 'vivek', 'Male', 'vivek@gmail.com', '1234', 213213213, 'dcdewfew'),
(29, 'aditi', 'Female', 'aditi@gmail.com', '12345', 2147483647, 'dcsdcdscds'),
(30, 'Aditi', 'Female', 'aditi@gmail.com', '1234', 34324324, '252365263283283'),
(31, 'Aditi', 'Female', 'aditi@gmail.com', '1234', 23213213, 'sdsfdsfscs'),
(32, 'ishita', 'Female', 'ishi@gmail.com', '12345', 343242342, 'sdsfdsfscs'),
(33, 'ishita', 'Female', 'ishita@gmail.com', '1234', 34324324, 'effefe'),
(34, 'ishita', 'Female', 'aditi@gmail.com', '12345', 322334, 'sdsfdsfscs'),
(35, 'Aditi', 'Female', 'ishi@gmail.com', '0987', 2132121, 'vdedve');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cg_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indexes for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  ADD PRIMARY KEY (`subcg_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cg_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pro_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  MODIFY `subcg_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
