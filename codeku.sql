-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-05-2013 a las 21:42:48
-- Versión del servidor: 5.5.27
-- Versión de PHP: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `codeku`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE IF NOT EXISTS `proveedores` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `nif` varchar(12) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `provincias_id` int(2) NOT NULL,
  `localidad` varchar(35) NOT NULL,
  `entidades_id` int(2) NOT NULL,
  `cuentabancaria` varchar(20) NOT NULL,
  `codpostal` varchar(5) NOT NULL,
  `telefono` varchar(14) NOT NULL,
  `movil` varchar(14) NOT NULL,
  `email` varchar(35) NOT NULL,
  `web` varchar(45) NOT NULL,
  `borrado` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
)

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provincias`
--

CREATE TABLE IF NOT EXISTS `provincias` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombreprovincia` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
)

--
-- Volcado de datos para la tabla `provincias`
--

INSERT INTO `provincias` (`id`, `nombreprovincia`) VALUES
(1, 'Alava'),
(2, 'Albacete'),
(3, 'Alicante'),
(4, 'Almeria'),
(5, 'Asturias'),
(6, 'Avila'),
(7, 'Badajoz'),
(8, 'Baleares'),
(9, 'Barcelona'),
(10, 'Burgos'),
(11, 'Caceres'),
(12, 'Cadiz'),
(13, 'Cantabria'),
(14, 'Castellon'),
(15, 'Ceuta'),
(16, 'Ciudad Real'),
(17, 'Cordoba'),
(18, 'La Coruña'),
(19, 'Cuenca'),
(20, 'Gerona'),
(21, 'Granada'),
(22, 'Guadalajara'),
(23, 'Guipuzcoa'),
(24, 'Huelva'),
(25, 'Huesca'),
(26, 'Jaen'),
(27, 'Leon'),
(28, 'Lerida'),
(29, 'Lugo'),
(30, 'Madrid'),
(31, 'Malaga'),
(32, 'Melilla'),
(33, 'Murcia'),
(34, 'Navarra'),
(35, 'Orense'),
(36, 'Palencia'),
(37, 'Las Palmas'),
(38, 'Pontevedra'),
(39, 'La Rioja'),
(40, 'Salamanca'),
(41, 'Sta. Cruz de Tenerife'),
(42, 'Segovia'),
(43, 'Sevilla'),
(44, 'Soria'),
(45, 'Tarragona'),
(46, 'Teruel'),
(47, 'Toledo'),
(48, 'Valencia'),
(49, 'Valladolid'),
(50, 'Vizcaya'),
(51, 'Zamora'),
(52, 'Zaragoza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entidades`
--

CREATE TABLE IF NOT EXISTS `entidades` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nombreentidad` varchar(50) NOT NULL,
  `borrado` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`codentidad`)
)
