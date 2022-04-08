-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Apr 2022 pada 21.14
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parkir`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kendaraan`
--

CREATE TABLE `kendaraan` (
  `kode_kendaraan` varchar(10) NOT NULL,
  `jenis_kendaraan` varchar(30) NOT NULL,
  `harga_parkir` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `parkir_keluar`
--

CREATE TABLE `parkir_keluar` (
  `kode_keluar` int(10) NOT NULL,
  `karcis` varchar(10) NOT NULL,
  `tanggal_jam_masuk` datetime NOT NULL,
  `tanggal_jam_keluar` datetime NOT NULL,
  `lama_parkir` varchar(30) NOT NULL,
  `harga_parkir` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `parkir_masuk`
--

CREATE TABLE `parkir_masuk` (
  `karcis` varchar(10) NOT NULL,
  `kode_kendaraan` varchar(10) NOT NULL,
  `plat` varchar(10) NOT NULL,
  `tanggal_jam_masuk` datetime NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` varchar(10) NOT NULL,
  `sandi` varchar(300) NOT NULL,
  `nama_petugas` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto_petugas` varchar(300) NOT NULL,
  `ket_waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`kode_kendaraan`);

--
-- Indeks untuk tabel `parkir_keluar`
--
ALTER TABLE `parkir_keluar`
  ADD PRIMARY KEY (`kode_keluar`),
  ADD KEY `karcis` (`karcis`);

--
-- Indeks untuk tabel `parkir_masuk`
--
ALTER TABLE `parkir_masuk`
  ADD PRIMARY KEY (`karcis`),
  ADD KEY `kode_kendaraan` (`kode_kendaraan`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `parkir_keluar`
--
ALTER TABLE `parkir_keluar`
  ADD CONSTRAINT `parkir_keluar_ibfk_1` FOREIGN KEY (`karcis`) REFERENCES `parkir_masuk` (`karcis`);

--
-- Ketidakleluasaan untuk tabel `parkir_masuk`
--
ALTER TABLE `parkir_masuk`
  ADD CONSTRAINT `parkir_masuk_ibfk_1` FOREIGN KEY (`kode_kendaraan`) REFERENCES `kendaraan` (`kode_kendaraan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
