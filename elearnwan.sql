-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Bulan Mei 2021 pada 11.36
-- Versi server: 8.0.22
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearnwan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblabsensi`
--

CREATE TABLE `tblabsensi` (
  `idabsensi` int NOT NULL,
  `kodemk` varchar(20) NOT NULL,
  `kelas` enum('P1','P2','M1') NOT NULL,
  `nim` varchar(10) NOT NULL,
  `namamhs` varchar(50) NOT NULL,
  `kelompok` int NOT NULL,
  `a1` enum('Hadir','Tidak') DEFAULT NULL,
  `a2` enum('Hadir','Tidak') DEFAULT NULL,
  `a3` enum('Hadir','Tidak') DEFAULT NULL,
  `a4` enum('Hadir','Tidak') DEFAULT NULL,
  `a5` enum('Hadir','Tidak') DEFAULT NULL,
  `a6` enum('Hadir','Tidak') DEFAULT NULL,
  `a7` enum('Hadir','Tidak') DEFAULT NULL,
  `a8` enum('Hadir','Tidak') DEFAULT NULL,
  `a9` enum('Hadir','Tidak') DEFAULT NULL,
  `a10` enum('Hadir','Tidak') DEFAULT NULL,
  `a11` enum('Hadir','Tidak') DEFAULT NULL,
  `a12` enum('Hadir','Tidak') DEFAULT NULL,
  `a13` enum('Hadir','Tidak') DEFAULT NULL,
  `a14` enum('Hadir','Tidak') DEFAULT NULL,
  `a15` enum('Hadir','Tidak') DEFAULT NULL,
  `a16` enum('Hadir','Tidak') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblabsensi`
--

