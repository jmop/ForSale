-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 19, 2012 at 01:15 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `anuncios`
--

CREATE TABLE IF NOT EXISTS `anuncios` (
  `id_anuncio` int(11) NOT NULL,
  `cor` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `carrocaria` varchar(255) DEFAULT NULL,
  `combustivel` varchar(255) DEFAULT NULL,
  `km` double DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `preco` double DEFAULT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `cilindrada` varchar(255) DEFAULT NULL,
  `user_oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_anuncio`),
  KEY `fk_anuncios_user` (`user_oid`),
  KEY `idx_anuncios_user` (`user_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anuncios`
--

INSERT INTO `anuncios` (`id_anuncio`, `cor`, `tipo`, `carrocaria`, `combustivel`, `km`, `ano`, `data`, `preco`, `marca`, `modelo`, `descricao`, `titulo`, `cilindrada`, `user_oid`) VALUES
(1, 'azul', 'ligeiro', '5 portas', 'gasolina', 64000, 2006, '2009-10-22', 8000, 'renault', 'Clio', 'Carro em grandes condições', 'Vendo Clio Azul', '1,7', 2),
(2, 'vermelho', 'ligeiro', '5 portas', 'gasolina', 100000, 2008, '2011-12-22', 7800, 'renault', 'Clio', 'Como novo', 'Vendo Carripana Nova', '2,0', 1),
(3, 'cinzento', 'ligeiro', '5 portas', 'gasolina', 70000, 2011, '2010-02-01', 14250, 'renault', 'Laguna', 'Vendo Renault Laguna a gasolina', 'Laguna de 5 lugares', '2,5', 1),
(4, 'Azul', 'ligeiro', '5 portas', 'gasoleo', 50000, 2011, '2006-10-12', 18000, 'renault', 'Laguna', 'Carro em optimo estado no geral', 'Laguna por 18000 euros', '2,4', 3),
(5, 'cinzento', 'ligeiro', '5 portas', 'gasoleo', 30000, 2003, '2005-10-22', 9000, 'renault', 'Megane', 'Renault megane com diversos extras', 'Vendo Renault - Oportunidade', '2,1', 3),
(6, 'vermelho', 'ligeiro', '5 portas', 'gasolina', 40300, 2008, '2010-05-21', 17800, 'bmw', 'Serie 1', 'Carro como novo! Vendo porque tenho muitos carros', 'BMW Serie 1 2008', '1,9', 1),
(7, 'azul', 'ligeiro', '5 portas', 'gasoleo', 78020, 2009, '2009-05-19', 20200, 'bmw', 'Serie 1', 'Carro em optima conservação', 'BMW de 2009', '1,9', 2),
(8, 'branco', 'ligeiro', '5 portas', 'gasolina', 20800, 2007, '2008-05-12', 22020, 'bmw', 'Serie 3', 'Encontra-se como novo', 'BMW com 2.2 c', '2,2', 3),
(9, 'vermelho', 'ligeiro', '5 portas', 'gasolina', 18000, 2008, '2009-07-12', 24000, 'bmw', 'Serie 3', 'Acabado de sair do stand', 'Carro novo ao preço de usado 2,4c', '2,4', 3),
(10, 'cinzento', 'ligeiro', '5 portas', 'gasoleo', 2900, 2010, '2011-02-22', 59020, 'bmw', 'Serie 5', 'BMW com direcção assistida e bancos eléctricos', 'O melhor BMW da serie - 2,2c', '2,2', 1),
(11, 'branco', 'ligeiro', '5 portas', 'gasolina', 37299, 2007, '2009-01-16', 28900, 'toyota', 'yaris ', 'Toyota como novo', 'Toyota Yaris 1,6', '1,6', 2),
(12, 'cinzento', 'ligeiro', '5 portas', 'gasoleo', 79000, 2004, '2008-05-11', 18900, 'toyota', 'avensis ', 'Avensis em optimo estado', 'Toyota Avensis como novo', '1,7', 1),
(13, 'branco', 'ligeiro', '5 portas', 'gasolina', 43000, 2006, '2008-01-19', 20300, 'toyota', 'corolla ', 'Corolla com interiores em bom estado', 'Corolla a gasolina com 1,7c', '1,7', 3),
(14, 'preto', 'ligeiro', '5 portas', 'gasoleo', 54000, 2007, '2010-03-18', 25020, 'renault', 'scenic ', 'Carro encontra-se com nova pintura e interiores novos', 'Renault Scenic com apenas 54000 km', '1,7', 2),
(15, 'preto', 'ligeiro', '5 portas', 'gasolina', 61000, 2007, '2011-12-10', 31000, 'toyota', 'Espace ', 'Toyota apresenta-se em bom estado de conservação', 'Espace com 1,7c de 2007', '1,7', 1);

-- --------------------------------------------------------

--
-- Table structure for table `anuncios_comentarios`
--

CREATE TABLE IF NOT EXISTS `anuncios_comentarios` (
  `anuncios_id_anuncio` int(11) NOT NULL,
  `comentarios_id_comentario` int(11) NOT NULL,
  PRIMARY KEY (`anuncios_id_anuncio`,`comentarios_id_comentario`),
  KEY `fk_anuncios_comentarios_anunci` (`anuncios_id_anuncio`),
  KEY `fk_anuncios_comentarios_coment` (`comentarios_id_comentario`),
  KEY `idx_anuncios_comentarios_anunc` (`anuncios_id_anuncio`),
  KEY `idx_anuncios_comentarios_comen` (`comentarios_id_comentario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anuncios_comentarios`
--

INSERT INTO `anuncios_comentarios` (`anuncios_id_anuncio`, `comentarios_id_comentario`) VALUES
(1, 1),
(3, 2),
(5, 3),
(5, 4),
(7, 5),
(9, 6),
(11, 7),
(13, 8),
(15, 9);

-- --------------------------------------------------------

--
-- Table structure for table `anuncios_fotografias`
--

CREATE TABLE IF NOT EXISTS `anuncios_fotografias` (
  `anuncios_id_anuncio` int(11) NOT NULL,
  `fotografias_id_foto` int(11) NOT NULL,
  PRIMARY KEY (`anuncios_id_anuncio`,`fotografias_id_foto`),
  KEY `fk_anuncios_fotografias_anunci` (`anuncios_id_anuncio`),
  KEY `fk_anuncios_fotografias_fotogr` (`fotografias_id_foto`),
  KEY `idx_anuncios_fotografias_anunc` (`anuncios_id_anuncio`),
  KEY `idx_anuncios_fotografias_fotog` (`fotografias_id_foto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anuncios_fotografias`
--

INSERT INTO `anuncios_fotografias` (`anuncios_id_anuncio`, `fotografias_id_foto`) VALUES
(1, 21),
(1, 22),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 34),
(4, 35),
(5, 36),
(5, 37),
(5, 38),
(6, 18),
(6, 19),
(6, 20),
(7, 23),
(7, 24),
(7, 25),
(8, 39),
(8, 40),
(9, 41),
(9, 42),
(9, 43),
(10, 13),
(10, 14),
(10, 15),
(10, 16),
(10, 17),
(11, 26),
(11, 27),
(11, 28),
(11, 29),
(12, 1),
(12, 2),
(12, 3),
(13, 44),
(13, 45),
(13, 46),
(13, 47),
(13, 48),
(14, 30),
(14, 31),
(14, 32),
(14, 33),
(15, 10),
(15, 11),
(15, 12);

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE IF NOT EXISTS `comentarios` (
  `id_comentario` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id_comentario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comentarios`
--

INSERT INTO `comentarios` (`id_comentario`, `username`, `comentario`, `estado`) VALUES
(1, 'rui', '8000 euros é um valor muito alto! 7000 e temos negócio!', NULL),
(2, 'rui', 'Será que podes colocar mais fotos do Laguna?', NULL),
(3, 'rui', 'Que extras contém o carro?', NULL),
(4, 'adon', 'Qual é a ideia de dizer que tem extras e não diz quais são?', NULL),
(5, 'adon', '18000 euros com pintura nova.. aceita?', NULL),
(6, 'adon', 'Pode deixar o seu email ou número de telemóvel para falarmos sobre o BMW?', NULL),
(7, 'jmop', 'Será que posso ver o carro ao vivo?', NULL),
(8, 'jmop', 'Parece-me em óptimo estado! Menos um bocado e estaria a receber uma proposta.', NULL),
(9, 'jmop', 'O carro costuma fazer viagens muito longas?', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fotografias`
--

CREATE TABLE IF NOT EXISTS `fotografias` (
  `id_foto` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_foto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fotografias`
--

INSERT INTO `fotografias` (`id_foto`, `nome`, `foto`) VALUES
(1, 'traseira', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.06.30 PM.png'),
(2, 'frente', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.06.35 PM.png'),
(3, 'interior', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.06.43 PM.png'),
(4, 'frente', 'upload/ent3/1/Screen Shot 2012-01-18 at 7.54.12 PM.png'),
(5, 'tras', 'upload/ent3/1/Screen Shot 2012-01-18 at 7.54.26 PM.png'),
(6, 'gps', 'upload/ent3/1/Screen Shot 2012-01-18 at 7.54.54 PM.png'),
(7, 'front', 'upload/ent3/1/Screen Shot 2012-01-18 at 7.56.15 PM.png'),
(8, 'back', 'upload/ent3/1/Screen Shot 2012-01-18 at 7.56.23 PM.png'),
(9, 'center', 'upload/ent3/1/Screen Shot 2012-01-18 at 7.56.35 PM.png'),
(10, 'frente', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.21.58 PM.png'),
(11, 'dentro', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.22.04 PM.png'),
(12, 'tras', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.22.14 PM.png'),
(13, 'dentro1', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.02.59 PM.png'),
(14, 'dentro2', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.03.06 PM.png'),
(15, 'frente', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.03.17 PM.png'),
(16, 'back', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.03.33 PM.png'),
(17, 'fren2', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.03.42 PM.png'),
(18, 'frente', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.00.00 PM.png'),
(19, 'dentro1', 'upload/ent3/1/Screen Shot 2012-01-18 at 7.59.35 PM.png'),
(20, 'side', 'upload/ent3/1/Screen Shot 2012-01-18 at 7.59.49 PM.png'),
(21, 'frente', 'upload/ent3/1/Screen Shot 2012-01-18 at 7.54.47 PM.png'),
(22, 'tras', 'upload/ent3/1/Screen Shot 2012-01-18 at 7.54.40 PM.png'),
(23, 'frente', 'upload/ent3/2/Screen Shot 2012-01-18 at 8.00.00 PM.png'),
(24, 'side', 'upload/ent3/2/Screen Shot 2012-01-18 at 7.59.49 PM.png'),
(25, 'interior', 'upload/ent3/2/Screen Shot 2012-01-18 at 7.59.35 PM.png'),
(26, 'frente', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.05.15 PM.png'),
(27, 'tras', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.05.28 PM.png'),
(28, 'int1', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.05.34 PM.png'),
(29, 'int2', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.05.44 PM.png'),
(30, 'frente', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.20.28 PM.png'),
(31, 'side', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.20.52 PM.png'),
(32, 'interior', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.20.57 PM.png'),
(33, 'traseira', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.21.10 PM.png'),
(34, 'traseira', 'upload/ent3/1/Screen Shot 2012-01-18 at 7.56.42 PM.png'),
(35, 'dianteira', 'upload/ent3/1/Screen Shot 2012-01-18 at 7.56.49 PM.png'),
(36, 'frente', 'upload/ent3/1/Screen Shot 2012-01-18 at 7.58.15 PM.png'),
(37, 'tras', 'upload/ent3/1/Screen Shot 2012-01-18 at 7.58.08 PM.png'),
(38, 'interior', 'upload/ent3/1/Screen Shot 2012-01-18 at 7.58.03 PM.png'),
(39, 'frente', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.01.29 PM.png'),
(40, 'tras', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.01.57 PM.png'),
(41, 'frente', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.01.06 PM.png'),
(42, 'tras', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.00.58 PM.png'),
(43, 'side', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.02.17 PM.png'),
(44, 'frente', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.07.55 PM.png'),
(45, 'frente2', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.08.00 PM.png'),
(46, 'tras', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.08.09 PM.png'),
(47, 'interior', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.08.17 PM.png'),
(48, 'tras2', 'upload/ent3/1/Screen Shot 2012-01-18 at 8.08.25 PM.png');

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `oid` int(11) NOT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  `module_oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `fk_group_module` (`module_oid`),
  KEY `idx_group_module` (`module_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`oid`, `groupname`, `module_oid`) VALUES
(1, 'admin', 4),
(2, 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `group_module`
--

CREATE TABLE IF NOT EXISTS `group_module` (
  `group_oid` int(11) NOT NULL,
  `module_oid` int(11) NOT NULL,
  PRIMARY KEY (`group_oid`,`module_oid`),
  KEY `fk_group_module_group` (`group_oid`),
  KEY `fk_group_module_module` (`module_oid`),
  KEY `idx_group_module_group` (`group_oid`),
  KEY `idx_group_module_module` (`module_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `group_module`
--

INSERT INTO `group_module` (`group_oid`, `module_oid`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `oid` int(11) NOT NULL,
  `moduleid` varchar(255) DEFAULT NULL,
  `modulename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`oid`, `moduleid`, `modulename`) VALUES
(1, 'page4', 'os meus anuncios'),
(2, 'page19', 'comentar'),
(3, 'page12', 'castigar'),
(4, 'page2', 'gestao users');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `oid` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nome_2` varchar(255) DEFAULT NULL,
  `telemovel_2` int(11) DEFAULT NULL,
  `estado_2` bit(1) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `group_oid` int(11) DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `fk_user_group` (`group_oid`),
  KEY `idx_user_group` (`group_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`oid`, `email`, `password`, `nome_2`, `telemovel_2`, `estado_2`, `username`, `group_oid`) VALUES
(1, 'jorge.mop@gmail.com', '123', 'Jorge Pinheiro', 913913913, b'0', 'jmop', 1),
(2, 'rui@gmail.com', '123', 'Rui Oliveira', 919191911, b'1', 'rui', 2),
(3, 'adao@gmail.com', '123', 'Adao Rodrigues', 913913913, b'0', 'adon', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE IF NOT EXISTS `user_group` (
  `user_oid` int(11) NOT NULL,
  `group_oid` int(11) NOT NULL,
  PRIMARY KEY (`user_oid`,`group_oid`),
  KEY `fk_user_group_user` (`user_oid`),
  KEY `fk_user_group_group` (`group_oid`),
  KEY `idx_user_group_user` (`user_oid`),
  KEY `idx_user_group_group` (`group_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anuncios`
--
ALTER TABLE `anuncios`
  ADD CONSTRAINT `fk_anuncios_user` FOREIGN KEY (`user_oid`) REFERENCES `user` (`oid`);

--
-- Constraints for table `anuncios_comentarios`
--
ALTER TABLE `anuncios_comentarios`
  ADD CONSTRAINT `fk_anuncios_comentarios_coment` FOREIGN KEY (`comentarios_id_comentario`) REFERENCES `comentarios` (`id_comentario`),
  ADD CONSTRAINT `fk_anuncios_comentarios_anunci` FOREIGN KEY (`anuncios_id_anuncio`) REFERENCES `anuncios` (`id_anuncio`);

--
-- Constraints for table `anuncios_fotografias`
--
ALTER TABLE `anuncios_fotografias`
  ADD CONSTRAINT `fk_anuncios_fotografias_fotogr` FOREIGN KEY (`fotografias_id_foto`) REFERENCES `fotografias` (`id_foto`),
  ADD CONSTRAINT `fk_anuncios_fotografias_anunci` FOREIGN KEY (`anuncios_id_anuncio`) REFERENCES `anuncios` (`id_anuncio`);

--
-- Constraints for table `group`
--
ALTER TABLE `group`
  ADD CONSTRAINT `fk_group_module` FOREIGN KEY (`module_oid`) REFERENCES `module` (`oid`);

--
-- Constraints for table `group_module`
--
ALTER TABLE `group_module`
  ADD CONSTRAINT `fk_group_module_module` FOREIGN KEY (`module_oid`) REFERENCES `module` (`oid`),
  ADD CONSTRAINT `fk_group_module_group` FOREIGN KEY (`group_oid`) REFERENCES `group` (`oid`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_group` FOREIGN KEY (`group_oid`) REFERENCES `group` (`oid`);

--
-- Constraints for table `user_group`
--
ALTER TABLE `user_group`
  ADD CONSTRAINT `fk_user_group_group` FOREIGN KEY (`group_oid`) REFERENCES `group` (`oid`),
  ADD CONSTRAINT `fk_user_group_user` FOREIGN KEY (`user_oid`) REFERENCES `user` (`oid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
