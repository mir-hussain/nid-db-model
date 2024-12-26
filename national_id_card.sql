-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 26, 2024 at 06:48 AM
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
-- Database: `national_id_card`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `street_address` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL,
  `thana` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `zip_code` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `person_id`, `street_address`, `city`, `thana`, `district`, `zip_code`) VALUES
(1, 1, '123 Green Lane', 'Dhaka', 'Mohammadpur', 'Dhaka', '1207'),
(2, 2, '45 Rose Avenue', 'Chattogram', 'Pahartali', 'Chattogram', '4211'),
(3, 3, '78 Lakeside Road', 'Khulna', 'Shib Bari', 'Khulna', '9000'),
(4, 4, '56 Old Town', 'Sylhet', 'Bandar Bazar', 'Sylhet', '3100'),
(5, 5, '99 Gulshan Circle', 'Dhaka', 'Gulshan', 'Dhaka', '1212'),
(6, 6, '12 Amber Road', 'Rajshahi', 'Shah Makhdum', 'Rajshahi', '6200'),
(7, 7, '88 New Town', 'Barishal', 'Kawnia', 'Barishal', '8200'),
(8, 8, '77 Hill View', 'Chattogram', 'Khulshi', 'Chattogram', '4225'),
(9, 9, '34 North Avenue', 'Rangpur', 'Shapla Chattar', 'Rangpur', '5400'),
(10, 10, '15 Bridge View', 'Dhaka', 'Dhanmondi', 'Dhaka', '1209'),
(11, 11, '66 Sunset Boulevard', 'Mymensingh', 'Kishoreganj', 'Mymensingh', '2200'),
(12, 12, '18 Orchid Street', 'Khulna', 'Khalishpur', 'Khulna', '9002'),
(13, 13, '23 Blue Lagoon', 'Sylhet', 'Zindabazar', 'Sylhet', '3103'),
(14, 14, '47 Pearl Drive', 'Barishal', 'Hizla', 'Barishal', '8202'),
(15, 15, '36 Emerald Way', 'Rajshahi', 'Puthia', 'Rajshahi', '6203'),
(16, 16, '19 Crystal Point', 'Rangpur', 'Gangachara', 'Rangpur', '5402'),
(17, 17, '52 Willow Walk', 'Dhaka', 'Uttara', 'Dhaka', '1230'),
(18, 18, '64 Orchid Square', 'Chattogram', 'Agrabad', 'Chattogram', '4100'),
(19, 19, '83 Clover Path', 'Khulna', 'Sonadanga', 'Khulna', '9003'),
(20, 20, '90 Jasmine Lane', 'Sylhet', 'Tilagor', 'Sylhet', '3102');

-- --------------------------------------------------------

--
-- Table structure for table `biometrics`
--

