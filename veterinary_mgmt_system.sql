-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2022 at 09:22 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `veterinary_mgmt_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `app_id` int(11) NOT NULL,
  `app_type` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `customer` int(11) NOT NULL,
  `veterinarian` int(11) NOT NULL,
  `app_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`app_id`, `app_type`, `date`, `time`, `customer`, `veterinarian`, `app_status`) VALUES
(11, 1, '2022-05-15', '18:00:00', 1, 4, 2),
(12, 3, '2022-06-02', '19:00:00', 1, 3, 2),
(13, 3, '2022-07-05', '19:00:00', 2, 1, 1),
(14, 2, '2022-05-17', '16:00:00', 1, 4, 2),
(15, 1, '2022-05-21', '13:00:00', 1, 1, 1),
(16, 3, '2022-06-15', '16:30:00', 1, 5, 0),
(17, 3, '2022-05-25', '18:00:00', 5, 5, 1),
(18, 2, '2022-05-15', '16:00:00', 2, 4, 1),
(19, 2, '2022-05-25', '16:00:00', 6, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `appointment_type`
--

CREATE TABLE `appointment_type` (
  `app_type_id` int(11) NOT NULL,
  `app_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment_type`
--

INSERT INTO `appointment_type` (`app_type_id`, `app_type`) VALUES
(1, 'health care assistant'),
(2, 'personal'),
(3, 'others');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_name`, `status`) VALUES
(1, 'Nestle Purina', 1),
(2, 'BlackHawk', 1),
(3, 'Nike', 1);

-- --------------------------------------------------------

--
-- Table structure for table `breed`
--

CREATE TABLE `breed` (
  `breed_id` int(11) NOT NULL,
  `species_id` int(11) NOT NULL,
  `breed` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `breed`
--

INSERT INTO `breed` (`breed_id`, `species_id`, `breed`) VALUES
(1, 1, 'Persian'),
(2, 1, 'Maine Coon'),
(3, 1, 'British'),
(4, 1, 'Ragdoll'),
(5, 1, 'Sphynx'),
(6, 1, 'Norwegian'),
(7, 1, 'Siberian'),
(8, 1, 'Turkish'),
(9, 2, 'German Shepherd '),
(10, 2, 'Husky'),
(11, 2, 'Bichon Frise'),
(12, 2, 'Bulldog'),
(13, 2, 'Boxer'),
(14, 2, 'Labrador Retrieval '),
(15, 2, 'Pug'),
(16, 3, 'Holland Lop'),
(17, 3, 'Mini Lop'),
(18, 3, 'Dutch'),
(19, 3, 'Flemish Giant'),
(20, 3, 'Lionhead'),
(21, 3, 'French Lop'),
(22, 3, 'Californian'),
(23, 3, 'Dwarf Papillon '),
(24, 3, 'Netharland Dwarf'),
(25, 3, 'Mini Rex'),
(26, 4, 'Leyard\'s Parakeet'),
(27, 4, 'Rose-ringed parakeet'),
(28, 4, 'Panu Girawa'),
(29, 4, 'Ceylon Large Parakeet'),
(30, 4, 'The Ceylon Lorikeet'),
(31, 5, 'Funambulus'),
(32, 5, 'Giant Squirrel');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `status`) VALUES
(1, 'Dry Food for Dog', 1),
(2, 'Moist Food for Cat', 1),
(3, 'Accessories', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_type`
--

CREATE TABLE `contact_type` (
  `type_id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_type`
--

INSERT INTO `contact_type` (`type_id`, `type`) VALUES
(1, 'Land'),
(2, 'Mobile');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(11) NOT NULL,
  `cus_fname` varchar(30) NOT NULL,
  `cus_lname` varchar(30) NOT NULL,
  `cus_gender` tinyint(4) NOT NULL DEFAULT 0,
  `cus_nic` varchar(20) NOT NULL,
  `cus_email` varchar(30) NOT NULL,
  `cus_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_gender`, `cus_nic`, `cus_email`, `cus_status`) VALUES
(1, 'Alicia', 'Seiraa', 1, '982441978X', 'm.askarrazik@gmail.com', 1),
(2, 'Serin', 'Martin', 0, '881224976X', 's.martin@ymail.com', 1),
(3, 'Thamba', 'Bavuma', 1, '786786459V', 'thambab@ymail.com', 0),
(4, 'Benjamin', 'Villiers', 0, '882443601V', 'mr360abd@gmail.com', 1),
(5, 'Mushab', 'Thowfeek', 0, '987669435V', 'mhmdmushab@gmail.com', 1),
(6, 'Pooja', 'Kugan', 1, '992441365V', 'poojakrish1802@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_complaint`
--

CREATE TABLE `customer_complaint` (
  `comp_id` int(11) NOT NULL,
  `complaint` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_complaint`
--

INSERT INTO `customer_complaint` (`comp_id`, `complaint`) VALUES
(1, 'There is no proper chairs in the waiting room'),
(2, 'Attending phone call is very rare');

-- --------------------------------------------------------

--
-- Table structure for table `cus_address`
--

CREATE TABLE `cus_address` (
  `cus_id` int(11) NOT NULL,
  `door_no` varchar(10) NOT NULL,
  `street` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cus_address`
--

INSERT INTO `cus_address` (`cus_id`, `door_no`, `street`, `city`) VALUES
(1, '236/8', 'Littile Dhubai', 'Washington'),
(2, '7', 'School Avenue', 'Colombo'),
(3, '44', 'Dam View Street', 'Holand'),
(4, '3/6', 'York Street', 'Colombo'),
(5, '12B', 'school lane', 'Colombo 9'),
(6, '15C', 'Delmon Street', 'Colombo 15');

-- --------------------------------------------------------

--
-- Table structure for table `cus_contact`
--

CREATE TABLE `cus_contact` (
  `cus_id` int(11) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `contact_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cus_contact`
--

INSERT INTO `cus_contact` (`cus_id`, `contact_no`, `contact_type`) VALUES
(1, '+94112327292', 1),
(1, '+94777927292', 2),
(2, '0112670780', 1),
(2, '0777474448', 2),
(3, '0111234567', 1),
(3, '0758009870', 2),
(4, '0112360360', 1),
(4, '0713603606', 2),
(5, '0114213010', 1),
(5, '0754213010', 2),
(6, '0119988123', 1),
(6, '0719988458', 2);

-- --------------------------------------------------------

--
-- Table structure for table `function`
--

CREATE TABLE `function` (
  `function_id` int(11) NOT NULL,
  `function_name` varchar(30) NOT NULL,
  `module_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `login_username` varchar(100) NOT NULL,
  `login_password` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `login_username`, `login_password`, `user_id`, `login_status`) VALUES
(1, 'askarrazik@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1, 0),
(2, 'tkumara147@gmail.com', 'b3c0730cf3f50613e40561e67c871fdb92820cf9', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(50) NOT NULL,
  `module_image` text NOT NULL,
  `module_url` varchar(100) NOT NULL,
  `module_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_id`, `module_name`, `module_image`, `module_url`, `module_status`) VALUES
(1, 'Patient Management', 'Patient.png', 'patient.php', 1),
(2, 'Customer Management', 'Owner.png', 'customer.php', 1),
(3, 'Veterinarian Management', 'Veterinarian.png', 'veterinarian.php', 1),
(4, 'Vaccination & Treatment Management', 'Vaccine & Treatment.png', 'vaccination_treatment.php', 1),
(5, 'Appointment Management', 'Appointment.png', 'appointment.php', 1),
(6, 'Products Management', 'Products.png', 'products.php', 1),
(7, 'Stock Management', 'Inventory.png', 'stock.php', 1),
(8, 'Supplier Management', 'Supplier.png', 'supplier.php', 1),
(9, 'Purchase Management', 'Purchase.png', 'purchase.php', 1),
(10, 'User Management', 'User.png', 'user.php', 1),
(11, 'Backup Management', 'Backup.png', 'backup.php', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_role`
--

CREATE TABLE `module_role` (
  `module_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `module_role`
--

INSERT INTO `module_role` (`module_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 4),
(7, 1),
(7, 4),
(8, 1),
(8, 4),
(9, 1),
(9, 4),
(10, 1),
(11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `noti_id` int(11) NOT NULL,
  `noti_date` datetime NOT NULL,
  `noti_descrip` varchar(50) NOT NULL,
  `noti_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`noti_id`, `noti_date`, `noti_descrip`, `noti_status`) VALUES
(1, '2022-05-22 17:08:03', 'New Request for Purchase the required Items', 0),
(2, '2022-05-22 17:54:54', 'New Request for Purchase the required Items', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification_user`
--

CREATE TABLE `notification_user` (
  `noti_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `noti_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` int(11) NOT NULL,
  `patient_name` varchar(30) NOT NULL,
  `owner` int(11) NOT NULL,
  `species_id` int(11) NOT NULL,
  `breed_id` int(11) NOT NULL,
  `patient_gender` tinyint(4) NOT NULL,
  `patient_dob` date NOT NULL,
  `patient_colour` varchar(30) NOT NULL,
  `patient_weight` decimal(10,2) NOT NULL,
  `patient_status` int(11) NOT NULL DEFAULT 1,
  `notes` text NOT NULL,
  `patient_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patient_name`, `owner`, `species_id`, `breed_id`, `patient_gender`, `patient_dob`, `patient_colour`, `patient_weight`, `patient_status`, `notes`, `patient_image`) VALUES
(1, 'Rexo', 3, 1, 8, 1, '2021-06-08', 'White', '12.15', 1, 'This cat has curl tail', '1651777260_Virat-Kohli-RCB.jpg'),
(4, 'Jimmy', 2, 2, 9, 0, '2016-01-11', 'Black and Brown', '18.50', 1, 'This dog has curl tail', '');

-- --------------------------------------------------------

--
-- Table structure for table `patient_treatment`
--

CREATE TABLE `patient_treatment` (
  `treatment_id` int(11) NOT NULL,
  `treatment_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_treatment`
--

INSERT INTO `patient_treatment` (`treatment_id`, `treatment_type_id`) VALUES
(1, 1),
(1, 6),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `patient_vaccination`
--

CREATE TABLE `patient_vaccination` (
  `vaccination_id` int(11) NOT NULL,
  `vaccine_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_vaccination`
--

INSERT INTO `patient_vaccination` (`vaccination_id`, `vaccine_type_id`) VALUES
(1, 1),
(2, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `barcode_number` varchar(100) NOT NULL,
  `exp_date` date NOT NULL,
  `product_image` text NOT NULL,
  `product_status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `unit_id`, `cat_id`, `brand_id`, `product_price`, `barcode_number`, `exp_date`, `product_image`, `product_status`) VALUES
(1, 'Lamb and Rice', 1, 1, 1, '595.00', 'a655', '2022-05-25', '', 1),
(2, 'Chicken and Rice', 1, 2, 1, '680.00', 'CRDG', '2022-06-14', '', 1),
(3, 'Chicken Piece', 1, 2, 2, '900.00', 'CPCG', '2022-07-13', '', 0),
(5, 'Belt', 4, 3, 3, '450.00', 'BL001', '0000-00-00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_purchase_order`
--

CREATE TABLE `product_purchase_order` (
  `po_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `po_quantity` float NOT NULL,
  `unit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_purchase_order`
--

INSERT INTO `product_purchase_order` (`po_id`, `product_id`, `po_quantity`, `unit_id`) VALUES
(1, 1, 50, 1),
(1, 3, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_requisition_note`
--

CREATE TABLE `product_requisition_note` (
  `note_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `unit_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_requisition_note`
--

INSERT INTO `product_requisition_note` (`note_id`, `product_id`, `quantity`, `unit_id`) VALUES
(1, 1, 10, 1),
(3, 1, 20, 1),
(4, 1, 2, 1),
(1, 2, 20, 1),
(2, 3, 50, 1),
(2, 5, 5, 4);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `po_id` int(11) NOT NULL,
  `po_no` varchar(30) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `issued_date` date NOT NULL,
  `required_date` date NOT NULL,
  `po_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`po_id`, `po_no`, `supplier_id`, `issued_date`, `required_date`, `po_status`) VALUES
(1, 'PO-001', 2, '2022-05-22', '2022-05-31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `requisition_note`
--

CREATE TABLE `requisition_note` (
  `note_id` int(11) NOT NULL,
  `requisition_date` date NOT NULL,
  `is_approved` tinyint(11) NOT NULL DEFAULT 0,
  `requested_by` tinyint(11) NOT NULL,
  `approved_by` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requisition_note`
--

INSERT INTO `requisition_note` (`note_id`, `requisition_date`, `is_approved`, `requested_by`, `approved_by`) VALUES
(1, '2022-05-25', 0, 1, 0),
(2, '2022-05-30', 0, 1, 0),
(3, '2022-05-29', 0, 1, 0),
(4, '2022-05-28', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(30) NOT NULL,
  `role_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `role_status`) VALUES
(1, 'Administrator', 1),
(2, 'Receptionist', 1),
(3, 'Veterinarian', 1),
(4, 'Purchase Manager', 1);

-- --------------------------------------------------------

--
-- Table structure for table `specialty`
--

CREATE TABLE `specialty` (
  `specialty_id` int(11) NOT NULL,
  `specialty` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specialty`
--

INSERT INTO `specialty` (`specialty_id`, `specialty`) VALUES
(1, 'Anesthesia & Pain'),
(2, 'Avian and Exotics'),
(3, 'Cardiology'),
(4, 'Critical Care'),
(5, 'Dentistry and Oral Surgery'),
(6, 'Dermatology'),
(7, 'Neurology'),
(8, 'Oncology'),
(9, 'Ophthalmology'),
(10, 'Orthopedic');

-- --------------------------------------------------------

--
-- Table structure for table `species`
--

CREATE TABLE `species` (
  `species_id` int(11) NOT NULL,
  `species` varchar(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `species`
--

INSERT INTO `species` (`species_id`, `species`, `status`) VALUES
(1, 'Cat', 1),
(2, 'Dog', 1),
(3, 'Rabbit', 1),
(4, 'Parrot', 1),
(5, 'Squirrel', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stock_id` int(11) NOT NULL,
  `stock_date` date NOT NULL,
  `quantity` decimal(10,2) NOT NULL,
  `stock_status` int(11) NOT NULL DEFAULT 1,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `stock_date`, `quantity`, `stock_status`, `product_id`) VALUES
(1, '2022-04-15', '20.00', 1, 2),
(2, '2022-04-14', '50.00', 1, 1),
(3, '2022-04-10', '20.00', 1, 3),
(4, '2022-05-11', '5.00', 1, 5),
(5, '2022-05-18', '10.00', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `stock_return`
--

CREATE TABLE `stock_return` (
  `stock_return_id` int(11) NOT NULL,
  `return_quantity` int(11) NOT NULL,
  `return_date` date NOT NULL,
  `stock_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_return`
--

INSERT INTO `stock_return` (`stock_return_id`, `return_quantity`, `return_date`, `stock_id`) VALUES
(1, 10, '2022-05-17', 1),
(2, 10, '2022-05-19', 3);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `sup_id` int(11) NOT NULL,
  `sup_org` text NOT NULL,
  `sup_brn` text NOT NULL,
  `sup_email` text NOT NULL,
  `sup_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`sup_id`, `sup_org`, `sup_brn`, `sup_email`, `sup_status`) VALUES
(1, 'Nimruka Traders', 'ab145', 'nimtrd@org.lk', 1),
(2, 'Sarath Liyana Animal Food', '01-055-SK', 'sspetfoodie@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_address`
--

CREATE TABLE `supplier_address` (
  `sup_id` int(11) NOT NULL,
  `door_no` varchar(11) NOT NULL,
  `street` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier_address`
--

INSERT INTO `supplier_address` (`sup_id`, `door_no`, `street`, `city`) VALUES
(1, '15C', 'Henamulla', 'Panadura'),
(2, '678/8', 'Hill Street', 'Dehiwela');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_contact`
--

CREATE TABLE `supplier_contact` (
  `sup_id` int(11) NOT NULL,
  `contact_no` varchar(30) NOT NULL,
  `contact_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier_contact`
--

INSERT INTO `supplier_contact` (`sup_id`, `contact_no`, `contact_type`) VALUES
(1, '0112360361', 1),
(1, '0713603600', 2),
(2, '0114963579', 1),
(2, '0758963757', 2);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_rating`
--

CREATE TABLE `supplier_rating` (
  `rate_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `sup_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `treatment_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `vet_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`treatment_id`, `patient_id`, `vet_id`, `date`, `description`) VALUES
(1, 4, 1, '2022-05-02', ''),
(2, 1, 5, '2022-04-12', '');

-- --------------------------------------------------------

--
-- Table structure for table `treatment_type`
--

CREATE TABLE `treatment_type` (
  `treatment_type_id` int(11) NOT NULL,
  `treatment_name` varchar(30) NOT NULL,
  `treatment_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treatment_type`
--

INSERT INTO `treatment_type` (`treatment_type_id`, `treatment_name`, `treatment_status`) VALUES
(1, 'sterilization', 1),
(2, 'caesarean ', 1),
(3, 'bone pining', 1),
(4, 'pyrometer', 1),
(5, 'aural hematoma ', 1),
(6, 'dental cleaning', 1);

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE `unit` (
  `unit_id` int(11) NOT NULL,
  `unit_name` varchar(30) NOT NULL,
  `unit_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`unit_id`, `unit_name`, `unit_status`) VALUES
(1, 'kg', 1),
(2, 'g', 1),
(3, 'ml', 1),
(4, 'unit', 1),
(5, 'mg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_fname` varchar(30) NOT NULL,
  `user_lname` varchar(30) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_gender` tinyint(4) NOT NULL,
  `user_nic` varchar(15) NOT NULL,
  `user_cno1` varchar(15) NOT NULL,
  `user_cno2` varchar(15) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` int(11) NOT NULL,
  `user_status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_fname`, `user_lname`, `user_email`, `user_gender`, `user_nic`, `user_cno1`, `user_cno2`, `user_image`, `user_role`, `user_status`) VALUES
(1, 'Askar', 'Razik', 'askarrazik@gmail.com', 0, '982441978V', '0758000460', '0112671018', '', 1, 1),
(2, 'Thananjayan', 'Kumara', 'tkumara147@gmail.com', 0, '882557965V', '0779654350', '0112671017', '', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_function`
--

CREATE TABLE `user_function` (
  `user_id` int(11) NOT NULL,
  `function_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `vaccination`
--

CREATE TABLE `vaccination` (
  `vaccination_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `vet_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccination`
--

INSERT INTO `vaccination` (`vaccination_id`, `patient_id`, `vet_id`, `date`, `description`) VALUES
(1, 1, 3, '2022-05-10', 'TriDog vaccine given for patient rexo'),
(2, 4, 1, '2022-05-07', '');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine`
--

CREATE TABLE `vaccine` (
  `vaccine_id` int(11) NOT NULL,
  `vaccine_item` varchar(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccine`
--

INSERT INTO `vaccine` (`vaccine_id`, `vaccine_item`, `status`) VALUES
(1, 'TriDogar', 1),
(2, 'Sputnikero', 0),
(3, 'TriCat', 1),
(4, 'DHPP', 1),
(5, 'PRV', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_stock`
--

CREATE TABLE `vaccine_stock` (
  `vac_stock_id` int(11) NOT NULL,
  `vac_quantity` int(11) NOT NULL,
  `vac_stock_date` date NOT NULL,
  `vac_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccine_stock`
--

INSERT INTO `vaccine_stock` (`vac_stock_id`, `vac_quantity`, `vac_stock_date`, `vac_id`, `status`) VALUES
(1, 75, '2022-04-24', 1, 1),
(2, 100, '2022-04-11', 2, 1),
(3, 50, '2022-04-10', 3, 1),
(4, 100, '2022-04-25', 3, 1),
(5, 25, '0000-00-00', 1, 1),
(6, 200, '2022-03-30', 4, 1),
(7, 30, '2022-05-04', 5, 1),
(8, 50, '0000-00-00', 1, 1),
(9, 50, '0000-00-00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `veterinarian`
--

CREATE TABLE `veterinarian` (
  `vet_id` int(11) NOT NULL,
  `vet_fname` varchar(30) NOT NULL,
  `vet_lname` varchar(30) NOT NULL,
  `vet_nic` varchar(20) NOT NULL,
  `vet_email` varchar(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `veterinarian`
--

INSERT INTO `veterinarian` (`vet_id`, `vet_fname`, `vet_lname`, `vet_nic`, `vet_email`, `status`) VALUES
(1, 'Rithika', 'Markina', '851224976V', 'example@gmail.com', 1),
(2, 'Nimna', 'Soysa', '552442987X', 'nimna@gmail.com', 0),
(3, 'Zara', 'Sona', '659874123X', 'zara@ymail.com', 1),
(4, 'Abdul', 'Khalid', '887664928X', 'abikram@gmail.com', 1),
(5, 'Tim', 'David', '849771965X', 'timdavid@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vet_contact`
--

CREATE TABLE `vet_contact` (
  `vet_id` int(11) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `contact_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vet_contact`
--

INSERT INTO `vet_contact` (`vet_id`, `contact_no`, `contact_type`) VALUES
(1, '0112671018', 1),
(1, '0777460790', 2),
(2, '0112674012', 1),
(2, '0756547893', 2),
(3, '0117359524', 1),
(3, '0776549342', 2),
(4, '0114789456', 1),
(4, '0777456123', 2),
(5, '0112671849', 1),
(5, '0756444798', 2);

-- --------------------------------------------------------

--
-- Table structure for table `vet_schedule`
--

CREATE TABLE `vet_schedule` (
  `vet_schedule_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `exp_in_time` time NOT NULL,
  `exp_out_time` time NOT NULL,
  `is_available` tinyint(4) NOT NULL DEFAULT 1,
  `vet_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vet_schedule`
--

INSERT INTO `vet_schedule` (`vet_schedule_id`, `date`, `exp_in_time`, `exp_out_time`, `is_available`, `vet_id`) VALUES
(1, '2022-03-03', '09:15:00', '16:15:00', 1, 2),
(2, '2022-03-01', '11:00:00', '17:30:00', 1, 3),
(3, '2022-03-05', '09:00:00', '12:00:00', 1, 2),
(4, '2022-03-12', '10:00:00', '13:00:00', 1, 2),
(5, '2022-03-09', '10:00:00', '14:00:00', 1, 2),
(6, '2022-03-08', '11:00:00', '12:00:00', 1, 2),
(7, '2022-05-08', '16:30:00', '18:00:00', 0, 2),
(8, '2022-05-13', '13:45:00', '16:00:00', 1, 4),
(9, '2022-05-26', '11:00:00', '13:00:00', 1, 1),
(10, '2022-06-23', '18:00:00', '19:00:00', 1, 3),
(11, '2022-07-28', '16:00:00', '17:00:00', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vet_specialty`
--

CREATE TABLE `vet_specialty` (
  `vet_id` int(11) NOT NULL,
  `specialty_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vet_specialty`
--

INSERT INTO `vet_specialty` (`vet_id`, `specialty_id`) VALUES
(1, 2),
(1, 4),
(1, 6),
(2, 1),
(2, 4),
(2, 5),
(2, 8),
(3, 3),
(3, 4),
(3, 6),
(3, 8),
(4, 1),
(4, 10),
(5, 1),
(5, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `appointment_type`
--
ALTER TABLE `appointment_type`
  ADD PRIMARY KEY (`app_type_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`),
  ADD UNIQUE KEY `brand_name` (`brand_name`);

--
-- Indexes for table `breed`
--
ALTER TABLE `breed`
  ADD PRIMARY KEY (`breed_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact_type`
--
ALTER TABLE `contact_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `customer_complaint`
--
ALTER TABLE `customer_complaint`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indexes for table `cus_address`
--
ALTER TABLE `cus_address`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `cus_contact`
--
ALTER TABLE `cus_contact`
  ADD PRIMARY KEY (`cus_id`,`contact_no`);

--
-- Indexes for table `function`
--
ALTER TABLE `function`
  ADD PRIMARY KEY (`function_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `module_role`
--
ALTER TABLE `module_role`
  ADD PRIMARY KEY (`module_id`,`role_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`noti_id`);

--
-- Indexes for table `notification_user`
--
ALTER TABLE `notification_user`
  ADD PRIMARY KEY (`noti_id`,`user_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`);

--
-- Indexes for table `patient_treatment`
--
ALTER TABLE `patient_treatment`
  ADD PRIMARY KEY (`treatment_id`,`treatment_type_id`);

--
-- Indexes for table `patient_vaccination`
--
ALTER TABLE `patient_vaccination`
  ADD PRIMARY KEY (`vaccination_id`,`vaccine_type_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `barcode_number` (`barcode_number`);

--
-- Indexes for table `product_purchase_order`
--
ALTER TABLE `product_purchase_order`
  ADD PRIMARY KEY (`po_id`,`product_id`);

--
-- Indexes for table `product_requisition_note`
--
ALTER TABLE `product_requisition_note`
  ADD PRIMARY KEY (`product_id`,`note_id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `requisition_note`
--
ALTER TABLE `requisition_note`
  ADD PRIMARY KEY (`note_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `specialty`
--
ALTER TABLE `specialty`
  ADD PRIMARY KEY (`specialty_id`);

--
-- Indexes for table `species`
--
ALTER TABLE `species`
  ADD PRIMARY KEY (`species_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `stock_return`
--
ALTER TABLE `stock_return`
  ADD PRIMARY KEY (`stock_return_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`sup_id`);

--
-- Indexes for table `supplier_address`
--
ALTER TABLE `supplier_address`
  ADD PRIMARY KEY (`sup_id`);

--
-- Indexes for table `supplier_contact`
--
ALTER TABLE `supplier_contact`
  ADD PRIMARY KEY (`sup_id`,`contact_no`);

--
-- Indexes for table `supplier_rating`
--
ALTER TABLE `supplier_rating`
  ADD PRIMARY KEY (`rate_id`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`treatment_id`);

--
-- Indexes for table `treatment_type`
--
ALTER TABLE `treatment_type`
  ADD PRIMARY KEY (`treatment_type_id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_function`
--
ALTER TABLE `user_function`
  ADD PRIMARY KEY (`user_id`,`function_id`);

--
-- Indexes for table `vaccination`
--
ALTER TABLE `vaccination`
  ADD PRIMARY KEY (`vaccination_id`);

--
-- Indexes for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD PRIMARY KEY (`vaccine_id`);

--
-- Indexes for table `vaccine_stock`
--
ALTER TABLE `vaccine_stock`
  ADD PRIMARY KEY (`vac_stock_id`);

--
-- Indexes for table `veterinarian`
--
ALTER TABLE `veterinarian`
  ADD PRIMARY KEY (`vet_id`);

--
-- Indexes for table `vet_contact`
--
ALTER TABLE `vet_contact`
  ADD PRIMARY KEY (`vet_id`,`contact_no`);

--
-- Indexes for table `vet_schedule`
--
ALTER TABLE `vet_schedule`
  ADD PRIMARY KEY (`vet_schedule_id`);

--
-- Indexes for table `vet_specialty`
--
ALTER TABLE `vet_specialty`
  ADD PRIMARY KEY (`vet_id`,`specialty_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `appointment_type`
--
ALTER TABLE `appointment_type`
  MODIFY `app_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `breed`
--
ALTER TABLE `breed`
  MODIFY `breed_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_type`
--
ALTER TABLE `contact_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_complaint`
--
ALTER TABLE `customer_complaint`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `function`
--
ALTER TABLE `function`
  MODIFY `function_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `noti_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `requisition_note`
--
ALTER TABLE `requisition_note`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `specialty`
--
ALTER TABLE `specialty`
  MODIFY `specialty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `species`
--
ALTER TABLE `species`
  MODIFY `species_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `stock_return`
--
ALTER TABLE `stock_return`
  MODIFY `stock_return_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `sup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier_rating`
--
ALTER TABLE `supplier_rating`
  MODIFY `rate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `treatment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `treatment_type`
--
ALTER TABLE `treatment_type`
  MODIFY `treatment_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
  MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vaccination`
--
ALTER TABLE `vaccination`
  MODIFY `vaccination_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vaccine`
--
ALTER TABLE `vaccine`
  MODIFY `vaccine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vaccine_stock`
--
ALTER TABLE `vaccine_stock`
  MODIFY `vac_stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `veterinarian`
--
ALTER TABLE `veterinarian`
  MODIFY `vet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vet_schedule`
--
ALTER TABLE `vet_schedule`
  MODIFY `vet_schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
