-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2023 at 02:26 AM
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
-- Database: `riswannopiyar_2010010085`
--

-- --------------------------------------------------------

--
-- Table structure for table `narapidana`
--

CREATE TABLE `narapidana` (
  `nik_narapidana` varchar(16) NOT NULL,
  `nama_narapidana` varchar(25) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tgl_lahir` varchar(20) NOT NULL,
  `kasus` varchar(20) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `masa_tahanan` varchar(15) NOT NULL,
  `tanggal_masuk` varchar(20) NOT NULL,
  `tanggal_bebas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `narapidana`
--

INSERT INTO `narapidana` (`nik_narapidana`, `nama_narapidana`, `jenis_kelamin`, `tgl_lahir`, `kasus`, `alamat`, `masa_tahanan`, `tanggal_masuk`, `tanggal_bebas`) VALUES
('1231557292626353', 'Fajar Diantara', 'Laki-laki', '19-Juni-1991', 'Pemerkosaan', 'Jln.Jendral KM 08', '15 Tahun', '11-Juni-2021', '11-Juni-2036'),
('1234167896130042', 'Sudan Rimarto', 'Laki-laki', '11-September-1986', 'Narkoba', 'Jln.Mawar no 16', '4 Tahun', '04-Mare-2021', '04-Mare-2025'),
('1250965821190450', 'Gimali Rianto', 'Laki-laki', '23-April-1994', 'Pembunuhan', 'Jln.Ansyari KM 13', '10 Tahun', '04-februari-2020', '04-februari-2030'),
('1336967849121007', 'Ahmad Rizaldi', 'Laki-laki', '27-Maret-1986', 'Narkoba', 'Jln.Pahlawan no 32', '6 Tahun', '01-April-2019', '01-April-2025'),
('1372964563011748', 'Abdul Mujid', 'Laki-laki', '11-Agustus-1980', 'Narkoba', 'Jln.Jendral KM 20', '6 Tahun', '14-Mei-2020', '14-Mei-2026'),
('1927901818120407', 'Rijak Tipanuli', 'Laki-laki', '13-Agustus-1985', 'Perampokan', 'Jln.Jendral KM 27', '9 Tahun', '21-oktober-2021', '21-oktober-2030'),
('1934766826122406', 'Inah', 'Perempuan', '09-Juni-1990', 'Narkoba', 'Jln.Melati no 22', '4 Tahun', '01-September-2021', '01-September-2025'),
('2147483647888811', 'Hasnah', 'Perempuan', '23-Januari-1994', 'Pencurian', 'Jln.Ansyari KM 11', '4 Tahun', '01-April-2019', '01-April-2023'),
('2190161841100756', 'Antoni Ginting', 'Laki-laki', '01-Maret-1994', 'Pencurian', 'Jln.Mawar no 14', '6 Tahun', '01-Mei-2019', '01-Mei-2025'),
('2191962842190420', 'Udin', 'Laki-laki', '01-Mei-1990', 'Narkoba', 'Jln.Maritim Raya no 31', '10 Tahun', '24-Mei-2020', '24-Mei-2030'),
('2230967891120456', 'Slamet Rianto', 'Laki-laki', '30-Oktober-1994', 'Pembunuhan', 'Jln.Melayu no 12', '13 Tahun', '04-Januari-2017', '04-Januari-2030'),
('2231967891120756', 'Jabrik', 'Laki-laki', '23-Januari-1994', 'Perampokan', 'Jln.Ansyari KM 13', '9 Tahun', '21-oktober-2015', '21-oktober-2024'),
('2830977891220451', 'Aril Limor', 'Laki-laki', '05-Juni-1990', 'Pembunuhan', 'Jln.Ansyari KM 09', '10 Tahun', '04-September-2020', '04-September-2030'),
('3234967896120456', 'Santoso', 'Laki-laki', '13-November-1997', 'Pencurian', 'Jln.Mawar no 36', '4 Tahun', '01-oktober-2021', '01-oktober-2025'),
('4230947896120458', 'Santoso Murida', 'Laki-laki', '13-November-1997', 'Pencurian', 'Jln.Ansyari KM 11', '13 Tahun', '14-Januari-2015', '14-Januari-2028'),
('5237907818120417', 'Fulqan Simanjuntak', 'Laki-laki', '13-Agustus-1985', 'Perampokan', 'Jln.Jendral KM 27', '9 Tahun', '21-oktober-2021', '21-oktober-2030'),
('6224945674020416', 'Kadir Jainuddin', 'Laki-laki', '16-Desember-1983', 'Terorisme', 'Jln.Mawar no 44', 'Hukuman Mati', '01-oktober-2022', 'Eksekusi Mati'),
('6320927815120450', 'Muhammad Hidayat', 'Laki-laki', '09-Juni-1990', 'Pemerkosaan', 'Jln.Melati no 42', '13 Tahun', '17-Juli-2012', '17-Juli-2025'),
('8270907891120416', 'Syahrul', 'Laki-laki', '23-Januari-1994', 'Perampokan', 'Jln.Ansyari KM 13', '6 Tahun', '04-februari-2020', '04-februari-2026'),
('9230969890110426', 'Muhammad Rusdiansyah', 'Laki-laki', '23-Maret-1994', 'Pembunuhan', 'Jln.Kampung melayu no 21', '10 Tahun', '14-Januari-2015', '14-Januari-2025');

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `nik_pengunjung` varchar(16) NOT NULL,
  `nama_pengunjung` varchar(25) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `narapidana_dikunjungi` varchar(25) NOT NULL,
  `tanggal_kunjungan` varchar(20) NOT NULL,
  `alamat` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`nik_pengunjung`, `nama_pengunjung`, `jenis_kelamin`, `narapidana_dikunjungi`, `tanggal_kunjungan`, `alamat`) VALUES
