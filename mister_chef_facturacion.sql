-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3307
-- Tiempo de generación: 08-05-2025 a las 18:54:01
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mister_chef_facturacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`, `direccion`, `fechaNacimiento`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Chet Altenwerth', 'rosetta.hettinger@example.com', '(743) 970-1951', '1331 O\'Keefe Extension Suite 178\nNaderport, TN 47662', '2005-10-03', 0, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(2, 'Alexandra Leffler DVM', 'barrows.connor@example.net', '(612) 892-8206', '627 Daugherty Lock\nJedediahstad, UT 55459', '1977-01-22', 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(3, 'Samson Willms', 'kleffler@example.org', '435-727-6918', '44714 Adams Turnpike\nKendrickfort, CO 33874', '2001-12-18', 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(4, 'Hal Mayert', 'tremaine.morar@example.com', '1-276-728-8756', '93018 Lueilwitz Curve\nBechtelarbury, MN 88511-4011', '2014-06-07', 0, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(5, 'Royce Hettinger MD', 'dkonopelski@example.org', '614.741.7470', '2816 Jaskolski Ferry Apt. 252\nWest Oliverborough, RI 97922', '1972-01-09', 0, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(6, 'Jazmyn O\'Reilly', 'adam10@example.net', '1-380-829-4524', '3504 Kiel Forges Suite 440\nLake Mckenziemouth, SC 65753-6994', '1972-09-28', 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(7, 'Electa Bailey', 'kulas.javon@example.org', '424-704-2303', '975 Klein Spurs Suite 023\nEast Destany, WY 29595-7060', '1972-04-18', 0, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(8, 'Miss Judy Kshlerin', 'obauch@example.org', '(479) 220-0828', '757 McDermott Summit\nBalistreriport, AK 46629', '1976-03-30', 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(9, 'Turner Dooley Sr.', 'stoltenberg.terrence@example.net', '986-791-5721', '16355 Schmitt Hollow Suite 172\nPort Domenic, NM 22617-0157', '2020-06-04', 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(10, 'Vanessa Mills', 'koelpin.mara@example.org', '+1-610-834-3490', '70421 Ziemann Inlet Suite 464\nSchmittchester, VA 58605', '1998-02-28', 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(11, 'Raymond Kub', 'jenkins.cary@example.org', '913.644.4371', '764 Steuber Parks Suite 713\nEast Traceyborough, NV 27485-2819', '2004-12-12', 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(12, 'Prof. Leanne Ernser', 'wiza.isac@example.org', '+1-757-861-1569', '10125 Dooley Plaza Suite 856\nGerlachstad, WA 51382', '2001-03-18', 0, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(13, 'Miss Verla Funk PhD', 'kelvin.robel@example.org', '+1 (769) 962-3802', '22603 Keebler Summit\nYundtton, AK 93715', '2010-05-28', 0, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(14, 'Brant Durgan', 'leannon.gloria@example.org', '+1.279.703.8882', '768 Greta Shore\nRobelton, UT 60672-0793', '1993-03-06', 0, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(15, 'Ms. Rosella Welch', 'leonel.thompson@example.net', '+1-475-666-2322', '289 McGlynn Brooks Suite 650\nMaureenland, ID 16985-3779', '1975-07-04', 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(16, 'Jamey O\'Hara', 'hauck.orrin@example.com', '1-702-386-1779', '8245 Kris Mountains Suite 688\nWavamouth, UT 06165', '1984-03-10', 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(17, 'Mr. Travon Cassin DDS', 'adolfo.deckow@example.net', '680-250-6099', '3608 Romaguera Hollow Apt. 754\nTerryfort, KS 09238-8391', '2012-11-25', 0, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(18, 'Reid Klocko', 'jessika77@example.com', '520-600-6159', '142 Billy Summit\nCheyenneside, MA 53750', '2001-08-26', 0, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(19, 'Dr. Frieda Murphy DDS', 'xkuhlman@example.org', '+1-346-907-6799', '4794 Corwin Corners\nBlockmouth, CO 54646-0965', '1975-12-13', 0, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(20, 'Prof. Jaden Gusikowski DDS', 'liam89@example.com', '1-423-228-4992', '51840 Kassulke Stream\nEast Monica, KS 30671-9950', '2007-11-08', 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuentas_por_cobrar`
--

