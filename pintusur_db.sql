-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-03-2025 a las 23:52:10
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pintusur_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Membrana', NULL),
(2, 'Latex', NULL),
(3, 'Enduido', NULL),
(4, 'Polacrin', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `inOffer` tinyint(1) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `categoryId`, `inOffer`, `image`) VALUES
(1, 'Membrana Coating 20k', '🔥 Súper calidad, con caucho aplicable en techos y muros. Impermeabilizante de alta resistencia, ideal para exteriores.', 39990, 1, 0, 'membranaCoating.jpeg'),
(2, 'Membrana Elastomerica 20k', '🔥 Súper calidad, con caucho aplicable en techos y muros. Impermeabilizante de alta resistencia, ideal para exteriores.', 49990, 1, 0, 'membranaElastomerica.jpeg'),
(3, 'Latex Acril10 20k', 'SUPER PROMO!LATEX INTERIOR EXTERIOR BLANCO ACRIL10 📦ENVIO GRATIS 10lt o 20lt. Hacemos envio a domicilio GRATIS 🚚📦, se abona al llegar el producto en efectivo - no hay que dejar seña ni pagos por adelantados. Tu consulta no molesta.', 35990, 2, 0, 'Latex.png'),
(4, 'Enduido Pro 20k', 'SUPER PROMO! ENDUIDO INTERIOR PROFESIONAL; aplicable en muros / durlock 10k o 20k. Hacemos envio a domicilio GRATIS 🚚📦, se abona al llegar el producto en efectivo - no hay que dejar seña ni pagos por adelantados.Tu consulta no molesta.', 35990, 3, 0, 'enduido.jpeg'),
(5, 'Polacrin Piscina 4L', 'Línea: Piscinas, Color: Celeste, Terminación: Mate, Tipo: Látex, Usos: Piletas de natación de hormigón y alisado de cemento, Cantidad de Manos: 2, Tiempo de secado: 3 horas. No llenar la piscina hasta transcurridos 7 días, Envase: 4 Litros, Rendimiento Aproximado/ rinde 10 metros cuadrados por litro y por mano, función /impermeabilizar, proteger y decorar la superficie de las piscinas de hormigón, diluidle con agua, se aplica con facilidad, no tiene olor agresivo, Hacemos envio a domicilio GRATI', 29990, 4, 0, 'Polacrin.png'),
(6, 'Membrana Poliuretanica 20k', '🔥 Súper calidad, con caucho aplicable en techos y muros. Impermeabilizante de alta resistencia, ideal para exteriores.', 65990, 1, 0, 'membranaPoliuretanica.jpeg'),
(7, 'Latex Colordina', 'Látex Colina Interior/Exterior Duracril Pintura acrílica versátil que podés aplicar tanto en interiores como en exteriores. Con su excelente poder cubritivo, logra un blanco impecable en solo dos manos. Resistente, fácil de aplicar y perfecta para renovar cualquier ambiente.📍 Hacemos envío a domicilio GRATIS 🚚📦. 💵 Se abona al recibir el producto en efectivo, sin señas ni pagos por adelantado. 📲 Tu consulta no molesta.', 37990, 2, 0, 'latexColordina.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `user` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) DEFAULT NULL,
  `perfil` varchar(10) NOT NULL,
  `birthDay` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indices de la tabla `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
