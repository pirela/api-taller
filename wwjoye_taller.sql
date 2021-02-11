-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-02-2021 a las 00:22:06
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wwjoye_taller`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auto`
--

CREATE TABLE `auto` (
  `id` varchar(255) NOT NULL,
  `marca` varchar(255) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `createdUsu` varchar(255) NOT NULL,
  `updatedUsu` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `auto`
--

INSERT INTO `auto` (`id`, `marca`, `modelo`, `year`, `createdUsu`, `updatedUsu`, `createdAt`, `updatedAt`) VALUES
('2db21a14-e3b3-4a8c-b209-18266149f5e2', 'DODGE', 'NEON', '2006', '', '', '2021-02-11 02:47:45', '2021-02-11 02:47:45'),
('d119c0ba-c63c-42eb-8909-607981b29a79', 'NISSAN', 'SENTRA', '2000', '', '', '2021-02-11 00:40:44', '2021-02-11 00:40:44'),
('5d2c8f26-2b77-4c82-aa1c-7f6a87529b4f', 'RENAULT', 'LOGAN', '2015', '', '', '2021-02-11 02:48:47', '2021-02-11 02:48:47'),
('10150e3e-8c6b-4f7d-83be-9f17bb055184', 'CHEVROLET', 'ONIX', '2015', '', '', '2021-02-11 02:49:03', '2021-02-11 02:49:03'),
('7a033554-3569-412a-8685-5fbe1477ee9f', 'NISSAN', 'VERSA', '2018', '', '', '2021-02-11 02:49:16', '2021-02-11 02:49:16'),
('d0429686-04b0-491b-8880-15ecb28cc178', 'SUZUKI', 'SWIFT', '2018', '', '', '2021-02-11 02:49:36', '2021-02-11 02:49:36'),
('04c9fd89-2be4-4071-a453-bb1210505eaf', 'VOLKSWAGEN', 'GOL', '2018', '', '', '2021-02-11 02:49:50', '2021-02-11 02:49:50'),
('53cc336a-a711-4d2d-9a1b-d1c967317e12', 'KIA', 'RIO', '2018', '', '', '2021-02-11 02:50:11', '2021-02-11 02:50:11'),
('b125b930-3a3c-4a60-8a1e-805c57c8fd9a', 'HYUNDAI', 'ACCEL', '2018', '', '', '2021-02-11 02:50:37', '2021-02-11 02:50:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` varchar(255) NOT NULL,
  `identificacion` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `createdUsu` varchar(255) NOT NULL,
  `updatedUsu` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `identificacion`, `nombre`, `apellido`, `email`, `createdUsu`, `updatedUsu`, `createdAt`, `updatedAt`) VALUES
('a7caaa14-dcb6-4979-a185-8d89c378e316', '20863642', 'Jose Jesus', 'Pirela Fuenmayor', 'jjpirela93@gmail.com', '', '', '2021-02-11 00:23:43', '2021-02-11 00:29:14'),
('c5eff8e9-23ad-4580-87bd-ff422bafe197', '26185448', 'Vanessa', 'Riera', 'vanessa@gmail.com', '', '', '2021-02-11 02:36:39', '2021-02-11 02:36:39'),
('ea4c3f2e-1926-40f3-8edb-4600a71d31f1', '15827402', 'Andrea', 'Boscan', 'andrea@gmail.com', '', '', '2021-02-11 02:39:57', '2021-02-11 02:39:57'),
('54e88d91-4efd-4800-95b4-fa37e5c9d4df', '9867355', 'Carlos', 'Boza', 'carlos@gmail.com', '', '', '2021-02-11 02:41:34', '2021-02-11 02:41:34'),
('9666be8e-1030-4e15-b898-83d6f158057d', '7830422', 'Linda', 'Chaparro', 'linda@gmail.com', '', '', '2021-02-11 02:41:51', '2021-02-11 02:41:51'),
('c12d215d-80e6-4140-989b-44d06967d843', '98374012', 'Ronaldo', 'Romero', 'ronaldo@gmail.com', '', '', '2021-02-11 02:42:09', '2021-02-11 02:42:09'),
('d26c5634-fba0-4ff9-bf71-6c435495a326', '33209384', 'Miguel', 'Perez', 'miguel@gmail.com', '', '', '2021-02-11 02:42:25', '2021-02-11 02:42:25'),
('481816f9-95a4-417b-8e5f-0135afcaf853', '39384567', 'Maria', 'Moreno', 'maria@gmail.com', '', '', '2021-02-11 02:43:10', '2021-02-11 02:43:10'),
('bb6c19ce-04b4-4484-880e-f3f3c3ff4a52', '9', 'Rosa', 'Labarca', 'rosa@gmail.com', '', '', '2021-02-11 03:13:16', '2021-02-11 03:13:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clienteAuto`
--

CREATE TABLE `clienteAuto` (
  `id` varchar(255) NOT NULL,
  `idCliente` varchar(255) NOT NULL,
  `idAuto` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `createdUsu` varchar(255) NOT NULL,
  `updatedUsu` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clienteAuto`
--

INSERT INTO `clienteAuto` (`id`, `idCliente`, `idAuto`, `color`, `createdUsu`, `updatedUsu`, `createdAt`, `updatedAt`) VALUES
('a96277fe-0777-435c-89d0-965ea97417e2', 'a7caaa14-dcb6-4979-a185-8d89c378e316', 'd119c0ba-c63c-42eb-8909-607981b29a79', 'Rojo', '', '', '2021-02-11 01:24:06', '2021-02-11 02:12:59'),
('f9ae3803-c686-4daa-a2f9-7fd676759543', 'a7caaa14-dcb6-4979-a185-8d89c378e316', '5d2c8f26-2b77-4c82-aa1c-7f6a87529b4f', 'Azul', '', '', '2021-02-11 02:51:26', '2021-02-11 02:51:26'),
('c045c98b-bee4-419a-82a1-7dacbfcfc934', 'a7caaa14-dcb6-4979-a185-8d89c378e316', '10150e3e-8c6b-4f7d-83be-9f17bb055184', 'Azul', '', '', '2021-02-11 02:51:34', '2021-02-11 02:51:34'),
('33d1063f-03b2-424e-a7eb-8e9f46bafa99', 'a7caaa14-dcb6-4979-a185-8d89c378e316', '04c9fd89-2be4-4071-a453-bb1210505eaf', 'Azul', '', '', '2021-02-11 02:51:39', '2021-02-11 02:51:39'),
('6b128b8b-1b12-479f-8129-0c0237d2b6cf', 'c5eff8e9-23ad-4580-87bd-ff422bafe197', '53cc336a-a711-4d2d-9a1b-d1c967317e12', 'ROJO', '', '', '2021-02-11 02:52:15', '2021-02-11 02:52:15'),
('f94356ee-dce5-42e0-bb1d-c7ead23babdf', 'ea4c3f2e-1926-40f3-8edb-4600a71d31f1', 'd0429686-04b0-491b-8880-15ecb28cc178', 'VERDE', '', '', '2021-02-11 02:52:35', '2021-02-11 02:52:35'),
('7a93de8c-fc43-48c6-bbe5-e595583fc6d1', '54e88d91-4efd-4800-95b4-fa37e5c9d4df', 'b125b930-3a3c-4a60-8a1e-805c57c8fd9a', 'VERDE', '', '', '2021-02-11 02:52:53', '2021-02-11 02:52:53'),
('43987195-37f8-4747-a410-c26f69d1af7b', '9666be8e-1030-4e15-b898-83d6f158057d', '53cc336a-a711-4d2d-9a1b-d1c967317e12', 'VERDE', '', '', '2021-02-11 02:53:07', '2021-02-11 02:53:07'),
('00673fc5-cd0a-4f43-b6fe-9d4fdade6949', 'c12d215d-80e6-4140-989b-44d06967d843', '2db21a14-e3b3-4a8c-b209-18266149f5e2', 'BLANCO', '', '', '2021-02-11 02:53:37', '2021-02-11 02:53:37'),
('520fad61-4081-49db-90df-1891fbf12414', 'd26c5634-fba0-4ff9-bf71-6c435495a326', '5d2c8f26-2b77-4c82-aa1c-7f6a87529b4f', 'BLANCO', '', '', '2021-02-11 02:53:56', '2021-02-11 02:53:56'),
('40dc4f81-1442-4172-8539-d9f43f9b6c85', '481816f9-95a4-417b-8e5f-0135afcaf853', '10150e3e-8c6b-4f7d-83be-9f17bb055184', 'BLANCO', '', '', '2021-02-11 02:54:10', '2021-02-11 02:54:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reparaciones`
--

CREATE TABLE `reparaciones` (
  `id` varchar(255) NOT NULL,
  `idCliente` varchar(255) NOT NULL,
  `idAuto` varchar(255) NOT NULL,
  `idEstado` varchar(255) NOT NULL,
  `reparacion` varchar(255) NOT NULL,
  `observacion` text NOT NULL,
  `createdUsu` varchar(255) NOT NULL,
  `updatedUsu` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reparaciones`
--

INSERT INTO `reparaciones` (`id`, `idCliente`, `idAuto`, `idEstado`, `reparacion`, `observacion`, `createdUsu`, `updatedUsu`, `createdAt`, `updatedAt`) VALUES
('b86573b3-4d59-4229-a04b-1f7d6b007c6d', 'a7caaa14-dcb6-4979-a185-8d89c378e316', 'd119c0ba-c63c-42eb-8909-607981b29a79', '', 'Cambiar asientos', '', '', '', '2021-02-11 03:08:25', '2021-02-11 03:08:25'),
('2b0bf50d-f1a8-4ccc-93fa-b2e6068e24ae', 'a7caaa14-dcb6-4979-a185-8d89c378e316', 'd119c0ba-c63c-42eb-8909-607981b29a79', '101', 'Cambiar llantas', '', '', '', '2021-02-11 00:46:31', '2021-02-11 02:19:48'),
('f1f884c7-d7cf-44fa-a648-3b2646372092', 'a7caaa14-dcb6-4979-a185-8d89c378e316', '5d2c8f26-2b77-4c82-aa1c-7f6a87529b4f', '', 'Cambiar bomba de gasolina', '', '', '', '2021-02-11 03:08:44', '2021-02-11 03:08:44'),
('4d2c29c7-5c07-49fc-873c-8f514f718e51', 'a7caaa14-dcb6-4979-a185-8d89c378e316', '10150e3e-8c6b-4f7d-83be-9f17bb055184', '', 'Cambiar motor', 'Se espera la llegada del motor de USA', '', '', '2021-02-11 03:09:15', '2021-02-11 03:09:15'),
('7227bc6c-1605-40a7-924e-388f863b2416', 'a7caaa14-dcb6-4979-a185-8d89c378e316', '04c9fd89-2be4-4071-a453-bb1210505eaf', '', 'Cambio de aceite', '', '', '', '2021-02-11 03:09:36', '2021-02-11 03:09:36'),
('051259b1-78b5-424c-ac26-51d78ed0c2b1', 'c5eff8e9-23ad-4580-87bd-ff422bafe197', '53cc336a-a711-4d2d-9a1b-d1c967317e12', '', 'Cambio de aceite', '', '', '', '2021-02-11 03:09:49', '2021-02-11 03:09:49'),
('dde062ab-b2a4-4232-8164-ebad8d885a4e', '54e88d91-4efd-4800-95b4-fa37e5c9d4df', 'b125b930-3a3c-4a60-8a1e-805c57c8fd9a', '', 'Cambio de aceite', '', '', '', '2021-02-11 03:10:04', '2021-02-11 03:10:04'),
('8b6d96d0-90d9-4757-87f4-41753a5d2ac7', '9666be8e-1030-4e15-b898-83d6f158057d', '53cc336a-a711-4d2d-9a1b-d1c967317e12', '', 'Cambio de aceite', '', '', '', '2021-02-11 03:10:17', '2021-02-11 03:10:17'),
('e039f8eb-a700-44a0-9c41-d3b8bf46556c', 'c12d215d-80e6-4140-989b-44d06967d843', '2db21a14-e3b3-4a8c-b209-18266149f5e2', '', 'Cambio de aceite', '', '', '', '2021-02-11 03:10:29', '2021-02-11 03:10:29'),
('d353f115-7827-4aed-99af-03371b82ed7e', 'd26c5634-fba0-4ff9-bf71-6c435495a326', '5d2c8f26-2b77-4c82-aa1c-7f6a87529b4f', '', 'Cambio de aceite', '', '', '', '2021-02-11 03:10:40', '2021-02-11 03:10:40'),
('4fa1b014-8061-4773-87de-f662e9b90c12', '481816f9-95a4-417b-8e5f-0135afcaf853', '10150e3e-8c6b-4f7d-83be-9f17bb055184', '', 'Cambio de aceite', '', '', '', '2021-02-11 03:10:51', '2021-02-11 03:10:51'),
('9505bbf8-d005-4315-a328-14e50bf477c6', 'a7caaa14-dcb6-4979-a185-8d89c378e316', 'd119c0ba-c63c-42eb-8909-607981b29a79', '', 'Pintura completa', '', '', '', '2021-02-11 03:11:10', '2021-02-11 03:11:10'),
('b4e956a4-e542-4e8c-a6ce-9580b1bb53ea', 'a7caaa14-dcb6-4979-a185-8d89c378e316', 'd119c0ba-c63c-42eb-8909-607981b29a79', '', 'CAmbia bomba de agua', '', '', '', '2021-02-11 03:11:18', '2021-02-11 03:11:18'),
('03112e5b-c4b7-4354-b873-0d3efe28d867', 'a7caaa14-dcb6-4979-a185-8d89c378e316', 'd119c0ba-c63c-42eb-8909-607981b29a79', '', 'Cabmiar cauchos traseros', '', '', '', '2021-02-11 03:11:28', '2021-02-11 03:11:28'),
('972a95ee-a326-4dfe-9fde-26154640399e', 'a7caaa14-dcb6-4979-a185-8d89c378e316', 'd119c0ba-c63c-42eb-8909-607981b29a79', '', 'Cambio de faros a luces led', '', '', '', '2021-02-11 03:11:41', '2021-02-11 03:11:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id` varchar(255) NOT NULL,
  `idPadre` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `disponible` tinyint(1) NOT NULL,
  `createdUsu` varchar(255) NOT NULL,
  `updatedUsu` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id`, `idPadre`, `titulo`, `descripcion`, `disponible`, `createdUsu`, `updatedUsu`, `createdAt`, `updatedAt`) VALUES
('100', '', 'ESTADOS DE REPARACION', 'tipo de estados de reparaciones', 1, '', '', '2021-02-11 02:19:25', '0000-00-00 00:00:00'),
('101', '100', 'Entregado', 'la reparacion ya fue entregada', 1, '', '', '2021-02-11 02:18:56', '0000-00-00 00:00:00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auto`
--
ALTER TABLE `auto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identificacion` (`identificacion`);

--
-- Indices de la tabla `clienteAuto`
--
ALTER TABLE `clienteAuto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reparaciones`
--
ALTER TABLE `reparaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
