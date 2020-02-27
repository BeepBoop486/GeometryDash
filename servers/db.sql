-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-02-2020 a las 19:27:54
-- Versión del servidor: 10.3.16-MariaDB
-- Versión de PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `id11550987_data`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(11) NOT NULL,
  `uname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lvlid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `levels`
--

CREATE TABLE `levels` (
  `id` int(11) NOT NULL,
  `lvlname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uploader` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate` int(255) NOT NULL,
  `stars` int(2) NOT NULL,
  `downloads` int(255) NOT NULL,
  `likes` int(255) NOT NULL,
  `dislikes` int(255) NOT NULL,
  `isepic` int(2) NOT NULL,
  `isfeatured` int(2) NOT NULL,
  `isdemon` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `uname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lvlid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `upass` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `stars` int(255) NOT NULL,
  `demons` int(255) NOT NULL,
  `icon` int(255) NOT NULL,
  `color1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `coins` int(255) NOT NULL,
  `userCoins` int(255) NOT NULL,
  `ship` int(255) NOT NULL,
  `ball` int(255) NOT NULL,
  `ufo` int(255) NOT NULL,
  `wave` int(255) NOT NULL,
  `robot` int(255) NOT NULL,
  `spider` int(255) NOT NULL,
  `creatorPoints` int(255) NOT NULL,
  `diamonds` int(255) NOT NULL,
  `orbs` int(255) NOT NULL,
  `completedLevels` int(255) NOT NULL,
  `isAdmin` int(255) NOT NULL,
  `isMod` int(255) NOT NULL,
  `isBanned` int(255) NOT NULL,
  `isCreatorBanned` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `levels`
--
ALTER TABLE `levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
