-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 04, 2024 at 07:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Aid` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `password` text NOT NULL,
  `location` text NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Aid`, `name`, `email`, `password`, `location`, `address`) VALUES
(4, 'Aditya Kasaudhan', 'adityakld13@gmail.com', '$2y$10$keA2bAT1OwQRm6liShbxneEuUDO9Q9dGYAYXnzNZtUTo9pFb3Sf1C', 'haridwar', 'Roorkee');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_persons`
--

CREATE TABLE `delivery_persons` (
  `Did` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `city` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_persons`
--

INSERT INTO `delivery_persons` (`Did`, `name`, `email`, `password`, `city`) VALUES
(6, 'mehra.akshat', 'mehra.akshat471@gmail.com', '$2y$10$hnU8lC7R7g7ru5SEp2P9eeErpuoZ1ZEb2MgpYk6h9CK0ZttRfreKy', 'haridwar'),
(7, 'Dheeru', 'dpratapsingh999@gmail.com', '$2y$10$yiTi90qfkZ0zx1ikwvNP1uj..f9J6AhAnITQjBxkPxozNIpxlqjbG', 'haridwar'),
(8, 'Atul singh', 'thakuratulsingh1212@gmail.com', '$2y$10$GIA6Jj6mtyI3SoWkZ8y0p.44p6/dNERx.ZYkU3hw5mi3Xzojvqroq', 'haridwar');

-- --------------------------------------------------------

--
-- Table structure for table `food_donations`
--

