-- https://www.phpmyadmin.net/
-- Host: localhost:3306


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yus_shoe`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Nike'),
(2, 'Yeezy'),
(3, 'Jordan');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  `product_title` varchar(1000) NOT NULL,
  `product_image` varchar(300) NOT NULL,
  `price` varchar(300) NOT NULL,
  `total_amt` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`, `product_title`, `product_image`, `price`, `total_amt`) VALUES
(3, 5, '0', 2, 1, 'Aluminium Dunk High', 'aluminium dunk high.png', '200', '300'),
(5, 7, '0', 2, 1, 'Panda Dunk Low', 'panda dunk.png', '230', '290');

-- --------------------------------------------------------


--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Dunk'),
(2, 'Yeezy'),
(3, 'Jordan 1 High'),
(4, 'Jordan 1 Mid'),
(5, 'Jordan 3'),
(6, 'Jordan 4');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_price` int(100) NOT NULL,
  `p_qty` int(100) NOT NULL,
  `p_status` varchar(100) NOT NULL,
  `trx_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 2, 7, 1, '087N472791', 'Ordered'),
(2, 2, 9, 1, '02NS727091', 'Ordered');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1,	1,  	1,	'Aluminium Dunk High',	200, 'Aluminium Dunk High',	'aluminium dunk high.png',	'Aluminium Dunk High Womens Girls Ladies Female'),
(2,	1,	1,	'Archeo Dunk Low', 		150,	'Archeo Dunk Low',	'archeo pink dunk.png', 'Archeo Dunk Low Pink Womens Girls Ladies Female'),
(3,	1,	1,	'Cloud Grey Dunk Low',	160,	'Cloud Grey Dunk Low',	'cloud grey dunk.jpg',	'Cloud Grey Dunk Low Mens Boys Male'),
(4,	1,	1,	'Court Purple Dunk Low',	160,	'Court Purple Dunk Low',	'court purple dunk.jpg',	'Court Purple Dunk Low Mens Boys Male Hype'),
(5,	1,	1,	'Grey Fog Dunk Low',		180,	'Grey Fog Dunk Low',	'fog dunk.png',	'Grey Fog Dunk Low Mens Boys Male Hype'),
(6,	1,	1,	'Goldenrod Dunk Low',		200,	'Goldenrod Dunk Low',	'goldenrod dunk.jpg',	'Goldenrod Dunk Low Yellow Black Mens Boys Hype'),
(7,	1,	1,	'Harvest Moon Dunk Low',	200,	'Harvest Moon Dunk Low',	'harvest moon dunk.png',	'Harvest Moon Dunk Low Brown Beige Womens Girls Ladies Female'), 
(8,	1,	1,	'Khaki Dunk High',		240,	'Khaki Dunk High',	'khaki dunk high.png',	'Khaki Dunk High Green Womens Girls Ladies Female'),
(9,	1,	1,	'Light Bone Dunk Low',	160,	'Light Bone Dunk Low',	'light bone dunk low.png',	'Light Bone Dunk Low Brown Beige Womens Girls Ladies Female'),
(10,	1,	1,	'Marina Blue Dunk Low',	190,	'Marina Blue Dunk Low',	 'marinaa blue dunk.png', 'Marina Blue Dunk Low Brown Beige Mens Boys Male'),
(11,	1,	1,	'Michigan Dunk Low',		255,	'Michigan Dunk Low',	'michigan dunk low.png',	'Michigan Dunk Low Green Womens Girls Ladies Female'),
(12,	1,	1,	'Nature Cream Dunk Low',	170,	'Nature Cream Dunk Low',	'nature dunk.jpg',	'Nature Cream Dunk Low Brown Beige Womens Girls Ladies Female'),
(13,	1,	1,	'Nature Red Dunk Low',	155,	'Nature Red Dunk Low',	'nature red dunk.jpg',	'Nature Red Dunk Low Womens Girls Ladies Female'),
(14,	1,	1,	'Panda Dunk Low',		230,	'Panda Dunk Low',	'panda dunk.png',	'Panda Dunk Low Black White Womens Girls Ladies Female Mens Boys Male Unisex'),
(15,	1,	1,	'Union Dunk Low',		300,	'Union Dunk Low',	'union dunk.jpg',	'Union Dunk Low Blue Hype Womens Girls Ladies Female Mens Boys Male Unisex'),
(16,	1,	1,	'Vast Grey Dunk Low',		200,	'Vast Grey Dunk Low',	'vast grey dunk low.jpg',	'Vast Grey Dunk Low Womens Girls Ladies Female Mens Boys Male Unisex'),
(17,	2,	2,	'Yeezy 350 Beluga',		300,	'Yeezy 350 Beluga',	'yeezy beluga.png',	'Yeezy 350 Beluga Orange Brown Womens Girls Ladies Female Mens Boys Male Unisex'),
(18,	2,	2,	'Yeezy 350 Bone',		340,	'Yeezy 350 Bone',	'yeezy bone.png',	'Yeezy 350 Bone White Womens Girls Ladies Female Mens Boys Male Unisex'),
(19,	2,	2,	'Yeezy 350 Bred',		320,	'Yeezy 350 Bred',	'yeezy bred.png',	'Yeezy 350 Bred Black Red Hype Womens Girls Ladies Female Mens Boys Male Unisex'),
(20,	2,  2,	'Yeezy 350 Carbon',		330,	'Yeezy 350 Carbon',	'yeezy carbon.png',	'Yeezy 350 Carbon Black  Womens Girls Ladies Female Mens Boys Male Unisex'),
(21,	2,	2,	'Yeezy 350 Dazzling Blue',	210,	'Yeezy 350 Dazzling Blue',	'yeezy dazling blue.jpg',	'Yeezy 350 Dazzling Blue Womens Girls Ladies Female Mens Boys Male Unisex'),
(22,	2,	2,	'Yeezy 350 MX Rock',		210,	'Yeezy 350 MX Rock',	'yeezy mx rock.png',	'Yeezy 350 MX Rock Black Brown Womens Girls Ladies Female Mens Boys Male Unisex'),
(23,	2,	2,	'Yeezy 350 Oreo',		230,	'Yeezy 350 Oreo',	'yeezy oreo.jpg',	'Yeezy 350 Oreo Black White Womens Girls Ladies Female Mens Boys Male Unisex'),
(24,	2,	2,	'Yeezy 350 Taupe',		320,	'Yeezy 350 Taupe',	'yeezy taupe.jpg',	'Yeezy 350 Taupe Brown Sand Womens Girls Ladies Female Mens Boys Male Unisex'),
(25,	2,	2,	'Yeezy 350 White',		400,	'Yeezy 350 White',	'yeezy white.jpg',	'Yeezy 350 White Womens Girls Ladies Female Mens Boys Male Unisex'),
(26,	3,	3,	'Jordan 1 Obsidian High',	500,	'Jordan 1 Obsidian High',	'obsidian high.jpg',	'Jordan 1 Obsidian High Blue White Mens Boys Male'), 
(27,	3,	3,	'Jordan 1 Court Purple High',	250,	'Jordan 1 Court Purple High',	'court purple high.png',	'Jordan 1 Court Purple High Womens Girls Ladies Female Mens Boys Male Unisex'),
(28,	3,	3,	'Jordan 1 Mocha High',	600,	'Jordan 1 Mocha High',	'mocha high.jpg',	'Jordan 1 Mocha High Brown Beige Womens Girls Ladies Female Mens Boys Male Unisex'),
(29,	3,	3,	'Jordan 1 Royal Toe High',	300,	'Jordan 1 Royal Toe High',	'royal toe high.jpg',	'Jordan 1 Royal Toe High Blue Mens Boys Male'),
(30,	3,	3,	'Jordan 1 Shadow High',	230,	'Jordan 1 Shadow High',	'shadow high.jpg',	'Jordan 1 Shadow High Grey Black Mens Boys Male'),
(31,	3,	3,	'Jordan 1 Uni Blue High',	290,	'Jordan 1 Uni Blue High',	'uni blue high.png',	'Jordan 1 Uni Blue High Womens Girls Ladies Female Mens Boys Male Unisex'),
(32,	3,	3,	'Jordan 1 Marina Blue High',	190,	'Jordan 1 Marina Blue High',	'marina blue high.jpg',	'Jordan 1 Marina Blue High Womens Girls Ladies Female Mens Boys Male Unisex'),
(33,	3,	3,	'Jordan 1 Patent Red High',	190,	'Jordan 1 Patent Red High',	'patent high.png',	'Jordan 1 Patent Red High Green Womens Girls Ladies Female'),
(34,	4,	3,	'Jordan 1 Coral Pink Mid',	40,	'Jordan 1 Coral Pink Mid',	'coral pink mid.png',	'Jordan 1 Coral Pink Mid Green Womens Girls Ladies Female'),
(35,	4,	3,	'Jordan 1 Gym Red Mid',	50,	'Jordan 1 Gym Red Mid',	'gym red mid.png',	'Jordan 1 Gym Red Mid Green Womens Girls Ladies Female'),
(36,	4,	3,	'Jordan 1 Shadow Red Mid',	70,	'Jordan 1 Shadow Red Mid',	'shadow red mid.jpg',	'Jordan 1 Shadow Red Black Mid Mens Boys Male'),
(37,	4,	3,	'Jordan 1 Linen Mid',	200,	'Jordan 1 Linen Mid',	'linen mid.png',	'Jordan 1 Linen Mid Brown Beige Womens Girls Ladies Female Mens Boys Male Unisex'),
(38,	4,	3,	'Jordan 1 Diamond Mid',	50,	'Jordan 1 Diamond Mid',	'diamond mid.jpg',	'Jordan 1 Diamond Mid White Black Womens Girls Ladies Female'),
(39,	4,	3,	'Jordan 1 Smoke Grey Mid',	70,	'Jordan 1 Smoke Grey Mid',	'smoke grey black mid.png', 'Jordan 1 Smoke Grey Mid Black White Mens Boys Male'), 
(40,	5,	3,	'Jordan 3 Cool Grey',	170,	'Jordan 3 Cool Grey',	'cool grey 3.jpg',	'Jordan 3 Cool Grey Mens Boys Male'),
(41,	5,	3,	'Jordan 3 Georgetown',	190,	'Jordan 3 Georgetown',	'georgetown 3.png',	'Jordan 3 Georgetown Green Womens Girls Ladies Female Mens Boys Male Unisex'),
(42,	5,	3,	'Jordan 3 Cardinal Red',	130,	'Jordan 3 Cardinal Red',	'cardinal red 3.jpg',	'Jordan 3 Cardinal Red White Womens Girls Ladies Female'),
(43,	5,	3,	'Jordan 3 Pine Green',	200,	'Jordan 3 Pine Green',	'pine green 3.png',	'Jordan 3 Pine Green White Mens Boys Male'),
(44,	5,	3,	'Jordan 3 Racer Blue',	170,	'Jordan 3 Racer Blue',	'racer blue 3.jpg',	'Jordan 3 Racer Blue White Mens Boys Male'),
(45,	6,	3,	'Jordan 4 Neon Grey',	300,	'Jordan 4 Neon Grey',	'neon 4.png',	'Jordan 4 Neon Grey Shiny Grey Womens Girls Ladies Female Mens Boys Male Unisex'),
(46,	6,	3,	'Jordan 4 Black Cat',	900,	'Jordan 4 Black Cat',	'black cat 4.jpg',	'Jordan 4 Black Cat Womens Girls Ladies Female Mens Boys Male Unisex'),
(47,	6,	3,	'Jordan 4 Fire Red',	400,	'Jordan 4 Fire Red',	'fire red 4.jpg',	'Jordan 4 Fire Red White Womens Girls Ladies Female Mens Boys Male Unisex'),
(48,	6,	3,	'Jordan 4 Oreo 4',	600,	'Jordan 4 Oreo 4',	'oreo 4.jpg',	'Jordan 4 Oreo 4 White Womens Girls Ladies Female Mens Boys Male Unisex'),
(49,	6,	3,	'Jordan 4 Uni Blue',	600,	'Jordan 4 Uni Blue',	'uni blue 4.jpg',	'Jordan 4 Uni Blue Womens Girls Ladies Female'),
(50,	6,	3,	'Jordan 4 Lightning',	400,	'Jordan 4 Lightning',	'lightning 4.png',	'Jordan 4 Lightning Yellow Womens Girls Ladies Female'),
(51,	6,	3,	'Jordan 4 Red Thunder',	230,	'Jordan 4 Red Thunder',	'red thunder 4.png',	'Jordan 4 Red Thunder Mens Boys Male');


-- --------------------------------------------------------

--
-- Table structure for table `received_payment`
--

CREATE TABLE `received_payment` (
  `id` int(100) NOT NULL,
  `uid` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `trx_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(900) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`) VALUES
(9, 'Yusuf', 'Yusuf', 'yusuf@yusuf.com', 'Yusuf123@', '07835048444', '22 Smith Dorrien RD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `received_payment`
--
ALTER TABLE `received_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `received_payment`
--
ALTER TABLE `received_payment`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
