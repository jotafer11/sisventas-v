-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-01-2024 a las 19:39:33
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
-- Base de datos: `sisventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_almacen`
--

CREATE TABLE `tb_almacen` (
  `id_producto` int(11) NOT NULL,
  `codigo` varchar(255) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `stock_minimo` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `precio_compra` varchar(50) NOT NULL,
  `precio_venta` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_almacen`
--

INSERT INTO `tb_almacen` (`id_producto`, `codigo`, `nombre`, `descripcion`, `stock`, `stock_minimo`, `fyh_creacion`, `id_categoria`, `precio_compra`, `precio_venta`) VALUES
(1, '11010332/5410101072', 'VARILLA NIVEL ACEITE ACTROS', 'destacados', 102, 5, '2023-12-27 21:02:15', 1, '2000', '24990'),
(2, '11140412/9415410103', 'TAPA BATERIA ACTROS', 'tapa bateria ml', 4, 0, '2023-12-27 21:04:32', 1, '4000', '29990'),
(3, '11140487/3756601128', 'PELDAÑO COLGANTE CORTO ACTROS ', '', 10, 0, '2023-12-28 16:04:30', 1, '', ''),
(4, '11050030/9408200421', 'INTERMITENTE AXOR RH', '952996586 (ml)', 17, 5, '2023-12-28 16:06:30', 1, '3000', '9000'),
(8, '11140457/3756602330', 'FIJACION PRIMER ACCESO ACTROS', '-', 2, 5, '0000-00-00 00:00:00', 1, '', ''),
(9, 'A4570160221/4570160221', 'JUNTA TAPA CULATIN MO501 502  ACTROS', '-', 10, 5, '0000-00-00 00:00:00', 6, '', ''),
(32, '104937/9438260259', 'BISEL CROMADO FOCO ACTROS MP3 LH', '971217053 (ml)', 17, 5, '0000-00-00 00:00:00', 1, '', ''),
(33, '104938/9438260359', 'BISEL CROMADO FOCO RH ACTROS MP3', '971217053 (ml)', 0, 5, '0000-00-00 00:00:00', 1, '', ''),
(34, '11140311/9438800285', 'REJILLA PROTECCION FOCO ACTROS RH', '992561255 (ml)', 2, 5, '0000-00-00 00:00:00', 1, '', ''),
(35, '11140310/9438800185', 'REJILLA PROTECCION FOCO ACTROS LH', '992561255 (ml)', 8, 5, '0000-00-00 00:00:00', 1, '', ''),
(36, '11140292/0018112133', 'REEMPLAZO ESPEJO CHICO ACTROS MP1 MP2', '', 18, 5, '0000-00-00 00:00:00', 1, '', ''),
(37, '11050207/0035441003', 'FOCO TRASERO ACTROS MP3 MP4 RH', '1008612633 (ml)', 0, 3, '0000-00-00 00:00:00', 1, '', ''),
(38, '11050208/0035440903', 'FOCO TRASERO ACTROS MP3 MP4 LH', '1008612633 (ml)', 13, 3, '0000-00-00 00:00:00', 1, '', ''),
(39, '11050204TR/0018261382', 'SOQUETE INTERMITENTE ACTROS MP2-MP3', '', 0, 5, '0000-00-00 00:00:00', 3, '', ''),
(40, '117090/0011523210', 'SOLENOIDE 50 ARRANCADOR MOTOR MB ACTROS MP1 MP2 MP3', '', 6, 5, '0000-00-00 00:00:00', 3, '', ''),
(41, '117091/0011522410', 'CHANCHITO DE PARTIDA/SOLENOIDE ACTROS MP1 MP2 MP3', '', 23, 5, '0000-00-00 00:00:00', 3, '', ''),
(42, '117014/0061530728', 'SENSOR TEMPERATURA GASES ESCAPE ACTROS MP3', '', 4, 5, '0000-00-00 00:00:00', 3, '', ''),
(43, '12242/0025426718', 'SENSOR REVOLUCIONES CIGUEÑAL Y LEVAS', '', 1, 5, '0000-00-00 00:00:00', 3, '', ''),
(44, '142155/9438200097', 'INTERRUPTOR DE ELEVALUNAS CHOFER ACTROS MP1 MP2 MP3', '', 2, 5, '0000-00-00 00:00:00', 3, '', ''),
(45, '61405/0004303907', 'SENSOR DE PRESIÓN AIRE ACTROS', '', 0, 5, '0000-00-00 00:00:00', 3, '', ''),
(46, '142146/6555400717', 'SENSOR ABS EJE TRASERO DERECHO TOLVA Y FORESTAL ACTROS', '', 7, 5, '0000-00-00 00:00:00', 3, '', ''),
(47, '117044/0011533120', 'SENSOR REVOLUCIONES CIGUEÑAL Y LEVAS', '', 6, 5, '0000-00-00 00:00:00', 3, '', ''),
(48, '117013/0061530628', 'SENSOR TERMICO DELANTE CATALIZADOR ACTROS MP3 CON ADBLUE', '', 3, 5, '0000-00-00 00:00:00', 3, '', ''),
(49, '117094/0011530220', 'SENSOR RPM CIGUEÑAL ACTROS MP1', '', 2, 5, '0000-00-00 00:00:00', 3, '', ''),
(50, '117022/1539932', 'INTERRUPTOR PRESIÓN DE ACEITE OM 501LA 502LA 904LA 906LA', '', 5, 5, '0000-00-00 00:00:00', 3, '', ''),
(51, '6526/0155456526', 'CONECTOR REDONDO 1 A 4 PINES ACTROS', '', 50, 5, '0000-00-00 00:00:00', 3, '', ''),
(52, '11050265/9435451307', 'TECLA TOMA FUERZA ACTROS MP2 MP3', 'tecla toma fuerza', 0, 5, '0000-00-00 00:00:00', 1, '5000', '15000'),
(53, '142139/0015428718', 'SENSOR BS IZQ/DER EJE DIRECCIONAL ACTROS', '', 5, 5, '0000-00-00 00:00:00', 3, '', ''),
(54, '09189/0001539932', 'SENSOR ELECTRÓNICO DE PRESIÓN DE ACEITE', '', 5, 5, '0000-00-00 00:00:00', 3, '', ''),
(55, 'A0015408727/0015408727', 'CABLE ELECTRICO SENSOR ABS EJE TRASERO DERECHO', '', 1, 5, '0000-00-00 00:00:00', 3, '', ''),
(56, 'RLD5M041/0035422618', 'SENSOR CONTROL DE NIVELACION DE ALTURA TRACCIONAL MB', '', 6, 5, '0000-00-00 00:00:00', 3, '', ''),
(57, '45454207/0045454207', 'TECLA TOMA FUERZA ACTROS MP2 MP3', '', 0, 5, '0000-00-00 00:00:00', 1, '', ''),
(58, 'RLD5D003', 'CORTACORRIENTE 300 AMP C/SOPORTE', '', 28, 5, '0000-00-00 00:00:00', 3, '', ''),
(59, '158068/0018216960', 'RESISTENCIA AIRE ACONDICIONADO ACTROS', '', 1, 5, '0000-00-00 00:00:00', 3, '', ''),
(60, '1402355546', 'CONECTOR REDONDO 5 A 7 PINES ACTROS', '', 23, 5, '0000-00-00 00:00:00', 3, '', ''),
(61, '142115/0085450124', 'TELECOMANDO ACTROS', '', 10, 5, '0000-00-00 00:00:00', 3, '', ''),
(62, '0104120MB01BO/0004661367', 'SENSOR DE NIVEL HIDRAULICO ACTROS', '', 0, 5, '0000-00-00 00:00:00', 3, '', ''),
(63, '60419/4213509352', 'KIT REPARACION MODULO DE MARCHAS WABCO', '', 0, 5, '0000-00-00 00:00:00', 3, '', ''),
(64, '43121/125425617', 'SENSOR DE REVOLUCIONES DE LA CAJA MB ACTROS', '', 0, 5, '0000-00-00 00:00:00', 3, '', ''),
(65, 'A9435454507/9435454507', 'TECLA ACTIVACION AIRE ACONDICIONADO ACTROS', '', 2, 5, '0000-00-00 00:00:00', 1, '', ''),
(66, 'A0165451226/0165451226', 'ENCHUFE CHICO GS MERCEDES ACTROS', '', 2, 5, '0000-00-00 00:00:00', 3, '', ''),
(67, '1226/0165451226', 'X15 PIN ENCHUFE MODULO GS', '', 0, 5, '0000-00-00 00:00:00', 3, '150', ''),
(68, '117067/0001543805', 'CAJA REGULADORA ALTERNADOR OM 457LA, 501LA, 502LA', '', 11, 5, '0000-00-00 00:00:00', 3, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_carrito`
--

CREATE TABLE `tb_carrito` (
  `id_carrito` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_categorias`
--

CREATE TABLE `tb_categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(255) NOT NULL,
  `fyh_creacion` datetime DEFAULT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_categorias`
--

INSERT INTO `tb_categorias` (`id_categoria`, `nombre_categoria`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'CARROCERIA', '2023-12-27 19:28:31', '2023-12-27 19:28:31'),
(2, 'DIRECCION', '2023-12-27 19:28:31', '2023-12-27 19:28:31'),
(3, 'ELECTRICOS', '2023-12-27 19:31:12', '2023-12-27 19:31:12'),
(4, 'FILTROS', '2023-12-27 19:31:12', '2023-12-27 19:31:12'),
(5, 'FRENOS', '2023-12-27 19:31:32', '2023-12-27 19:31:32'),
(6, 'MOTOR', '2023-12-27 19:31:32', '2023-12-27 19:31:32'),
(7, 'SUSPENSION', '2023-12-27 19:31:53', '2023-12-27 19:31:53'),
(8, 'TRANSMISION', '2023-12-27 19:31:53', '2023-12-27 19:31:53'),
(9, 'SISTEMA DE ESCAPE', '2023-12-27 19:32:09', '2023-12-27 19:32:09'),
(10, 'REFRIGERACION Y CALEFACCION', '2023-12-27 19:32:09', '2023-12-27 19:32:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_compras`
--

CREATE TABLE `tb_compras` (
  `id_compra` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `nro_compra` int(11) NOT NULL,
  `fecha_compra` datetime NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `comprobante` varchar(255) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `precio_compra` varchar(50) NOT NULL,
  `cantidad_compra` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_compras`
--

INSERT INTO `tb_compras` (`id_compra`, `id_producto`, `nro_compra`, `fecha_compra`, `id_proveedor`, `comprobante`, `id_usuario`, `precio_compra`, `cantidad_compra`) VALUES
(19, 1, 1, '2024-01-18 00:00:00', 2, 'Factura', 12, '2000', 20),
(20, 1, 2, '2024-01-18 00:00:00', 2, 'Factura', 12, '2000', 20),
(24, 1, 3, '2024-01-18 00:00:00', 2, 'Factura', 12, '2000', 20),
(25, 1, 4, '2024-01-18 00:00:00', 2, 'Factura', 12, '2000', 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_proveedores`
--

CREATE TABLE `tb_proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_proveedor` varchar(255) NOT NULL,
  `celular` varchar(50) NOT NULL,
  `telefono` varchar(50) NOT NULL,
  `empresa` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_proveedores`
--

INSERT INTO `tb_proveedores` (`id_proveedor`, `nombre_proveedor`, `celular`, `telefono`, `empresa`, `email`) VALUES
(1, 'AVANT ', '9977888444222', '42 2 33 55', 'AVANT', 'karen@gmail.com'),
(2, 'OTOKAM', '', '+90 44665 3333 ', 'OTOKAM ', 'otokam@whulerman');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_roles`
--

CREATE TABLE `tb_roles` (
  `id_rol` int(11) NOT NULL,
  `rol` varchar(255) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_roles`
--

INSERT INTO `tb_roles` (`id_rol`, `rol`, `fyh_creacion`, `fyh_actualizacion`) VALUES
(1, 'ADMINISTRADOR', '2024-01-17 20:52:56', '2024-01-17 20:52:56'),
(2, 'VENDEDOR', '2024-01-18 10:08:38', '0000-00-00 00:00:00'),
(3, 'BODEGA', '2024-01-18 14:51:23', '2024-01-18 14:51:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_usuarios`
--

CREATE TABLE `tb_usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_user` text NOT NULL,
  `token` varchar(100) NOT NULL,
  `fyh_creacion` datetime NOT NULL,
  `fyh_actualizacion` datetime NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tb_usuarios`
--

INSERT INTO `tb_usuarios` (`id_usuario`, `nombres`, `email`, `password_user`, `token`, `fyh_creacion`, `fyh_actualizacion`, `id_rol`) VALUES
(12, 'Javier Fernandez', 'jotafer11@gmail.com', '12345678', '', '2024-01-17 20:53:37', '2024-01-17 20:53:37', 1),
(14, 'Natalia Vega', 'ventastr@gmail.com', '12345678', '', '2024-01-18 03:36:36', '0000-00-00 00:00:00', 2),
(15, 'Gonzalo Bao', 'gonzalo.bao@gmail.com', '12345678', '', '2024-01-18 03:37:31', '0000-00-00 00:00:00', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_almacen`
--
ALTER TABLE `tb_almacen`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `tb_carrito`
--
ALTER TABLE `tb_carrito`
  ADD PRIMARY KEY (`id_carrito`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `tb_categorias`
--
ALTER TABLE `tb_categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `tb_compras`
--
ALTER TABLE `tb_compras`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_producto` (`id_producto`),
  ADD KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `tb_proveedores`
--
ALTER TABLE `tb_proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `tb_roles`
--
ALTER TABLE `tb_roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_rol_2` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_almacen`
--
ALTER TABLE `tb_almacen`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `tb_carrito`
--
ALTER TABLE `tb_carrito`
  MODIFY `id_carrito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tb_categorias`
--
ALTER TABLE `tb_categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `tb_compras`
--
ALTER TABLE `tb_compras`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `tb_proveedores`
--
ALTER TABLE `tb_proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tb_roles`
--
ALTER TABLE `tb_roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_almacen`
--
ALTER TABLE `tb_almacen`
  ADD CONSTRAINT `tb_almacen_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `tb_categorias` (`id_categoria`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_compras`
--
ALTER TABLE `tb_compras`
  ADD CONSTRAINT `tb_compras_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `tb_proveedores` (`id_proveedor`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_compras_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `tb_almacen` (`id_producto`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_compras_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuarios` (`id_usuario`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_usuarios`
--
ALTER TABLE `tb_usuarios`
  ADD CONSTRAINT `tb_usuarios_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `tb_roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