CREATE TABLE `food_donations` (
  `Fid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `food` varchar(50) NOT NULL,
  `type` text NOT NULL,
  `category` text NOT NULL,
  `quantity` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `address` text NOT NULL,
  `location` varchar(50) NOT NULL,
  `phoneno` varchar(25) NOT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `delivery_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_donations`
--

INSERT INTO `food_donations` (`Fid`, `name`, `email`, `food`, `type`, `category`, `quantity`, `date`, `address`, `location`, `phoneno`, `assigned_to`, `delivery_by`) VALUES
(33, 'Aditya Kasaudhan', 'adityakld13@gmail.com', 'Chicken Leg Piece', 'Non-veg', 'cooked-food', '50', '2024-10-13 00:42:09', 'main market kaalika mandir', 'haridwar', '7233046608', 1, 6),
(35, 'Aditya Kasaudhan', 'adityakld13@gmail.com', 'Paneer', 'veg', 'raw-food', '500', '2024-10-13 23:13:07', 'Roorkee', 'haridwar', '7233046608', 1, 6),
(36, 'Aditya Kasaudhan', 'adityakld13@gmail.com', 'Paneer', 'veg', 'raw-food', '50000', '2024-10-14 10:55:46', 'Roorkee', 'haridwar', '7233046608', 1, 6),
(37, 'Anushka ', 'useranushka123@gmail.com', 'Chole with rice', 'veg', 'cooked-food', '100', '2024-10-14 12:09:49', 'Roorkee', 'haridwar', '8650900495', 1, 7),
(38, 'Aditya Kasaudhan', 'adityakld13@gmail.com', 'chappati', 'veg', 'cooked-food', '100', '2024-10-15 12:45:27', 'roor', 'haridwar', '7233046608', 1, 6),
(39, 'Aditya Kasaudhan', 'adityakld13@gmail.com', 'chappati', 'veg', 'cooked-food', '100', '2024-10-15 12:45:42', 'Roorkee', 'haridwar', '7233046608', 1, 6),
(40, 'Aditya Kasaudhan', 'adityakld13@gmail.com', 'Pakal Paneer', 'veg', 'cooked-food', '500', '2024-10-15 16:16:33', 'Roorkee', 'haridwar', '7233046608', NULL, NULL),
(41, 'Aditya Kasaudhan', 'adityakld13@gmail.com', 'panner', 'veg', 'cooked-food', '50', '2024-10-15 19:57:59', 'Gola Bazar Gali', 'almora', '7233046608', NULL, NULL),
(42, 'Aditya Kasaudhan', 'adityakld13@gmail.com', 'panner', 'veg', 'cooked-food', '60', '2024-10-15 20:01:19', 'coer', 'haridwar', '7233046608', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` text NOT NULL,
  `gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `gender`) VALUES
(20, 'Aditya Kasaudhan', 'adityakld13@gmail.com', '$2y$10$NmCNCCe6/7Ef/XAu7ltJSe2Ug99GbrQcBW/DSPALXwIx.1TpEioKK', 'male'),
(27, 'Akanshi Saini', 'akanshisaini1605@gmail.com', '$2y$10$AVYPbYrr1Gx0vQOVEFMcveTBszw4Q/jXjTPEBCPamXFeqwa2QaFe.', 'female'),
(28, 'Akki Saini', 'akanshisaini20@gmail.com', '$2y$10$g8PJsM0Jnn9jkTjsSfp8wuHMD7YDpMlnNJ9/i.6G8BeB.j32sTxZC', 'female'),
(24, 'Apeksha Rathi', 'apeksha.rathi01@gmail.com', '$2y$10$/T8lEcftpm1913r7c1sR4uCMKx4.mgA34W0C5/VCjM1zE6kXPeKwW', 'female'),
(22, 'apeksha rathi', 'apeksha.rathi05@gmail.com', '$2y$10$sru4HzkLTiTe8.QNb1HFO.FTcxqtZ.QmMZpFuV91SUokiJn.JRewC', 'female'),
(25, 'Ayush saini', 'ayushsaini7017@gmail.com', '$2y$10$4XRuKH1WKzjiNFS1vpgH.e8NTBjEBWw91BfGq0OOBVQHL5mLhkT4C', 'male'),
(33, 'Anushka', 'chaudharyanushka332@gmail.com', '$2y$10$tM92PQirFxA8mNw.VOVQDusn2QgjUTMXqd96oRBLaWBtKh/F4H5oa', 'female'),
(29, 'Dishant Saini', 'dishantsaini400@gmail.com', '$2y$10$jj0blMuqtoK4Fw51nugKT.x9wXKf3N.xWXPA1gsoU4w.2UJGFz61W', 'male'),
(30, 'DISHANT', 'dishantsaini81@gmail.com', '$2y$10$ettH6PtbZn29HN.65DfpveODJqbYOcKSIUMfVWHJRJUaxBjh3jHG.', 'male'),
(26, 'Akshat Mehra', 'mehra.akshat471@gmail.com', '$2y$10$diRTr34Kt0cjZVFeeysCyeEehxJC5v/b.ifUFgaPl9v4rNLz2nmKG', 'male'),
(31, 'Rakesh Saini', 'rakeshsaini4007@gmail.com', '$2y$10$IxnQuKQ/ZRydBxQwNRzN0OwifaETQCOvvFWHzFFQDoJqWVKMbCcrG', 'male'),
(32, 'Reeta Saini', 'reetasaini400@gmail.com', '$2y$10$GEyPPOgEyrVutcMLcn4MkOdyBriE9Z7d0rrMtHKEMTk06f0a/bjca', 'female'),
(21, 'akanshi saini', 'sainiakanshi3@gmail.com', '$2y$10$QvOIrDGl6sTU.u8SnBIqlea7.xGQLXZL6wCDxASIHJUKnJDw7VIM2', 'female'),
(23, 'Anushka ', 'useranushka123@gmail.com', '$2y$10$UjzdOa6K8U0wZB5Jrp/ErugDx/tLFM5aFuAv7pkxlFqdmgS1In7qa', 'female'),
(34, 'prakash', 'xyz@gmail.com', '$2y$10$pF5hBFC/ASnZgiR6hfvu4.HyQizRWjyq819BPTXXtpllnSRNWrXO2', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `ngo`
--

CREATE TABLE `ngo` (
  `Nid` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ngo`
--

INSERT INTO `ngo` (`Nid`, `name`, `email`, `phone`, `password`, `location`, `address`) VALUES
(1, 'Saathi Haath Badhana', 'shb.charitabletrust@gmail.com', '7895851662', '$2y$10$IU2narlE7hb7JKCkPTvSJ.rpH.W3bKjAt8C8aIXEGVo3Yy.aS8frG', 'haridwar', 'Shree Ram Colony, Laksar'),
(2, 'serve for all', 'mehraofficial20@gmail.com', '6398815110', '$2y$10$Hjj/bui7zz5.rmI1aOz4JOvkd7q/TeJw3TMAkRKDTRWxly6b.FXgG', 'almora', 'almora');

-- --------------------------------------------------------

--
-- Table structure for table `user_feedback`
--

CREATE TABLE `user_feedback` (
  `feedback_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_feedback`
--

INSERT INTO `user_feedback` (`feedback_id`, `name`, `email`, `message`) VALUES
(1, 'John Smith', 'john@example.com', 'I really enjoyed using your product!'),
(7, 'Aditya Kasaudhan', 'adityakld13@gmail.com', 'It very good\r\n\r\n'),
(8, 'Aditya Kasaudhan', 'adityakld13@gmail.com', 'I have never ever seen this much food\r\n'),
(9, 'Anushka', 'useranushka123@gmail.com', 'great initiative');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Aid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `delivery_persons`
--
ALTER TABLE `delivery_persons`
  ADD PRIMARY KEY (`Did`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `food_donations`
--
ALTER TABLE `food_donations`
  ADD PRIMARY KEY (`Fid`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `ngo`
--
ALTER TABLE `ngo`
  ADD PRIMARY KEY (`Nid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_feedback`
--
ALTER TABLE `user_feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `delivery_persons`
--
ALTER TABLE `delivery_persons`
  MODIFY `Did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `food_donations`
--
ALTER TABLE `food_donations`
  MODIFY `Fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `ngo`
--
ALTER TABLE `ngo`
  MODIFY `Nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_feedback`
--
ALTER TABLE `user_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
