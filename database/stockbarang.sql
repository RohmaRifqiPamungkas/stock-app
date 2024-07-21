-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2022 pada 18.36
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stockbarang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluar`
--

CREATE TABLE `keluar` (
  `idkeluar` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `qty` int(11) NOT NULL,
  `penerima` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `iduser` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`iduser`, `email`, `password`, `role`) VALUES
(1, 'admin@gmail.com', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `masuk`
--

CREATE TABLE `masuk` (
  `idmasuk` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `qty` int(11) NOT NULL,
  `penerima` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `masuk`
--

INSERT INTO `masuk` (`idmasuk`, `idbarang`, `tanggal`, `qty`, `penerima`) VALUES
(16, 19, '2022-06-26 16:11:53', 100, 'Alan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock`
--

CREATE TABLE `stock` (
  `idbarang` int(11) NOT NULL,
  `namabarang` varchar(25) NOT NULL,
  `deskripsi` varchar(25) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `stock`
--

INSERT INTO `stock` (`idbarang`, `namabarang`, `deskripsi`, `stock`) VALUES
(22, 'Samsung Galaxy', 'Handphone', 150),
(23, 'MacBook Pro', 'Laptop', 25),
(24, 'Rolex', 'Jam Tangan', 30),
(25, 'Sony Xperia', 'Handphone', 80),
(26, 'Dell XPS', 'Laptop', 35),
(27, 'Casio', 'Jam Tangan', 45),
(28, 'Xiaomi Mi', 'Handphone', 120),
(29, 'HP Spectre', 'Laptop', 15),
(30, 'Omega', 'Jam Tangan', 20),
(31, 'Google Pixel', 'Handphone', 90),
(32, 'Lenovo ThinkPad', 'Laptop', 40),
(33, 'Seiko', 'Jam Tangan', 60),
(34, 'Huawei P40', 'Handphone', 110),
(35, 'Acer Predator', 'Laptop', 30),
(36, 'Fossil', 'Jam Tangan', 50),
(37, 'iPhone 12', 'Handphone', 100),
(38, 'Surface Book', 'Laptop', 20),
(39, 'Swatch', 'Jam Tangan', 25),
(40, 'OnePlus 9', 'Handphone', 70),
(41, 'Razer Blade', 'Laptop', 10),
(42, 'Timex', 'Jam Tangan', 35),
(43, 'LG Velvet', 'Handphone', 85),
(44, 'MacBook Air', 'Laptop', 30),
(45, 'Tag Heuer', 'Jam Tangan', 15),
(46, 'Motorola Edge', 'Handphone', 60),
(47, 'Asus ROG', 'Laptop', 25),
(48, 'Citizen', 'Jam Tangan', 40),
(49, 'Nokia 8.3', 'Handphone', 95),
(50, 'Surface Laptop', 'Laptop', 15),
(51, 'Patek Philippe', 'Jam Tangan', 10),
(52, 'BlackBerry Key2', 'Handphone', 50),
(53, 'ThinkPad X1', 'Laptop', 25),
(54, 'G-Shock', 'Jam Tangan', 30),
(55, 'Vivo X60', 'Handphone', 75),
(56, 'MSI Gaming Laptop', 'Laptop', 5),
(57, 'Bvlgari', 'Jam Tangan', 20),
(58, 'Google Pixel 4a', 'Handphone', 80),
(59, 'Acer Swift', 'Laptop', 20),
(60, 'Emporio Armani', 'Jam Tangan', 25),
(61, 'Sony Xperia 1 II', 'Handphone', 65),
(62, 'Dell Inspiron', 'Laptop', 10),
(63, 'Tissot', 'Jam Tangan', 35),
(64, 'Samsung Galaxy Note', 'Handphone', 105),
(65, 'HP Pavilion', 'Laptop', 15),
(66, 'Cartier', 'Jam Tangan', 30),
(67, 'iPhone SE', 'Handphone', 55),
(68, 'Lenovo Yoga', 'Laptop', 20),
(69, 'Longines', 'Jam Tangan', 15),
(70, 'Huawei Mate', 'Handphone', 40),
(71, 'MacBook', 'Laptop', 10),
(72, 'Breguet', 'Jam Tangan', 25);


--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`idkeluar`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`iduser`);

--
-- Indeks untuk tabel `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`idmasuk`);

--
-- Indeks untuk tabel `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`idbarang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `keluar`
--
ALTER TABLE `keluar`
  MODIFY `idkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `masuk`
--
ALTER TABLE `masuk`
  MODIFY `idmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `stock`
--
ALTER TABLE `stock`
  MODIFY `idbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
