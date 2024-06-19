-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Jun 2024 pada 17.09
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `kodeanggota` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `npm` varchar(50) NOT NULL,
  `programstudi` varchar(50) NOT NULL,
  `nomerhp` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_anggota`
--

INSERT INTO `tb_anggota` (`kodeanggota`, `nama`, `npm`, `programstudi`, `nomerhp`, `alamat`) VALUES
('KA004', 'Yosia', '221401132', 'Ilmu Komputer', '085261732550', 'JL. Perwira'),
('KA005', 'Ucup', '221401082', 'Ilmu Komputer', '08237716627', 'Medan'),
('KA006', 'Pael', '2214011432', 'Ilmu Komputer', '08125663772', 'Medan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE `tb_buku` (
  `kodebuku` varchar(50) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `tahunterbit` varchar(50) NOT NULL,
  `stok` varchar(50) NOT NULL,
  `jenisbuku` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`kodebuku`, `judul`, `pengarang`, `tahunterbit`, `stok`, `jenisbuku`) VALUES
('KB001', 'Java Design UI', 'Bank David', '2019', '24', 'Java Design'),
('KB002', 'Cara Makan Nasi', 'Abang toyib', '2021', '13', 'Bertahan Hidup'),
('KB003', 'Algoritma', 'Budi', '2018', '12', 'Komputer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kembalikanbuku`
--

