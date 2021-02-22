-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2021 at 12:17 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prescription`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_tests`
--

CREATE TABLE `blood_tests` (
  `ID` int(11) NOT NULL,
  `ELEMENT_CODE` varchar(30) NOT NULL,
  `ELEMENT_NAME` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_tests`
--

INSERT INTO `blood_tests` (`ID`, `ELEMENT_CODE`, `ELEMENT_NAME`) VALUES
(42, 'Antipsychotic PHM', 'Antipsychotic Physical Health Monitoring including QRISK2'),
(28, 'Prolactin', 'Prolactin Concentration'),
(45, 'Opthalmology Review', 'Opthalmology Annual Review with Opthalmologist'),
(22, 'Inhaler Review', 'Asthma/COPD review'),
(23, 'HRT', 'Hormone Replacement Therapy Review'),
(1, 'FBC', 'Full Blood Count'),
(2, 'BP', 'Blood Pressure'),
(3, 'U&E', 'Urea and Electrolytes'),
(4, 'LFT', 'Liver Function Test'),
(5, 'Lipids', 'Lipid Profile\nLDL,HDL, Total cholesterol, Triglycerides'),
(6, 'HbA1c', 'HbA1c'),
(7, 'TFT', 'Thyroid Function Test'),
(8, 'ESP', 'Erythrocyte sedimentation rate'),
(9, 'CRP', 'C-Reactive Protein'),
(10, 'Lithium', 'Lithium test'),
(27, 'INR', 'INR Testing'),
(62, 'Height and weight', 'Height and weight'),
(21, 'Diabetes Review', 'Diabetes Annual Review'),
(24, 'Pill Check', 'Contraceptive Annual Review'),
(25, 'Anti-depressant Review', 'Anti-depressant Review'),
(41, 'Opiate Review', 'Opiate/analgesia review'),
(43, 'Methylphenidate monitoring', 'Methylphenidate physical health monitoring'),
(44, 'ACR', 'Albumin to Creatinine Ratio'),
(61, 'Urinalysis', 'Urinalysis for protein/blood');

-- --------------------------------------------------------

--
-- Table structure for table `blood_test_schedule`
--

CREATE TABLE `blood_test_schedule` (
  `blood_work_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `test` varchar(100) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_test_schedule`
--

INSERT INTO `blood_test_schedule` (`blood_work_id`, `patient_id`, `test`, `appointment_date`, `appointment_time`) VALUES
(37, 10, 'Opthalmology Annual Review with Opthalmologist', '2021-02-19', '00:17:00'),
(39, 12, 'Urinalysis for protein/blood', '2021-02-22', '14:32:00'),
(48, 15, 'Full Blood Count', '2021-02-23', '13:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `medication`
--

CREATE TABLE `medication` (
  `ID` int(11) NOT NULL,
  `MEDICATION` varchar(50) NOT NULL,
  `BLOOD_WORK_RESTRICTION_LEVEL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medication`
--

INSERT INTO `medication` (`ID`, `MEDICATION`, `BLOOD_WORK_RESTRICTION_LEVEL`) VALUES
(1, 'Ibuprofen', 2),
(21, 'Trandolapril', 2),
(23, 'Amiodarone', 2),
(24, 'Cariprazine', 2),
(25, 'Carbimazole', 0),
(26, 'digoxin', 0),
(28, 'DOAC', 2),
(29, 'DMARDS', 3),
(30, 'Eplerenone', 2),
(32, 'Lithium', 3),
(33, 'mesalazine', 2),
(34, 'memantine', 1),
(35, 'nitrofurantoin', 0),
(36, 'Ketoprofen', 2),
(37, 'D-penicillamine', 3),
(38, 'Phenytoin', 0),
(39, 'pioglitazone', 0),
(40, 'propythiouracil', 0),
(41, 'sirolimus', 0),
(42, 'spironolactone', 0),
(43, 'Fluvastatin', 2),
(44, 'Hydrocortisone', 2),
(45, 'Theophylline', 0),
(46, 'thyroxine', 0),
(47, 'valproate', 0),
(48, 'minocycline', 0),
(49, 'terbinafine', 3),
(50, 'Hydroxychloroquine', 2),
(51, 'Omeprazole', 1),
(52, 'Yasmin', 2),
(53, 'calcium', 0),
(54, 'vitamin d', 0),
(55, 'diuretics', 0),
(56, 'medikinet', 0),
(57, 'Mirtazapine', 2),
(58, 'Elleste-Duet Conti', 2),
(61, 'Paracetamol', 3),
(62, 'Promethazine', 1),
(81, 'Azathioprine', 3),
(83, 'Benzoylmethylecgonine', 0),
(84, 'Felodipine', 2),
(85, 'Nicardipine', 2),
(86, 'Nimodipine', 2),
(87, 'Dapsone', 3),
(88, 'Leflunomide', 3),
(89, 'Methotrexate', 3),
(90, 'Sulfasalazine', 3),
(91, 'Tacrolimus', 3),
(92, 'Irbesartan', 2),
(93, 'Candesartan', 2),
(94, 'Losartan', 2),
(95, 'Olmesartan', 2),
(96, 'Telisartan', 2),
(97, 'Valsartan', 2),
(98, 'Sertraline', 2),
(101, 'Azathioprine', 3),
(102, 'Nifedipine', 2),
(103, 'Nimodipine', 2),
(104, 'Captopril', 0),
(105, 'Lisinopril', 2),
(107, 'Perindopril', 2),
(108, 'Ramipril', 2),
(109, 'Citalopram', 2),
(121, 'Amlodipine', 2),
(122, 'Diltiazem', 2),
(123, 'Lacidipine', 2),
(124, 'Lercanidipine', 1),
(125, 'Verapamil', 0),
(126, 'Atenolol', 2),
(127, 'Bisoprolol', 0),
(128, 'Carvedilol', 0),
(129, 'Metoprolol', 2),
(130, 'Nebivolol', 2),
(131, 'Acebutolol', 2),
(132, 'Enalapril', 0),
(133, 'Mycophenolate', 3),
(134, 'Eprosartan', 2),
(135, 'Escitalopram', 2),
(141, 'Apixaban', 2),
(142, 'Rivaroxaban', 2),
(143, 'Dabigatran', 2),
(144, 'Edoxaban', 2),
(145, 'Olanzapine', 2),
(146, 'Risperidone', 2),
(148, 'Mycophenolate', 3),
(149, 'Bendroflumethiazide', 2),
(150, 'Furosemide', 2),
(151, 'Indapamide', 2),
(152, 'Bumetanide', 2),
(153, 'Etodolac', 2),
(154, 'Diclofenac', 2),
(155, 'Etoricoxib', 2),
(156, 'Tridestra', 2),
(157, 'Rigevidon', 2),
(161, 'Warfarin', 3),
(162, 'Quetiapine', 2),
(163, 'Amisulpride', 2),
(164, 'Aripiprazole', 2),
(165, 'Naproxen', 2),
(166, 'Meloxicam', 2),
(167, 'Desogestrel', 2),
(168, 'Cilest', 2),
(169, 'Microgynon 30', 2),
(171, 'Loestrin', 2),
(172, 'Femoston Conti', 2),
(181, 'Simvastatin', 2),
(182, 'Atorvastatin', 2),
(183, 'Pravastatin', 0),
(184, 'Morphine', 2),
(185, 'Oxycodone', 2),
(186, 'Fentanyl', 2),
(187, 'Tramadol', 2),
(188, 'Codeine', 2),
(189, 'Butrans', 2),
(190, 'Transited', 2),
(191, 'Alfentanyl', 2),
(192, 'Aspirin', 1),
(201, 'Rosuvastatin', 2),
(202, 'Dihydrocodeine', 2),
(203, 'Diamorphine', 2),
(204, 'Tapentadol', 2),
(205, 'Calcium Carbonate', 1),
(221, 'Lansoprazole', 1),
(222, 'Prednisolone', 2),
(241, 'salbutamol inhaler', 2),
(242, 'Indapamide', 2),
(261, 'Seretide Inhaler', 2),
(281, 'Fostair Inhaler', 2),
(301, 'metformin', 3),
(321, 'Memantine', 2),
(341, 'Metformin', 2),
(361, 'desmopressin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `blood_type` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `patient_id`, `first_name`, `last_name`, `email`, `password`, `age`, `gender`, `blood_type`) VALUES
(9, 15, 'John', 'White', 'johnwhite@hotmail.com', '$2y$10$uBUYkEgwCB5.IoNZwZ6CzejlNTtcBNLa4QEIiKzd9qWVXdwcPFWR6', 25, 'male', 'A+'),
(10, 140, 'Peter', 'Shore', 'petershore@hotmail.com', '$2y$10$.s/plryoS0GMCCYsl2TJb.xSMl500jWZ.zCPriP9GVh8XI7zaUiZC', 40, 'male', 'O-'),
(11, 54, 'Scott', 'Izi', 'scottizi@hotmail.com', '$2y$10$fA2l/vUNxndYqPq9eI2m3OmY0yjlZLXt/KZCdYbvnefu3yNJIVzV6', 55, 'male', 'A-'),
(12, 10, 'Dru', 'Milner', 'dru@hotmail.com', '$2y$10$YJjgVcwTr242hYuzfFI4AOucMAQUQJcBPXYohLv7C8PM3N42DFl4i', 22, 'male', 'AB+'),
(13, 9, 'Harpreet', 'Dale', 'harpreet@hotmail.com', '$2y$10$gE7J9CmKKo3AyqZ7EA.r4OmpAl7V8DEiI5y02FRXfYHdh5dBmQdne', 48, 'male', 'A+'),
(14, 654, 'Yasmine', 'Shaffer', 'yasmine@hotmail.com', '$2y$10$o8DESXwzWGbxEzSMzqQEw.27L5KsBcvy7myP.T1iXmxSpLVMYZBei', 18, 'female', 'O+'),
(15, 142, 'Eboni', 'Browne', 'eboni@hotmail.com', '$2y$10$7/CiTHtBLCYtnYTiWu1myOjUgCcXmwfBvD7113UEdv9uTKSzEInfC', 32, 'male', 'O-'),
(16, 60, 'Fariha', 'Conley', 'fariha@hotmail.com', '$2y$10$rCJQUOHWIuewyjAXG/rBn.2zFwhE7afA7ehqQiYK3sGXN3p9euogW', 29, 'female', 'A+'),
(17, 32, 'Cherise', 'Kirk', 'cherise@hotmail.com', '$2y$10$3D60vwPlPk0NTdPAUlHIiuksvwI7cJHbVYR9al2dMfCDXZu/oR5oy', 62, 'female', 'AB+'),
(18, 78, 'Elodie', 'Pearson', 'elodie@hotmail.com', '$2y$10$/oJcPbXxile7gN8EIuo35ezjrSQ9vL7W3zSjE1i3JxQIIgQ4YfH/q', 21, 'female', 'B-'),
(19, 511, 'Josphine', 'Pitt', 'josphine@hotmail.com', '$2y$10$8Z9fAMr02yQNXYp.6cBxjOmGrMOABUONOhs1HKkuQhkppBWiWAy9G', 36, 'female', 'AB-'),
(20, 320, 'Francesca', 'Oakley', 'francesca@hotmail.com', '$2y$10$KlJPhvUy/kPA3mc5e3RmYuSQyhMtWpQ9v/tkfV50Vn08NyKwoN9B.', 48, 'female', 'B+'),
(21, 741, 'Mclane', 'Dubov', 'mclane@hotmail.com', '$2y$10$aV.V59AFagP.5mJqvaVQouA1trBocLE1YY.FRLsFz4Lcn5gPY9K5.', 55, 'male', 'B+');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `id` int(16) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(255) NOT NULL,
  `admin` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`id`, `staff_id`, `first_name`, `last_name`, `email`, `password`, `admin`) VALUES
(1, 150, 'James', 'Plaza', 'jamesplaza@hotmail.com', '$2y$10$yEU86/GuYZAe8xa7jb80h.S4QMPtgnG0IQThfQ0PWyVyiaN0PRnvu', 'yes'),
(2, 5, 'Mohamed', 'Aboelsoud', 'mohamedaboelsoud@hotmail.com', '$2y$10$TRvR6syxB1z/QZrypVD/LuyaTJSGZ8vEgOKT3rHTgECk.4eHgBk8m', 'no'),
(3, 42, 'Pedro', 'Machado', 'pedromachado@hotmail.com', '$2y$10$HTO4UazNgSR3voiulE63mepdMw/ZDCnK16OWYH49JTTNRivJjhO1G', 'no'),
(4, 438, 'Shelton', 'White', 'shelton@hotmail.com', '$2y$10$BRlF4QuP89Pp2nfrXHrlAOIs0ifTRswyxVF5fSj55rZ/2RP.7Snza', 'no'),
(5, 698, 'Naruto', 'Uzumaki', 'naruto@hotmail.com', '$2y$10$ubMOaggvqFBdcpurgFw2h.F8N24ySw8Awwbud42Y0kTA0OvceZaMu', 'yes'),
(7, 492, 'Daniel', 'Moreno', 'daniel@hotmail.com', '$2y$10$r0b5fXB0K5mbqsQjl1TDn.6t0mZcnOVbZelDfcV.Mgpjvhgt.htwO', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `prescription_id` int(11) NOT NULL,
  `medication_id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `repeat_prescription` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescriptions`
--

INSERT INTO `prescriptions` (`prescription_id`, `medication_id`, `patient_id`, `repeat_prescription`) VALUES
(77, 29, 10, 3),
(78, 61, 12, 2),
(79, 24, 15, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_tests`
--
ALTER TABLE `blood_tests`
  ADD KEY `FK_BloodTestMedication` (`ID`);

--
-- Indexes for table `blood_test_schedule`
--
ALTER TABLE `blood_test_schedule`
  ADD PRIMARY KEY (`blood_work_id`);

--
-- Indexes for table `medication`
--
ALTER TABLE `medication`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`prescription_id`),
  ADD KEY `FK_Prescription_Medication` (`medication_id`),
  ADD KEY `FK_Prescription_Patient` (`patient_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood_test_schedule`
--
ALTER TABLE `blood_test_schedule`
  MODIFY `blood_work_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pharmacist`
--
ALTER TABLE `pharmacist`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `prescription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blood_test_schedule`
--
ALTER TABLE `blood_test_schedule`
  ADD CONSTRAINT `FK_Blood_Work` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD CONSTRAINT `FK_Prescription_Medication` FOREIGN KEY (`medication_id`) REFERENCES `medication` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_Prescription_Patient` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
