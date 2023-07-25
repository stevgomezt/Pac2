-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2023 at 05:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testformpac`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `numero_documento` varchar(100) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `genero` varchar(255) DEFAULT NULL,
  `estado_civil` varchar(255) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `nivel_estudios` varchar(255) DEFAULT NULL,
  `estrato` int(11) DEFAULT NULL,
  `num_hijos` int(11) DEFAULT NULL,
  `personas_cargo` int(11) DEFAULT NULL,
  `experiencia` int(11) DEFAULT NULL,
  `area_experiencia` varchar(255) DEFAULT NULL,
  `tiempo_ventas` int(11) DEFAULT NULL,
  `experiencia_general` int(11) DEFAULT NULL,
  `otra_area_experiencia` varchar(255) DEFAULT NULL,
  `pda_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `numero_documento`, `nombre`, `edad`, `genero`, `estado_civil`, `correo`, `telefono`, `nivel_estudios`, `estrato`, `num_hijos`, `personas_cargo`, `experiencia`, `area_experiencia`, `tiempo_ventas`, `experiencia_general`, `otra_area_experiencia`, `pda_color`) VALUES
(1, '1234567890', 'juan perez', 25, 'masculino', 'divorciado', 'juan@example.com', 2147483647, 'tecnologo', 3, 1, 0, 2, 'servicio al cliente', 3, 4, 'otros', 'azul y/o verde'),
(2, '9876543210', 'ana torres', 30, 'femenino', 'casado', 'ana@example.com', 2147483647, 'tecnologo', 4, 2, 0, 1, 'ventas', 2, 3, 'servicio al cliente presencial', 'azul y/o verde'),
(3, '4567890123', 'carlos gutierrez', 28, 'masculino', 'casado', 'carlos@example.com', 2147483647, 'universitario', 2, 0, 3, 5, 'venta cruzada', 1, 2, 'otros', 'azul y/o rojo'),
(4, '7890123456', 'maría sanchez', 35, 'femenino', 'casado', 'maria@example.com', 2147483647, 'bachillerato', 3, 3, 2, 4, 'ventas', 3, 5, 'servicio al cliente presencial', 'azul y/o verde'),
(5, '2345178901', 'pedro gonzalez', 40, 'masculino', 'casado', 'pedro@example.com', 2147483647, 'tecnologo', 5, 4, 1, 0, 'servicio al cliente', 0, 0, 'otros', 'verde y/o azul'),
(6, '5678901234', 'laura ramirez', 22, 'femenino', 'soltero', 'laura@example.com', 2147483647, 'universitario', 1, 0, 0, 5, 'cobranza', 5, 2, 'servicio al cliente presencial', 'amarillo y/o verde'),
(7, '0123456789', 'josé martínez', 29, 'masculino', 'casado', 'jose@example.com', 2147483647, 'bachillerato', 2, 2, 1, 3, 'bo', 4, 5, 'venta al cliente presencial', 'azul y/o verde'),
(8, '3456789012', 'diana castro', 27, 'femenino', 'soltero', 'diana@example.com', 2147483647, 'tecnico', 3, 2, 0, 2, 'ventas', 2, 3, 'venta al cliente presencial', 'verde'),
(9, '6789012335', 'ricardo lopez', 33, 'masculino', 'soltero', 'ricardo@example.com', 2147483647, 'universitario', 4, 4, 4, 5, 'servicio al cliente', 3, 5, 'venta al cliente presencial', 'azul y/o verde'),
(10, '9013345678', 'sofía fernandez', 26, 'femenino', 'casado', 'sofia@example.com', 2147483647, 'tecnologo', 3, 0, 2, 1, 'bo', 0, 1, 'servicio al cliente presencial', 'amarillo'),
(11, '7190123456', 'jorge mendez', 37, 'masculino', 'divorciado', 'jorge@example.com', 2147483647, 'universitario', 2, 3, 1, 4, 'ventas', 4, 2, 'otros', 'amarillo'),
(12, '5678941234', 'gabriel torres', 29, 'masculino', 'soltero', 'gabriel@example.com', 2147483647, 'tecnologo', 1, 0, 1, 0, 'venta cruzada', 1, 3, 'servicio al cliente presencial', 'amarillo y/o verde'),
(13, '0123456781', 'fernanda gomez', 31, 'femenino', 'casado', 'fernanda@example.com', 2147483647, 'bachillerato', 4, 0, 0, 2, 'retencion', 2, 4, 'otros', 'azul y/o amarillo'),
(14, '3456782012', 'daniel rodriguez', 28, 'masculino', 'viudo', 'daniel@example.com', 2147483647, 'bachillerato', 5, 1, 1, 1, 'bo', 1, 1, 'servicio al cliente presencial', 'azul'),
(15, '6789012342', 'carolina herrera', 24, 'femenino', 'soltero', 'carolina@example.com', 2147483647, 'tecnico', 3, 0, 0, 0, 'servicio al cliente', 0, 0, 'venta al cliente presencial', 'azul y/o verde'),
(16, '2345674901', 'andrés ramirez', 30, 'masculino', 'divorciado', 'andres@example.com', 2147483647, 'universitario', 2, 0, 0, 5, 'venta cruzada', 5, 5, 'venta al cliente presencial', 'amarillo y/o azul'),
(17, '5678101234', 'paula castro', 23, 'femenino', 'divorciado', 'paula@example.com', 2147483647, 'tecnico', 1, 0, 0, 1, 'retencion', 1, 1, 'otros', 'azul'),
(18, '0123456782', 'miguel lopez', 27, 'masculino', 'divorciado', 'miguel@example.com', 2147483647, 'tecnologo', 4, 0, 2, 4, 'venta cruzada', 4, 5, 'venta al cliente presencial', 'verde y/o azul'),
(19, '3452789012', 'julia fernandez', 32, 'femenino', 'casado', 'julia@example.com', 2147483647, 'tecnico', 3, 0, 0, 3, 'retencion', 2, 3, 'servicio al cliente presencial', 'amarillo y/o azul'),
(20, '6789012341', 'roberto mendez', 29, 'masculino', 'soltero', 'roberto@example.com', 2147483647, 'tecnologo', 1, 1, 1, 2, 'cobranza', 2, 4, 'servicio al cliente presencial', 'verde y/o azul'),
(21, '9012345638', 'elena gomez', 34, 'femenino', 'viudo', 'elena@example.com', 2147483647, 'bachillerato', 2, 2, 1, 4, 'retencion', 4, 5, 'otros', 'amarillo y/o rojo'),
(22, '2335678901', 'sergio rodriguez', 26, 'masculino', 'divorciado', 'sergio@example.com', 2147483647, 'universitario', 4, 1, 0, 1, 'retencion', 1, 1, 'otros', 'amarillo y/o verde'),
(23, '5638901234', 'valeria herrera', 31, 'femenino', 'viudo', 'valeria@example.com', 2147483647, 'tecnologo', 4, 2, 2, 5, 'cobranza', 5, 5, 'venta al cliente presencial', 'verde'),
(24, '0123456780', 'oscar rodriguez', 27, 'masculino', 'divorciado', 'oscar@example.com', 2147483647, 'tecnico', 2, 0, 0, 1, 'venta cruzada', 0, 1, 'venta al cliente presencial', 'amarillo y/o rojo'),
(25, '3456789412', 'daniela herrera', 28, 'femenino', 'soltero', 'daniela@example.com', 2147483647, 'tecnologo', 1, 0, 0, 2, 'retencion', 1, 2, 'venta al cliente presencial', 'azul y/o amarillo'),
(26, '6789012345', 'francisco ramirez', 30, 'masculino', 'viudo', 'francisco@example.com', 2147483647, 'universitario', 2, 1, 0, 1, 'cobranza', 1, 1, 'servicio al cliente presencial', 'verde y/o rojo'),
(27, '9012345678', 'valentina castro', 25, 'femenino', 'divorciado', 'valentina@example.com', 2147483647, 'bachillerato', 4, 0, 0, 0, 'retencion', 0, 0, 'otros', 'amarillo y/o rojo'),
(28, '2345678901', 'sebastian lopez', 26, 'masculino', 'casado', 'sebastian@example.com', 2147483647, 'tecnico', 3, 0, 0, 2, 'retencion', 0, 1, 'servicio al cliente presencial', 'azul'),
(30, '0000000001', 'nombre1', 20, 'masculino', 'casado', 'nombre1@example.com', 1111111111, 'bachillerato', 2, 0, 0, 1, 'ventas', 2, 3, 'servicio al cliente presencial', 'azul y/o amarillo'),
(31, '0000000002', 'nombre2', 30, 'femenino', 'divorciado', 'nombre2@example.com', 2147483647, 'bachillerato', 4, 2, 1, 4, 'bo', 5, 2, 'venta al cliente presencial', 'amarillo'),
(32, '0000000003', 'nombre3', 28, 'masculino', 'casado', 'nombre3@example.com', 2147483647, 'universitario', 1, 1, 0, 3, 'venta cruzada', 1, 2, 'venta al cliente presencial', 'azul y/o rojo'),
(33, '0000000004', 'nombre4', 22, 'femenino', 'divorciado', 'nombre4@example.com', 2147483647, 'tecnico', 3, 2, 1, 2, 'cobranza', 3, 2, 'servicio al cliente presencial', 'verde y/o rojo'),
(34, '0000000005', 'nombre5', 40, 'masculino', 'casado', 'nombre5@example.com', 2147483647, 'tecnico', 5, 3, 2, 6, 'cobranza', 7, 3, 'otros', 'amarillo y/o azul'),
(35, '0000000006', 'nombre6', 35, 'femenino', 'viudo', 'nombre6@example.com', 2147483647, 'tecnologo', 4, 3, 2, 5, 'servicio al cliente', 4, 3, 'otros', 'azul y/o verde'),
(36, '0000000007', 'nombre7', 27, 'masculino', 'viudo', 'nombre7@example.com', 2147483647, 'tecnico', 3, 1, 1, 3, 'ventas', 3, 4, 'servicio al cliente presencial', 'verde y/o azul'),
(37, '0000000008', 'nombre8', 33, 'femenino', 'viudo', 'nombre8@example.com', 2147483647, 'tecnico', 2, 1, 1, 4, 'venta cruzada', 2, 4, 'servicio al cliente presencial', 'azul y/o amarillo'),
(38, '0000000009', 'nombre9', 29, 'masculino', 'viudo', 'nombre9@example.com', 2147483647, 'universitario', 4, 0, 0, 3, 'cobranza', 2, 3, 'venta al cliente presencial', 'verde'),
(39, '0000000010', 'nombre10', 31, 'femenino', 'viudo', 'nombre10@example.com', 1010101010, 'tecnologo', 3, 2, 1, 5, 'ventas', 4, 4, 'servicio al cliente presencial', 'azul y/o amarillo'),
(40, '0000000011', 'nombre11', 24, 'masculino', 'casado', 'nombre11@example.com', 1111111111, 'tecnologo', 1, 0, 0, 2, 'ventas', 1, 2, 'servicio al cliente presencial', 'amarillo'),
(41, '0000000012', 'nombre12', 27, 'femenino', 'casado', 'nombre12@example.com', 1212121212, 'tecnico', 4, 2, 1, 4, 'retencion', 4, 3, 'venta al cliente presencial', 'verde y/o azul'),
(42, '0000000013', 'nombre13', 26, 'masculino', 'divorciado', 'nombre13@example.com', 1313131313, 'tecnologo', 2, 0, 0, 2, 'venta cruzada', 2, 3, 'otros', 'amarillo'),
(43, '0000000014', 'nombre14', 38, 'femenino', 'soltero', 'nombre14@example.com', 1414141414, 'bachillerato', 5, 3, 2, 6, 'venta cruzada', 6, 4, 'servicio al cliente presencial', 'verde'),
(44, '0000000015', 'nombre15', 23, 'masculino', 'soltero', 'nombre15@example.com', 1515151515, 'tecnico', 2, 0, 0, 1, 'ventas', 2, 2, 'venta al cliente presencial', 'verde'),
(45, '0000000016', 'nombre16', 34, 'femenino', 'soltero', 'nombre16@example.com', 1616161616, 'bachillerato', 4, 2, 1, 5, 'venta cruzada', 5, 4, 'servicio al cliente presencial', 'azul y/o rojo'),
(46, '0000000017', 'nombre17', 27, 'masculino', 'casado', 'nombre17@example.com', 1717171717, 'tecnico', 3, 1, 0, 3, 'servicio al cliente', 3, 2, 'otros', 'azul'),
(47, '0000000018', 'nombre18', 39, 'femenino', 'viudo', 'nombre18@example.com', 1818181818, 'tecnologo', 5, 3, 2, 7, 'bo', 7, 3, 'venta al cliente presencial', 'azul y/o amarillo'),
(48, '0000000019', 'nombre19', 28, 'masculino', 'soltero', 'nombre19@example.com', 1919191919, 'universitario', 2, 1, 1, 3, 'ventas', 3, 4, 'venta al cliente presencial', 'amarillo y/o rojo'),
(49, '0000000020', 'nombre20', 36, 'femenino', 'viudo', 'nombre20@example.com', 2020202020, 'tecnico', 4, 2, 1, 5, 'venta cruzada', 5, 3, 'otros', 'azul y/o rojo'),
(50, '0000000021', 'nombre21', 25, 'masculino', 'soltero', 'nombre21@example.com', 2121212121, 'tecnico', 3, 0, 0, 2, 'cobranza', 2, 3, 'servicio al cliente presencial', 'amarillo y/o rojo'),
(51, '0000000022', 'nombre22', 32, 'femenino', 'divorciado', 'nombre22@example.com', 2147483647, 'tecnico', 2, 0, 0, 2, 'bo', 2, 2, 'otros', 'amarillo y/o rojo'),
(52, '0000000023', 'nombre23', 30, 'masculino', 'soltero', 'nombre23@example.com', 2147483647, 'tecnico', 3, 1, 0, 3, 'venta cruzada', 3, 3, 'venta al cliente presencial', 'azul y/o verde'),
(53, '0000000024', 'nombre24', 37, 'femenino', 'casado', 'nombre24@example.com', 2147483647, 'universitario', 4, 2, 1, 4, 'bo', 4, 4, 'servicio al cliente presencial', 'verde'),
(54, '0000000025', 'nombre25', 26, 'masculino', 'viudo', 'nombre25@example.com', 2147483647, 'tecnologo', 1, 0, 0, 1, 'retencion', 1, 2, 'otros', 'azul y/o rojo'),
(55, '0000000026', 'nombre26', 29, 'femenino', 'divorciado', 'nombre26@example.com', 2147483647, 'bachillerato', 4, 3, 2, 5, 'ventas', 5, 3, 'venta al cliente presencial', 'azul y/o verde'),
(56, '0000000027', 'nombre27', 33, 'masculino', 'casado', 'nombre27@example.com', 2147483647, 'bachillerato', 3, 1, 1, 4, 'retencion', 4, 4, 'otros', 'verde y/o azul'),
(57, '0000000028', 'nombre28', 31, 'femenino', 'soltero', 'nombre28@example.com', 2147483647, 'universitario', 2, 1, 0, 3, 'cobranza', 3, 3, 'venta al cliente presencial', 'amarillo y/o azul'),
(58, '0000000029', 'nombre29', 27, 'masculino', 'casado', 'nombre29@example.com', 2147483647, 'tecnologo', 4, 2, 1, 5, 'ventas', 5, 3, 'venta al cliente presencial', 'amarillo y/o rojo'),
(59, '0000000030', 'nombre30', 35, 'femenino', 'soltero', 'nombre30@example.com', 2147483647, 'universitario', 3, 2, 1, 4, 'servicio al cliente', 4, 4, 'venta al cliente presencial', 'azul y/o amarillo'),
(60, '0000000031', 'nombre31', 28, 'masculino', 'soltero', 'nombre31@example.com', 2147483647, 'tecnologo', 2, 0, 0, 2, 'retencion', 2, 2, 'venta al cliente presencial', 'verde y/o rojo'),
(61, '00000000032', 'Alejandra Gonzalez', 28, 'femenino', 'soltero', 'alejandra@example.com', 2147483647, 'bachillerato', 4, 1, 0, 3, 'retencion', 3, 3, 'servicio al cliente presencial', 'azul'),
(62, '00000000033', 'Diego Ramirez', 32, 'masculino', 'casado', 'diego@example.com', 2147483647, 'tecnologo', 3, 2, 1, 4, 'ventas', 4, 3, 'venta al cliente presencial', 'amarillo'),
(63, '00000000034', 'Laura Hernandez', 26, 'femenino', 'viudo', 'laura@example.com', 2147483647, 'universitario', 1, 0, 0, 2, 'cobranza', 2, 2, 'otros', 'verde y/o azul'),
(64, '00000000035', 'Andres Lopez', 38, 'masculino', 'soltero', 'andres@example.com', 2147483647, 'bachillerato', 4, 2, 1, 5, 'cobranza', 5, 4, 'venta al cliente presencial', 'amarillo y/o verde'),
(65, '00000000036', 'Maria Torres', 31, 'femenino', 'viudo', 'maria@example.com', 2147483647, 'bachillerato', 5, 3, 2, 6, 'ventas', 6, 4, 'servicio al cliente presencial', 'verde y/o azul'),
(66, '00000000037', 'Carlos Rodriguez', 29, 'masculino', 'casado', 'carlos@example.com', 2147483647, 'bachillerato', 3, 1, 1, 3, 'servicio al cliente', 3, 4, 'venta al cliente presencial', 'azul y/o amarillo'),
(67, '00000000038', 'Daniela Vargas', 25, 'femenino', 'casado', 'daniela@example.com', 2147483647, 'universitario', 2, 0, 0, 2, 'retencion', 2, 2, 'servicio al cliente presencial', 'verde y/o rojo'),
(68, '00000000039', 'Manuel Castro', 35, 'masculino', 'divorciado', 'manuel@example.com', 2147483647, 'universitario', 4, 2, 1, 5, 'bo', 5, 3, 'servicio al cliente presencial', 'amarillo'),
(69, '00000000040', 'Sofia Morales', 28, 'femenino', 'soltero', 'sofia@example.com', 2147483647, 'bachillerato', 3, 1, 0, 3, 'cobranza', 3, 2, 'venta al cliente presencial', 'azul y/o amarillo'),
(70, '00000000041', 'Felipe Gomez', 30, 'masculino', 'casado', 'felipe@example.com', 2147483647, 'tecnologo', 1, 0, 0, 2, 'ventas', 2, 3, 'otros', 'amarillo y/o rojo'),
(71, '00000000042', 'Valentina Pardo', 27, 'femenino', 'viudo', 'valentina@example.com', 2147483647, 'tecnico', 3, 1, 1, 4, 'bo', 4, 4, 'servicio al cliente presencial', 'azul y/o verde'),
(72, '00000000043', 'Ricardo Castro', 33, 'masculino', 'divorciado', 'ricardo@example.com', 2147483647, 'tecnico', 4, 2, 1, 5, 'venta cruzada', 5, 4, 'venta al cliente presencial', 'verde'),
(73, '00000000044', 'Camila Ramirez', 24, 'femenino', 'viudo', 'camila@example.com', 2147483647, 'tecnico', 1, 0, 0, 2, 'bo', 2, 2, 'servicio al cliente presencial', 'verde y/o rojo'),
(74, '00000000045', 'Javier Morales', 36, 'masculino', 'soltero', 'javier@example.com', 2147483647, 'tecnico', 4, 2, 1, 5, 'retencion', 5, 3, 'venta al cliente presencial', 'azul'),
(75, '00000000046', 'Isabella Diaz', 23, 'femenino', 'divorciado', 'isabella@example.com', 2147483647, 'tecnico', 4, 2, 1, 4, 'servicio al cliente', 4, 4, 'otros', 'amarillo y/o verde'),
(76, '00000000047', 'Sebastian Perez', 37, 'masculino', 'viudo', 'sebastian@example.com', 2147483647, 'tecnologo', 2, 1, 0, 3, 'ventas', 3, 3, 'servicio al cliente presencial', 'amarillo'),
(77, '00000000048', 'Valeria Ruiz', 26, 'femenino', 'casado', 'valeria@example.com', 2147483647, 'tecnico', 3, 1, 0, 2, 'retencion', 2, 2, 'venta al cliente presencial', 'azul y/o rojo'),
(78, '00000000049', 'Nicolas Vargas', 39, 'masculino', 'divorciado', 'nicolas@example.com', 2147483647, 'tecnico', 5, 3, 2, 6, 'venta cruzada', 6, 4, 'servicio al cliente presencial', 'azul y/o rojo'),
(79, '00000000050', 'Mariana Castro', 27, 'femenino', 'divorciado', 'mariana@example.com', 2147483647, 'bachillerato', 3, 1, 0, 3, 'venta cruzada', 3, 2, 'venta al cliente presencial', 'amarillo y/o azul'),
(80, '00000000051', 'Julian Rios', 31, 'masculino', 'viudo', 'julian@example.com', 2147483647, 'universitario', 2, 0, 0, 2, 'bo', 2, 2, 'otros', 'amarillo y/o azul'),
(81, '00000000052', 'Valentina Alvarez', 29, 'femenino', 'divorciado', 'valentina@example.com', 2147483647, 'tecnico', 4, 2, 1, 4, 'ventas', 4, 3, 'venta al cliente presencial', 'amarillo y/o rojo'),
(82, '00000000053', 'Juan Gomez', 35, 'masculino', 'casado', 'juan@example.com', 2147483647, 'universitario', 3, 1, 1, 4, 'ventas', 4, 4, 'otros', 'verde'),
(83, '00000000054', 'Sara Rodriguez', 28, 'femenino', 'viudo', 'sara@example.com', 2147483647, 'tecnico', 2, 0, 0, 2, 'retencion', 2, 2, 'venta al cliente presencial', 'amarillo'),
(84, '00000000055', 'Luis Hernandez', 30, 'masculino', 'casado', 'luis@example.com', 2147483647, 'bachillerato', 3, 1, 0, 3, 'retencion', 3, 2, 'otros', 'amarillo'),
(85, '00000000056', 'Ana Ramirez', 27, 'femenino', 'viudo', 'ana@example.com', 2147483647, 'tecnico', 4, 2, 1, 4, 'venta cruzada', 4, 3, 'otros', 'verde y/o rojo'),
(86, '00000000057', 'Pedro Castro', 31, 'masculino', 'divorciado', 'pedro@example.com', 2147483647, 'tecnologo', 2, 0, 0, 2, 'retencion', 2, 2, 'venta al cliente presencial', 'azul y/o rojo'),
(87, '00000000058', 'Carolina Morales', 26, 'femenino', 'divorciado', 'carolina@example.com', 2147483647, 'tecnico', 3, 1, 0, 3, 'servicio al cliente', 3, 2, 'venta al cliente presencial', 'verde y/o rojo'),
(88, '00000000059', 'Jorge Ramirez', 29, 'masculino', 'soltero', 'jorge@example.com', 2147483647, 'tecnologo', 4, 2, 1, 4, 'bo', 4, 3, 'servicio al cliente presencial', 'amarillo y/o rojo'),
(89, '00000000060', 'Paula Vargas', 32, 'femenino', 'casado', 'paula@example.com', 2147483647, 'universitario', 2, 0, 0, 2, 'ventas', 2, 2, 'venta al cliente presencial', 'amarillo y/o verde'),
(90, '00000000061', 'Andres Rios', 27, 'masculino', 'divorciado', 'andres@example.com', 2147483647, 'tecnologo', 3, 1, 1, 4, 'ventas', 4, 4, 'servicio al cliente presencial', 'amarillo'),
(91, '00000000062', 'Fernanda Gomez', 30, 'femenino', 'casado', 'fernanda@example.com', 2147483647, 'tecnico', 2, 0, 0, 2, 'bo', 2, 2, 'otros', 'amarillo'),
(92, '00000000063', 'David Torres', 28, 'masculino', 'casado', 'david@example.com', 2147483647, 'tecnologo', 3, 1, 0, 3, 'ventas', 3, 2, 'servicio al cliente presencial', 'amarillo y/o rojo'),
(93, '00000000064', 'Isabella Castro', 33, 'femenino', 'soltero', 'isabella@example.com', 2147483647, 'universitario', 4, 2, 1, 4, 'bo', 4, 3, 'venta al cliente presencial', 'verde y/o rojo'),
(94, '00000000065', 'Santiago Pardo', 25, 'masculino', 'casado', 'santiago@example.com', 2147483647, 'universitario', 1, 0, 0, 2, 'servicio al cliente', 2, 2, 'venta al cliente presencial', 'amarillo'),
(95, '00000000066', 'Luciana Ramirez', 36, 'femenino', 'casado', 'luciana@example.com', 2147483647, 'universitario', 3, 1, 1, 4, 'servicio al cliente', 4, 4, 'servicio al cliente presencial', 'azul'),
(96, '00000000067', 'Daniel Castro', 26, 'masculino', 'divorciado', 'daniel@example.com', 2147483647, 'bachillerato', 4, 2, 1, 4, 'bo', 4, 3, 'servicio al cliente presencial', 'amarillo'),
(97, '00000000068', 'Valentina Rodriguez', 31, 'femenino', 'soltero', 'valentina@example.com', 2147483647, 'bachillerato', 2, 0, 0, 2, 'servicio al cliente', 2, 2, 'otros', 'verde'),
(98, '00000000069', 'Juan Ramirez', 27, 'masculino', 'viudo', 'juan@example.com', 2147483647, 'tecnologo', 3, 1, 1, 4, 'bo', 4, 4, 'venta al cliente presencial', 'verde y/o rojo'),
(99, '00000000070', 'Camila Vargas', 29, 'femenino', 'viudo', 'camila@example.com', 2147483647, 'tecnico', 4, 2, 1, 4, 'cobranza', 4, 3, 'venta al cliente presencial', 'amarillo y/o rojo'),
(100, '00000000071', 'Santiago Hernandez', 32, 'masculino', 'divorciado', 'santiago@example.com', 2147483647, 'bachillerato', 2, 0, 0, 2, 'bo', 2, 2, 'otros', 'azul y/o amarillo'),
(101, '00000000072', 'Valeria Ramirez', 25, 'femenino', 'divorciado', 'valeria@example.com', 2147483647, 'bachillerato', 3, 1, 0, 3, 'venta cruzada', 3, 2, 'servicio al cliente presencial', 'azul y/o rojo'),
(102, '00000000073', 'Nicolas Gomez', 39, 'masculino', 'viudo', 'nicolas@example.com', 2147483647, 'universitario', 4, 2, 1, 4, 'venta cruzada', 4, 3, 'otros', 'azul y/o rojo'),
(103, '00000000074', 'Mariana Torres', 28, 'femenino', 'divorciado', 'mariana@example.com', 2147483647, 'tecnologo', 1, 0, 0, 2, 'cobranza', 2, 2, 'servicio al cliente presencial', 'amarillo y/o rojo'),
(104, '00000000075', 'Carlos Rodriguez', 33, 'masculino', 'soltero', 'carlos@example.com', 2147483647, 'bachillerato', 3, 1, 1, 4, 'bo', 4, 4, 'otros', 'azul y/o amarillo'),
(105, '00000000076', 'Ana Morales', 26, 'femenino', 'casado', 'ana@example.com', 2147483647, 'bachillerato', 4, 2, 1, 4, 'venta cruzada', 4, 3, 'otros', 'azul y/o verde'),
(106, '00000000077', 'Felipe Perez', 30, 'masculino', 'viudo', 'felipe@example.com', 2147483647, 'tecnologo', 2, 0, 0, 2, 'bo', 2, 2, 'venta al cliente presencial', 'verde y/o rojo'),
(107, '00000000078', 'Valentina Rios', 28, 'femenino', 'casado', 'valentina@example.com', 2147483647, 'tecnico', 3, 1, 0, 3, 'retencion', 3, 2, 'venta al cliente presencial', 'azul y/o rojo'),
(108, '00000000079', 'Andres Gomez', 34, 'masculino', 'viudo', 'andres@example.com', 2147483647, 'universitario', 4, 2, 1, 4, 'servicio al cliente', 4, 3, 'servicio al cliente presencial', 'amarillo y/o rojo'),
(109, '00000000080', 'Maria Torres', 27, 'femenino', 'casado', 'maria@example.com', 2147483647, 'bachillerato', 1, 0, 0, 2, 'ventas', 2, 2, 'otros', 'amarillo y/o verde'),
(110, '00000000081', 'Juan Hernandez', 36, 'masculino', 'casado', 'juan@example.com', 2147483647, 'bachillerato', 3, 1, 1, 4, 'servicio al cliente', 4, 4, 'venta al cliente presencial', 'verde'),
(111, '00000000082', 'Valeria Gomez', 26, 'femenino', 'viudo', 'valeria@example.com', 2147483647, 'tecnologo', 4, 2, 1, 4, 'bo', 4, 3, 'servicio al cliente presencial', 'amarillo y/o azul'),
(112, '00000000083', 'Alejandro Ramirez', 31, 'masculino', 'casado', 'alejandro@example.com', 2147483647, 'bachillerato', 2, 0, 0, 2, 'ventas', 2, 2, 'otros', 'amarillo y/o rojo'),
(113, '00000000084', 'Sofia Rodriguez', 27, 'femenino', 'soltero', 'sofia@example.com', 2147483647, 'tecnico', 3, 1, 1, 4, 'bo', 4, 4, 'venta al cliente presencial', 'verde'),
(114, '00000000085', 'Andres Torres', 29, 'masculino', 'divorciado', 'andres@example.com', 2147483647, 'tecnico', 4, 2, 1, 4, 'ventas', 4, 3, 'servicio al cliente presencial', 'amarillo y/o azul'),
(115, '00000000086', 'Maria Hernandez', 32, 'femenino', 'divorciado', 'maria@example.com', 2147483647, 'universitario', 2, 0, 0, 2, 'cobranza', 2, 2, 'venta al cliente presencial', 'azul'),
(116, '00000000087', 'Jorge Ramirez', 26, 'masculino', 'casado', 'jorge@example.com', 2147483647, 'bachillerato', 3, 1, 1, 4, 'venta cruzada', 4, 4, 'venta al cliente presencial', 'azul y/o rojo'),
(117, '00000000088', 'Camila Gomez', 30, 'femenino', 'divorciado', 'camila@example.com', 2147483647, 'tecnico', 2, 0, 0, 2, 'bo', 2, 2, 'otros', 'azul y/o rojo'),
(118, '00000000089', 'Daniel Vargas', 28, 'masculino', 'soltero', 'daniel@example.com', 2147483647, 'tecnico', 4, 2, 1, 4, 'bo', 4, 3, 'venta al cliente presencial', 'amarillo y/o verde'),
(119, '00000000090', 'Valentina Ramirez', 32, 'femenino', 'divorciado', 'valentina@example.com', 2147483647, 'tecnico', 2, 0, 0, 2, 'cobranza', 2, 2, 'otros', 'azul y/o verde'),
(120, '00000000091', 'Juan Rios', 26, 'masculino', 'soltero', 'juan@example.com', 2147483647, 'universitario', 3, 1, 1, 4, 'venta cruzada', 4, 4, 'venta al cliente presencial', 'azul y/o rojo'),
(121, '00000000092', 'Maria Gomez', 30, 'femenino', 'casado', 'maria@example.com', 2147483647, 'bachillerato', 2, 0, 0, 2, 'bo', 2, 2, 'servicio al cliente presencial', 'verde'),
(122, '00000000093', 'Andres Vargas', 28, 'masculino', 'viudo', 'andres@example.com', 2147483647, 'bachillerato', 4, 2, 1, 4, 'ventas', 4, 3, 'otros', 'amarillo'),
(123, '00000000094', 'Laura Ramirez', 33, 'femenino', 'viudo', 'laura@example.com', 2147483647, 'tecnologo', 2, 0, 0, 2, 'servicio al cliente', 2, 2, 'servicio al cliente presencial', 'amarillo y/o azul'),
(124, '00000000095', 'Javier Torres', 29, 'masculino', 'soltero', 'javier@example.com', 2147483647, 'tecnologo', 4, 2, 1, 4, 'retencion', 4, 3, 'otros', 'azul y/o amarillo'),
(125, '00000000096', 'Maria Hernandez', 34, 'femenino', 'casado', 'maria@example.com', 2147483647, 'universitario', 2, 0, 0, 2, 'bo', 2, 2, 'servicio al cliente presencial', 'amarillo'),
(126, '00000000097', 'Santiago Gomez', 28, 'masculino', 'viudo', 'santiago@example.com', 2147483647, 'tecnico', 4, 2, 1, 4, 'bo', 4, 3, 'servicio al cliente presencial', 'verde y/o azul'),
(127, '00000000098', 'Sofia Ramirez', 33, 'femenino', 'soltero', 'sofia@example.com', 2147483647, 'universitario', 2, 0, 0, 2, 'bo', 2, 2, 'venta al cliente presencial', 'verde y/o rojo'),
(128, '00000000099', 'Carlos Torres', 30, 'masculino', 'viudo', 'carlos@example.com', 2147483647, 'universitario', 3, 1, 1, 4, 'cobranza', 4, 4, 'otros', 'azul'),
(129, '00000000100', 'Valentina Gomez', 26, 'femenino', 'divorciado', 'valentina@example.com', 1010101010, 'bachillerato', 4, 2, 1, 4, 'bo', 4, 3, 'venta al cliente presencial', 'amarillo y/o rojo'),
(130, '00000000101', 'Juan Vargas', 32, 'masculino', 'soltero', 'juan@example.com', 1111111111, 'bachillerato', 2, 0, 0, 2, 'ventas', 2, 2, 'venta al cliente presencial', 'verde y/o azul'),
(131, '00000000102', 'Maria Ramirez', 26, 'femenino', 'viudo', 'maria@example.com', 1212121212, 'bachillerato', 3, 1, 1, 4, 'ventas', 4, 4, 'venta al cliente presencial', 'azul'),
(132, '00000000103', 'Andres Gomez', 30, 'masculino', 'viudo', 'andres@example.com', 1313131313, 'tecnologo', 2, 0, 0, 2, 'bo', 2, 2, 'servicio al cliente presencial', 'azul y/o verde'),
(133, '00000000104', 'Sara Torres', 28, 'femenino', 'casado', 'sara@example.com', 1414141414, 'tecnologo', 4, 2, 1, 4, 'ventas', 4, 3, 'venta al cliente presencial', 'amarillo y/o verde'),
(134, '00000000105', 'Juan Hernandez', 32, 'masculino', 'casado', 'juan@example.com', 1515151515, 'bachillerato', 2, 0, 0, 2, 'cobranza', 2, 2, 'otros', 'amarillo y/o verde'),
(135, '00000000106', 'Valentina Gomez', 29, 'femenino', 'viudo', 'valentina@example.com', 1616161616, 'tecnologo', 3, 1, 1, 4, 'cobranza', 4, 4, 'venta al cliente presencial', 'azul y/o rojo'),
(136, '00000000107', 'Andres Ramirez', 35, 'masculino', 'divorciado', 'andres@example.com', 1717171717, 'tecnologo', 4, 2, 1, 4, 'ventas', 4, 3, 'otros', 'amarillo y/o azul'),
(137, '00000000108', 'Maria Gomez', 26, 'femenino', 'viudo', 'maria@example.com', 1818181818, 'universitario', 2, 0, 0, 2, 'retencion', 2, 2, 'otros', 'amarillo'),
(138, '00000000109', 'Santiago Torres', 33, 'masculino', 'soltero', 'santiago@example.com', 1919191919, 'bachillerato', 4, 2, 1, 4, 'venta cruzada', 4, 3, 'otros', 'verde'),
(139, '00000000110', 'Valeria Ramirez', 29, 'femenino', 'viudo', 'valeria@example.com', 2020202020, 'universitario', 2, 0, 0, 2, 'retencion', 2, 2, 'otros', 'azul y/o rojo'),
(140, '00000000111', 'Juan Perez', 28, 'masculino', 'divorciado', 'juan@example.com', 2121212121, 'universitario', 3, 1, 1, 4, 'venta cruzada', 4, 4, 'servicio al cliente presencial', 'azul y/o verde'),
(141, '00000000112', 'Maria Gomez', 34, 'femenino', 'viudo', 'maria@example.com', 2147483647, 'universitario', 2, 0, 0, 2, 'cobranza', 2, 2, 'otros', 'azul y/o verde'),
(142, '00000000113', 'Andres Vargas', 27, 'masculino', 'soltero', 'andres@example.com', 2147483647, 'tecnologo', 4, 2, 1, 4, 'cobranza', 4, 3, 'venta al cliente presencial', 'amarillo y/o rojo'),
(143, '00000000114', 'Valentina Ramirez', 35, 'femenino', 'viudo', 'valentina@example.com', 2147483647, 'bachillerato', 2, 0, 0, 2, 'retencion', 2, 2, 'venta al cliente presencial', 'amarillo'),
(144, '00000000115', 'Juan Gomez', 30, 'masculino', 'soltero', 'juan@example.com', 2147483647, 'universitario', 3, 1, 1, 4, 'cobranza', 4, 4, 'servicio al cliente presencial', 'verde'),
(145, '00000000116', 'Maria Torres', 27, 'femenino', 'divorciado', 'maria@example.com', 2147483647, 'tecnico', 4, 2, 1, 4, 'ventas', 4, 3, 'otros', 'verde'),
(146, '00000000117', 'Santiago Ramirez', 34, 'masculino', 'casado', 'santiago@example.com', 2147483647, 'universitario', 2, 0, 0, 2, 'cobranza', 2, 2, 'servicio al cliente presencial', 'azul y/o amarillo'),
(147, '00000000118', 'Valeria Gomez', 27, 'femenino', 'divorciado', 'valeria@example.com', 2147483647, 'universitario', 4, 2, 1, 4, 'servicio al cliente', 4, 3, 'servicio al cliente presencial', 'amarillo y/o rojo'),
(148, '00000000119', 'Andres Torres', 35, 'masculino', 'soltero', 'andres@example.com', 2147483647, 'bachillerato', 2, 0, 0, 2, 'servicio al cliente', 2, 2, 'venta al cliente presencial', 'azul y/o amarillo'),
(149, '00000000120', 'Maria Perez', 27, 'femenino', 'divorciado', 'maria@example.com', 2147483647, 'tecnologo', 4, 2, 1, 4, 'servicio al cliente', 4, 3, 'venta al cliente presencial', 'verde y/o azul'),
(150, '00000000121', 'Santiago Gomez', 34, 'masculino', 'viudo', 'santiago@example.com', 2147483647, 'bachillerato', 2, 0, 0, 2, 'venta cruzada', 2, 2, 'venta al cliente presencial', 'verde y/o azul'),
(151, '00000000122', 'Valentina Ramirez', 30, 'femenino', 'viudo', 'valentina@example.com', 2147483647, 'universitario', 3, 1, 1, 4, 'bo', 4, 4, 'otros', 'verde y/o azul'),
(152, '00000000123', 'Juan Hernandez', 27, 'masculino', 'divorciado', 'juan@example.com', 2147483647, 'universitario', 4, 2, 1, 4, 'servicio al cliente', 4, 3, 'otros', 'azul y/o amarillo'),
(153, '00000000124', 'Maria Gomez', 35, 'femenino', 'casado', 'maria@example.com', 2147483647, 'bachillerato', 2, 0, 0, 2, 'cobranza', 2, 2, 'servicio al cliente presencial', 'verde'),
(154, '00000000125', 'Santiago Vargas', 27, 'masculino', 'viudo', 'santiago@example.com', 2147483647, 'universitario', 4, 2, 1, 4, 'servicio al cliente', 4, 3, 'venta al cliente presencial', 'azul y/o verde'),
(155, '00000000126', 'Valeria Ramirez', 34, 'femenino', 'casado', 'valeria@example.com', 2147483647, 'tecnologo', 2, 0, 0, 2, 'cobranza', 2, 2, 'otros', 'amarillo'),
(156, '00000000127', 'Juan Gomez', 27, 'masculino', 'soltero', 'juan@example.com', 2147483647, 'bachillerato', 4, 2, 1, 4, 'cobranza', 4, 3, 'servicio al cliente presencial', 'amarillo y/o rojo'),
(157, '00000000128', 'Maria Torres', 34, 'femenino', 'casado', 'maria@example.com', 2147483647, 'tecnico', 2, 0, 0, 2, 'venta cruzada', 2, 2, 'venta al cliente presencial', 'verde'),
(158, '00000000129', 'Santiago Ramirez', 28, 'masculino', 'casado', 'santiago@example.com', 2147483647, 'tecnico', 4, 2, 1, 4, 'ventas', 4, 3, 'servicio al cliente presencial', 'azul'),
(159, '00000000130', 'Valentina Gomez', 35, 'femenino', 'viudo', 'valentina@example.com', 2147483647, 'bachillerato', 2, 0, 0, 2, 'servicio al cliente', 2, 2, 'otros', 'azul y/o amarillo'),
(160, '00000000131', 'Juan Torres', 28, 'masculino', 'divorciado', 'juan@example.com', 2147483647, 'tecnologo', 3, 1, 1, 4, 'ventas', 4, 4, 'venta al cliente presencial', 'amarillo y/o rojo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero_documento` (`numero_documento`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
