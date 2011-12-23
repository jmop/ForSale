-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 23, 2011 at 12:57 AM
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
  KEY `fk_anuncios_user` (`user_oid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anuncios`
--

INSERT INTO `anuncios` (`id_anuncio`, `cor`, `tipo`, `carrocaria`, `combustivel`, `km`, `ano`, `data`, `preco`, `marca`, `modelo`, `descricao`, `titulo`, `cilindrada`, `user_oid`) VALUES
(1, 'preto', 'ligeiro', '5 portas', 'gasoleo', 10000, 2010, '2011-12-21', 100000, 'bmw', 'serie3', 'uma autentica bomba', 'Vendo Carrão', '2,5', 1),
(2, 'vermelho', 'ligeiro', '3 portas', 'gasolina', 100000, 1969, '2011-12-22', 0, 'renault', '5', 'sem fundo', 'Vendo Carripana Nova', '1,0', 2),
(3, 'vermelho', 'ligeiro', '5 portas', 'gasolina', 0, 2010, '2011-12-22', 500000, 'maserati', '3200 GT', 'Topo de gama', 'Vendo maserati 3.2 cilindrada', '3.2', 3),
(4, 'preto', 'ligeiro', '5 portas', 'gasolina', 0, 2011, '2011-12-22', 750000, 'aston martin', 'DB4', 'Topo de gama', 'Vendo aston martin 3.0 cilindrada', '3.0', 3),
(5, 'castanho', 'ligeiro', '5 portas', 'gasoleo', 40000, 2006, '2011-12-22', 10300, 'renault', '5', 'Como novo', 'Vendo renault 2.5 cilindrada', '2.5', 3),
(6, 'cinzento', 'ligeiro', '3 portas', 'gasolina', 30000, 2002, '2011-12-22', 13222, 'Bentley', 'Azure', 'Assim nao precisa de aviao', 'Vendo bentley 2.0 cilindrada', '2.0', 1),
(7, 'preto', 'ligeiro', '5 portas', 'gasoleo', 5000, 2008, '2011-12-22', 15555, 'renault', '5', 'não trabalha', '*Vendo renault 2.5 cilindrada', '2.5', 1),
(8, 'preto', 'ligeiro', '5 portas', 'gasoleo', 13250, 2002, '2011-12-22', 9890, 'bmw', 'serie 1', 'Um bmw para a vida', 'Vendo bmw 1.2 cilindrada', '1.2', 1),
(9, 'cinzento', 'ligeiro', '5 portas', 'gasolina', 18723, 2010, '2011-12-22', 10923, 'bmw', 'serie 3', 'Tenha o seu carro de sonho', 'Vendo bmw 2.1 cilindrada', '2.1', 2),
(10, 'preto', 'ligeiro', '3 portas', 'gasolina', 17898, 2011, '2011-12-22', 10928, 'Bugatti', 'veyron', 'Depois do topo de gama', 'Vendo Bugatti 8.0 cilindrada', '8.0', 1),
(11, 'vermelho', 'ligeiro', '3 portas', 'gasoleo', 10232, 2009, '2011-12-22', 6456, 'Porsche', '997', 'O melhor modelo da marca', 'Vendo Porsche 2.4 cilindrada', '2.4', 2),
(12, 'cinzento', 'ligeiro', '5 portas', 'gasolina', 9093, 2002, '2011-12-22', 8709, 'Bentley', 'Azure', 'Assim nao precisa de barco', 'Vendo Bentley 2.0 cilindrada', '2.0', 2),
(13, 'cinzento', 'ligeiro', '5 portas', 'gasolina', 9128, 2003, '2011-12-22', 7878, 'bmw', 'serie 5', 'Um bmw que todos querem', 'Vendo bmw 3.0 cilindrada', '3.0', 3),
(14, 'castanho', 'ligeiro', '5 portas', 'gasoleo', 13023, 2005, '2011-12-22', 23049, 'bmw', 'serie 5', 'Topo de gama', 'Vendo bmw 3.0 cilindrada', '3.0', 1),
(15, 'preto', 'ligeiro', '5 portas', 'gasolina', 13000, 2011, '2011-12-22', 11928, 'Porsche', 'Boxster', 'O novo topo da gama Porche', 'Vendo Porsche 2.4 cilindrada', '2.4', 1);

-- --------------------------------------------------------

--
-- Table structure for table `anuncios_comentarios`
--

CREATE TABLE IF NOT EXISTS `anuncios_comentarios` (
  `anuncios_id_anuncio` int(11) NOT NULL,
  `comentarios_id_comentario` int(11) NOT NULL,
  PRIMARY KEY (`anuncios_id_anuncio`,`comentarios_id_comentario`),
  KEY `fk_anuncios_comentarios_anunci` (`anuncios_id_anuncio`),
  KEY `fk_anuncios_comentarios_coment` (`comentarios_id_comentario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `anuncios_fotografias`
--

CREATE TABLE IF NOT EXISTS `anuncios_fotografias` (
  `anuncios_id_anuncio` int(11) NOT NULL,
  `fotografias_id_foto` int(11) NOT NULL,
  PRIMARY KEY (`anuncios_id_anuncio`,`fotografias_id_foto`),
  KEY `fk_anuncios_fotografias_anunci` (`anuncios_id_anuncio`),
  KEY `fk_anuncios_fotografias_fotogr` (`fotografias_id_foto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anuncios_fotografias`
--

INSERT INTO `anuncios_fotografias` (`anuncios_id_anuncio`, `fotografias_id_foto`) VALUES
(2, 2),
(7, 8),
(15, 10);

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE IF NOT EXISTS `comentarios` (
  `id_comentario` int(11) NOT NULL,
  `comentario` varchar(255) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id_comentario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 'teste', 'upload/ent3/1/Penguins.jpg'),
(2, 'gaja', 'upload/ent3/1/image001.jpg'),
(3, 'h', 'upload/ent3/1/Koala.jpg'),
(4, 'a', 'upload/ent3/1/9130_1241175715240_1404744285_30698685_3402549_n.jpg'),
(5, 's', 'upload/ent3/2/Koala.jpg'),
(6, 'd', 'upload/ent3/2/9130_1241175715240_1404744285_30698685_3402549_n.jpg'),
(7, '2', 'upload/ent3/1/me.jpg'),
(8, '1', 'upload/ent3/1/renault 5.jpg'),
(9, '2', 'upload/ent3/1/aston martin db4.jpg'),
(10, '1', 'upload/ent3/1/porsche 997.jpg');

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
(1, 'admin', NULL),
(2, 'user', NULL);

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
(2, 4);

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
(1, 'page7', 'pagina dos anuncios'),
(2, 'page4', 'os meus anuncios'),
(3, 'page12', 'Castigar'),
(4, 'page2', 'gestao de utilizadores');

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
(1, 'jorge.mop', '123', 'Jorge Pinheiro', 913913913, b'0', 'jmop', NULL),
(2, 'kok', '123', 'rui oliveira', 919191911, b'0', 'rui', NULL),
(3, 'rodrigues89@gmail.com', '123', 'Adão Rodrigues', 949596123, b'0', 'adon', NULL);

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
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`user_oid`, `group_oid`) VALUES
(1, 1),
(2, 2),
(3, 2);

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
