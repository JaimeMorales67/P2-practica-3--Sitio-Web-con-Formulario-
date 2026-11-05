-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2026 a las 19:56:53
-- Versión del servidor: 10.1.9-MariaDB
-- Versión de PHP: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tienda_basket`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `imagen_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `categoria`, `descripcion`, `precio`, `imagen_url`) VALUES
(1, 'Nike Air Zoom GT Cut', 'tenis', 'Edición Especial', '3299.00', 'imagen1.jpg'),
(2, 'Air Jordan Retro 4', 'tenis', 'Clásicos de Leyenda', '4599.00', 'imagen2.jpg'),
(3, 'Curry Flow 10', 'tenis', 'Súper Ligeros', '3899.00', 'imagen3.jpg'),
(4, 'LeBron XX Trinity', 'tenis', 'Máxima Amortiguación', '4199.00', 'imagen4.jpg'),
(5, 'Nike KD 15 Durant', 'tenis', 'Agarre Extremo', '3499.00', 'imagen5.jpg'),
(6, 'Puma MB.02 LaMelo', 'tenis', 'Diseño Estelar', '3199.00', 'imagen6.jpg'),
(7, 'Zoom Freak 4 Giannis', 'tenis', 'Velocidad y Tracción', '2999.00', 'imagen7.jpg'),
(8, 'Adidas Dame 8 Lillard', 'tenis', 'Control Total', '2799.00', 'imagen8.jpg'),
(9, 'Jordan Luka 1 Next', 'tenis', 'Estabilidad Lateral', '3099.00', 'imagen9.jpg'),
(10, 'UA Harden Volume 7', 'tenis', 'Edición Pro', '2899.00', 'imagen10.jpg'),
(11, 'Wilson NBA Official Game', 'balones', 'Piel Oficial NBA', '2499.00', 'imagen11.jpg'),
(12, 'Spalding TF-1000 Legacy', 'balones', 'Uso Profesional Duela', '1899.00', 'imagen12.jpg'),
(13, 'Molten BG4500 FIBA', 'balones', 'Aprobado por FIBA', '1699.00', 'imagen13.jpg'),
(14, 'Wilson Evolution #7', 'balones', 'Microfibra Premium', '1499.00', 'imagen14.jpg'),
(15, 'Nike Everyday Playground', 'balones', 'Goma de Alta Resistencia', '699.00', 'imagen15.jpg'),
(16, 'Spalding Zi/O Excel', 'balones', 'Indoor / Outdoor', '999.00', 'imagen16.jpg'),
(17, 'Jordan Ultimate 2.0', 'balones', 'Textura de Agarre Soft', '899.00', 'imagen17.jpg'),
(18, 'Wilson Forge Pro', 'balones', 'Capa Pure Feel', '1199.00', 'imagen18.jpg'),
(19, 'Molten B7G3800', 'balones', 'Cuero Sintético 12 Paneles', '850.00', 'imagen19.jpg'),
(20, 'Puma All-Pro Ball', 'balones', 'Diseño Urbano Street', '799.00', 'imagen20.jpg'),
(21, 'Lakers - LeBron James #23', 'uniformes', 'Icon Edition Yellow', '2199.00', 'imagen21.jpg'),
(22, 'Warriors - Curry #30', 'uniformes', 'Association White', '2199.00', 'imagen22.jpg'),
(23, 'Bulls - Jordan #23', 'uniformes', 'Hardwood Classics Red', '2599.00', 'imagen23.jpg'),
(24, 'Mavericks - Don?i? #77', 'uniformes', 'Statement Edition Blue', '2199.00', 'imagen24.jpg'),
(25, 'Bucks - Antetokounmpo #34', 'uniformes', 'Icon Edition Green', '2199.00', 'imagen25.jpg'),
(26, 'Celtics - Tatum #0', 'uniformes', 'Classic Green', '2199.00', 'imagen26.jpg'),
(27, 'Suns - Booker #1', 'uniformes', 'City Edition Purple', '2099.00', 'imagen27.jpg'),
(28, 'Grizzlies - Morant #12', 'uniformes', 'Statement Edition Teal', '2099.00', 'imagen28.jpg'),
(29, 'Nets - Durant #7', 'uniformes', 'Icon Black', '1999.00', 'imagen29.jpg'),
(30, 'Heat - Butler #22', 'uniformes', 'Vice City Edition', '1999.00', 'imagen30.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
