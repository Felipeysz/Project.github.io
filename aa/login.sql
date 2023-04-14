-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Mar-2023 às 21:27
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `login`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `usuario` varchar(220) NOT NULL,
  `senha` varchar(220) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`,`usuario`, `senha`) VALUES
(1, 'Gunther', 'adm@email.com', 'admin', '$2y$10$pwXs.bpu4SKzk3DSTLFuue2RLSDGPek.Yx4WLOR6xY0TJGx4bly52'),
(2, 'Cesar', 'cesar@celke.com.br', 'cesar@celke.com.br', '$2y$10$d8Hpwwj/DENEW4sBuUDvUuCw4/2QgEoWvs8YlAXASltHqw5w7vKDm'),
(3, 'Gunther', 'gunthersantos@gmail.com', 'gunthersantos', '$2y$10$Oi5GdOEGsP34yvsGMi8tJ.MX1ft.yil2X6vaaUtHh7ZZlYQrJWELq'),
(4, 'Thiago Costa', 'tcosta@email.com', 'thiagocosta', '$2y$10$wkBJj2AVAXnKfSZyTticTe5pdGtur3HwLMxtgzi9xcU6G1Dob5sKq'),
(5, 'Eduardo Junior', 'edjr@email.com', 'edjunior', '$2y$10$QILUWhpsQJ15T1jTWIX6Ve4pyLV3I4x8L4NgcZKCxyOokJ5OXTmbe'),
(6, 'edlove', 'edlove@email.com', 'edlove', '$2y$10$ONO7lRM18.UN8CR/WdFHzu/lEvZEdVXeNakGa1j52YIUjA.LIOGxe');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
