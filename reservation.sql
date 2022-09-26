-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Agu 2022 pada 23.27
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reservation`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `book_table`
--

CREATE TABLE `book_table` (
  `id_bt` int(11) NOT NULL,
  `kodeBook` varchar(50) NOT NULL,
  `no_table` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` time NOT NULL,
  `notelp` varchar(13) NOT NULL,
  `atasnama` varchar(50) NOT NULL,
  `with_order` tinyint(1) NOT NULL,
  `statusPembayaran` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `notelpon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id`, `username`, `password`, `notelpon`) VALUES
(1, 'ruby', 'ruby', '081317771402'),
(2, 'yuser', 'uusseerr123', '0887653554'),
(3, 'quser', '$2y$10$a4n/igjfjdICGEMA6pbJjuawZZqt9QjrTBBhnZil9IB5cd0iEhvPC', '0887653554'),
(4, 'user', '$2y$10$Iaz3uGwehw8q5opnmum5Ru5dC9Hu5dCPz5x2uSKZAgv.Lg9FyHa16', '081317771402'),
(5, 'uuuser', '$2y$10$mQdFaH3QiNeCMRK8WND1leJ6C3xpDl1I61ixGs87hLsiDkdVkXDMW', '0887653554'),
(6, 'mruby', '$2y$10$svQ/nqdnaks10ipyW5rwqu0pJQh6M/pNW0AzH9tZF76Gw97BeZ/nq', '0887653554'),
(7, 'adminn', '$2y$10$kvVfa4mm44kvU.Njjz0bV.icMwSAUY4jh2nNZCXcRCV9i.a9mM4eG', '085959050975'),
(8, 'asep saepullah', '$2y$10$xktOZeKNWPPGoRflkwgDoeyzePsWGp0nqlRyQyvxq1C9WUUSqQ3bK', '081311112222333'),
(9, 'adelia noviyanti', '$2y$10$0.p2a4srJRUlcJilJRSETuqmjtQxXquNDfoiapDq88FTD6eYZyRWy', '081221210303'),
(10, 'saefudin', '$2y$10$niCYUmx8TKfmUbSskXJ/yuxjPCjptJVaO907DlNFGqC1rm./0jsXm', '0887653554'),
(11, 'noviyanti', '$2y$10$piQK2mLb8hKqqc/zzwjWae3A3P3AKSm0BN1GJr8BVXPFNOXXDycza', '082635837'),
(12, 'novii', '$2y$10$lJVMsANKByRK9SQBMPdLt.vmuCI7ZvCWgoOVvM03MKyENqy8OM5mq', '073387248734'),
(15, 'adelia noviyanti', '$2y$10$s8ZXkQAwZ0FKAgMm0mSqeOJ9DJjnIcdF9AtbU.ktAGz/R.xFqIlsa', '081234567890'),
(16, 'qqq', '$2y$10$XdIyUAH3u0SaCvy3yf.7tuT7b24xW05LU2EC1sspLxDUDaPqVdkfa', '09876543212');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu_makanan`
--

CREATE TABLE `menu_makanan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `foto_makanan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `menu_makanan`
--

INSERT INTO `menu_makanan` (`id`, `nama`, `harga`, `foto_makanan`) VALUES
(1, 'Chicken Salted Egg', 35000, 'Chicken Salted Egg.jpg'),
(2, 'iga bakar', 40000, 'iga bakar.jpg'),
(3, 'Ayam Geprek', 19000, 'IMG_20220831_033345.jpg'),
(4, 'Mie Aceh', 25000, 'Mie Aceh.jpg'),
(5, 'Nasi Goreng Tropikal', 38500, 'nasi goreng tropikal.jpg'),
(6, 'Sop Iga', 38500, 'Sop iga.jpg'),
(7, 'Spicy Chicken Wings', 22000, 'spicy chicken wings.jpg'),
(8, 'Spicy Ramen', 35000, 'spicy ramen.jpg'),
(9, 'Gasuke', 18000, 'Gasuke.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ordered_product`
--

CREATE TABLE `ordered_product` (
  `id` int(11) NOT NULL,
  `ordered_id` varchar(50) NOT NULL,
  `menuPesanan` text NOT NULL,
  `total_paid` int(11) NOT NULL,
  `no_table` int(11) NOT NULL,
  `atasnama` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `tanggal` date NOT NULL,
  `bukti_pembayaran` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ordered_product`
--

INSERT INTO `ordered_product` (`id`, `ordered_id`, `menuPesanan`, `total_paid`, `no_table`, `atasnama`, `no_telp`, `tanggal`, `bukti_pembayaran`) VALUES
(1, '12022-09-02', 'Chicken Salted Egg 1 ,iga bakar 1', 75000, 1, 'qqq', '09876543212', '2022-09-02', 'login.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `key_id` int(11) NOT NULL,
  `menu_name` text NOT NULL,
  `type` enum('F','D') NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'Admin123', '$2y$10$PLlRmUTbogvuLhi35dz4uOGMbNYUVN6nyKv2PGNNCO8rl75rKpPY2'),
(2, 'Uuser', '$2y$10$BUeRAWXZidIY0G0yyMBx/OIPxLTVpD5luyJWSJrg0gV6O63HTtpCe');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `book_table`
--
ALTER TABLE `book_table`
  ADD PRIMARY KEY (`id_bt`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu_makanan`
--
ALTER TABLE `menu_makanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ordered_product`
--
ALTER TABLE `ordered_product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`key_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `book_table`
--
ALTER TABLE `book_table`
  MODIFY `id_bt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `menu_makanan`
--
ALTER TABLE `menu_makanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `ordered_product`
--
ALTER TABLE `ordered_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `key_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
