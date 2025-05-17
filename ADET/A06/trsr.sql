-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2025 at 03:14 PM
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
-- Database: `trsr`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `categoryID` int(5) NOT NULL,
  `albumTitle` varchar(100) NOT NULL,
  `releaseDate` date NOT NULL,
  `versionName` varchar(50) NOT NULL,
  `productCode` varchar(20) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `categoryID`, `albumTitle`, `releaseDate`, `versionName`, `productCode`, `price`, `image`) VALUES
(1, 1, 'THE FIRST STEP : CHAPTER ONE', '2020-08-07', 'White', 'TFSCO-WHT', 855.00, 'img/FirstStepC1White.jpg'),
(2, 1, 'THE FIRST STEP : CHAPTER ONE', '2020-08-07', 'Black', 'TFSCO-BLK', 855.00, 'img/FirstStepC1Black.jpg'),
(3, 1, 'THE FIRST STEP : CHAPTER TWO', '2020-09-18', 'White', 'TFSC2-WHT', 800.00, 'https://lightupk.com/cdn/shop/products/1_d73a3c93-b688-4170-b510-69a218b3e023.png?v=1654062415&width=600'),
(4, 1, 'THE FIRST STEP : CHAPTER TWO', '2020-09-18', 'Black', 'TFSC2-BLK', 800.00, 'https://lightupk.com/cdn/shop/products/2_08604065-7698-4061-a217-602a699f0624.png?v=1654062420&width=600'),
(5, 1, 'THE FIRST STEP : CHAPTER THREE', '2020-11-06', 'White', 'TFSC3-WHT', 800.00, 'https://cafe24img.poxo.com/ygnext/web/product/extra/small/202010/5f368404b8156b50bd845293649113fe.png'),
(6, 1, 'THE FIRST STEP : CHAPTER THREE', '2020-11-06', 'Black', 'TFSC3-BLK', 800.00, 'https://cafe24img.poxo.com/ygnext/web/product/extra/small/202010/8c1cebf075868f388c816e42e0235270.png'),
(7, 2, 'THE SECOND STEP : CHAPTER ONE', '2022-02-15', 'Photobook Blue', 'TSSC1-PBBLU', 1155.00, 'https://images.squarespace-cdn.com/content/v1/5c3398ebaa49a1b1f53eabdf/1644204064169-CNIU5M470TY940NQ1CPB/product.31249.164386613784365.jpg?format=500w'),
(8, 2, 'THE SECOND STEP : CHAPTER ONE', '2022-02-15', 'Photobook Green', 'TSSC1-PBGRN', 1155.00, 'https://images.squarespace-cdn.com/content/v1/5c3398ebaa49a1b1f53eabdf/1644203970261-YP563JOGH5VBCUR1DR12/product.31250.164386613158219.jpg?format=500w'),
(9, 2, 'THE SECOND STEP : CHAPTER ONE', '2022-02-15', 'Digipack', 'TSSC1-DPK', 755.00, 'https://images.squarespace-cdn.com/content/v1/5c3398ebaa49a1b1f53eabdf/1641895310309-E4UL8HVFETT5J0XY03I1/product.31248.164187886721272.jpg?format=500w'),
(10, 2, 'THE SECOND STEP : CHAPTER ONE', '2022-02-15', 'KiT', 'TSSC1-KIT', 999.00, 'https://images.squarespace-cdn.com/content/v1/5c3398ebaa49a1b1f53eabdf/1644204137970-JM8D3LUXY9DQ7JEVOYGP/product.31247.164386695129458.png?format=500w'),
(11, 2, 'THE SECOND STEP : CHAPTER TWO', '2022-04-04', 'Photobook Deep Blue', 'TSSC2-PBDB', 855.00, 'https://images.squarespace-cdn.com/content/v1/5c3398ebaa49a1b1f53eabdf/1662093296801-E30PM9285GABSRM79V2A/3cb61d5a02edad65c08d02cdb546854f.jpg?format=1500w'),
(12, 2, 'THE SECOND STEP : CHAPTER TWO', '2022-04-04', 'Photobook Light Green', 'TSSC2-PBLG', 855.00, 'https://images.squarespace-cdn.com/content/v1/5c3398ebaa49a1b1f53eabdf/1662093296801-E30PM9285GABSRM79V2A/3cb61d5a02edad65c08d02cdb546854f.jpg?format=1500w'),
(13, 2, 'THE SECOND STEP : CHAPTER TWO', '2022-04-04', 'Digipack', 'TSSC2-DPK', 688.00, 'https://images.squarespace-cdn.com/content/v1/5c3398ebaa49a1b1f53eabdf/1664527244813-FHV91QSSIFAKGQ9Q5MTA/product.33667.166451569793143.png?format=500w'),
(14, 2, 'THE SECOND STEP : CHAPTER TWO', '2022-04-04', 'YG TAG', 'TSSC2-YGTAG', 799.00, 'https://images.squarespace-cdn.com/content/v1/5c3398ebaa49a1b1f53eabdf/1664527129895-02CVB9FGFW25XXZL742Z/product.33621.166451362018114.jpg?format=500w'),
(15, 3, 'PLEASURE', '2025-03-17', 'Yellow', 'PLSR-YLW', 879.00, 'https://www.kpopalbums.com/cdn/shop/files/b2e4a6deacb21a859f217360e88623ae216e4a0710cd09ce234379f165dbe27f.jpg?v=1742181615'),
(16, 3, 'PLEASURE', '2025-03-17', 'Green', 'PLSR-GRN', 799.00, 'https://www.kpopalbums.com/cdn/shop/files/2a179d5fa0d9b34a7875c8d5fdcfaa4319058ed31c22cd684ad01dec8eabe3d3.jpg?v=1742544917'),
(17, 3, 'PLEASURE', '2025-03-17', 'Blue', 'PLSR-BLU', 799.00, 'https://www.kpopalbums.com/cdn/shop/files/6c2c0c145a010d2a44f46a48c014f1a37d243f78fe99955efbd9bfc84a5903b0_fefd98a9-a968-4112-8086-6ad7d3d8e734.jpg?v=1743676751'),
(18, 4, 'THE FIRST STEP : TREASURE EFFECT', '2021-01-11', 'Blue', 'TFSTE-B', 950.00, 'https://img.imageimg.net/artist/treasure/img/product_1032393.jpg'),
(19, 4, 'THE FIRST STEP : TREASURE EFFECT', '2021-01-11', 'Green', 'TFSTE-G', 1100.00, 'https://img.imageimg.net/artist/treasure/img/product_1032395.png'),
(20, 4, 'THE FIRST STEP : TREASURE EFFECT', '2021-01-11', 'Orange', 'TFSTE-O', 1200.00, 'https://img.imageimg.net/artist/treasure/img/product_1032394.png'),
(21, 4, 'REBOOT', '2023-07-28', 'Photobook Version 1', 'RBT-PB1', 1000.00, 'https://www.kpopalbums.com/cdn/shop/products/3816c9e4d9281cbce1c9f77394915244d951615f0cec01d3cbafe0aed91df5fa.jpg?v=1690783756'),
(22, 4, 'REBOOT', '2023-07-28', 'Photobook Version 2', 'RBT-PB2', 1000.00, 'https://www.kpopalbums.com/cdn/shop/products/0853ed57f3c0df7f57953375462b9284dfa63bf18fddd37e6db089d12928a44b.jpg?v=1690783762'),
(23, 4, 'REBOOT', '2023-07-28', 'Photobook Version 3', 'RBT-PB3', 1000.00, 'https://www.kpopalbums.com/cdn/shop/products/0aa40395fbc59390da627c75cbbc4ac38e5a1c6d7971b37ffbb8db51dbf57f26.jpg?v=1690783768'),
(24, 4, 'REBOOT', '2023-07-28', 'YG TAG White Version', 'RBT-YGTW', 600.00, 'https://www.kpopalbums.com/cdn/shop/products/7996f55c2f6944f6506855171575ee8324da6dc1346a3bd24103f17eed3e2c02.jpg?v=1690783744'),
(25, 4, 'REBOOT', '2023-07-28', 'YG TAG Onyx Version', 'RBT-YGTO', 600.00, 'https://www.kpopalbums.com/cdn/shop/products/788e5ff7c9c7a42ad3b6a9ad581af13ca163fc062e3c81303d6b5749e266afa2.jpg?v=1690783733'),
(26, 4, 'REBOOT', '2023-07-28', 'YG TAG Red Version', 'RBT-YGTR', 600.00, 'https://www.kpopalbums.com/cdn/shop/products/4950682fe9f5fa91484707fae332a78be4b37d251ae84b280e60919da038b383.jpg?v=1690783780'),
(27, 4, 'REBOOT', '2023-07-28', 'YG TAG Gray Version', 'RBT-YGTG', 600.00, 'https://www.kpopalbums.com/cdn/shop/products/7b37757be9cdc04c7420aa46b374a6d2257f272b9ba10d638a1c3d155b96c2d5.jpg?v=1690783738'),
(28, 4, 'REBOOT', '2023-07-28', 'Digipack', 'RBT-DPK', 680.00, 'https://www.kpopalbums.com/cdn/shop/products/c08bf274944ed50b256520e983bc2aa590671488b13c2358a7730ffc4bc86565.jpg?v=1689067835'),
(29, 4, 'REBOOT', '2023-07-28', 'Khino Kit', 'RBT-KHKIT', 900.00, 'https://www.kpopalbums.com/cdn/shop/products/26f15c58ab000777860862dd694c6a292f3e54a718d513c656fef81110ca1dd4.jpg?v=1690721444');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `categoryName`) VALUES
(1, 'Single Albums'),
(2, 'Mini Albums [EP]'),
(3, 'Special Mini Albums'),
(4, 'Full Albums');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
