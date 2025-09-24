-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 22, 2024 at 09:14 AM
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
-- Database: `material_proyek`
--

-- --------------------------------------------------------

--
-- Table structure for table `BahanMaterial`
--

CREATE TABLE `BahanMaterial` (
  `Kode` char(5) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Supplier` varchar(50) NOT NULL,
  `Ref_NoGambar` int(11) NOT NULL,
  `LokasiPekerjaan_Ruang` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `BahanMaterial`
--

INSERT INTO `BahanMaterial` (`Kode`, `Nama`, `Supplier`, `Ref_NoGambar`, `LokasiPekerjaan_Ruang`) VALUES
('C-006', 'Genteng Asbes', 'PT Atap Dunia', 67, 'M05'),
('E-003', 'Kabel NYM 3x2.5 mm', 'PT Kabelindo Maju', 28, 'H10'),
('E-005', 'Kabel NYA 1.5 mm', 'PT Kabel Prima Elektrik', 65, 'K12'),
('E-010', 'Lampu LED 10 Watt', 'PT Cahaya Elektrik Nusantara', 30, 'J09'),
('E-013', 'Saklar Schneider', 'PT Schneider Elektrik Asia', 72, 'L07'),
('F-002', 'Pasir Plester Halus', 'PT Pasir Makmur', 18, 'F11'),
('F-007', 'Cat Nippon Paint Vinilex (interior)', 'PT Nippon Paint Indonesia', 4, 'C06'),
('F-010', 'Semen Tiga Roda', 'PT Indocement', 15, 'A03'),
('L-011', 'Keramik Lantai 40x40 cm', 'PT Keramik Prima', 36, 'Z08'),
('L-012', 'Granit 60x60 cm', 'PT Granit Nusantara', 95, 'B04'),
('L-013', 'Marmer 80x80', 'PT Marmer Mulia Sejahtera', 32, 'Y07'),
('M-001', 'Batu Kali 20-30 cm', 'PT Batu Alam Sejahtera', 14, 'G02'),
('M-005', 'Beton Ready Mix K225', 'PT Beton Mix Indonesia', 82, 'D01'),
('M-007', 'Besi Ulir Diameter 10mm', 'PT Baja Utama', 29, 'E05');

-- --------------------------------------------------------

--
-- Table structure for table `PKPROJECT005`
--

CREATE TABLE `PKPROJECT005` (
  `NoPengajuan` char(20) NOT NULL,
  `Revisi` int(11) NOT NULL,
  `TglPengajuan` date NOT NULL,
  `Paket` char(30) NOT NULL,
  `Kontraktor` varchar(50) NOT NULL,
  `TglProyek` date NOT NULL,
  `Kode` char(5) NOT NULL,
  `TypeMaterial` char(30) NOT NULL,
  `TypeKontrak` char(30) NOT NULL,
  `CthMaterial` char(10) NOT NULL,
  `Brosur` char(10) NOT NULL,
  `HasilTes` char(10) NOT NULL,
  `EvalGambar_Kontraktor` char(12) NOT NULL,
  `EvalGambar_Owner` char(12) NOT NULL,
  `EvalTeknis_Kontraktor` char(12) NOT NULL,
  `EvalTeknis_Owner` char(12) NOT NULL,
  `MutuMaterial_Kontraktor` char(5) NOT NULL,
  `MutuMaterial_Owner` char(5) NOT NULL,
  `HasilEval_Kontraktor` char(8) NOT NULL,
  `HasilEval_Owner` char(8) NOT NULL,
  `FollowUp_Kontraktor` char(30) NOT NULL,
  `FollowUp_Owner` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `PKPROJECT005`
--

INSERT INTO `PKPROJECT005` (`NoPengajuan`, `Revisi`, `TglPengajuan`, `Paket`, `Kontraktor`, `TglProyek`, `Kode`, `TypeMaterial`, `TypeKontrak`, `CthMaterial`, `Brosur`, `HasilTes`, `EvalGambar_Kontraktor`, `EvalGambar_Owner`, `EvalTeknis_Kontraktor`, `EvalTeknis_Owner`, `MutuMaterial_Kontraktor`, `MutuMaterial_Owner`, `HasilEval_Kontraktor`, `HasilEval_Owner`, `FollowUp_Kontraktor`, `FollowUp_Owner`) VALUES
('011/029/037', 1, '2023-06-12', 'Pekerjaan Arsitektur', 'PT Multi Structure', '2024-06-01', 'F-007', 'Material Dinding & Finishing', 'Lump Sum', 'Ada', 'Tidak Ada', 'Tidak Ada', 'Setuju', 'Tidak Setuju', 'Setuju', 'Setuju', 'Buruk', 'Cukup', 'Ditolak', 'Diterima', 'Pengajuan ulang', 'Perlu Mock Up'),
('012/015/050', 2, '2024-07-18', 'Pekerjaan Struktur', 'PT Waskita Karya', '2024-08-18', 'M-007', 'Material Konstruksi', 'Lump Sum', 'Ada', 'Tidak Ada', 'Ada', 'Setuju', 'Setuju', 'Tidak Setuju', 'Tidak Setuju', 'Cukup', 'Baik', 'Ditolak', 'Diterima', 'Perlu surat jaminan', 'Pengajuan ulang'),
('013/016/035', 0, '2024-11-20', 'Pekerjaan Listrik', 'PT Hutama Karya', '2024-12-20', 'E-013', 'Material Listrik', 'Unit Price', 'Ada', 'Ada', 'Ada', 'Setuju', 'Tidak Setuju', 'Setuju', 'Setuju', 'Baik', 'Baik', 'Diterima', 'Diterima', 'Perlu Mock Up', 'Perlu Mock Up'),
('014/045/030', 1, '2024-11-25', 'Pekerjaan Arsitektur', 'PT Total Bangun Persada', '2024-12-25', 'C-006', 'Material Plafon & Atap', 'Unit Price', 'Tidak Ada', 'Tidak Ada', 'Ada', 'Tidak Setuju', 'Tidak Setuju', 'Setuju', 'Setuju', 'Cukup', 'Buruk', 'Diterima', 'Diterima', 'Perlu Mock Up', 'Pengajuan ulang'),
('017/033/012', 1, '2024-03-09', 'Pekerjaan Arsitektur', 'PT Multi Structure', '2024-04-09', 'F-002', 'Material Dinding & Finishing', 'Lump Sum', 'Tidak Ada', 'Tidak Ada', 'Ada', 'Setuju', 'Tidak Setuju', 'Setuju', 'Setuju', 'Cukup', 'Buruk', 'Ditolak', 'Diterima', 'Pengajuan ulang', 'Perlu test laboratorium'),
('019/030/026', 2, '2024-08-29', 'Pekerjaan Arsitektur', 'PT Waskita Karya', '2024-09-29', 'L-012', 'Material Lantai', 'Lump Sum', 'Ada', 'Tidak Ada', 'Tidak Ada', 'Tidak Setuju', 'Tidak Setuju', 'Setuju', 'Tidak Setuju', 'Baik', 'Cukup', 'Ditolak', 'Diterima', 'Perlu surat jaminan', 'Perlu surat jaminan'),
('020/043/018', 0, '2024-09-16', 'Pekerjaan Listrik', 'PT Total Bangun Persada', '2024-10-16', 'E-003', 'Material Listrik', 'Unit Price', 'Ada', 'Ada', 'Ada', 'Tidak Setuju', 'Tidak Setuju', 'Tidak Setuju', 'Setuju', 'Buruk', 'Baik', 'Ditolak', 'Diterima', 'Perlu Mock Up', 'Perlu Mock Up'),
('021/007/030', 1, '2024-05-05', 'Pekerjaan Struktur', 'PT Wijaya Karya', '2024-06-05', 'M-005', 'Material Konstruksi', 'Lump Sum', 'Ada', 'Ada', 'Tidak Ada', 'Tidak Setuju', 'Tidak Setuju', 'Tidak Setuju', 'Tidak Setuju', 'Baik', 'Buruk', 'Diterima', 'Diterima', 'Perlu test laboratorium', 'Pengajuan ulang'),
('026/048/020', 2, '2024-01-10', 'Pekerjaan Arsitektur', 'PT Jaya Konstruksi', '2024-02-10', 'L-013', 'Material Lantai', 'Lump Sum', 'Ada', 'Tidak Ada', 'Tidak Ada', 'Setuju', 'Tidak Setuju', 'Tidak Setuju', 'Setuju', 'Cukup', 'Baik', 'Diterima', 'Diterima', 'Perlu Mock Up', 'Perlu Mock Up'),
('027/014/042', 1, '2024-09-16', 'Pekerjaan Arsitektur', 'PT Wijaya Karya', '2024-10-16', 'F-002', 'Material Konstruksi', 'Lump Sum', 'Ada', 'Tidak Ada', 'Ada', 'Setuju', 'Setuju', 'Tidak Setuju', 'Setuju', 'Baik', 'Baik', 'Ditolak', 'Diterima', 'Perlu test laboratorium', 'Perlu test laboratorium'),
('029/012/031', 1, '2024-10-25', 'Pekerjaan Listrik', 'PT Nindya Karya', '2024-11-25', 'E-005', 'Material Listrik', 'Unit Price', 'Ada', 'Ada', 'Ada', 'Tidak Setuju', 'Setuju', 'Tidak Setuju', 'Tidak Setuju', 'Buruk', 'Buruk', 'Diterima', 'Ditolak', 'Perla Mock Up', 'Perla Mock Up'),
('031/011/040', 1, '2024-02-24', 'Pekerjaan Struktur', 'PT Multi Structure', '2024-03-24', 'M-007', 'Material Konstruksi', 'Unit Price', 'Tidak Ada', 'Tidak Ada', 'Ada', 'Tidak Setuju', 'Setuju', 'Tidak Setuju', 'Setuju', 'Cukup', 'Buruk', 'Diterima', 'Diterima', 'Perlu Mock Up', 'Pengajuan ulang'),
('032/019/014', 1, '2023-12-01', 'Pekerjaan Arsitektur', 'PT Wijaya Karya', '2024-01-01', 'F-010', 'Material Dinding & Finishing', 'Unit Price', 'Tidak Ada', 'Ada', 'Ada', 'Tidak Setuju', 'Setuju', 'Tidak Setuju', 'Tidak Setuju', 'Cukup', 'Baik', 'Diterima', 'Diterima', 'Perlu surat jaminan', 'Perlu Mock Up'),
('035/025/039', 2, '2024-09-02', 'Pekerjaan Struktur', 'PT Jaya Konstruksi', '2024-10-02', 'F-010', 'Material Dinding & Finishing', 'Unit Price', 'Tidak Ada', 'Tidak Ada', 'Ada', 'Setuju', 'Setuju', 'Setuju', 'Tidak Setuju', 'Buruk', 'Buruk', 'Diterima', 'Ditolak', 'Perlu Mock Up', 'Perlu test laboratorium'),
('045/022/005', 0, '2024-04-24', 'Pekerjaan Struktur', 'PT Jaya Konstruksi', '2024-05-24', 'M-001', 'Material Konstruksi', 'Unit Price', 'Ada', 'Tidak Ada', 'Ada', 'Tidak Setuju', 'Tidak Setuju', 'Tidak Setuju', 'Setuju', 'Buruk', 'Buruk', 'Ditolak', 'Ditolak', 'Pengajuan ulang', 'Perlu Mock Up'),
('045/023/008', 2, '2023-11-29', 'Pekerjaan Struktur', 'PT Wijaya Karya', '2023-12-29', 'M-005', 'Material Konstruksi', 'Lump Sum', 'Ada', 'Tidak Ada', 'Ada', 'Setuju', 'Tidak Setuju', 'Setuju', 'Setuju', 'Baik', 'Buruk', 'Diterima', 'Diterima', 'Perlu test laboratorium', 'Perlu test laboratorium'),
('050/021/044', 2, '2024-10-04', 'Pekerjaan Listrik', 'PT Nindya Karya', '2024-11-04', 'E-005', 'Material Listrik', 'Unit Price', 'Ada', 'Ada', 'Ada', 'Setuju', 'Setuju', 'Setuju', 'Setuju', 'Baik', 'Baik', 'Diterima', 'Diterima', 'Perlu Mock Up', 'Perlu Mock Up'),
('054/009/021', 1, '2024-06-11', 'Pekerjaan Arsitektur', 'PT Wijaya Karya', '2024-07-11', 'L-011', 'Material Lantai', 'Unit Price', 'Tidak Ada', 'Ada', 'Ada', 'Tidak Setuju', 'Tidak Setuju', 'Tidak Setuju', 'Setuju', 'Baik', 'Buruk', 'Ditolak', 'Ditolak', 'Perlu test laboratorium', 'Perlu surat jaminan'),
('058/017/029', 0, '2023-12-28', 'Pekerjaan Arsitektur', 'PT Jaya Konstruksi', '2024-01-28', 'L-012', 'Material Lantai', 'Unit Price', 'Ada', 'Ada', 'Ada', 'Setuju', 'Tidak Setuju', 'Tidak Setuju', 'Tidak Setuju', 'Cukup', 'Buruk', 'Diterima', 'Ditolak', 'Perlu Mock Up', 'Perlu test laboratorium'),
('063/034/022', 0, '2024-09-30', 'Pekerjaan Listrik', 'PT Hutama Karya', '2024-10-30', 'E-010', 'Material Listrik', 'Unit Price', 'Ada', 'Ada', 'Ada', 'Setuju', 'Setuju', 'Tidak Setuju', 'Setuju', 'Cukup', 'Baik', 'Diterima', 'Diterima', 'Perlu Mock Up', 'Perlu Mock Up'),
('064/036/015', 2, '2024-01-03', 'Pekerjaan Arsitektur', 'PT Waskita Karya', '2024-02-03', 'L-011', 'Material Lantai', 'Unit Price', 'Tidak Ada', 'Tidak Ada', 'Ada', 'Tidak Setuju', 'Tidak Setuju', 'Setuju', 'Setuju', 'Baik', 'Buruk', 'Diterima', 'Diterima', 'Perlu test laboratorium', 'Perlu Mock Up');

-- --------------------------------------------------------

--
-- Table structure for table `TypeProduk`
--

CREATE TABLE `TypeProduk` (
  `TypeMaterial` char(30) NOT NULL,
  `Proyek` varchar(50) NOT NULL,
  `Ref_RKShal` int(11) NOT NULL,
  `LokasiPekerjaan_Lantai` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `TypeProduk`
--

INSERT INTO `TypeProduk` (`TypeMaterial`, `Proyek`, `Ref_RKShal`, `LokasiPekerjaan_Lantai`) VALUES
('Material Dinding & Finishing', 'Renovasi dinding', 2, 'LB02'),
('Material Konstruksi', 'Pengecoran pondasi struktur gedung', 1, 'LA01'),
('Material Lantai', 'Pemasangan lantai', 3, 'LC03'),
('Material Listrik', 'Instalasi listrik', 4, 'LD04'),
('Material Plafon & Atap', 'Pemasangan atap', 5, 'LE05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BahanMaterial`
--
ALTER TABLE `BahanMaterial`
  ADD PRIMARY KEY (`Kode`);

--
-- Indexes for table `PKPROJECT005`
--
ALTER TABLE `PKPROJECT005`
  ADD PRIMARY KEY (`NoPengajuan`),
  ADD KEY `Kode` (`Kode`),
  ADD KEY `TypeMaterial` (`TypeMaterial`);

--
-- Indexes for table `TypeProduk`
--
ALTER TABLE `TypeProduk`
  ADD PRIMARY KEY (`TypeMaterial`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `PKPROJECT005`
--
ALTER TABLE `PKPROJECT005`
  ADD CONSTRAINT `pkproject005_ibfk_1` FOREIGN KEY (`Kode`) REFERENCES `BahanMaterial` (`Kode`),
  ADD CONSTRAINT `pkproject005_ibfk_2` FOREIGN KEY (`TypeMaterial`) REFERENCES `TypeProduk` (`TypeMaterial`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