INSERT INTO `tblabsensi` (`idabsensi`, `kodemk`, `kelas`, `nim`, `namamhs`, `kelompok`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`, `a9`, `a10`, `a11`, `a12`, `a13`, `a14`, `a15`, `a16`) VALUES
(2, 'MK23', 'P1', '2018240001', 'Alfiyandi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'MK24', 'P1', '2018240001', 'Alfiyandi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'MK24', 'P1', '2018240083', 'Alderan Robi Aulia', 0, 'Hadir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'MK24', 'P1', '2018240037', 'Wawan Prastyo', 0, 'Hadir', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'MK24', 'P1', '2018240007', 'Salman Al Farisyi', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'MK24', 'P1', '2018240020', 'Riza Dwi Alfrian', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbladmin`
--

CREATE TABLE `tbladmin` (
  `idadmin` int NOT NULL,
  `namaadmin` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tanggallahir` date NOT NULL,
  `agama` enum('Islam','Kristen','Katolik','Hindu','Buddha','Lainnya') NOT NULL,
  `jekel` enum('L','P') NOT NULL,
  `telepon` varchar(25) NOT NULL,
  `status` enum('admin','dosen') NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbladmin`
--

INSERT INTO `tbladmin` (`idadmin`, `namaadmin`, `alamat`, `email`, `tanggallahir`, `agama`, `jekel`, `telepon`, `status`, `password`) VALUES
(1002, 'admin', 'Jakarta', 'admin@gmail.com', '1990-05-10', 'Islam', 'L', '02199218232', 'admin', '0192023a7bbd73250516f069df18b500');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbldiskusi`
--

CREATE TABLE `tbldiskusi` (
  `iddiskusi` int NOT NULL,
  `idmateri` int NOT NULL,
  `userid` varchar(25) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `komentar` longtext NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbldiskusi`
--

INSERT INTO `tbldiskusi` (`iddiskusi`, `idmateri`, `userid`, `nama`, `komentar`, `tanggal`) VALUES
(1, 1, '2018240001', 'Alfiyandi', '<p>terimakasih bu</p>\r\n', '2021-05-20 14:56:18'),
(2, 1, '2018240083', 'Alderan Robi Aulia', '<p>terimakasih</p>\r\n', '2021-05-22 16:34:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbldosen`
--

CREATE TABLE `tbldosen` (
  `iddosen` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tanggallahir` date NOT NULL,
  `agama` enum('Islam','Kristen','Katolik','Hindu','Buddha','Lainnya') NOT NULL,
  `jekel` enum('L','P') NOT NULL,
  `telepon` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbldosen`
--

INSERT INTO `tbldosen` (`iddosen`, `nama`, `alamat`, `email`, `tanggallahir`, `agama`, `jekel`, `telepon`, `password`) VALUES
('1234567890', 'Dosen', 'Jakarta', 'dosen123@gmail.com', '1992-09-12', 'Islam', 'P', '123456789', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblgambar`
--

CREATE TABLE `tblgambar` (
  `idgambar` int NOT NULL,
  `nim` varchar(10) NOT NULL,
  `file` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblgambar`
--

INSERT INTO `tblgambar` (`idgambar`, `nim`, `file`) VALUES
(3, '2018240001', '2018240001.jpg'),
(4, '2018240083', '2018240083.jpg'),
(5, '2018240037', '2018240037.jpg'),
(6, '2018240007', '2018240007.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbljawaban`
--

CREATE TABLE `tbljawaban` (
  `idjawaban` int NOT NULL,
  `idtugas` int NOT NULL,
  `idmhs` varchar(25) NOT NULL,
  `namamhs` varchar(50) NOT NULL,
  `jawaban` longtext NOT NULL,
  `tgl_upload` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbljawaban`
--

INSERT INTO `tbljawaban` (`idjawaban`, `idtugas`, `idmhs`, `namamhs`, `jawaban`, `tgl_upload`) VALUES
(1, 3, '2018240001', 'Alfiyandi', '<p>HADIR</p>\r\n', '2021-05-20 15:15:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblmahasiswa`
--

CREATE TABLE `tblmahasiswa` (
  `nim` varchar(10) NOT NULL,
  `namamhs` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tanggallahir` date NOT NULL,
  `agama` enum('Islam','Kristen','Katolik','Hindu','Buddha','Lainnya') NOT NULL,
  `jekel` enum('L','P') NOT NULL,
  `telepon` varchar(25) NOT NULL,
  `prodi` enum('TI','SI') NOT NULL,
  `semester` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `kelas` enum('P1','P2','M1') NOT NULL,
  `password` varchar(100) NOT NULL,
  `file` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblmahasiswa`
--

INSERT INTO `tblmahasiswa` (`nim`, `namamhs`, `alamat`, `email`, `tanggallahir`, `agama`, `jekel`, `telepon`, `prodi`, `semester`, `kelas`, `password`, `file`) VALUES
('2018240001', 'Alfiyandi', 'Jakarta', 'alfiyandi90@gmail.com', '1998-09-13', 'Islam', 'L', '081315297002', 'SI', '6', 'P1', 'e10adc3949ba59abbe56e057f20f883e', NULL),
('2018240007', 'Salman Al Farisyi', 'Jakarta', 'salman123@gmail.com', '1998-09-23', 'Islam', 'L', '089525577881', 'SI', '6', 'P1', 'e10adc3949ba59abbe56e057f20f883e', NULL),
('2018240020', 'Riza Dwi Alfrian', 'Jakarta', 'riza213@gmail.com', '1998-08-13', 'Islam', 'L', '08124514544', 'SI', '6', 'P1', 'e10adc3949ba59abbe56e057f20f883e', NULL),
('2018240037', 'Wawan Prastyo', 'Bekasi', 'wawan12@gmail.com', '1998-06-13', 'Islam', 'L', '081213376129', 'SI', '6', 'P1', 'e10adc3949ba59abbe56e057f20f883e', NULL),
('2018240083', 'Alderan Robi Aulia', 'Bekasi', 'alderan0@gmail.com', '1997-04-23', 'Islam', 'L', '089617942201', 'SI', '6', 'P1', 'e10adc3949ba59abbe56e057f20f883e', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblmatakuliah`
--

CREATE TABLE `tblmatakuliah` (
  `kodemk` varchar(20) NOT NULL,
  `namamk` varchar(50) NOT NULL,
  `iddosen` int NOT NULL,
  `namadosen` varchar(50) NOT NULL,
  `prodi` enum('TI','SI') NOT NULL,
  `semester` enum('1','2','3','4','5','6','7','8') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblmatakuliah`
--

INSERT INTO `tblmatakuliah` (`kodemk`, `namamk`, `iddosen`, `namadosen`, `prodi`, `semester`) VALUES
('MK24', 'E-LEARNING', 1234567890, 'Dosen', 'SI', '6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblmatakuliah_sec`
--

CREATE TABLE `tblmatakuliah_sec` (
  `kodemk` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblmatakuliah_sec`
--

INSERT INTO `tblmatakuliah_sec` (`kodemk`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblmateri`
--

CREATE TABLE `tblmateri` (
  `idmateri` int NOT NULL,
  `idpengirim` varchar(25) NOT NULL,
  `namapengirim` varchar(50) NOT NULL,
  `matakuliah` varchar(100) NOT NULL,
  `judulmateri` mediumtext NOT NULL,
  `tanggal` datetime DEFAULT CURRENT_TIMESTAMP,
  `file` longtext NOT NULL,
  `tipe` enum('m','d') DEFAULT NULL,
  `prodi` enum('TI','SI') DEFAULT NULL,
  `semester` enum('1','2','3','4','5','6','7','8') DEFAULT NULL,
  `pertemuan` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblmateri`
--

INSERT INTO `tblmateri` (`idmateri`, `idpengirim`, `namapengirim`, `matakuliah`, `judulmateri`, `tanggal`, `file`, `tipe`, `prodi`, `semester`, `pertemuan`) VALUES
(1, '1234567890', 'Dosen', 'MK24', 'Pengenalan CMS', '2021-05-20 14:55:21', '<p>Silahkan Pelajari ini</p>\r\n\r\n<p>https://www.niagahoster.co.id/blog/apa-itu-cms/</p>\r\n', 'd', 'SI', '6', '1'),
(2, '1234567890', 'Dosen', 'MK24', 'Materi 1', '2021-05-20 00:00:00', 'E-LEARNING_materi_pert1.pdf', 'm', 'SI', '6', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblpengumuman`
--

CREATE TABLE `tblpengumuman` (
  `idpengumuman` int NOT NULL,
  `idpengirim` varchar(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `isi` longtext NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblpengumuman`
--

INSERT INTO `tblpengumuman` (`idpengumuman`, `idpengirim`, `nama`, `isi`, `tanggal`) VALUES
(2, '1002', 'admin', '<p><strong>Diberitahukan kepada seluruh mahasiswa untuk melakukan pembayaran. jika ingin mencicil pembayaran, diharapkan menghubungi TU. Terimakasih</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n', '2021-05-20 09:30:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblriwayatnilai`
--

CREATE TABLE `tblriwayatnilai` (
  `idnilai` int NOT NULL,
  `kodemk` varchar(20) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `tipesoal` enum('e','p') NOT NULL,
  `tipetugas` enum('quiz','tugas','uts','kelompok') NOT NULL,
  `idsoal` varchar(50) NOT NULL,
  `nosoal` int NOT NULL,
  `isisoal` longtext NOT NULL,
  `jawabesai` longtext,
  `jawabpilgan` enum('a','b','c','d') DEFAULT NULL,
  `a` longtext,
  `b` longtext,
  `c` longtext,
  `d` longtext,
  `status` enum('proses','belum','selesai') NOT NULL,
  `nilai` int DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `kelompok` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblriwayatsoal`
--

CREATE TABLE `tblriwayatsoal` (
  `idriwayatsoal` int NOT NULL,
  `idsoalriw` int NOT NULL,
  `tipesoal` enum('e','p') NOT NULL,
  `kodemk` varchar(20) NOT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `namamhs` varchar(50) DEFAULT NULL,
  `tipetugas` enum('quiz','tugas','uts','kelompok') NOT NULL,
  `prodi` enum('TI','SI') NOT NULL,
  `semester` enum('1','2','3','4','5','6','7','8') NOT NULL,
  `status` enum('selesai','belum','proses') NOT NULL,
  `tanggal` datetime NOT NULL,
  `nilai` int DEFAULT NULL,
  `absensike` varchar(2) DEFAULT NULL,
  `kelompok` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblsoalesai`
--

CREATE TABLE `tblsoalesai` (
  `idesai` int NOT NULL,
  `idsoal` int NOT NULL,
  `noesai` int NOT NULL,
  `matakuliah` text NOT NULL,
  `isiesai` longtext NOT NULL,
  `jawaban` longtext,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblsoalpilgan`
--

CREATE TABLE `tblsoalpilgan` (
  `idpilgan` int NOT NULL,
  `idsoalpil` varchar(11) NOT NULL,
  `nopilgan` int NOT NULL,
  `matakuliah` text NOT NULL,
  `isipilgan` longtext NOT NULL,
  `jawabanpilgan` enum('A','B','C','D') NOT NULL,
  `a` longtext NOT NULL,
  `b` longtext NOT NULL,
  `c` longtext NOT NULL,
  `d` longtext NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbltugas`
--

CREATE TABLE `tbltugas` (
  `idtugas` int NOT NULL,
  `iddosen` varchar(25) NOT NULL,
  `namadosen` varchar(50) NOT NULL,
  `matakuliah` varchar(100) NOT NULL,
  `judultugas` mediumtext NOT NULL,
  `tanggal_upload` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `batas_tanggal` datetime DEFAULT NULL,
  `isi` longtext NOT NULL,
  `tipe` enum('quiz','tugas','uts','uas') NOT NULL,
  `prodi` enum('TI','SI') NOT NULL,
  `semester` enum('1','2','3','4','5','6','7','8') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbltugas`
--

INSERT INTO `tbltugas` (`idtugas`, `iddosen`, `namadosen`, `matakuliah`, `judultugas`, `tanggal_upload`, `batas_tanggal`, `isi`, `tipe`, `prodi`, `semester`) VALUES
(1, '218240037', 'Wawan', 'MK23', 'fgfgg', '2021-05-19 13:52:06', NULL, '<p>sdsdfdff</p>\r\n', 'tugas', 'SI', '6'),
(2, '1234567890', 'Dosen', 'MK24', 'kerjakan dengan benar', '2021-05-20 15:03:09', NULL, '<p>Bismillah</p>\r\n', 'uts', 'SI', '6'),
(3, '1234567890', 'Dosen', 'MK24', 'quiz', '2021-05-20 15:14:33', NULL, '<p>apa yang dimaksud dengan CMS ?</p>\r\n', 'quiz', 'SI', '6');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbluser`
--

CREATE TABLE `tbluser` (
  `userid` varchar(25) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` enum('AKD','MHS') NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `uploaded_images`
--

CREATE TABLE `uploaded_images` (
  `id` int NOT NULL,
  `file_dir` varchar(120) NOT NULL,
  `date_uploaded` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tblabsensi`
--
ALTER TABLE `tblabsensi`
  ADD PRIMARY KEY (`idabsensi`);

--
-- Indeks untuk tabel `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indeks untuk tabel `tbldiskusi`
--
ALTER TABLE `tbldiskusi`
  ADD PRIMARY KEY (`iddiskusi`);

--
-- Indeks untuk tabel `tbldosen`
--
ALTER TABLE `tbldosen`
  ADD PRIMARY KEY (`iddosen`);

--
-- Indeks untuk tabel `tblgambar`
--
ALTER TABLE `tblgambar`
  ADD PRIMARY KEY (`idgambar`);

--
-- Indeks untuk tabel `tbljawaban`
--
ALTER TABLE `tbljawaban`
  ADD PRIMARY KEY (`idjawaban`);

--
-- Indeks untuk tabel `tblmahasiswa`
--
ALTER TABLE `tblmahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `tblmatakuliah`
--
ALTER TABLE `tblmatakuliah`
  ADD PRIMARY KEY (`kodemk`);

--
-- Indeks untuk tabel `tblmatakuliah_sec`
--
ALTER TABLE `tblmatakuliah_sec`
  ADD PRIMARY KEY (`kodemk`);

--
-- Indeks untuk tabel `tblmateri`
--
ALTER TABLE `tblmateri`
  ADD PRIMARY KEY (`idmateri`);

--
-- Indeks untuk tabel `tblpengumuman`
--
ALTER TABLE `tblpengumuman`
  ADD PRIMARY KEY (`idpengumuman`);

--
-- Indeks untuk tabel `tblriwayatnilai`
--
ALTER TABLE `tblriwayatnilai`
  ADD PRIMARY KEY (`idnilai`);

--
-- Indeks untuk tabel `tblriwayatsoal`
--
ALTER TABLE `tblriwayatsoal`
  ADD PRIMARY KEY (`idriwayatsoal`);

--
-- Indeks untuk tabel `tblsoalesai`
--
ALTER TABLE `tblsoalesai`
  ADD PRIMARY KEY (`idesai`);

--
-- Indeks untuk tabel `tblsoalpilgan`
--
ALTER TABLE `tblsoalpilgan`
  ADD PRIMARY KEY (`idpilgan`);

--
-- Indeks untuk tabel `tbltugas`
--
ALTER TABLE `tbltugas`
  ADD PRIMARY KEY (`idtugas`);

--
-- Indeks untuk tabel `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`userid`);

--
-- Indeks untuk tabel `uploaded_images`
--
ALTER TABLE `uploaded_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tblabsensi`
--
ALTER TABLE `tblabsensi`
  MODIFY `idabsensi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `idadmin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1003;

--
-- AUTO_INCREMENT untuk tabel `tbldiskusi`
--
ALTER TABLE `tbldiskusi`
  MODIFY `iddiskusi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tblgambar`
--
ALTER TABLE `tblgambar`
  MODIFY `idgambar` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbljawaban`
--
ALTER TABLE `tbljawaban`
  MODIFY `idjawaban` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tblmatakuliah_sec`
--
ALTER TABLE `tblmatakuliah_sec`
  MODIFY `kodemk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tblmateri`
--
ALTER TABLE `tblmateri`
  MODIFY `idmateri` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tblpengumuman`
--
ALTER TABLE `tblpengumuman`
  MODIFY `idpengumuman` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tblriwayatnilai`
--
ALTER TABLE `tblriwayatnilai`
  MODIFY `idnilai` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tblriwayatsoal`
--
ALTER TABLE `tblriwayatsoal`
  MODIFY `idriwayatsoal` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tblsoalesai`
--
ALTER TABLE `tblsoalesai`
  MODIFY `idesai` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tblsoalpilgan`
--
ALTER TABLE `tblsoalpilgan`
  MODIFY `idpilgan` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbltugas`
--
ALTER TABLE `tbltugas`
  MODIFY `idtugas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `uploaded_images`
--
ALTER TABLE `uploaded_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
