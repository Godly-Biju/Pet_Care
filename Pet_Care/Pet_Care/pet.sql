-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2024 at 08:57 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pet`
--

-- --------------------------------------------------------

--
-- Table structure for table `addfeed`
--

CREATE TABLE `addfeed` (
  `id` int(11) NOT NULL,
  `Cat` varchar(30) NOT NULL,
  `Name` varchar(300) NOT NULL,
  `Kilo` varchar(300) NOT NULL,
  `Amount` varchar(400) NOT NULL,
  `Photo` varchar(500) NOT NULL,
  `Uname` varchar(30) NOT NULL,
  `c` varchar(220) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addfeed`
--

INSERT INTO `addfeed` (`id`, `Cat`, `Name`, `Kilo`, `Amount`, `Photo`, `Uname`, `c`) VALUES
(1, 'Cat', 'Kit Cat Dry Cat Food Classic 32 for Adult ', '1.2 kg', '740', 'i82.jpg', 'Abinph@gmail.com', 'feed'),
(2, 'Cat', 'BILLI Cat food for Adult - Real Tuna', '1.5 kg', '440', 'i83.jpg', 'Abinph@gmail.com', 'feed'),
(3, 'Cat', 'Kit Cat Petite Pouch Complete', '70 g of 24 piece', '2440', 'i85.jpg', 'Abinph@gmail.com', 'feed'),
(4, 'Cat', 'Kit Cat Wet Food', '70g', '399', 'i86.png', 'Abinph@gmail.com', 'feed');

-- --------------------------------------------------------

--
-- Table structure for table `addpets`
--

