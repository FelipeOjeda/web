-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2015 at 06:41 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE IF NOT EXISTS `cursos` (
`idCurso` int(11) NOT NULL,
  `nombreCurso` varchar(10000) COLLATE utf8_bin NOT NULL DEFAULT '',
  `codigoCurso` varchar(10000) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`idCurso`, `nombreCurso`, `codigoCurso`) VALUES
(1, 'Html', '2211'),
(2, 'PHP', '2222'),
(3, 'Mysqli', '2233');

-- --------------------------------------------------------

--
-- Table structure for table `notas`
--

CREATE TABLE IF NOT EXISTS `notas` (
`idNota` int(11) NOT NULL,
  `valor` float NOT NULL,
  `idTipo` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `notas`
--

INSERT INTO `notas` (`idNota`, `valor`, `idTipo`, `idCurso`, `idUsuario`) VALUES
(1, 4.5, 1, 1, 1),
(2, 2.5, 1, 2, 1),
(3, 3, 1, 3, 1),
(4, 3.2, 1, 1, 1),
(5, 4, 1, 2, 1),
(6, 1, 1, 3, 1),
(7, 3.4, 1, 1, 1),
(8, 3.8, 1, 2, 1),
(9, 4.2, 1, 3, 1),
(10, 4.1, 2, 1, 2),
(11, 2.3, 2, 2, 2),
(12, 5, 2, 3, 3),
(13, 3.1, 2, 1, 2),
(14, 2.1, 2, 2, 2),
(15, 3, 2, 3, 2),
(16, 3.6, 2, 1, 2),
(17, 4.5, 2, 2, 2),
(18, 2, 3, 3, 3),
(19, 1, 3, 1, 3),
(20, 3.5, 3, 2, 3),
(21, 4.1, 3, 3, 3),
(22, 3.1, 3, 1, 3),
(23, 4.1, 3, 2, 3),
(24, 3.2, 3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tipo_nota`
--

CREATE TABLE IF NOT EXISTS `tipo_nota` (
`idTipo` int(11) NOT NULL,
  `porcentajeNota` float NOT NULL,
  `nombreNota` varchar(10000) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tipo_nota`
--

INSERT INTO `tipo_nota` (`idTipo`, `porcentajeNota`, `nombreNota`) VALUES
(1, 0.2, 'Corte 1'),
(2, 0.4, 'Corte 2'),
(3, 0.4, 'Corte 3');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`idUsuario` int(11) NOT NULL,
  `codigoUsuario` varchar(10000) COLLATE utf8_bin NOT NULL DEFAULT '',
  `nombreUsuario` varchar(10000) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `codigoUsuario`, `nombreUsuario`) VALUES
(1, '1111', 'Pepito Salvaje'),
(2, '1122', 'Ramira Silvadora'),
(3, '1133', 'Lucas Plata');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios_curso`
--

CREATE TABLE IF NOT EXISTS `usuarios_curso` (
`id` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `usuarios_curso`
--

INSERT INTO `usuarios_curso` (`id`, `idUsuario`, `idCurso`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 2),
(5, 3, 3),
(6, 3, 1),
(7, 3, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
 ADD PRIMARY KEY (`idCurso`);

--
-- Indexes for table `notas`
--
ALTER TABLE `notas`
 ADD PRIMARY KEY (`idNota`);

--
-- Indexes for table `tipo_nota`
--
ALTER TABLE `tipo_nota`
 ADD PRIMARY KEY (`idTipo`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`idUsuario`);

--
-- Indexes for table `usuarios_curso`
--
ALTER TABLE `usuarios_curso`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
MODIFY `idCurso` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `notas`
--
ALTER TABLE `notas`
MODIFY `idNota` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tipo_nota`
--
ALTER TABLE `tipo_nota`
MODIFY `idTipo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `usuarios_curso`
--
ALTER TABLE `usuarios_curso`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