CREATE TABLE `biometrics` (
  `id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `image` blob NOT NULL,
  `signature` blob NOT NULL,
  `iris_scan` blob NOT NULL,
  `fingerprint_scan` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `biometrics`
--

INSERT INTO `biometrics` (`id`, `person_id`, `image`, `signature`, `iris_scan`, `fingerprint_scan`) VALUES
(1, 1, 0x696d61676531, 0x7369676e617475726531, 0x6972697331, 0x66696e6765727072696e7431),
(2, 2, 0x696d61676532, 0x7369676e617475726532, 0x6972697332, 0x66696e6765727072696e7432),
(3, 3, 0x696d61676533, 0x7369676e617475726533, 0x6972697333, 0x66696e6765727072696e7433),
(4, 4, 0x696d61676534, 0x7369676e617475726534, 0x6972697334, 0x66696e6765727072696e7434),
(5, 5, 0x696d61676535, 0x7369676e617475726535, 0x6972697335, 0x66696e6765727072696e7435),
(6, 6, 0x696d61676536, 0x7369676e617475726536, 0x6972697336, 0x66696e6765727072696e7436),
(7, 7, 0x696d61676537, 0x7369676e617475726537, 0x6972697337, 0x66696e6765727072696e7437),
(8, 8, 0x696d61676538, 0x7369676e617475726538, 0x6972697338, 0x66696e6765727072696e7438),
(9, 9, 0x696d61676539, 0x7369676e617475726539, 0x6972697339, 0x66696e6765727072696e7439),
(10, 10, 0x696d6167653130, 0x7369676e61747572653130, 0x697269733130, 0x66696e6765727072696e743130),
(11, 11, 0x696d6167653131, 0x7369676e61747572653131, 0x697269733131, 0x66696e6765727072696e743131),
(12, 12, 0x696d6167653132, 0x7369676e61747572653132, 0x697269733132, 0x66696e6765727072696e743132),
(13, 13, 0x696d6167653133, 0x7369676e61747572653133, 0x697269733133, 0x66696e6765727072696e743133),
(14, 14, 0x696d6167653134, 0x7369676e61747572653134, 0x697269733134, 0x66696e6765727072696e743134),
(15, 15, 0x696d6167653135, 0x7369676e61747572653135, 0x697269733135, 0x66696e6765727072696e743135),
(16, 16, 0x696d6167653136, 0x7369676e61747572653136, 0x697269733136, 0x66696e6765727072696e743136),
(17, 17, 0x696d6167653137, 0x7369676e61747572653137, 0x697269733137, 0x66696e6765727072696e743137),
(18, 18, 0x696d6167653138, 0x7369676e61747572653138, 0x697269733138, 0x66696e6765727072696e743138),
(19, 19, 0x696d6167653139, 0x7369676e61747572653139, 0x697269733139, 0x66696e6765727072696e743139),
(20, 20, 0x696d6167653230, 0x7369676e61747572653230, 0x697269733230, 0x66696e6765727072696e743230);

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `id` int(11) NOT NULL,
  `unique_id` char(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`id`, `unique_id`, `name`, `father_name`, `mother_name`, `date_of_birth`, `created_at`, `updated_at`) VALUES
(1, '10000000001', 'Md. Ali', 'Rahim Uddin', 'Rahima Khatun', '1980-01-01', '2024-12-26 04:53:32', '2024-12-26 04:53:32'),
(2, '10000000002', 'Ayesha Sultana', 'Karim Uddin', 'Fatema Begum', '1990-05-15', '2024-12-26 04:53:32', '2024-12-26 04:53:32'),
(3, '10000000003', 'Kamal Hossain', 'Salim Sheikh', 'Selina Akter', '1985-08-10', '2024-12-26 04:53:32', '2024-12-26 04:53:32'),
(4, '10000000004', 'Shakib Khan', 'Fazlul Haque', 'Shahana Haque', '1975-11-25', '2024-12-26 04:53:32', '2024-12-26 04:53:32'),
(5, '10000000005', 'Joya Ahsan', 'Abdul Bari', 'Rokeya Begum', '1988-04-12', '2024-12-26 04:53:32', '2024-12-26 04:53:32'),
(6, '10000000006', 'Taslima Nasreen', 'Ibrahim Hossain', 'Nasima Akhter', '1982-07-09', '2024-12-26 04:53:32', '2024-12-26 04:53:32'),
(7, '10000000007', 'Fahim Ahmed', 'Latif Ahmed', 'Anika Latif', '1992-02-20', '2024-12-26 04:53:32', '2024-12-26 04:53:32'),
(8, '10000000008', 'Nusrat Faria', 'Saiful Islam', 'Nazia Islam', '1995-03-30', '2024-12-26 04:53:32', '2024-12-26 04:53:32'),
(9, '10000000009', 'Sabbir Rahman', 'Jalal Uddin', 'Sumaiya Khatun', '1987-06-05', '2024-12-26 04:53:32', '2024-12-26 04:53:32'),
(10, '10000000010', 'Mim Chowdhury', 'Ashraf Ali', 'Rabeya Chowdhury', '1991-09-14', '2024-12-26 04:53:32', '2024-12-26 04:53:32'),
(11, '10000000011', 'Munna', 'Rashed Miah', 'Laily Begum', '1998-01-17', '2024-12-26 04:53:32', '2024-12-26 04:53:32'),
(12, '10000000012', 'Arifa Akter', 'Hasan Ali', 'Shirin Begum', '1993-12-23', '2024-12-26 04:53:32', '2024-12-26 04:53:32'),
(13, '10000000013', 'Tanvir Ahmed', 'Shahjahan Ali', 'Nurjahan Begum', '1996-10-10', '2024-12-26 04:53:32', '2024-12-26 04:53:32'),
(14, '10000000014', 'Sadia Islam', 'Azizur Rahman', 'Samira Rahman', '1983-08-18', '2024-12-26 04:53:32', '2024-12-26 04:53:32'),
(15, '10000000015', 'Nazmul Hasan', 'Mostafa Hossain', 'Sharmin Akhter', '1978-12-02', '2024-12-26 04:53:32', '2024-12-26 04:53:32'),
(16, '10000000016', 'Imran Hossain', 'Jahangir Hossain', 'Rumana Begum', '1989-07-24', '2024-12-26 04:53:32', '2024-12-26 04:53:32'),
(17, '10000000017', 'Rupom Sarker', 'Harun Sarker', 'Minara Sarker', '1990-11-11', '2024-12-26 04:53:32', '2024-12-26 04:53:32'),
(18, '10000000018', 'Afia Zaman', 'Karim Zaman', 'Tahmina Zaman', '1986-05-25', '2024-12-26 04:53:32', '2024-12-26 04:53:32'),
(19, '10000000019', 'Badrul Alam', 'Helal Alam', 'Hasina Begum', '1981-03-19', '2024-12-26 04:53:32', '2024-12-26 04:53:32'),
(20, '10000000020', 'Mariam Khatun', 'Samsul Khatun', 'Jahanara Begum', '1997-06-06', '2024-12-26 04:53:32', '2024-12-26 04:53:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `biometrics`
--
ALTER TABLE `biometrics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_id` (`unique_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `biometrics`
--
ALTER TABLE `biometrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `biometrics`
--
ALTER TABLE `biometrics`
  ADD CONSTRAINT `biometrics_ibfk_1` FOREIGN KEY (`person_id`) REFERENCES `persons` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
