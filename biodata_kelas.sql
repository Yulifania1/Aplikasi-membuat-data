-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2023 at 09:31 AM
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
-- Database: `biodata kelas`
--

-- --------------------------------------------------------

--
-- Table structure for table `agama`
--

CREATE TABLE `agama` (
  `Id` int(10) NOT NULL,
  `Nama_agama` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `Id` int(10) NOT NULL,
  `Namakelas` int(10) NOT NULL,
  `Koperensi` varchar(100) NOT NULL,
  `Tahun-pelajaran` int(10) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`Id`, `Namakelas`, `Koperensi`, `Tahun-pelajaran`, `keterangan`) VALUES
(1, 11, 'Rekayasa Perangkat Lunak', 2018, 'lulus'),
(2, 10, 'Animas', 2020, 'lulus');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `Id` int(10) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Tplahir` varchar(50) NOT NULL,
  `Alamat` varchar(255) NOT NULL,
  `Hobi` varchar(255) NOT NULL,
  `Cita_cita` varchar(100) NOT NULL,
  `jm_saudara` int(10) NOT NULL,
  `Idkelas` int(10) NOT NULL,
  `idagama` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`Id`, `Nama`, `Tplahir`, `Alamat`, `Hobi`, `Cita_cita`, `jm_saudara`, `Idkelas`, `idagama`) VALUES
(1, 'Rafi Maulana', '20-01-2007', 'Jl.bareng tengah', 'Sepak bola', 'pilot', 2, 1, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
