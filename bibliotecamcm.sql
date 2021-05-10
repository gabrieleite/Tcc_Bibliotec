-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25-Jun-2019 às 19:55
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bibliotecamcm`
--
CREATE DATABASE IF NOT EXISTS `bibliotecamcm` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bibliotecamcm`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `rm` int(11) NOT NULL,
  `nomealuno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `turma` varchar(2) DEFAULT NULL,
  `curso` varchar(20) DEFAULT NULL,
  `telefone` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`rm`, `nomealuno`, `email`, `senha`, `turma`, `curso`, `telefone`) VALUES
(0, '', '', '', '', '', ''),
(17019, 'stefane', 'stefanemoraes43@gmail.com', '65465', '3C', 'info', '119449944'),
(17022, 'ana', 'sdgfdyhg', '2589', '3C', 'info', '118596662'),
(17077, 'carol', 'kjsefduh', '1478', '9', 'info', '119542266'),
(23605, 'rafa', 'rafithos@outlook.com', '236589', '3C', 'info', '119452200'),
(25026, 'gabozinha', 'gabigabozinha.com', '123654', '3C', 'info', '119542200');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `nome` varchar(150) NOT NULL,
  `rm` varchar(5) NOT NULL,
  `email` varchar(150) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `telefone` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`nome`, `rm`, `email`, `senha`, `telefone`) VALUES
('maria', '17019', 'stefanemoraes43@gmail.com', '123654', '119449944'),
('maria', '56985', 'fguguyg', '123654', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livro`
--

CREATE TABLE `livro` (
  `nomelivro` varchar(150) NOT NULL,
  `autor` varchar(150) NOT NULL,
  `isbn` varchar(13) NOT NULL,
  `tombo` varchar(4) NOT NULL,
  `imagem` varchar(200) NOT NULL,
  `sinopse` varchar(500) NOT NULL,
  `data` date NOT NULL,
  `editora` varchar(50) NOT NULL,
  `codlivro` int(11) NOT NULL,
  `qtdelivro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordens`
--

CREATE TABLE `ordens` (
  `codordem` int(11) NOT NULL,
  `nomelivro` int(11) NOT NULL,
  `rm` int(11) NOT NULL,
  `nomealuno` int(11) NOT NULL,
  `dataemprestimo` date NOT NULL,
  `datadevolucao` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `rm` varchar(5) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `senha` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`rm`, `nome`, `email`, `telefone`, `senha`) VALUES
('17019', 'maria', 'stefanemoraes43@gmail.com', '11944994460', '857487');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`rm`),
  ADD UNIQUE KEY `rm` (`rm`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `senha` (`senha`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`rm`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `telefone` (`telefone`);

--
-- Indexes for table `livro`
--
ALTER TABLE `livro`
  ADD PRIMARY KEY (`codlivro`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD UNIQUE KEY `tombo` (`tombo`);

--
-- Indexes for table `ordens`
--
ALTER TABLE `ordens`
  ADD PRIMARY KEY (`codordem`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `senha` (`senha`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `livro`
--
ALTER TABLE `livro`
  MODIFY `codlivro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ordens`
--
ALTER TABLE `ordens`
  MODIFY `codordem` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
