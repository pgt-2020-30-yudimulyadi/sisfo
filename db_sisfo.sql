-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2020 at 06:47 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sisfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `nim` int(7) NOT NULL,
  `nama` text NOT NULL,
  `kelas` text NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `evaluasidosen`
--

CREATE TABLE `evaluasidosen` (
  `id` int(11) NOT NULL,
  `nama` text CHARACTER SET latin1 NOT NULL,
  `mk` text CHARACTER SET latin1 NOT NULL,
  `tahun` text CHARACTER SET latin1 NOT NULL,
  `nim` text CHARACTER SET latin1 NOT NULL,
  `a1` int(11) NOT NULL,
  `a2` int(11) NOT NULL,
  `a3` int(11) NOT NULL,
  `a4` int(11) NOT NULL,
  `a5` int(11) NOT NULL,
  `a6` int(11) NOT NULL,
  `a7` int(11) NOT NULL,
  `a8` int(11) NOT NULL,
  `a9` int(11) NOT NULL,
  `a10` int(11) NOT NULL,
  `a11` int(11) NOT NULL,
  `b1` int(11) NOT NULL,
  `b2` int(11) NOT NULL,
  `b3` int(11) NOT NULL,
  `b4` int(11) NOT NULL,
  `b5` int(11) NOT NULL,
  `b6` int(11) NOT NULL,
  `b7` int(11) NOT NULL,
  `b8` int(11) NOT NULL,
  `b9` int(11) NOT NULL,
  `c1` int(11) NOT NULL,
  `c2` int(11) NOT NULL,
  `c3` int(11) NOT NULL,
  `c4` int(11) NOT NULL,
  `d1` int(11) NOT NULL,
  `d2` int(11) NOT NULL,
  `d3` int(11) NOT NULL,
  `d4` int(11) NOT NULL,
  `d5` int(11) NOT NULL,
  `d6` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `logkondite`
--

CREATE TABLE `logkondite` (
  `id` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama` text CHARACTER SET latin1 NOT NULL,
  `jenispoin` text CHARACTER SET latin1 NOT NULL,
  `poin` int(11) NOT NULL,
  `keterangan` text CHARACTER SET latin1 NOT NULL,
  `tahun` int(11) NOT NULL,
  `prodi` text CHARACTER SET latin1 NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logkondite`
--

INSERT INTO `logkondite` (`id`, `nim`, `nama`, `jenispoin`, `poin`, `keterangan`, `tahun`, `prodi`, `tanggal`) VALUES
(1, 1702002, 'Anri Antonius M', 'minus', -5, 'Outstanding', 20171, 'Teknik Elektronika', '2020-03-19'),
(2, 1702002, '', 'plus', 80, 'Ganteng', 20171, 'Teknik Elektronika', '2020-03-17'),
(3, 1702002, '', 'minus', -15, 'Terlambat', 20172, 'Teknik Elektronika', '2020-03-18'),
(4, 1702003, 'Bang Jali', 'plus', 10, 'Panitia Wisuda', 20172, 'Teknik Mesin', '2020-03-18'),
(7, 1702002, 'Anri Antonius', 'plus', 5, '5R', 20182, 'Teknik Elektronika', '2018-04-12');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(11) NOT NULL,
  `nama` text CHARACTER SET latin1 NOT NULL,
  `jeniskelamin` text CHARACTER SET latin1 NOT NULL,
  `program_studi` text CHARACTER SET latin1 NOT NULL,
  `tanggallahir` text NOT NULL,
  `tahunmasuk` int(11) NOT NULL,
  `status` text CHARACTER SET latin1 NOT NULL,
  `kelas` text CHARACTER SET latin1 NOT NULL,
  `password` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jeniskelamin`, `program_studi`, `tanggallahir`, `tahunmasuk`, `status`, `kelas`, `password`) VALUES
(0, '', '', '', '', 0, '', '', '$2y$10$OzUKdGNSfzD4JZfI/5fP5.tDEp1L9103oBRZ42LMlGHKkMJmFQnm2'),
(1234, 'titi', 'perempuan', 'TI', '21 desember 2000', 2019, 'aktif', '3 TI Z', '$2y$10$wwl58GKNuOBBYmyGPVArR.EMHujLOTIZ04cJVaCVJnFn3jkT19XL.'),
(1234567, 'tsttsyssg', 'bdbdbdb', 'hshsbs', 'q123', 6464646, 'aktif', 'zjjsjz', '$2y$10$dpiRX53igeQr2R/9fbZoEuXZgn3tt80dSLqSdmJQVwRUvgshsLdq6'),
(1702001, 'fatah', 'laki-laki', '', '', 0, '', '', '$2y$10$1SpvcvCZiuGAQy4FtAdw1.CNEbmBFPlhZ5BAKJTQKCMduXf85rJzO'),
(1702059, 'yudi', 'laki-laki', 'teknik elektronika', '20 mei 1998', 2017, 'mahasiswa aktif', '3 elektronika B', '$2y$10$a9RVWBh3HbD1KdL9k2mmju7ytVoWBxksiupPay295.mASgyuvPyUS'),
(12345678, 'yuduudud', '', '', '', 0, '', '', '$2y$10$oP0iu1r6XFMHR4IbkBs4XO3QmHk.vVvCWV3SRPFBfx40l1qSPRnzi');

-- --------------------------------------------------------

--
-- Table structure for table `nilaiakademik`
--

CREATE TABLE `nilaiakademik` (
  `id` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama` text CHARACTER SET latin1 NOT NULL,
  `uts` text CHARACTER SET latin1 NOT NULL,
  `uas` text CHARACTER SET latin1 NOT NULL,
  `tugas` text CHARACTER SET latin1 NOT NULL,
  `kuis` text CHARACTER SET latin1 NOT NULL,
  `akhir` text CHARACTER SET latin1 NOT NULL,
  `huruf` text CHARACTER SET latin1 NOT NULL,
  `angka` double NOT NULL,
  `kodemk` text CHARACTER SET latin1 NOT NULL,
  `namamk` text CHARACTER SET latin1 NOT NULL,
  `sks` int(11) NOT NULL,
  `tahunakademik` int(11) NOT NULL,
  `prodi` text CHARACTER SET latin1 NOT NULL,
  `dosen` text CHARACTER SET latin1 NOT NULL,
  `kelas` text CHARACTER SET latin1 NOT NULL,
  `status` text CHARACTER SET latin1 NOT NULL,
  `statusmk` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nilaiakademik`
--

INSERT INTO `nilaiakademik` (`id`, `nim`, `nama`, `uts`, `uas`, `tugas`, `kuis`, `akhir`, `huruf`, `angka`, `kodemk`, `namamk`, `sks`, `tahunakademik`, `prodi`, `dosen`, `kelas`, `status`, `statusmk`) VALUES
(1, 1702002, 'Anri Antonius M', '98', '98', '98', '98', '', '', 0, '', '', 0, 0, '', '', '', '', ''),
(2, 1702059, 'yudi', '100', '100', '100', '100', '100', 'A', 12, 'DL001', 'PROGRAMMING', 3, 2020, 'Teknik elektronika', 'Sardiko', '3 elektronika B', 'aktif', 'aa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `evaluasidosen`
--
ALTER TABLE `evaluasidosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logkondite`
--
ALTER TABLE `logkondite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `nilaiakademik`
--
ALTER TABLE `nilaiakademik`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `evaluasidosen`
--
ALTER TABLE `evaluasidosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logkondite`
--
ALTER TABLE `logkondite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nilaiakademik`
--
ALTER TABLE `nilaiakademik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