CREATE TABLE `addpets` (
  `id` int(11) NOT NULL,
  `Cat` varchar(30) NOT NULL,
  `Breed` varchar(30) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Age` varchar(40) NOT NULL,
  `Photo` varchar(400) NOT NULL,
  `Amount` varchar(200) NOT NULL,
  `Uname` varchar(30) NOT NULL,
  `c` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addpets`
--

INSERT INTO `addpets` (`id`, `Cat`, `Breed`, `Gender`, `Age`, `Photo`, `Amount`, `Uname`, `c`) VALUES
(1, 'Dog', 'German Sherperd', 'male', '6 months', 'i63.jpg', '7999', 'Abinph@gmail.com', 'pet'),
(2, 'Dog', 'German Sherperd', 'male', '8 months', 'i65.jpg', '6999', 'Abinph@gmail.com', 'pet'),
(3, 'Dog', 'German Sherperd', 'female', '5 months', 'i64.jpg', '7999', 'Abinph@gmail.com', 'pet'),
(4, 'Cat', 'Siamese', 'female', '2 months', 'i72.jpg', '8999', 'Abinph@gmail.com', 'pet'),
(5, 'Cat', 'Siamese', 'male', '4 months', 'i71.jpg', '8999', 'Abinph@gmail.com', 'pet'),
(6, 'Cat', 'Fulffy', 'male', '4 months', 'i70.jpg', '10999', 'Abinph@gmail.com', 'pet'),
(7, 'Cat', 'Fulffy', 'female', '3 months', 'i69.png', '10999', 'Abinph@gmail.com', 'pet'),
(8, 'Dog', 'Bull Dog', 'female', '3 months', 'i68.jpg', '16999', 'Abinph@gmail.com', 'pet'),
(9, 'Dog', 'Bull Dog', 'female', '3 months', 'i66.jpg', '15999', 'Abinph@gmail.com', 'pet'),
(10, 'Dog', 'Bull Dog', 'female', '5 months', 'i67.jpg', '14999', 'Abinph@gmail.com', 'pet'),
(11, 'Rat', 'White Rat', 'male', '2 months', 'i73.jpg', '16999', 'Abinph@gmail.com', 'pet');

-- --------------------------------------------------------

--
-- Table structure for table `addpro`
--

CREATE TABLE `addpro` (
  `id` int(11) NOT NULL,
  `Name` varchar(300) NOT NULL,
  `Amount` int(20) NOT NULL,
  `Photo` varchar(400) NOT NULL,
  `Uname` varchar(30) NOT NULL,
  `c` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addpro`
--

INSERT INTO `addpro` (`id`, `Name`, `Amount`, `Photo`, `Uname`, `c`) VALUES
(1, 'Putku Creations Dog Toys ', 339, 'i75.jpg', 'Abinph@gmail.com', 'toy'),
(2, 'Putku Creations Dog Rope Toys', 299, 'i76.jpg', 'Abinph@gmail.com', 'toy'),
(3, 'Goofy Tails', 499, 'i77.jpg', 'Abinph@gmail.com', 'toy'),
(4, 'Rubber Blue Pet Toy Bone', 299, 'i78.jpg', 'Abinph@gmail.com', 'toy'),
(5, 'Pet Toy Box Dog Toys Fabric Straps ', 399, 'i79.jpg', 'Abinph@gmail.com', 'toy'),
(6, 'Dental Rope Toy', 399, 'i80.jpg', 'Abinph@gmail.com', 'toy');

-- --------------------------------------------------------

--
-- Table structure for table `add_cat`
--

CREATE TABLE `add_cat` (
  `id` int(11) NOT NULL,
  `Cat` varchar(100) NOT NULL,
  `Photo` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_cat`
--

INSERT INTO `add_cat` (`id`, `Cat`, `Photo`) VALUES
(1, 'Dog', 'about-1.jpg'),
(2, 'Cat', 'gallery-1.jpg'),
(3, 'White Rat', 'i7.jpg'),
(4, 'Horse', 'i6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `add_pet`
--

CREATE TABLE `add_pet` (
  `id` int(11) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Breed` varchar(30) NOT NULL,
  `Age` int(20) NOT NULL,
  `Gender` varchar(40) NOT NULL,
  `Photo` varchar(300) NOT NULL,
  `U_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_pet`
--

INSERT INTO `add_pet` (`id`, `Type`, `Breed`, `Age`, `Gender`, `Photo`, `U_name`) VALUES
(2, 'Cat', 'Fulfy', 2, 'male', 'i9.jpg', 'abinraj@gmail.com'),
(3, 'Cat', 'Britannica', 3, 'male', 'i10.jpg', 'abinraj@gmail.com'),
(4, 'Cat', 'Purina', 1, 'female', 'i11.jpg', 'abinraj@gmail.com'),
(5, 'Cat', 'Felina', 2, 'female', 'i12.jpg', 'abinraj@gmail.com'),
(6, 'Dog', 'Canna', 3, 'male', 'i13.jpg', 'abinraj@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bidding`
--

CREATE TABLE `bidding` (
  `id` int(11) NOT NULL,
  `category` varchar(25) NOT NULL,
  `breed` varchar(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `age` varchar(25) NOT NULL,
  `disc` varchar(200) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `doc` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `uid` varchar(30) NOT NULL,
  `approve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bidding`
--

INSERT INTO `bidding` (`id`, `category`, `breed`, `gender`, `age`, `disc`, `photo`, `doc`, `amount`, `uid`, `approve`) VALUES
(1, 'Dog', 'German Sherperd', 'female', '3months', 'large brown-and-black dogs with a streamlined build that makes them both strong and agile. German shepherds are protective, loyal companions.', 'dog1.webp', 'bulldog.docx', 27000, 'abinraj@gmail.com', 1),
(2, 'Cat', 'fluffy', 'female', '6 months', 'beautiful to look at, but they are soft, plush, and extra fun to snuggle and stroke.', 'cat.jpg', 'bulldog.docx', 20000, 'abinraj@gmail.com', 1),
(3, 'Dog', 'Bull Dog', 'male', '2 months', 'The Bulldog is a British breed of dog of mastiff type. It may also be known as the English Bulldog or British Bulldog. medium-sized dog', 'dog.webp', 'bulldog.docx', 43000, 'abinraj@gmail.com', 0),
(4, 'Cat', 'Siamese', 'female', '2 month', 'friendly and playful. beautiful blue eyes contribute to the breeds stunning appearance. Since looks arent everything, its important to note that the Siamese cat is highly intelligent and more than a l', 'cat1.jpg', 'bulldog.docx', 13000, 'reganraj@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bidding1`
--

CREATE TABLE `bidding1` (
  `id` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `u_id` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bidding1`
--

INSERT INTO `bidding1` (`id`, `bid`, `amount`, `u_id`) VALUES
(1, 1, '27000', 'reganraj@gmail.com'),
(2, 1, '29000', 'reganraj@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `book_vac`
--

CREATE TABLE `book_vac` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Contact` varchar(10) NOT NULL,
  `Date` date NOT NULL,
  `Time` varchar(100) NOT NULL,
  `Uid` varchar(200) NOT NULL,
  `Pid` varchar(200) NOT NULL,
  `Approve` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_vac`
--

INSERT INTO `book_vac` (`id`, `Name`, `Contact`, `Date`, `Time`, `Uid`, `Pid`, `Approve`) VALUES
(2, 'Ebin Joe G  ', '9876509877', '2024-03-17', '10:52', 'abinraj@gmail.com', 'apc@gmail.com', '1'),
(3, 'Sujith G ', '9765432187', '2024-03-28', '12:00', 'abinraj@gmail.com', 'apc@gmail.com', '0'),
(4, 'Gautham G', '7654309876', '2024-03-22', '17:10', 'abinraj@gmail.com', 'riv@gmail.com', '0');

-- --------------------------------------------------------

--
-- Table structure for table `breeding`
--

CREATE TABLE `breeding` (
  `id` int(11) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Breed` varchar(30) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Photo` varchar(300) NOT NULL,
  `Uname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `breeding`
--

INSERT INTO `breeding` (`id`, `Type`, `Breed`, `Description`, `Photo`, `Uname`) VALUES
(1, 'Cat', 'Fulffy', 'A domestic long-haired cat is a cat of mixed ancestry – thus not belonging to any particular recognized cat breed.', 'i26.jpg', 'apc@gmail.com'),
(2, 'Cat', 'Siamese', 'The Siamese cat is one of the first distinctly recognised breeds of Asian cat. Derived from the Wichianmat landrace, one of several varieties of cats native', 'i27.jpg', 'apc@gmail.com'),
(3, 'Dog', 'German Sherperd', 'Generally considered dogkind\'s finest all-purpose worker, the German Shepherd Dog is a large, agile, muscular dog of noble character and high intelligence.', 'i28.jpg', 'apc@gmail.com'),
(4, 'Dog', 'Bull Dog', 'The Bulldog is a British breed of dog of mastiff type. It may also be known as the English Bulldog or British Bulldog. It is a medium-sized,', 'i29.jpg', 'apc@gmail.com'),
(5, 'White Rat', 'Rodent Rat', 'Rodents are mammals of the order Rodentia, which are characterized by a single pair of continuously growing incisors in each of the upper and lower jaws. About 40% of all mammal species are rodents.', 'i50.jpg', 'riv@gmail.com'),
(6, 'White Rat', 'Guinea pig', 'the guinea pig has enjoyed widespread popularity as a pet since its introduction to Europe and North America by European traders in the 16th century.', 'i51.jpg', 'riv@gmail.com'),
(7, 'Horse', 'Appaloosa', 'The Nez Perce lost most of their horses after the Nez Perce War in 1877, and the breed fell into decline for several decades. A small number of dedicated breeders preserved the Appaloosa as a distinct breed until the Appaloosa Horse Club (ApHC) was formed as the breed registry in 1938. ', 'i52.jpg', 'riv@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `Reply` varchar(500) NOT NULL,
  `Uvet` varchar(30) NOT NULL,
  `Photo` varchar(400) NOT NULL,
  `Uimg` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `Reply`, `Uvet`, `Photo`, `Uimg`) VALUES
(2, 'Use zzzz cream.', 'Dr.Vetri ', 'i2.jpg', '1'),
(3, 'Use AAAAA cream', 'Dr.Sathiyan', 'i4.jpg', '1'),
(4, 'Use CCC injection to become active.', 'Dr.Vetri ', 'i2.jpg', '3'),
(5, 'Use EEE injection to become active.', 'Dr.Sathiyan', 'i4.jpg', '3'),
(6, 'Take it serious and go to dentalist', 'Dr.Sathiyan', 'i4.jpg', '4');

-- --------------------------------------------------------

--
-- Table structure for table `cus`
--

CREATE TABLE `cus` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Contact` varchar(10) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `Quantity` int(30) NOT NULL,
  `Photo` varchar(300) NOT NULL,
  `Uname` varchar(30) NOT NULL,
  `c` varchar(30) NOT NULL,
  `Title` varchar(300) NOT NULL,
  `sid` int(11) NOT NULL,
  `oem` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cus`
--

INSERT INTO `cus` (`id`, `Name`, `Contact`, `Address`, `Quantity`, `Photo`, `Uname`, `c`, `Title`, `sid`, `oem`) VALUES
(12, 'Abin raj C', '9876543098', 'Pathan pulli vilai, karungal', 2, 'i75.jpg', 'abinraj@gmail.com', 'toy', 'Putku Creations Dog Toys ', 0, ''),
(13, 'Abin raj C', '9876543098', 'Pathan pulli vilai, karungal', 1, 'i79.jpg', 'abinraj@gmail.com', 'toy', 'Pet Toy Box Dog Toys Fabric Straps ', 0, ''),
(15, 'Abin raj C', '9876543098', 'Pathan pulli vilai, karungal', 1, 'i86.png', 'abinraj@gmail.com', 'feed', 'Kit Cat Wet Food', 0, ''),
(16, 'Abin raj C', '9876543098', 'Pathan pulli vilai, karungal', 1, 'i65.jpg', 'abinraj@gmail.com', 'pet', 'German Sherperd', 0, ''),
(17, 'Abin raj C', '9876543098', 'Pathan pulli vilai, karungal', 2, 'i71.jpg', 'abinraj@gmail.com', 'pet', 'Siamese', 0, ''),
(22, 'abin', '9876540987', 'Pathan pulli vilai, karungal', 1, 'cat3.jpg', 'abinraj@gmail.com', 'upet', 'Siamese', 3, 'reganraj@gmail.com'),
(23, 'Regan', '9876540987', 'regan house vembayam p.o tvm', 1, 'cat2.jpg', 'reganraj@gmail.com', 'upet', 'fluffy', 2, 'abinraj@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `Title` varchar(300) NOT NULL,
  `Photo` varchar(30) NOT NULL,
  `P_id` int(10) NOT NULL,
  `Uname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `Title`, `Photo`, `P_id`, `Uname`) VALUES
(1, 'Cute Blue Eye', 'i14.jpg', 2, 'abinraj@gmail.com'),
(2, 'Taking Rest', 'i16.jpg', 2, 'abinraj@gmail.com'),
(3, 'BOB BOB', 'i17.jpg', 2, 'abinraj@gmail.com'),
(4, 'White Putti', 'i18.jpg', 2, 'abinraj@gmail.com'),
(5, 'Cute Little Tiger', 'i19.jpg', 2, 'abinraj@gmail.com'),
(6, 'So Sweet', 'i20.jpg', 2, 'abinraj@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `u_type` varchar(50) NOT NULL,
  `u_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `Name`, `Password`, `u_type`, `u_status`) VALUES
(1, 'admin@gmail.com', '321', 'admin', '1'),
(3, 'abinraj@gmail.com', '4321', 'user', '1'),
(4, 'epc@gmail.com', '4321', 'petcare', '0'),
(5, 'vetri@gmail.com', '4321', 'vet', '1'),
(6, 'apc@gmail.com', '4321', 'petcare', '1'),
(7, 'sathiyan@gmail.com', '4321', 'vet', '1'),
(8, 'sadhu@gmail.com', '4321', 'vet', '1'),
(9, 'sujith@gmail.com', '4321', 'vet', '1'),
(10, 'rathesh@gmail.com', '4321', 'vet', '0'),
(11, 'ajay@gmail.com', '4321', 'vet', '0'),
(12, 'alpc@gmail.com', '4321', 'petcare', '0'),
(13, 'gwpt@gmail.com', '4321', 'petcare', '0'),
(14, 'Twpc@gmail.com', '4321', 'petcare', '1'),
(15, 'rgpc@gmail.com', '4321', 'petcare', '1'),
(16, 'riv@gmail.com', '4321', 'petcare', '1'),
(17, 'reganraj@gmail.com', '4321', 'user', '0'),
(18, 'subin969@gmail.com', '4321', 'trainer', '1'),
(19, 'shallo@gmail.com', '4321', 'trainer', '1'),
(20, 'albinl@gmail.com', '4321', 'shop', '0'),
(21, 'Abinph@gmail.com', '4321', 'shop', '1');

-- --------------------------------------------------------

--
-- Table structure for table `petcare`
--

CREATE TABLE `petcare` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `Address` varchar(300) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `u_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petcare`
--

INSERT INTO `petcare` (`id`, `Name`, `Email`, `Password`, `Contact`, `Address`, `Photo`, `u_status`) VALUES
(1, 'Elavating Pet Care', 'epc@gmail.com', '4321', '9876509876', 'Thampanoor,Trivandrum', 'i1.jpg', '0'),
(2, 'Alawddin Pet Care', 'apc@gmail.com', '4321', '9876509876', 'Palkadu,Kochi', 'i3.jpg', '1'),
(3, 'Alwin Pet Care', 'alpc@gmail.com', '4321', '9876509876', 'Pathan pulli vilai, Kochi', 'i21.jpg', '0'),
(4, 'Gowthami Pet Care', 'gwpt@gmail.com', '4321', '9876543987', 'Thampanoor,Trivandrum', 'i22.jpg', '0'),
(5, 'Twins Pet Care', 'Twpc@gmail.com', '4321', '9876544545', 'Kulithurai west,Kulithurai', 'i23.jpg', '1'),
(6, 'Raguvaran Pet Care', 'rgpc@gmail.com', '4321', '9876543986', 'munchirai,Puthukadai', 'i24.jpg', '1'),
(7, 'RIV Pet Care', 'riv@gmail.com', '4321', '9876543219', 'Pathan pulli vilai, kochi', 'i25.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `petcare_req`
--

CREATE TABLE `petcare_req` (
  `id` int(11) NOT NULL,
  `Cat` varchar(30) NOT NULL,
  `Breed` varchar(30) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `Age` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Contact` varchar(10) NOT NULL,
  `Fro` date NOT NULL,
  `T` date NOT NULL,
  `PT_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petcare_req`
--

INSERT INTO `petcare_req` (`id`, `Cat`, `Breed`, `Gender`, `Age`, `Name`, `Contact`, `Fro`, `T`, `PT_id`) VALUES
(1, 'Dog', 'German Sherperd', 'male', '2', 'Abin raj C', '9876598765', '2024-03-20', '2024-03-30', 'apc@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `qn`
--

CREATE TABLE `qn` (
  `id` int(11) NOT NULL,
  `Qns` varchar(200) NOT NULL,
  `Photo` varchar(300) NOT NULL,
  `Uname` varchar(30) NOT NULL,
  `Uvet` varchar(30) NOT NULL,
  `Choose` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qn`
--

INSERT INTO `qn` (`id`, `Qns`, `Photo`, `Uname`, `Uvet`, `Choose`) VALUES
(1, 'What I want to do ? Car accident', 'i54.jpg', 'abinraj@gmail.com', 'vetri@gmail.com', 'doctor'),
(2, 'One side eye have some promblem ,What I want to do ?', 'i55.jpg', 'abinraj@gmail.com', 'vetri@gmail.com', 'doctor'),
(3, 'The cat is very tired, What I want to do for it ?', 'i88.jpg', 'abinraj@gmail.com', 'common', 'common'),
(4, 'Please Say about this ?', 'i87.jpg', 'abinraj@gmail.com', 'common', 'common');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Contact` varchar(50) NOT NULL,
  `Photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `Name`, `Email`, `Password`, `Contact`, `Photo`) VALUES
(2, 'Abin raj C', 'abinraj@gmail.com', '4321', '9876543210', 'abi.jpg'),
(3, 'Regan raj', 'reganraj@gmail.com', '4321', '9876540987', 'regan.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `id` int(11) NOT NULL,
  `category` varchar(25) NOT NULL,
  `breed` varchar(30) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `age` varchar(25) NOT NULL,
  `disc` varchar(500) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `doc` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `uid` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale`
--

INSERT INTO `sale` (`id`, `category`, `breed`, `gender`, `age`, `disc`, `photo`, `doc`, `amount`, `uid`) VALUES
(1, 'Dog', 'Bull Dog', 'male', '1 month', 'The Bulldog is a British breed of dog of mastiff type. It may also be known as the English Bulldog or British Bulldog. medium-sized dog', 'dog.webp', 'bulldog.docx', 40000, 'abinraj@gmail.com'),
(2, 'Cat', 'fluffy', 'female', '2 month', 'beautiful to look at, but they are soft, plush, and extra fun to snuggle and stroke.', 'cat2.jpg', 'bulldog.docx', 23000, 'abinraj@gmail.com'),
(3, 'Cat', 'Siamese', 'female', '1 monh', 'friendly and playful. beautiful blue eyes contribute to the breeds stunning appearance. Since looks arent everything, its important to note that the Siamese cat is highly intelligent and more than a little curious.', 'cat3.jpg', 'bulldog.docx', 11000, 'reganraj@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Contact` varchar(10) NOT NULL,
  `Photo` varchar(500) NOT NULL,
  `u_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `Name`, `Email`, `Password`, `Contact`, `Photo`, `u_status`) VALUES
(1, 'Albin PET SHOP', 'albinl@gmail.com', '4321', '987609876', 'pic11.jpg', '0'),
(2, 'ABIN PET SHOP', 'Abinph@gmail.com', '4321', '987654454', 'pic9.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `spec`
--

CREATE TABLE `spec` (
  `id` int(11) NOT NULL,
  `Cat` varchar(30) NOT NULL,
  `Photo` varchar(30) NOT NULL,
  `Uname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spec`
--

INSERT INTO `spec` (`id`, `Cat`, `Photo`, `Uname`) VALUES
(12, 'Dog', 'about-1.jpg', 'shallo@gmail.com'),
(13, 'Cat', 'gallery-1.jpg', 'shallo@gmail.com'),
(14, 'Dog', 'about-1.jpg', 'subin969@gmail.com'),
(15, 'Cat', 'gallery-1.jpg', 'subin969@gmail.com'),
(16, 'White Rat', 'i7.jpg', 'shallo@gmail.com'),
(17, 'Horse', 'i6.jpg', 'shallo@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tips`
--

CREATE TABLE `tips` (
  `id` int(11) NOT NULL,
  `Cat` varchar(30) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Link` text NOT NULL,
  `Photo` varchar(500) NOT NULL,
  `Uname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tips`
--

INSERT INTO `tips` (`id`, `Cat`, `Title`, `Description`, `Link`, `Photo`, `Uname`) VALUES
(2, 'Dog', 'Dog Training', 'Dog training is the process of teaching dogs specific behaviors and commands, as well as helping them learn how to behave appropriately in various situations. It is important for building a strong bond between dogs and their owners, as well as ensuring the safety and well-being of both the dog and those around them. Here are some key aspects of dog training:  Basic Obedience: This includes commands such as sit, stay, come, down, and heel. Teaching these commands helps dogs understand what is expected of them and how to respond to basic cues.  Positive Reinforcement: This training method involves rewarding desired behaviors with treats, praise, or other rewards. Positive reinforcement is effective in encouraging dogs to repeat behaviors that earn them rewards.  Consistency: Consistency is crucial in dog training. Dogs learn best when they receive consistent cues and consequences for their actions. Inconsistency can confuse dogs and make it harder for them to understand what is expected of them.  Patience and P', '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/jFMA5ggFsXU\" title=\"Dog Training 101: How to Train ANY DOG the Basics\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'i56.jpg', 'shallo@gmail.com'),
(3, 'Cat', 'Cat Training', 'While cats may not be as trainable as dogs in the traditional sense, they can still learn certain behaviors and commands through positive reinforcement techniques. Here are some tips for training cats:  1. **Use Positive Reinforcement**: Cats respond well to rewards such as treats, praise, or playtime. When your cat displays a desired behavior, immediately reward them to reinforce that behavior.  2. **Keep Training Sessions Short and Sweet**: Cats have shorter attention spans compared to dogs, so keep training sessions brief, usually around 5-10 minutes at a time. Multiple short sessions throughout the day can be more effective than one long session.  3. **Choose the Right Rewards**: Find out what motivates your cat the most. Some cats are food motivated, while others may prefer playtime with a favorite toy or affectionate attention.  4. **Be Patient and Consistent**: Like any training, consistency is key. Use the same cues and rewards consistently to help your cat understand what you expect from them.  5. **', '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/Uu-hRtkaVLc\" title=\"30 Tricks To Teach Your Cat\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'i57.jpg', 'shallo@gmail.com'),
(4, 'Horse', 'Horse Training', 'Horse training is the process of teaching horses to understand and respond to cues and commands from their handlers. Whether for riding, driving, or other activities, effective training is essential for both the safety and enjoyment of both the horse and the human. Here are some key principles and techniques commonly used in horse training:  Trust and Respect: Building a strong bond based on trust and respect is crucial in horse training. Horses are naturally social animals and respond well to handlers who treat them kindly and fairly.  Groundwork: Groundwork exercises, such as leading, lunging, and desensitization, help establish communication and trust between the horse and handler from the ground before moving on to ridden work.  Consistency: Consistency in cues and expectations is essential in horse training. Horses learn through repetition and consistency, so it\'s important for handlers to be clear and consistent in their signals and expectations.  Positive Reinforcement: Using rewards such as treats, praise, or release of pressure as a reward for desired behavior helps reinforce the behavior and encourages the horse to repeat it.  Desensitization: Exposing horses to various stimuli and desensitizing them to potential sources of fear or spooking can help build their confidence and reduce the likelihood of reactive behavior.  Ridden Training: When training horses for riding, it\'s important to start with basic cues such as walk, trot, and canter, and gradually introduce more advanced maneuvers and disciplines as the horse progresses.  Natural Horsemanship: Many trainers incorporate principles of natural horsemanship, which emphasize understanding horse behavior and communication patterns, into their training methods.  Patience and Timing: Patience and good timing are essential in horse training. Horses may not always understand what is expected of them immediately, so it\'s important for handlers to be patient and give the horse time to learn.  Safety: Safety should always be a top priority in horse training. Handlers should use appropriate safety equipment, such as helmets and protective gear, and be mindful of their own body language and positioning when working with horses.  Professional Guidance: For those new to horse training or dealing with specific behavior issues, seeking guidance from a professional trainer or instructor can be invaluable. They can provide personalized advice and guidance based on their experience and expertise.', '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/mlrdWJX-vzE\" title=\"We Try to Catch a Wild Mustang! (Again)\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'i58.jpg', 'shallo@gmail.com'),
(5, 'White Rat', 'Rat Training', 'Rat training, while less common than training dogs or horses, is entirely possible and can be both fun and rewarding. Rats are intelligent and social animals that can learn a variety of behaviors through positive reinforcement techniques. Here are some tips for training rats:  1. **Start with Basic Behaviors**: Begin by teaching your rats simple behaviors like coming when called, climbing onto your hand, or touching a target stick. These basic behaviors serve as building blocks for more complex tricks.  2. **Use Positive Reinforcement**: Reward your rats with treats, such as small pieces of fruit or vegetables, whenever they perform the desired behavior. Rats quickly learn to associate the behavior with the reward and are motivated to repeat it.  3. **Clicker Training**: Clicker training can be highly effective for rats. Using a clicker as a marker signal helps to pinpoint the exact moment the rat performs the desired behavior, making the training process clearer and more efficient.  4. **Keep Training Sessio', '<iframe width=\"853\" height=\"480\" src=\"https://www.youtube.com/embed/MRh4weM19qc\" title=\"10 Tricks To Train Your Rat/Mouse First - Mini Tutorials\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'i59.jpg', 'shallo@gmail.com'),
(7, 'Dog', 'Dog Training', 'Dog training is the process of teaching dogs specific behaviors and commands, as well as helping them learn how to behave appropriately in various situations. It is important for building a strong bond between dogs and their owners, as well as ensuring the safety and well-being of both the dog and those around them. Here are some key aspects of dog training:  Basic Obedience: This includes commands such as sit, stay, come, down, and heel. Teaching these commands helps dogs understand what is expected of them and how to respond to basic cues.  Positive Reinforcement: This training method involves rewarding desired behaviors with treats, praise, or other rewards. Positive reinforcement is effective in encouraging dogs to repeat behaviors that earn them rewards.  Consistency: Consistency is crucial in dog training. Dogs learn best when they receive consistent cues and consequences for their actions. Inconsistency can confuse dogs and make it harder for them to understand what is expected of them.  Patience and P', '<iframe width=\"956\" height=\"538\" src=\"https://www.youtube.com/embed/xy8YSKCeaZg\" title=\"10 Signs Your Shih Tzu Considers You Its Mother\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'i60.jpg', 'subin969@gmail.com'),
(8, 'Cat', 'Cat Training', 'While cats may not be as trainable as dogs in the traditional sense, they can still learn certain behaviors and commands through positive reinforcement techniques. Here are some tips for training cats:  1. **Use Positive Reinforcement**: Cats respond well to rewards such as treats, praise, or playtime. When your cat displays a desired behavior, immediately reward them to reinforce that behavior.  2. **Keep Training Sessions Short and Sweet**: Cats have shorter attention spans compared to dogs, so keep training sessions brief, usually around 5-10 minutes at a time. Multiple short sessions throughout the day can be more effective than one long session.  3. **Choose the Right Rewards**: Find out what motivates your cat the most. Some cats are food motivated, while others may prefer playtime with a favorite toy or affectionate attention.  4. **Be Patient and Consistent**: Like any training, consistency is key. Use the same cues and rewards consistently to help your cat understand what you expect from them.  5. **', '<iframe width=\"956\" height=\"538\" src=\"https://www.youtube.com/embed/qOoCIlYxLb4\" title=\"Labrador Puppy Learning and Performing Training Commands | Dog Showing All Training Skills\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', 'i61.jpg', 'subin969@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Contact` varchar(10) NOT NULL,
  `Exp` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(8) NOT NULL,
  `Photo` varchar(300) NOT NULL,
  `u_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`id`, `Name`, `Contact`, `Exp`, `Email`, `Password`, `Photo`, `u_status`) VALUES
(1, 'Subin S', '987654332', '2 years', 'subin969@gmail.com', '4321', 'pic8.jpg', '1'),
(2, 'Shallo R S', '876543086', '5 years', 'shallo@gmail.com', '4321', 'pic10.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Contact` varchar(30) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Breed` varchar(30) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `Age` varchar(30) NOT NULL,
  `Photo` varchar(30) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Uname` varchar(30) NOT NULL,
  `Rpetcare` varchar(30) NOT NULL,
  `t_p` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `Name`, `Contact`, `Type`, `Breed`, `Gender`, `Age`, `Photo`, `Description`, `Uname`, `Rpetcare`, `t_p`) VALUES
(1, 'Abin raj C', '9876543210', 'Cat', 'Siamese', 'female', '2', 'i15.jpg', 'Cross at Fulffy', 'abinraj@gmail.com', 'apc@gmail.com', 'Fulffy'),
(2, 'Ajin Raj C', '23232322323', 'Dog', 'Bull Dog', 'female', '1', 'i30.jpg', 'Cross to bull dog', 'abinraj@gmail.com', 'apc@gmail.com', 'German Sherperd'),
(3, 'Remon raj', '9876509876', 'Cat', 'Fulffy', 'female', '1', 'i33.jpg', 'Cross at Siamese', 'abinraj@gmail.com', 'apc@gmail.com', 'Siamese'),
(4, 'Sujith S G', '9876509876', 'Dog', 'German Sherperd', 'female', '2', 'i34.jpg', 'Cross at Bull Dog', 'abinraj@gmail.com', 'apc@gmail.com', 'Bull dog'),
(5, 'Abi C', '9876987634', 'White Rat', 'Rodent Rat', 'female', '1', 'i53.jpg', 'Cross to Rodent', 'reganraj@gmail.com', 'riv@gmail.com', 'Guinea pig');

-- --------------------------------------------------------

--
-- Table structure for table `vac`
--

CREATE TABLE `vac` (
  `id` int(11) NOT NULL,
  `Type` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Age` varchar(30) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Uname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vac`
--

INSERT INTO `vac` (`id`, `Type`, `Name`, `Age`, `Description`, `Uname`) VALUES
(1, 'Dog', 'Rabies', '1 ', ' Rabies is a fatal viral disease that attacks the nervous system and that is transmissible to humans', 'apc@gmail.com'),
(2, 'Dog', 'Distemper', '2', 'Distemper is a viral disease that is often fatal, affecting the respiratory and gastrointestinal tracts and often the nervous system.', 'apc@gmail.com'),
(3, 'Dog', 'Hepatitis', '1', ' A vaccination against adenovirus type 2 protects against both adenovirus types 1 and 2. Adenovirus type 1 causes infectious canine hepatitis, a viral disease that affects the liver and other organ systems, causing serious illness which is sometimes fatal. Adenovirus type 2 causes respiratory illnes', 'apc@gmail.com'),
(4, 'Cat', 'Feline Panleukopenia', '1', 'Feline Panleukopenia also known as feline parvovirus, is a highly infectious disease with a high mortality rate in kittens.  While the disease usually starts with decreased energy and low appetite, it progresses to vomiting and diarrhea. The virus also kills off white blood cells, leaving the young ', 'apc@gmail.com'),
(5, 'Horse', 'Tetanus', '4', 'Tetanus is an infection caused by bacteria called Clostridium tetani. When these bacteria enter the body, they produce a toxin that causes painful muscle contractions. Another name for tetanus is lockjaw. It often causes a person neck and jaw muscles to lock, making it hard to open the mouth or swal', 'riv@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `vet`
--

CREATE TABLE `vet` (
  `id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(8) NOT NULL,
  `Contact` varchar(10) NOT NULL,
  `Spec` varchar(30) NOT NULL,
  `Photo` varchar(300) NOT NULL,
  `u_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vet`
--

INSERT INTO `vet` (`id`, `Name`, `Email`, `Password`, `Contact`, `Spec`, `Photo`, `u_status`) VALUES
(1, 'Dr.Vetri ', 'vetri@gmail.com', '4321', '9876509876', 'Dog Specalist', 'i2.jpg', '1'),
(2, 'Dr.Sathiyan', 'sathiyan@gmail.com', '4321', '9876509876', 'Dog Specalist', 'i4.jpg', '1'),
(3, 'Dr.Sadhu', 'sadhu@gmail.com', '4321', '9876543209', 'Cat Specalist', 'staff-1.jpg', '1'),
(4, 'Dr.Sujith', 'sujith@gmail.com', '4321', '6543287654', 'Cat Specalist', 'staff-2.jpg', '1'),
(5, 'Dr.Ratheesh', 'rathesh@gmail.com', '4321', '9876509887', 'Animal Surgery', 'staff-4.jpg', '0'),
(6, 'Dr.Ajay Sharook', 'ajay@gmail.com', '4321', '9876509876', 'Health Coach', 'staff-8.jpg', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addfeed`
--
ALTER TABLE `addfeed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addpets`
--
ALTER TABLE `addpets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addpro`
--
ALTER TABLE `addpro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_cat`
--
ALTER TABLE `add_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_pet`
--
ALTER TABLE `add_pet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bidding`
--
ALTER TABLE `bidding`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bidding1`
--
ALTER TABLE `bidding1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_vac`
--
ALTER TABLE `book_vac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `breeding`
--
ALTER TABLE `breeding`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cus`
--
ALTER TABLE `cus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petcare`
--
ALTER TABLE `petcare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `petcare_req`
--
ALTER TABLE `petcare_req`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qn`
--
ALTER TABLE `qn`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spec`
--
ALTER TABLE `spec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vac`
--
ALTER TABLE `vac`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vet`
--
ALTER TABLE `vet`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addfeed`
--
ALTER TABLE `addfeed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `addpets`
--
ALTER TABLE `addpets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `addpro`
--
ALTER TABLE `addpro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `add_cat`
--
ALTER TABLE `add_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `add_pet`
--
ALTER TABLE `add_pet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bidding`
--
ALTER TABLE `bidding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bidding1`
--
ALTER TABLE `bidding1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_vac`
--
ALTER TABLE `book_vac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `breeding`
--
ALTER TABLE `breeding`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cus`
--
ALTER TABLE `cus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `petcare`
--
ALTER TABLE `petcare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `petcare_req`
--
ALTER TABLE `petcare_req`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `qn`
--
ALTER TABLE `qn`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `spec`
--
ALTER TABLE `spec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tips`
--
ALTER TABLE `tips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vac`
--
ALTER TABLE `vac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vet`
--
ALTER TABLE `vet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