('1441964591061051', 'Ahmad Dhani', 'Laki-laki', 'Muhammad Hidayat', '15-November-2022', 'Jln.Jendral KM 23'),
('1524367729661856', 'Muhammad Ridho', 'Laki-laki', 'Muhammad Hidayat', '20-Januari-2022', 'Jln.Melati no 42'),
('1529567217942601', 'Riyanti Mustika', 'Perempuan', 'Abdul Mujid', '10-Agustus-2022', 'Jln.Arifin no 42'),
('1566390121772650', 'Susi Sasanti', 'Perempuan', 'Abdul Mujid', '28-April-2022', 'Jln.Ansyari KM 03'),
('2122367029061125', 'Mirna', 'Perempuan', 'Santoso', '03-April-2022', 'Jln.Ansyari KM 11'),
('2162462091061321', 'Dewi', 'Perempuan', 'Syahrul', '20-Januari-2022', 'Jln.Ansyari KM 19'),
('2219316762710055', 'Siti Rohinah', 'Perempuan', 'Abdul Mujid', '10-Agustus-2022', 'Jln.Melati no 41'),
('3519307829761851', 'Yuli Astuti', 'Perempuan', 'Ahmad Rizaldi', '10-November-2022', 'Jln.Melati no 10'),
('3529367719765852', 'Rizaldi', 'Laki-laki', 'Jabrik', '10-April-2022', 'Jln.Ansyari KM 13'),
('4521367614725952', 'Ridhani', 'Laki-laki', 'Muhammad Hidayat', '08-Oktober-2022', 'Jln.Jendral no 30'),
('4527128618722050', 'Nina Lilia', 'Perempuan', 'Ahmad Rizaldi', '10-November-2022', 'Jln.Mawar no 31');

-- --------------------------------------------------------

--
-- Table structure for table `sipir`
--

CREATE TABLE `sipir` (
  `nik_sipir` varchar(16) NOT NULL,
  `nama_sipir` varchar(30) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tgl_lahir` varchar(30) NOT NULL,
  `jabatan` enum('Keamanan','Tata Usaha','Pembinaan','KPLP','Kepala Lapas') NOT NULL,
  `gaji` enum('Rp. 3.000.000','Rp. 3.500.000','Rp. 4.000.000','Rp. 4.500.000','Rp. 5.000.000','Rp. 5.500.000','Rp. 6.000.000') NOT NULL,
  `alamat` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sipir`
--

INSERT INTO `sipir` (`nik_sipir`, `nama_sipir`, `jenis_kelamin`, `tgl_lahir`, `jabatan`, `gaji`, `alamat`) VALUES
('1212334388020437', 'Diana Akira', 'Perempuan', '23-Agustus-1998', 'Tata Usaha', 'Rp. 5.000.000', 'Jln.Maritim Raya no 04'),
('1229702336041136', 'Amir Syarifudin', 'Laki-laki', '29-desember-1999', 'Keamanan', 'Rp. 3.000.000', 'Jln.Melati no 02'),
('1292137323521132', 'Muhammad Ruslan', 'Laki-laki', '23-Januari-1989', 'KPLP', 'Rp. 4.000.000', 'Jln.Melayu no 11'),
('1421605124560239', 'Reza Himatullah', 'Laki-laki', '11-Oktober-1995', 'Keamanan', 'Rp. 4.000.000', 'Jln.Melati no 42'),
('1422156721856636', 'Muhammad Zailani', 'Laki-laki', '07-Januari-1984', 'Kepala Lapas', 'Rp. 6.000.000', 'Jln.Maritim Raya no 11'),
('1451220304570231', 'Rizky wibowo', 'Laki-laki', '03-Februari-1991', 'Keamanan', 'Rp. 4.500.000', 'Jln.Jendral KM 16'),
('1481155324561238', 'Ratna Sari', 'Perempuan', '09-Juni-1993', 'Tata Usaha', 'Rp. 3.500.000', 'Jln.Sudirman KM 7'),
('1521710701386932', 'Indra Murfian', 'Laki-laki', '13-Juli-1990', 'KPLP', 'Rp. 4.000.000', 'Jln.Mawar no 32'),
('1522710701386932', 'Indra Murfian', 'Laki-laki', '13-Juli-1990', 'KPLP', 'Rp. 4.000.000', 'Jln.Mawar no 32'),
('1820958701826634', 'Ahmad Yazid', 'Laki-laki', '23-Juni-1993', 'Pembinaan', 'Rp. 5.000.000', 'Jln.Ansyari KM 17'),
('2502331368080430', 'Samsul Bahri', 'Laki-laki', '23-November-1990', 'Keamanan', 'Rp. 4.000.000', 'Jln.Maritim Raya no 14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `narapidana`
--
ALTER TABLE `narapidana`
  ADD PRIMARY KEY (`nik_narapidana`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`nik_pengunjung`);

--
-- Indexes for table `sipir`
--
ALTER TABLE `sipir`
  ADD PRIMARY KEY (`nik_sipir`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