CREATE TABLE `cuentas_por_cobrar` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `factura_id` bigint(20) UNSIGNED NOT NULL,
  `totalCuentaPendiente` decimal(10,2) NOT NULL,
  `status` char(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cuentas_por_cobrar`
--

INSERT INTO `cuentas_por_cobrar` (`id`, `factura_id`, `totalCuentaPendiente`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 122.38, 'pendiente', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(2, 1, 242.36, 'pendiente', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(3, 9, 104.78, 'vencido', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(4, 15, 118.70, 'pagado', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(5, 7, 39.79, 'vencido', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(6, 17, 47.87, 'vencido', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(7, 17, 285.44, 'pagado', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(8, 15, 492.88, 'vencido', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(9, 1, 332.32, 'pendiente', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(10, 4, 22.59, 'vencido', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(11, 1, 178.99, 'pendiente', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(12, 12, 105.16, 'vencido', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(13, 20, 359.43, 'pagado', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(14, 10, 274.26, 'vencido', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(15, 8, 20.42, 'vencido', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(16, 11, 286.04, 'pagado', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(17, 1, 34.91, 'pagado', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(18, 6, 13.08, 'pagado', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(19, 17, 449.50, 'pendiente', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(20, 5, 171.01, 'vencido', '2025-05-08 05:00:45', '2025-05-08 05:00:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_compra`
--

CREATE TABLE `detalles_compra` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `producto_id` bigint(20) UNSIGNED NOT NULL,
  `facturaCompra_id` bigint(20) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `subTotal` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalles_compra`
--

INSERT INTO `detalles_compra` (`id`, `producto_id`, `facturaCompra_id`, `cantidad`, `precio`, `subTotal`, `created_at`, `updated_at`) VALUES
(1, 11, 17, 4, 27.55, 110.20, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(2, 6, 19, 15, 87.12, 1306.80, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(3, 20, 9, 6, 47.06, 282.36, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(4, 20, 17, 14, 55.10, 771.40, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(5, 10, 8, 4, 22.07, 88.28, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(6, 17, 16, 19, 51.04, 969.76, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(7, 14, 18, 19, 9.58, 182.02, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(8, 6, 20, 11, 54.28, 597.08, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(9, 13, 20, 4, 17.49, 69.96, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(10, 12, 14, 17, 54.60, 928.20, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(11, 3, 4, 5, 36.54, 182.70, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(12, 18, 16, 19, 72.70, 1381.30, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(13, 14, 20, 5, 74.14, 370.70, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(14, 10, 6, 11, 23.16, 254.76, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(15, 17, 15, 2, 91.50, 183.00, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(16, 19, 18, 10, 25.38, 253.80, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(17, 8, 12, 6, 33.73, 202.38, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(18, 11, 20, 5, 98.90, 494.50, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(19, 19, 1, 16, 19.85, 317.60, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(20, 4, 12, 19, 31.80, 604.20, '2025-05-08 05:00:45', '2025-05-08 05:00:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_factura`
--

CREATE TABLE `detalles_factura` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `producto_id` bigint(20) UNSIGNED NOT NULL,
  `factura_id` bigint(20) UNSIGNED NOT NULL,
  `cantidadProducto` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `subTotal` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalles_factura`
--

INSERT INTO `detalles_factura` (`id`, `producto_id`, `factura_id`, `cantidadProducto`, `precio`, `subTotal`, `created_at`, `updated_at`) VALUES
(1, 20, 5, 8, 54.91, 439.28, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(2, 7, 19, 4, 41.02, 164.08, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(3, 16, 5, 5, 41.39, 206.95, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(4, 7, 12, 2, 19.35, 38.70, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(5, 10, 17, 9, 93.88, 844.92, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(6, 9, 8, 5, 46.26, 231.30, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(7, 11, 18, 5, 95.23, 476.15, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(8, 3, 10, 8, 15.35, 122.80, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(9, 8, 13, 9, 75.21, 676.89, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(10, 1, 18, 3, 28.75, 86.25, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(11, 5, 13, 10, 14.92, 149.20, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(12, 11, 4, 4, 84.94, 339.76, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(13, 11, 6, 7, 63.63, 445.41, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(14, 13, 8, 4, 96.52, 386.08, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(15, 3, 14, 2, 68.61, 137.22, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(16, 4, 19, 3, 64.70, 194.10, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(17, 1, 18, 4, 96.61, 386.44, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(18, 20, 3, 6, 51.32, 307.92, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(19, 1, 9, 6, 11.48, 68.88, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(20, 14, 3, 4, 65.66, 262.64, '2025-05-08 05:00:45', '2025-05-08 05:00:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cliente_id` bigint(20) UNSIGNED NOT NULL,
  `usuario_id` bigint(20) UNSIGNED NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `registradoPor` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id`, `cliente_id`, `usuario_id`, `fecha`, `total`, `status`, `registradoPor`, `created_at`, `updated_at`) VALUES
(1, 7, 1, '2025-02-18 19:27:55', 283.28, 1, 'Elody Ebert', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(2, 3, 1, '2025-05-02 13:59:11', 221.34, 0, 'Denis Runolfsdottir', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(3, 10, 1, '2025-04-17 15:27:01', 542.61, 1, 'Brandon Deckow', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(4, 6, 1, '2025-04-09 14:44:50', 398.06, 0, 'Susie Hill I', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(5, 20, 1, '2025-02-21 00:50:10', 844.52, 0, 'Mr. Lon Lesch I', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(6, 11, 1, '2025-04-07 16:46:50', 960.60, 0, 'Kareem Green', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(7, 15, 1, '2025-03-02 11:51:02', 512.53, 0, 'Deja Kihn', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(8, 3, 1, '2025-01-16 04:55:11', 426.65, 1, 'Annabelle Hagenes', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(9, 7, 1, '2025-04-07 23:04:20', 922.22, 0, 'Elfrieda Barton DVM', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(10, 16, 1, '2025-03-03 11:54:39', 177.22, 0, 'Torey Romaguera', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(11, 15, 1, '2025-01-16 00:22:33', 652.00, 1, 'Jimmie Mante Sr.', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(12, 14, 1, '2025-04-27 17:46:29', 744.42, 0, 'Mr. Ryan Greenfelder', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(13, 18, 1, '2025-01-26 04:43:34', 483.70, 0, 'Evans Goldner', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(14, 8, 1, '2025-04-02 00:36:19', 358.39, 0, 'Michael Yundt', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(15, 4, 1, '2025-03-18 10:38:07', 85.92, 1, 'Dr. Amos Trantow II', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(16, 4, 1, '2025-01-29 07:59:34', 998.40, 1, 'Vidal Predovic', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(17, 13, 1, '2025-02-28 00:36:01', 81.08, 0, 'Juliana Jakubowski', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(18, 4, 1, '2025-03-07 20:00:02', 122.94, 1, 'Roberto Turner', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(19, 1, 1, '2025-01-15 14:34:58', 738.92, 0, 'Miss Sarai Moore', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(20, 13, 1, '2025-02-06 15:47:46', 338.80, 1, 'Dr. Miles Mosciski', '2025-05-08 05:00:45', '2025-05-08 05:00:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura_compra`
--

CREATE TABLE `factura_compra` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proveedor_id` bigint(20) UNSIGNED NOT NULL,
  `usuario_id` bigint(20) UNSIGNED NOT NULL,
  `fecha` datetime NOT NULL,
  `status` char(255) NOT NULL,
  `registradoPor` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `factura_compra`
--

INSERT INTO `factura_compra` (`id`, `proveedor_id`, `usuario_id`, `fecha`, `status`, `registradoPor`, `created_at`, `updated_at`) VALUES
(1, 18, 1, '2025-02-07 03:27:38', 'pendiente', 'Prof. Americo Feil', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(2, 12, 1, '2025-02-26 02:30:09', 'cancelado', 'Dr. Carlotta Macejkovic', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(3, 18, 1, '2025-02-08 04:56:49', 'completado', 'Arturo Runte', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(4, 13, 1, '2025-04-07 02:33:39', 'cancelado', 'Morgan Greenfelder', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(5, 6, 1, '2025-03-02 16:58:09', 'cancelado', 'Darryl Bogan DVM', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(6, 1, 1, '2025-01-11 15:25:17', 'cancelado', 'Reta Strosin Sr.', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(7, 13, 1, '2025-04-13 01:59:36', 'completado', 'Prof. Albin Franecki', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(8, 15, 1, '2025-05-05 12:48:21', 'pendiente', 'Rupert Macejkovic', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(9, 20, 1, '2025-02-26 22:48:34', 'pendiente', 'Shayna Ritchie', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(10, 16, 1, '2025-03-05 20:32:16', 'cancelado', 'Miss Blanche Parker', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(11, 7, 1, '2025-03-10 07:32:17', 'pendiente', 'Prof. Scotty Jerde III', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(12, 20, 1, '2025-04-16 15:38:55', 'completado', 'Neva Rowe', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(13, 9, 1, '2025-01-03 20:51:01', 'cancelado', 'Dayton Schulist', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(14, 1, 1, '2025-03-13 03:28:36', 'completado', 'Derick Simonis', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(15, 2, 1, '2025-03-03 02:17:40', 'pendiente', 'Joey Mante PhD', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(16, 9, 1, '2025-04-14 16:18:10', 'completado', 'Celine Monahan', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(17, 2, 1, '2025-02-28 04:29:40', 'pendiente', 'Shaina Gutkowski', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(18, 12, 1, '2025-03-20 18:33:53', 'pendiente', 'Dr. Domenic Goodwin', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(19, 17, 1, '2025-01-07 17:13:02', 'completado', 'Dr. Rosemarie Predovic', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(20, 11, 1, '2025-03-29 13:38:12', 'cancelado', 'Delphia Williamson', '2025-05-08 05:00:45', '2025-05-08 05:00:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_03_10_070707_create-clientes-table', 1),
(5, '2025_03_12_225748_create-facturas-table', 1),
(6, '2025_03_12_225805_create-proveedores-table', 1),
(7, '2025_03_12_225817_create-productos-table', 1),
(8, '2025_03_12_225837_create-detalles_factura-table', 1),
(9, '2025_03_16_232031_create_factura_compra_table', 1),
(10, '2025_03_16_232353_create_detalles_compra_table', 1),
(11, '2025_03_16_232727_create_cuentas_por_cobrar_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `proveedor_id` bigint(20) UNSIGNED NOT NULL,
  `nombreProducto` varchar(255) NOT NULL,
  `stockActual` int(11) NOT NULL,
  `stockMinimo` int(11) NOT NULL,
  `gramaje` int(11) NOT NULL,
  `precioVenta` decimal(10,2) NOT NULL,
  `precioCosto` decimal(10,2) NOT NULL,
  `precioProduccion` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `proveedor_id`, `nombreProducto`, `stockActual`, `stockMinimo`, `gramaje`, `precioVenta`, `precioCosto`, `precioProduccion`, `status`, `created_at`, `updated_at`) VALUES
(1, 15, 'ea', 90, 5, 543, 93.41, 21.14, 20.83, 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(2, 8, 'sint', 99, 4, 753, 1.36, 6.70, 12.13, 0, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(3, 8, 'temporibus', 85, 10, 535, 99.00, 16.32, 10.92, 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(4, 4, 'ut', 76, 8, 689, 39.78, 18.35, 11.13, 0, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(5, 13, 'qui', 48, 3, 696, 15.62, 2.81, 8.40, 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(6, 11, 'accusantium', 72, 6, 623, 95.86, 23.62, 1.47, 0, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(7, 16, 'qui', 89, 2, 238, 40.62, 39.91, 24.15, 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(8, 17, 'maiores', 48, 3, 563, 63.79, 21.06, 29.48, 0, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(9, 6, 'quae', 95, 5, 801, 40.93, 21.27, 6.77, 0, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(10, 3, 'magnam', 73, 6, 810, 66.69, 40.57, 14.04, 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(11, 14, 'libero', 80, 8, 919, 86.50, 28.99, 25.31, 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(12, 11, 'magni', 49, 2, 513, 79.49, 18.15, 4.62, 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(13, 3, 'enim', 43, 4, 792, 39.00, 37.70, 29.98, 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(14, 19, 'odio', 72, 10, 699, 75.86, 16.75, 18.73, 0, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(15, 8, 'ut', 61, 9, 216, 64.22, 13.60, 31.92, 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(16, 19, 'cum', 67, 2, 315, 87.37, 46.86, 34.37, 0, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(17, 15, 'consequatur', 46, 6, 849, 55.19, 20.92, 23.84, 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(18, 1, 'quia', 64, 3, 764, 85.00, 42.91, 24.83, 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(19, 18, 'qui', 79, 6, 352, 24.52, 44.76, 29.69, 1, '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(20, 19, 'reiciendis', 79, 10, 853, 76.26, 14.11, 30.80, 0, '2025-05-08 05:00:45', '2025-05-08 05:00:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombreProveedor` varchar(255) NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `numeroTelefono` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `nombreProveedor`, `ciudad`, `direccion`, `email`, `numeroTelefono`, `created_at`, `updated_at`) VALUES
(1, 'Schuppe-Nader', 'Edwardbury', '1379 Bartell Forge\nTyreekfort, MA 62890', 'easton26@example.net', '+1-847-880-7221', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(2, 'Collins, Kreiger and Hyatt', 'Annabellport', '7545 Heidenreich Junction Apt. 786\nTremblayview, AZ 91839-6850', 'phudson@example.com', '+19844163424', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(3, 'Schroeder-Paucek', 'Kohlerchester', '67415 Wiza Plain Suite 888\nWest Charleymouth, MD 60370', 'ilehner@example.org', '940-685-4773', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(4, 'Vandervort-Marquardt', 'Roweview', '99412 Harber Shore\nAshleighside, MS 73229', 'lhudson@example.com', '480.646.7496', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(5, 'Strosin, Tromp and Corkery', 'North Mikayla', '7662 Schaefer Ridges\nBoyerbury, MD 77248', 'schmitt.amelia@example.org', '+1-820-836-3671', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(6, 'Greenholt-Gutkowski', 'Runolfsdottirmouth', '228 Krystina Lakes\nSouth Velva, DC 04667-0247', 'norberto83@example.net', '1-360-469-2661', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(7, 'Strosin, Kassulke and Vandervort', 'Boehmville', '478 Bosco Crossing Apt. 489\nPort Geovanni, MO 97969-9007', 'west.dahlia@example.net', '724.689.2872', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(8, 'Weissnat-Green', 'East Annalisefort', '2885 Eloise Orchard\nHarmonton, TX 27563-3360', 'maggio.olin@example.net', '(667) 730-0769', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(9, 'Kunde-Christiansen', 'Leonardborough', '3625 Adams Islands\nJoaquinmouth, OH 83580-3845', 'dheidenreich@example.net', '1-580-444-8656', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(10, 'Ullrich LLC', 'East Aishaburgh', '5520 Daugherty Oval\nRaynorville, WA 70513-5929', 'cdenesik@example.net', '+1-458-740-1759', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(11, 'Hettinger-McClure', 'Lednerland', '50052 Weissnat Highway\nEladioside, KS 00549', 'gmccullough@example.org', '1-623-656-4461', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(12, 'Crist Group', 'Austynmouth', '8226 Treva Expressway Apt. 154\nBaumbachborough, MT 01575-5569', 'marisa78@example.net', '732.767.8107', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(13, 'Corkery-Bechtelar', 'Maeveshire', '1341 Angeline Roads\nDickinsonview, CA 97429', 'abbey49@example.net', '+1-423-680-4521', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(14, 'Gaylord-Hane', 'New Lavon', '9399 Daniela Forges Suite 675\nSamantahaven, FL 21149-6668', 'madyson.kshlerin@example.net', '+1 (570) 417-7998', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(15, 'Hartmann Group', 'North Lucienneborough', '6852 Dibbert Pine\nJennyfermouth, HI 74707', 'schaefer.rae@example.com', '478-976-6365', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(16, 'Hansen PLC', 'West Elliottville', '207 Nelle Light\nBertburgh, SC 60982-2417', 'ashanahan@example.net', '1-586-528-6592', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(17, 'Bayer-Miller', 'North Jonatan', '381 Strosin Plains Suite 528\nKshlerinfort, MT 83154', 'milo18@example.com', '(501) 267-6110', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(18, 'Ryan, Raynor and Hackett', 'New Virgieland', '579 Jakubowski Ranch\nNew Mafalda, NM 33772-1391', 'jhane@example.com', '951-523-1041', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(19, 'Treutel-Medhurst', 'Casimirchester', '432 Adams Islands Suite 907\nSouth Vito, ND 02991', 'jheathcote@example.org', '(270) 519-5872', '2025-05-08 05:00:45', '2025-05-08 05:00:45'),
(20, 'Prosacco-Swaniawski', 'South Darronchester', '874 Greyson Heights\nWest Adelaborough, NC 32205', 'bridie66@example.net', '+1-605-224-7529', '2025-05-08 05:00:45', '2025-05-08 05:00:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('fen3e4JAZnqxonFuHsx5jVIqwTdQoyjBTo0Jygjx', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMDRTRDdPWTQwS3hoOFBCNklvM3d4RG1pOTRHNFVBcWdYNEpESkMzRiI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvcHJvZHVjdG9zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3NDY2ODA1NzE7fX0=', 1746682072),
('vbTkLO9R68fYYAiUabjVGdBG6HsDezxoMSsUsNNs', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/136.0.0.0 Safari/537.36 Edg/136.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM1M0WWdIS2ZtZUJlM01jV3k0YmhJSUNYTk1TYXUwRmFKczd1Qzh1ZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1746722605);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Eduardo Gutierrez de Piñerez', 'edojose1518@gmail.com', NULL, '$2y$12$zUeLofrYMyXSoaYGTDK51ushspRnpoIOMNqMW79drABff2suNzHNm', NULL, '2025-05-08 05:00:44', '2025-05-08 05:00:44');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cuentas_por_cobrar`
--
ALTER TABLE `cuentas_por_cobrar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cuentas_por_cobrar_factura_id_foreign` (`factura_id`);

--
-- Indices de la tabla `detalles_compra`
--
ALTER TABLE `detalles_compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalles_compra_producto_id_foreign` (`producto_id`),
  ADD KEY `detalles_compra_facturacompra_id_foreign` (`facturaCompra_id`);

--
-- Indices de la tabla `detalles_factura`
--
ALTER TABLE `detalles_factura`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalles_factura_producto_id_foreign` (`producto_id`),
  ADD KEY `detalles_factura_factura_id_foreign` (`factura_id`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `facturas_cliente_id_foreign` (`cliente_id`),
  ADD KEY `facturas_usuario_id_foreign` (`usuario_id`);

--
-- Indices de la tabla `factura_compra`
--
ALTER TABLE `factura_compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `factura_compra_proveedor_id_foreign` (`proveedor_id`),
  ADD KEY `factura_compra_usuario_id_foreign` (`usuario_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_proveedor_id_foreign` (`proveedor_id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `cuentas_por_cobrar`
--
ALTER TABLE `cuentas_por_cobrar`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `detalles_compra`
--
ALTER TABLE `detalles_compra`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `detalles_factura`
--
ALTER TABLE `detalles_factura`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `factura_compra`
--
ALTER TABLE `factura_compra`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cuentas_por_cobrar`
--
ALTER TABLE `cuentas_por_cobrar`
  ADD CONSTRAINT `cuentas_por_cobrar_factura_id_foreign` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`);

--
-- Filtros para la tabla `detalles_compra`
--
ALTER TABLE `detalles_compra`
  ADD CONSTRAINT `detalles_compra_facturacompra_id_foreign` FOREIGN KEY (`facturaCompra_id`) REFERENCES `factura_compra` (`id`),
  ADD CONSTRAINT `detalles_compra_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `detalles_factura`
--
ALTER TABLE `detalles_factura`
  ADD CONSTRAINT `detalles_factura_factura_id_foreign` FOREIGN KEY (`factura_id`) REFERENCES `facturas` (`id`),
  ADD CONSTRAINT `detalles_factura_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD CONSTRAINT `facturas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`),
  ADD CONSTRAINT `facturas_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `factura_compra`
--
ALTER TABLE `factura_compra`
  ADD CONSTRAINT `factura_compra_proveedor_id_foreign` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`),
  ADD CONSTRAINT `factura_compra_usuario_id_foreign` FOREIGN KEY (`usuario_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_proveedor_id_foreign` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