CREATE TABLE `tb_kembalikanbuku` (
  `kodetransaksi` varchar(50) NOT NULL,
  `kodeanggota` varchar(50) NOT NULL,
  `kodebuku` varchar(50) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `tahunterbit` varchar(50) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `tanggalpinjam` date NOT NULL,
  `tanggalkembali` date NOT NULL,
  `jumlahpinjam` varchar(50) NOT NULL,
  `keterlambatan` varchar(50) NOT NULL,
  `denda` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_kembalikanbuku`
--

INSERT INTO `tb_kembalikanbuku` (`kodetransaksi`, `kodeanggota`, `kodebuku`, `judul`, `pengarang`, `tahunterbit`, `jenis`, `tanggalpinjam`, `tanggalkembali`, `jumlahpinjam`, `keterlambatan`, `denda`) VALUES
('KT001', 'KA003', 'KB002', 'Cara Makan Nasi', 'Abang toyib', '2021', 'Bertahan Hidup', '2021-03-24', '2021-03-25', '3', '0', '0'),
('KT002', 'KA003', 'KB001', 'Java Design UI', 'Bank David', '2019', 'Java Design', '2021-03-01', '2021-03-02', '4', '22', '110000'),
('KT003', 'KA003', 'KB002', 'Cara Makan Nasi', 'Abang toyib', '2021', 'Bertahan Hidup', '2021-03-01', '2021-03-02', '3', '22', '22000'),
('KT004', 'KA003', 'KB001', 'Java Design UI', 'Bank David', '2019', 'Java Design', '2021-03-24', '2021-03-25', '5', '0', '0'),
('KT005', 'KA002', 'KB001', 'Java Design UI', 'Bank David', '2019', 'Java Design', '2021-03-24', '2021-03-25', '4', '0', '0'),
('KT006', 'KA001', 'KB001', 'Java Design UI', 'Bank David', '2019', 'Java Design', '2021-03-24', '2021-03-25', '5', '0', '0'),
('KT008', 'KA001', 'KB002', 'Cara Makan Nasi', 'Abang toyib', '2021', 'Bertahan Hidup', '2021-03-24', '2021-03-25', '1', '0', '0'),
('KT009', 'KA003', 'KB001', 'Java Design UI', 'Bank David', '2019', 'Java Design', '2021-03-24', '2021-03-24', '1', '0', '0'),
('KT010', 'KA003', 'KB001', 'Java Design UI', 'Bank David', '2019', 'Java Design', '2021-03-24', '2021-03-24', '1', '0', '0'),
('KT011', 'KA001', 'KB002', 'Cara Makan Nasi', 'Abang toyib', '2021', 'Bertahan Hidup', '2021-03-01', '2021-03-24', '1', '0', '0'),
('KT012', 'KA003', 'KB002', 'Cara Makan Nasi', 'Abang toyib', '2021', 'Bertahan Hidup', '2021-03-24', '2021-03-24', '1', '0', '0'),
('KT013', 'KA001', 'KB001', 'Java Design UI', 'Bank David', '2019', 'Java Design', '2021-03-24', '2021-03-24', '1', '0', '0'),
('KT014', 'KA006', 'KB003', 'Algoritma', 'Budi', '2018', 'Komputer', '2024-06-03', '2024-06-04', '1', '15', '15000');

--
-- Trigger `tb_kembalikanbuku`
--
DELIMITER $$
CREATE TRIGGER `updatestokbuku` AFTER INSERT ON `tb_kembalikanbuku` FOR EACH ROW BEGIN
UPDATE tb_buku SET stok=stok+new.jumlahpinjam WHERE kodebuku=new.kodebuku;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_peminjaman`
--

CREATE TABLE `tb_peminjaman` (
  `kodetransaksi` varchar(20) NOT NULL,
  `kodeanggota` varchar(20) NOT NULL,
  `kodebuku` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `pengarang` varchar(20) NOT NULL,
  `tahunterbit` varchar(20) NOT NULL,
  `jenisbuku` varchar(20) NOT NULL,
  `tanggalpinjam` date NOT NULL,
  `tanggalkembali` date NOT NULL,
  `tersedia` varchar(20) NOT NULL,
  `jumlahpinjam` varchar(20) NOT NULL,
  `sisabuku` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tb_peminjaman`
--

INSERT INTO `tb_peminjaman` (`kodetransaksi`, `kodeanggota`, `kodebuku`, `judul`, `pengarang`, `tahunterbit`, `jenisbuku`, `tanggalpinjam`, `tanggalkembali`, `tersedia`, `jumlahpinjam`, `sisabuku`) VALUES
('KT001', 'KA003', 'KB002', 'Cara Makan Nasi', 'Abang toyib', '2021', 'Bertahan Hidup', '2021-03-24', '2021-03-25', '13', '3', '10'),
('KT002', 'KA003', 'KB001', 'Java Design UI', 'Bank David', '2019', 'Java Design', '2021-03-01', '2021-03-02', '24', '4', '20'),
('KT003', 'KA003', 'KB002', 'Cara Makan Nasi', 'Abang toyib', '2021', 'Bertahan Hidup', '2021-03-01', '2021-03-02', '13', '3', '10'),
('KT004', 'KA001', 'KB001', 'Java Design UI', 'Bank David', '2019', 'Java Design', '2021-03-24', '2021-03-25', '24', '5', '19'),
('KT005', 'KA002', 'KB001', 'Java Design UI', 'Bank David', '2019', 'Java Design', '2021-03-24', '2021-03-25', '19', '4', '15'),
('KT006', 'KA003', 'KB001', 'Java Design UI', 'Bank David', '2019', 'Java Design', '2021-03-24', '2021-03-25', '15', '5', '10'),
('KT007', 'KA003', 'KB002', 'Cara Makan Nasi', 'Abang toyib', '2021', 'Bertahan Hidup', '2021-03-24', '2021-03-26', '13', '1', '12'),
('KT008', 'KA001', 'KB002', 'Cara Makan Nasi', 'Abang toyib', '2021', 'Bertahan Hidup', '2021-03-24', '2021-03-25', '12', '1', '11'),
('KT009', 'KA003', 'KB001', 'Java Design UI', 'Bank David', '2019', 'Java Design', '2021-03-24', '2021-03-24', '24', '1', '23'),
('KT010', 'KA003', 'KB001', 'Java Design UI', 'Bank David', '2019', 'Java Design', '2021-03-24', '2021-03-24', '24', '1', '23'),
('KT011', 'KA001', 'KB002', 'Cara Makan Nasi', 'Abang toyib', '2021', 'Bertahan Hidup', '2021-03-01', '2021-03-24', '13', '1', '12'),
('KT012', 'KA003', 'KB002', 'Cara Makan Nasi', 'Abang toyib', '2021', 'Bertahan Hidup', '2021-03-24', '2021-03-24', '13', '1', '12'),
('KT013', 'KA001', 'KB001', 'Java Design UI', 'Bank David', '2019', 'Java Design', '2021-03-24', '2021-03-24', '24', '1', '23'),
('KT014', 'KA006', 'KB003', 'Algoritma', 'Budi', '2018', 'Komputer', '2024-06-03', '2024-06-04', '12', '1', '11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_tempatpinjam`
--

CREATE TABLE `tb_tempatpinjam` (
  `kodeanggota` varchar(50) NOT NULL,
  `kodebuku` varchar(50) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `tahunterbit` varchar(50) NOT NULL,
  `jenisbuku` varchar(50) NOT NULL,
  `tanggalpinjam` date NOT NULL,
  `tanggalkembali` date NOT NULL,
  `jumlahpinjam` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Trigger `tb_tempatpinjam`
--
DELIMITER $$
CREATE TRIGGER `kurangistokbuku` AFTER INSERT ON `tb_tempatpinjam` FOR EACH ROW BEGIN
UPDATE tb_buku SET stok=stok-new.jumlahpinjam WHERE kodebuku=new.kodebuku;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`kodeanggota`);

--
-- Indeks untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`kodebuku`);

--
-- Indeks untuk tabel `tb_kembalikanbuku`
--
ALTER TABLE `tb_kembalikanbuku`
  ADD PRIMARY KEY (`kodetransaksi`);

--
-- Indeks untuk tabel `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD PRIMARY KEY (`kodetransaksi`);

--
-- Indeks untuk tabel `tb_tempatpinjam`
--
ALTER TABLE `tb_tempatpinjam`
  ADD PRIMARY KEY (`kodeanggota`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
