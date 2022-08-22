-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2022 at 06:06 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sispegawai`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(60) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `role` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'hrd', 'hrd', 'hrd');

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `idjob` int(11) NOT NULL,
  `jobname` varchar(30) NOT NULL,
  `jobdesc` text NOT NULL,
  `jobstart` date NOT NULL,
  `jobend` date NOT NULL,
  `registerend` date NOT NULL,
  `jobadded` timestamp NOT NULL DEFAULT current_timestamp(),
  `jobloc` text NOT NULL,
  `workingtype` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`idjob`, `jobname`, `jobdesc`, `jobstart`, `jobend`, `registerend`, `jobadded`, `jobloc`, `workingtype`) VALUES
(1, 'Supir Truk', 'Laki-laki (minimal 23 tahun), Memiliki Surat Izin Mengemudi (SIM) B1, Pendidikan SMA Sederajat, Mampu mengendarai truk yang akan dibawa, Mampu mengangkut sampah komersial dari klien ke tempat yang telah ditentukan.', '2022-07-28', '2022-10-28', '2022-10-28', '2022-06-15 04:48:26', 'Bekasi', 'WFO'),
(2, 'Staff Administrasi', 'Perempuan (Minimal 18 tahun), Pendidikan SMA Sederajat (Diutamakan S1), Siap bekerja dengan penuh tanggung jawab, Mengoperasikan komputer khususnya Office, Mengelola dokumen perusahaan.', '2022-07-28', '2022-08-25', '2022-08-25', '2022-07-28 09:52:19', 'Jakarta', 'WFH'),
(3, 'Human Resource', 'Laki-laki/Perempuan (Maksimal 35 tahun), Pendidikan S1, Memiliki pengalaman kerja (Minimal 2 tahun), Mampu berkomunikasi dengan baik, Siap bekerja dengan penuh tanggung jawab, Menjadi leader dari Staff HR, Mengoperasikan komputer khususnya Office, Menjadi media komunikasi internal bagi karyawan, Melakukan training dan pengembangan karyawan.', '2022-07-28', '2022-08-17', '2022-08-17', '2022-07-28 09:56:57', 'Jakarta', 'Mix Sistem'),
(4, 'Staff Human Resource', 'Laki-laki/Perempuan (Maksimal 28 Tahun), Pendidikan SMA (Diutamakan S1), Mampu berkomunikasi dengan baik, Mengoperasikan komputer khususnya Office, Membantu melakukan training dan pengembangan karyawan', '2022-07-30', '2022-09-15', '2022-09-15', '2022-07-30 03:03:19', 'Jakarta', 'Mix Sistem');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftar`
--

CREATE TABLE `pendaftar` (
  `idreg` int(11) NOT NULL,
  `idjob` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `pend_terakhir` varchar(50) NOT NULL,
  `url_linkedin` text NOT NULL,
  `url_cv` text NOT NULL,
  `ijazah` varchar(250) NOT NULL,
  `sertifikat` varchar(250) NOT NULL,
  `sim` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendaftar`
--

INSERT INTO `pendaftar` (`idreg`, `idjob`, `name`, `gender`, `tgl_lahir`, `alamat`, `email`, `telp`, `pend_terakhir`, `url_linkedin`, `url_cv`, `ijazah`, `sertifikat`, `sim`, `date`) VALUES
(1, 2, 'Firda Febrian', 'Perempuan', '1999-02-17', 'Jl. Setu No.22, Bekasi', 'firdafeb@gmail.com', '+6285716867330', 'S1', 'https://linkedin.com/in/firdafebrian', 'https://bit.ly/cv-firdafeb', '1751180904_Firda Febrian_Ijazah.pdf', '327112771_Firda Febrian_Sertif.pdf', '1846375622_Firda Febrian_SIM.pdf', '2022-07-30 07:29:49'),
(2, 3, 'Ari Ramadhan', 'Laki-laki', '1998-01-06', 'Jl. Cileungsi No.25, Bogor', 'ariramadhan@gmail.com', '+6281398949772', 'S1', 'https://www.linkedin.com/in/ari-ramadhan-86b52a214/', 'https://bit.ly/cv-arira', '887151680_Ari Ramadhan_Ijazah.pdf', '', '1900979592_Ari Ramadhan_SIM.pdf', '2022-07-30 07:32:05'),
(3, 4, 'M. Syamsul Muhyidin', 'Laki-laki', '1999-08-28', 'Jl. Cikiwul No. 10, Bekasi', 'msyamsul@gmail.com', '+6285776501232', 'S1', 'https://www.linkedin.com/in/m-syamsul-muhyidin-659402236/', 'https://bit.ly/cv-msyamsul', '1563558014_M. Syamsul Muhyidin_Ijazah.pdf', '1768676397_M. Syamsul Muhyidin_Sertif.pdf', '291285447_M. Syamsul Muhyidin_SIM.pdf', '2022-07-30 07:33:39'),
(4, 4, 'Aditya Prasetyo Adam', 'Laki-laki', '1999-03-21', 'Griya Alam Sentosa Blok A, Bogor', 'apadam23@gmail.com', '+6281717277996', 'S1', 'https://linkedin.com/in/aditpadam', 'https://bit.ly/cv-adityapras', '1783740053_Aditya Prasetyo Adam_Ijazah.pdf', '1810624604_Aditya Prasetyo Adam_Sertif.pdf', '2128272378_Aditya Prasetyo Adam_SIM.pdf', '2022-07-30 07:35:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`idjob`);

--
-- Indexes for table `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD PRIMARY KEY (`idreg`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `idjob` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pendaftar`
--
ALTER TABLE `pendaftar`
  MODIFY `idreg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
