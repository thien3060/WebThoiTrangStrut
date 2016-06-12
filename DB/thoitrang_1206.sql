-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2016 at 04:03 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thoitrang`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryID`, `categoryName`, `description`) VALUES
(1, 'Sản phẩm nổi bật', ''),
(2, 'Áo thun', ''),
(3, 'Áo sơ mi', ''),
(4, 'Phụ kiện', ''),
(5, 'Giày dép', ''),
(6, 'Sale Off', '');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `contactID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customerID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `fax` varchar(15) DEFAULT NULL,
  `address1` text NOT NULL,
  `address2` text,
  `zip` varchar(7) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerID`, `name`, `email`, `title`, `phone`, `fax`, `address1`, `address2`, `zip`, `country`, `region`, `password`) VALUES
(1, 'name', 'email', 'title', 'phone', 'fax', 'address1', 'address2	', 'zip', 'country', 'region', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `imageID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `imageName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`imageID`, `productID`, `imageName`, `url`) VALUES
(1, 1, 'Áo khoác nữ', '../images/home/product1.jpg'),
(2, 2, 'Áo sơ mi nam', '../images/home/product2.jpg'),
(3, 3, 'Đầm bộ', '../images/home/product3.jpg'),
(4, 4, 'Đầm dài', '../images/home/product4.jpg'),
(5, 5, 'Áo thun', '../images/home/product5.jpg'),
(6, 6, 'Áo phong', '../images/home/product6.jpg'),
(7, 7, 'Áo hai dây', '../images/home/gallery1.jpg'),
(8, 8, 'Áo thun nam', '../images/home/gallery2.jpg'),
(9, 9, 'Áo vest nữ', '../images/home/gallery3.jpg'),
(10, 10, 'Áo thu đông', '../images/home/gallery4.jpg'),
(11, 11, 'Áo sơ mi đen', '../images/home/AoSoMi01.jpg'),
(12, 12, 'Áo sơ mi trắng', '../images/home/AoSoMi02.jpg'),
(13, 13, 'Áo sơ mi hồng', '../images/home/AoSoMi03.jpg'),
(14, 14, 'Áo sơ mi công sở', '../images/home/AoSoMi04.jpg'),
(15, 15, 'Túi xách sang trọng', '../images/home/5.jpg'),
(16, 16, 'Balo dây rút', '../images/home/6.jpg'),
(17, 17, 'Túi xách mini da bóng', '../images/home/7.jpg'),
(18, 18, 'Dây chuyền nữ thời trang', '../images/home/8.jpg'),
(19, 19, 'Giầy nam sang trọng', '../images/home/4.jpg'),
(20, 20, 'Giày Sandal Edition', '../images/home/3.jpg'),
(21, 21, 'Giày da', '../images/home/2.jpg'),
(22, 22, 'Giày nam Hàn Quốc', '../images/home/1.jpg'),
(23, 23, 'Áo thun nữ', '../images/home/recommend1.jpg'),
(24, 24, 'Áo thun nữ', '../images/home/recommend2.jpg'),
(25, 25, 'Áo thun nữ', '../images/home/recommend3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `optiongroup`
--

CREATE TABLE IF NOT EXISTS `optiongroup` (
  `optionGroupID` int(11) NOT NULL,
  `optionGroupName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `optionID` int(11) NOT NULL,
  `optionName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE IF NOT EXISTS `orderdetails` (
  `orderID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `price` double NOT NULL,
  `quanlity` int(11) NOT NULL,
  `discount` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `orderID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `orderDate` date NOT NULL,
  `requireDate` date NOT NULL,
  `shippedDate` date NOT NULL,
  `shipAddress` text NOT NULL,
  `shipCity` varchar(255) DEFAULT NULL,
  `shipRegion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `customerID`, `orderDate`, `requireDate`, `shippedDate`, `shipAddress`, `shipCity`, `shipRegion`) VALUES
(1, 1, '2016-06-08', '2016-06-11', '2016-06-12', 'shipAddress	', 'shipAddress	', 'shipRegion');

-- --------------------------------------------------------

--
-- Table structure for table `productoption`
--

CREATE TABLE IF NOT EXISTS `productoption` (
  `productOptionID` int(11) NOT NULL,
  `optionID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `optionGroupID` int(11) NOT NULL,
  `optionPriceIncrement` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `productID` int(11) NOT NULL,
  `productName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `supplierID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `unit` varchar(255) CHARACTER SET utf8 NOT NULL,
  `price` double NOT NULL,
  `stock` int(11) NOT NULL,
  `available` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`productID`, `productName`, `supplierID`, `categoryID`, `unit`, `price`, `stock`, `available`) VALUES
(1, 'Áo khoác nữ', 1, 1, 'unit', 219000, 10, 10),
(2, 'Áo sơ mi nam', 1, 1, 'unit2', 300000, 2, 2),
(3, 'Đầm bộ', 1, 1, 'unit 3', 350000, 3, 3),
(4, 'Đầm dài', 1, 1, '1', 250000, 10, 10),
(5, 'Áo thun\r\n', 1, 1, '1', 300000, 10, 10),
(6, 'Áo phông', 1, 1, '1', 150000, 10, 10),
(7, 'Áo hai dây', 1, 2, '1', 150000, 10, 10),
(8, 'Áo thun nam', 1, 2, '1', 170000, 10, 10),
(9, 'Áo vest nữ', 1, 2, '1', 500000, 10, 10),
(10, 'Áo thu đông', 1, 2, '1', 200000, 10, 10),
(11, 'Áo sơ mi đen', 1, 3, '1', 200000, 10, 10),
(12, 'Áo sơ mi trắng', 1, 3, '1', 210000, 10, 10),
(13, 'Áo sơ mi hồng', 1, 3, '1', 250000, 10, 10),
(14, 'Áo sơ mi công sở', 1, 3, '1', 300000, 10, 10),
(15, 'Túi xách sang trọng', 1, 4, '1', 260000, 10, 10),
(16, 'Balo dây rút', 1, 4, '1', 120000, 10, 10),
(17, 'Túi xách mini da bóng', 1, 4, '1', 270000, 10, 10),
(18, 'Dây chuyền nữ thời trang', 1, 4, '1', 90000, 10, 10),
(19, 'Giầy nam sang trọng', 1, 5, '1', 220000, 10, 10),
(20, 'Giày Sandal Edition', 1, 5, '1', 80000, 10, 10),
(21, 'Giày da', 1, 5, '1', 350000, 10, 10),
(22, 'Giày nam Hàn Quốc', 1, 5, '1', 450000, 10, 10),
(23, 'Áo thun nữ', 1, 6, '1', 70000, 10, 10),
(24, 'Áo thun nữ', 1, 6, '1', 75000, 10, 10),
(25, 'Áo thun nữ', 1, 6, '1', 80000, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `producttag`
--

CREATE TABLE IF NOT EXISTS `producttag` (
  `productID` int(11) NOT NULL,
  `tagID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `roleID` int(11) NOT NULL,
  `roleName` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`roleID`, `roleName`, `description`) VALUES
(1, 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
  `supplierID` int(11) NOT NULL,
  `supplierName` varchar(255) NOT NULL,
  `supplierTitle` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `homepage` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplierID`, `supplierName`, `supplierTitle`, `address`, `city`, `region`, `phone`, `homepage`) VALUES
(1, 'supplierName', 'supplierTitle', 'address', 'city', 'region', '0978562365', 'homepage');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `tagID` int(11) NOT NULL,
  `tagName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userID` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `username`, `email`, `password`, `role_id`) VALUES
(2, 'khoa', 'huynhdangkhoa1994@gmail.com', '123', 1),
(3, '1', '', '1', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contactID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`imageID`,`productID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `optiongroup`
--
ALTER TABLE `optiongroup`
  ADD PRIMARY KEY (`optionGroupID`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`optionID`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`orderID`,`productID`),
  ADD KEY `productID` (`productID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `customerID` (`customerID`);

--
-- Indexes for table `productoption`
--
ALTER TABLE `productoption`
  ADD PRIMARY KEY (`productOptionID`),
  ADD KEY `optionID` (`optionID`),
  ADD KEY `ProductID` (`ProductID`),
  ADD KEY `optionGroupID` (`optionGroupID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`productID`),
  ADD KEY `supplierID` (`supplierID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `producttag`
--
ALTER TABLE `producttag`
  ADD PRIMARY KEY (`productID`,`tagID`),
  ADD KEY `tagID` (`tagID`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`roleID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplierID`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tagID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contactID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `optiongroup`
--
ALTER TABLE `optiongroup`
  MODIFY `optionGroupID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `optionID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `productoption`
--
ALTER TABLE `productoption`
  MODIFY `productOptionID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `roleID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplierID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tagID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `productoption`
--
ALTER TABLE `productoption`
  ADD CONSTRAINT `productoption_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productoption_ibfk_2` FOREIGN KEY (`optionGroupID`) REFERENCES `optiongroup` (`optionGroupID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `productoption_ibfk_3` FOREIGN KEY (`optionID`) REFERENCES `options` (`optionID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `categories` (`categoryID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`supplierID`) REFERENCES `suppliers` (`supplierID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `producttag`
--
ALTER TABLE `producttag`
  ADD CONSTRAINT `producttag_ibfk_1` FOREIGN KEY (`tagID`) REFERENCES `tags` (`tagID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `producttag_ibfk_2` FOREIGN KEY (`productID`) REFERENCES `products` (`productID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`roleID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
