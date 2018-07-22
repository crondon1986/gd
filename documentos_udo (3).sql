-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-07-2018 a las 01:04:53
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `documentos_udo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignar_aula`
--

CREATE TABLE `asignar_aula` (
  `id_asignar_aula` int(10) UNSIGNED NOT NULL,
  `id_horario` int(10) UNSIGNED NOT NULL,
  `id_aula` int(10) UNSIGNED NOT NULL,
  `dia` text COLLATE utf8_unicode_ci NOT NULL,
  `entrada` time NOT NULL,
  `salida` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `id_asignatura` int(10) UNSIGNED NOT NULL,
  `codigo` text COLLATE utf8_unicode_ci NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `semestre` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`id_asignatura`, `codigo`, `nombre`, `semestre`, `created_at`, `updated_at`) VALUES
(1, '006-1513', 'Compresion y expesion lingüística', '1', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(2, '230-1214', 'Algoritmo y Estructura de Dato I', '1', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(3, '230-1713', 'Introduccion a la Informatica', '1', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(4, '230-1613', 'Metodologia de la investigacion', '1', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(5, '008-1214', 'Matematicas I', '1', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(6, '007-1323', 'Ingles I', '2', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(7, '230-1324', 'Algoritmo y Estructura de Dato II', '2', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(8, '230-1723', 'Organización y Sistemas', '1', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(9, '230-1224', 'Estructuras Discretas', '1', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(10, '008-1224', 'Matematicas II', '1', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(11, '007-2333', 'Ingles II', '3', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(12, '230-2234', 'Algoritmo y Estructura de Dato III', '3', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(13, '230-2534', 'Fundamentos de Electricidad y Electronica', '3', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(14, '230-2333', 'Procesamientos de Datos y Archivo', '3', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(15, '008-2134', 'Matematicas III', '3', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(16, '230-2144', 'Probabilidad y Estadistica', '4', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(17, '230-2444', 'Organizacion y Estructura del Computador', '4', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(18, '230-1723', 'Sistemas de Informacion I', '4', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(19, '230-2244', 'Algebra Lineal', '4', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(20, '230-3254', 'Lenguaje de Programacion', '5', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(21, '230-3454', 'Comunicacion de Datos', '5', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(22, '230-3354', 'Diseño de Base De Datos', '5', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(23, '230-3154', 'Calculo Numerico', '5', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(24, '230-3564', 'Interaccion Hombre Maquina', '6', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(25, '230-3464', 'Sistemas Operativos', '6', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(26, '230-3364', 'Sistemas De Informacion II', '6', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(27, '230-3164', 'Programacion Lineal', '6', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(28, '230-4174', 'Simulacion y Modelos', '7', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(29, '230-5896', 'Practicas Pre-Profesionales', '9', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(30, '230-5804', 'Trabajo de Grado I', '10', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(31, '230-5805', 'Trabajo de Grado II', '10', '2017-05-21 14:48:05', '2017-05-21 14:48:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aula`
--

CREATE TABLE `aula` (
  `id_aula` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `aula`
--

INSERT INTO `aula` (`id_aula`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'INFO- 02', NULL, NULL),
(2, 'SALA 04 EV', NULL, NULL),
(3, 'CB-29', NULL, NULL),
(4, 'INFO -01', NULL, NULL),
(5, 'SALA 01', NULL, NULL),
(6, 'SALA 02', NULL, NULL),
(7, 'INFO-04', NULL, NULL),
(8, 'INFO-03', NULL, NULL),
(9, 'SALA 03 ', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria_documento`
--

CREATE TABLE `categoria_documento` (
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `nombre_categoria` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_categoria` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `categoria_documento`
--

INSERT INTO `categoria_documento` (`id_categoria`, `nombre_categoria`, `descripcion_categoria`, `created_at`, `updated_at`) VALUES
(1, 'Administrativos', 'Administrativos', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(2, 'Academicos', 'Academicos', '2017-05-21 14:48:05', '2017-05-21 14:48:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `circular`
--

CREATE TABLE `circular` (
  `id_circular` int(10) UNSIGNED NOT NULL,
  `id_documento` int(10) UNSIGNED NOT NULL,
  `id_itemsubcategoria` int(10) UNSIGNED NOT NULL,
  `nota_circular` text COLLATE utf8_unicode_ci NOT NULL,
  `para_circular` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `de_circular` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cuerpo_circular` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `anio_circular` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `circular`
--

INSERT INTO `circular` (`id_circular`, `id_documento`, `id_itemsubcategoria`, `nota_circular`, `para_circular`, `de_circular`, `cuerpo_circular`, `created_at`, `updated_at`, `numero`, `anio_circular`) VALUES
(1, 1, 1, 'Depatamentos', 'departamentos', 'PROFA. Carmelys Rodriguez', '<p>prueba prueba2</p>\n', '2018-06-12 20:46:47', '2018-06-12 20:49:42', 1, '2018');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `id_ciudad` int(10) UNSIGNED NOT NULL,
  `id_pais` int(10) UNSIGNED NOT NULL,
  `id_state` int(10) UNSIGNED NOT NULL,
  `id_municipio` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ciudad`
--

INSERT INTO `ciudad` (`id_ciudad`, `id_pais`, `id_state`, `id_municipio`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'Cumana', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(2, 1, 1, 2, 'Guiria', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(3, 1, 1, 3, 'Cumanacoa', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(4, 1, 4, 4, 'Puerto La Cruz', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(5, 2, 3, 5, 'Madrid', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(6, 2, 2, 6, 'Barcelona', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(7, 2, 2, 6, 'Girona/Gerona', '2017-05-21 14:48:05', '2017-05-21 14:48:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `concurso`
--

CREATE TABLE `concurso` (
  `id_concurso` int(10) UNSIGNED NOT NULL,
  `id_estados` int(10) UNSIGNED NOT NULL,
  `id_periodo` int(10) UNSIGNED NOT NULL,
  `fecha_apertura` date NOT NULL,
  `fecha_cierre` date NOT NULL,
  `cupo_asignado` int(11) NOT NULL,
  `limite` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `concurso`
--

INSERT INTO `concurso` (`id_concurso`, `id_estados`, `id_periodo`, `fecha_apertura`, `fecha_cierre`, `cupo_asignado`, `limite`, `created_at`, `updated_at`) VALUES
(7, 13, 1, '2018-07-04', '2018-07-11', 0, 2, '2018-07-23 02:38:26', '2018-07-23 02:38:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `concurso_preparador`
--

CREATE TABLE `concurso_preparador` (
  `id_concurso_preparador` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_preparaduria` int(10) UNSIGNED NOT NULL,
  `id_periodo` int(10) UNSIGNED NOT NULL,
  `puntaje` double(8,2) NOT NULL,
  `condicion` text COLLATE utf8_unicode_ci NOT NULL,
  `plaza` int(11) NOT NULL,
  `aprobado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratacion`
--

CREATE TABLE `contratacion` (
  `id_contratacion` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_oficio` int(10) UNSIGNED NOT NULL,
  `id_asignatura` int(10) UNSIGNED NOT NULL,
  `periodo` text COLLATE utf8_unicode_ci NOT NULL,
  `seccion` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `contratacion`
--

INSERT INTO `contratacion` (`id_contratacion`, `id_user`, `id_oficio`, `id_asignatura`, `periodo`, `seccion`, `created_at`, `updated_at`) VALUES
(1, 15, 1, 3, 'I-2018', '01', '2018-06-12 20:52:49', '2018-06-12 20:52:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dedicacion`
--

CREATE TABLE `dedicacion` (
  `id_dedicacion` int(10) UNSIGNED NOT NULL,
  `nombre_dedicacion` text COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_dedicacion` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dedicacion`
--

INSERT INTO `dedicacion` (`id_dedicacion`, `nombre_dedicacion`, `descripcion_dedicacion`, `created_at`, `updated_at`) VALUES
(1, 'Exclusiva', 'Exclusiva', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(2, 'Tiempo Completo', 'Tiempo Completo', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(3, 'Medio Tiempo', 'Medio Tiempo', '2017-05-21 14:48:05', '2017-05-21 14:48:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dedicacion_estudiante`
--

CREATE TABLE `dedicacion_estudiante` (
  `id_dedicacion_estudiante` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dedicacion_estudiante`
--

INSERT INTO `dedicacion_estudiante` (`id_dedicacion_estudiante`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Preparador', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(2, 'Ayudante Tecnico', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(3, 'Tesista', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(4, 'Estudiante', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(5, 'Auxiliar Docente', '2017-05-21 14:48:05', '2017-05-21 14:48:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependencia`
--

CREATE TABLE `dependencia` (
  `id_dependencia` int(10) UNSIGNED NOT NULL,
  `id_institucion` int(10) UNSIGNED NOT NULL,
  `id_escuela` int(10) UNSIGNED NOT NULL,
  `nombre_dependencia` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_dependencia` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dependencia`
--

INSERT INTO `dependencia` (`id_dependencia`, `id_institucion`, `id_escuela`, `nombre_dependencia`, `descripcion_dependencia`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'DEPARTAMENTO DE FISICA', '', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(2, 1, 1, 'DEPARTAMENTO DE INFORMATICA', 'Departamento Informatica Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(3, 1, 1, 'DEPARTAMENTO DE MATEMATICAS', 'Departamento Matematica Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(4, 1, 1, 'DEPARTAMENTO DE QUIMICA', 'Departamento Matematica Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(5, 1, 1, 'DEPARTAMENTO DE BIOLOGIA', 'Departamento Matematica Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(6, 1, 1, 'DEPARTAMENTO DE BIOANALISIS', 'Departamento Matematica Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(7, 1, 2, 'DEPARTAMENTO DE CASTELLANO Y LITERATURA', 'Departamento Matematica Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(8, 1, 2, 'DEPARTAMENTO DE SOCIOLOGIA', 'Departamento Matematica Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(9, 1, 2, 'DEPARTAMENTO DE IDIOMAS MODERNOS', 'Departamento Matematica Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(10, 1, 3, 'DEPARTAMENTO DE ADMINISTRACION', 'Departamento Matematica Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(11, 1, 3, 'DEPARTAMENTO DE CONTADURIA PUBLICA', 'Departamento Matematica Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(12, 1, 3, 'DEPARTAMENTO DE RECURSOS HUMANOS', 'Departamento Matematica Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(13, 1, 1, 'DEPARTAMENTO DE ENFERMERIA', 'Departamento Matematica Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(14, 1, 4, 'DELEGACIÓN DE PERSONAL', 'Departamento Matematica Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(15, 1, 4, 'Coordinacion Academica', 'Departamento Matematica Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(16, 1, 4, 'Coordinacion Administrativa', 'Departamento Matematica Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(17, 1, 4, 'Delegación de Finanzas', 'Departamento Matematica Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(18, 1, 4, 'Contraloria Delegada', 'Departamento Matematica Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(19, 1, 4, 'Delegación de Presupuesto', 'Departamento Matematica Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(20, 1, 1, 'ESCUELA DE CIENCIAS', '', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(21, 1, 4, 'DECANO(A)', '', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(22, 1, 4, 'Sección de Nomina', 'Departamento Matematica Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dependencias`
--

CREATE TABLE `dependencias` (
  `id_dependencias` int(10) UNSIGNED NOT NULL,
  `id_departamento` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `dependencias`
--

INSERT INTO `dependencias` (`id_dependencias`, `id_departamento`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 21, 'Decano(a)', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(2, 14, 'Delegación de Personal', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(3, 15, 'Coordinacion Academica', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(4, 16, 'Coordinacion Administrativa', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(5, 17, 'Delegación de Finanzas', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(6, 18, 'Contraloria Delegada', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(7, 19, 'Delegación de Presupuesto', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(8, 22, 'Sección de Nomina', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(9, 2, 'COMISION DE PREPARADURIAS', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(10, 2, 'Informatica', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinos`
--

CREATE TABLE `destinos` (
  `id_destinos` int(11) NOT NULL,
  `id_documento` int(10) UNSIGNED NOT NULL,
  `id_dependencia` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `destinos`
--

INSERT INTO `destinos` (`id_destinos`, `id_documento`, `id_dependencia`, `id_estado`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 17, '2018-06-12 20:50:39', '2018-06-12 20:50:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento`
--

CREATE TABLE `documento` (
  `id_documento` int(10) UNSIGNED NOT NULL,
  `id_dependencia_c` int(10) UNSIGNED NOT NULL,
  `id_usuario` int(10) UNSIGNED NOT NULL,
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `id_subcategoria` int(10) UNSIGNED NOT NULL,
  `id_itemsubcategoria` int(10) UNSIGNED NOT NULL,
  `id_estados` int(10) UNSIGNED NOT NULL,
  `codigo_plantilla` int(11) NOT NULL,
  `descripcion_documento` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `documento`
--

INSERT INTO `documento` (`id_documento`, `id_dependencia_c`, `id_usuario`, `id_categoria`, `id_subcategoria`, `id_itemsubcategoria`, `id_estados`, `codigo_plantilla`, `descripcion_documento`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 1, 1, 1, 17, 1528820207, 'Depatamentos', '2018-06-12 20:46:47', '2018-06-12 20:50:39'),
(2, 2, 4, 1, 3, 10, 17, 1528820569, 'Oficio de Contratacion', '2018-06-12 20:52:49', '2018-06-12 20:54:32'),
(3, 2, 3, 1, 3, 9, 12, 1528821193, 'Oficio de Concurso de Preparadores Docentes', '2018-06-12 21:03:13', '2018-06-12 21:03:13'),
(4, 20, 13, 1, 3, 9, 10, 1528821376, 'Oficio De Listado De Preparadores Docentes', '2018-06-12 21:06:16', '2018-06-12 21:06:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuela`
--

CREATE TABLE `escuela` (
  `id_escuela` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `escuela`
--

INSERT INTO `escuela` (`id_escuela`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'ESCUELA DE CIENCIAS', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(2, 'Escuela De Ciencias Sociales', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(3, 'Escuela De Administracion', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(4, 'Decanato', '2017-05-21 14:48:05', '2017-05-21 14:48:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id_estados` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id_estados`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Creado', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(2, 'Remitido', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(3, 'Visto', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(4, 'Por Correcion', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(5, 'Corregido', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(6, 'Por Firmar', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(7, 'Firmado', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(8, 'Verificado', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(9, 'Entregado', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(10, 'Aprobado', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(11, 'Rechazado', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(12, 'Remitido', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(13, 'aperturado', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(14, 'cerrado', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(15, 'Asignado', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(16, 'Reprobado', NULL, NULL),
(17, 'Enviado', '2018-06-06 05:00:00', '2018-06-06 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id_estudiante` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_tipo` int(10) UNSIGNED NOT NULL,
  `id_dependencia` int(10) UNSIGNED NOT NULL,
  `id_dedicacion_estudiante` int(10) UNSIGNED NOT NULL,
  `firma` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id_estudiante`, `id_user`, `id_tipo`, `id_dependencia`, `id_dedicacion_estudiante`, `firma`, `created_at`, `updated_at`) VALUES
(1, 5, 2, 2, 4, '1337314639.png', '2018-05-12 08:17:23', '2018-05-12 08:17:23'),
(2, 6, 2, 2, 3, '1337344027.png', '2018-05-12 16:27:10', '2018-05-12 16:27:10'),
(3, 7, 2, 2, 3, '1368845352.png', '2018-05-13 18:49:15', '2018-05-13 18:49:15'),
(4, 8, 2, 2, 1, '1368846008.jpg', '2018-05-13 19:00:11', '2018-05-13 19:00:11'),
(5, 9, 2, 2, 4, '1368846616.png', '2018-05-13 19:10:19', '2018-05-13 19:10:19'),
(6, 10, 2, 2, 4, '1368846789.jpg', '2018-05-13 19:13:11', '2018-05-13 19:13:11'),
(7, 11, 2, 2, 4, '1368847066.jpg', '2018-05-13 19:17:48', '2018-05-13 19:17:48'),
(8, 12, 2, 2, 4, '1368847351.jpg', '2018-05-13 19:22:34', '2018-05-13 19:22:34'),
(9, 9, 2, 2, 1, '992847332.png', '2018-06-01 23:55:52', '2018-06-01 23:55:52');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factores`
--

CREATE TABLE `factores` (
  `id_factores` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_preparaduria` int(10) UNSIGNED NOT NULL,
  `id_periodo` int(10) UNSIGNED NOT NULL,
  `f1` double(8,2) NOT NULL,
  `f2` double(8,2) NOT NULL,
  `f3` double(8,2) NOT NULL,
  `f4` double(8,2) NOT NULL,
  `f5` double(8,2) NOT NULL,
  `f6` double(8,2) NOT NULL,
  `f7` double(8,2) NOT NULL,
  `f8` double(8,2) NOT NULL,
  `f9` double(8,2) NOT NULL,
  `f10` double(8,2) NOT NULL,
  `lugar` int(11) NOT NULL,
  `aprobado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id_horario` int(10) UNSIGNED NOT NULL,
  `id_preparaduria` int(10) UNSIGNED NOT NULL,
  `id_asignatura` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `institucion`
--

CREATE TABLE `institucion` (
  `id_institucion` int(10) UNSIGNED NOT NULL,
  `nombre_institucion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siglas_institucion` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_institucion` text COLLATE utf8_unicode_ci NOT NULL,
  `nucleo_institucion` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `institucion`
--

INSERT INTO `institucion` (`id_institucion`, `nombre_institucion`, `siglas_institucion`, `descripcion_institucion`, `nucleo_institucion`, `created_at`, `updated_at`) VALUES
(1, 'Universidad De Oriente', 'UDO', 'UNIVERSIDAD DE ORIENTE Nucleo de Sucre', 'Nucleo de Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `itemsubcategoria`
--

CREATE TABLE `itemsubcategoria` (
  `id_itemsubcategoria` int(10) UNSIGNED NOT NULL,
  `id_subcategoria` int(10) UNSIGNED NOT NULL,
  `nombre_itemsubcategoria` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_itemsubcategoria` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `itemsubcategoria`
--

INSERT INTO `itemsubcategoria` (`id_itemsubcategoria`, `id_subcategoria`, `nombre_itemsubcategoria`, `descripcion_itemsubcategoria`, `created_at`, `updated_at`) VALUES
(1, 1, 'Evento', '', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(2, 1, 'Charla', '', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(3, 1, 'Reunion', '', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(4, 1, 'Otro', '', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(5, 8, 'Actas/Veredictos', 'Actas/Veredictos', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(6, 8, 'Constancias de Preparaduria', 'Constancias de Preparaduria', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(7, 8, 'Solicitud de menor y mayor carga academica', '', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(8, 8, 'Solicitud de menor carga y mayor carga acádemica', '', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(9, 3, 'Libre', '', NULL, NULL),
(10, 3, 'Estructurado', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefes`
--

CREATE TABLE `jefes` (
  `id_jefes` int(10) UNSIGNED NOT NULL,
  `id_dependencias` int(10) UNSIGNED NOT NULL,
  `id_users` int(10) UNSIGNED NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_03_26_211538_crear_tabla_pais', 1),
(2, '2014_04_18_162607_create_institucion_table', 1),
(3, '2014_04_18_182613_create_perfil_table', 1),
(4, '2014_04_19_193141_create_escuela_table', 1),
(5, '2014_04_22_005928_create_state_table', 1),
(6, '2014_04_22_005952_create_municipio_table', 1),
(7, '2014_04_22_010216_create_ciudad_table', 1),
(8, '2014_04_24_171029_create_asignatura_table', 1),
(9, '2014_11_18_162631_create_dependencia_table', 1),
(10, '2014_12_01_185514_create_dependencias_table', 1),
(11, '2014_12_11_163710_create_periodo_table', 1),
(12, '2015_10_12_000000_create_users_table', 1),
(13, '2015_10_12_100000_create_password_resets_table', 1),
(14, '2018_03_09_162608_create_estados_table', 1),
(15, '2018_03_11_163821_create_concurso_table', 1),
(16, '2018_03_11_163840_create_plazas_table', 1),
(17, '2018_04_17_212046_create_dedicacion_estudiante_table', 1),
(18, '2018_04_18_162632_create_categoria_documento_table', 1),
(19, '2018_04_18_162633_create_subcategoria_documento_table', 1),
(20, '2018_04_18_162635_create_itemsubcategoria_table', 1),
(21, '2018_04_18_162636_create_documento_table', 1),
(22, '2018_04_18_162637_create_ruta_table', 1),
(23, '2018_04_18_163154_create_circular_table', 1),
(24, '2018_04_18_163241_create_tipo_table', 1),
(25, '2018_04_18_163242_create_estudiante_table', 1),
(26, '2018_04_18_163302_create_dedicacion_table', 1),
(27, '2018_04_18_163303_create_profesor_table', 1),
(28, '2018_04_24_171048_create_preparaduria_table', 1),
(29, '2018_04_24_171656_create_preparaduria_asignaturas_cursando_table', 1),
(30, '2018_04_26_164136_add_nro_circular_circular_table', 1),
(31, '2018_04_27_003657_create_sello_table', 1),
(32, '2018_04_27_120916_create_selloescuela_table', 1),
(33, '2018_04_27_161216_create_rutasp_table', 1),
(34, '2018_05_01_015511_create_oficio_table', 1),
(35, '2018_05_01_015528_create_ruta_oficio_table', 1),
(36, '2018_05_01_021030_create_oficio_copia_table', 1),
(37, '2018_05_01_181346_create_tipo_oficio_table', 1),
(38, '2018_05_01_194232_create_contratacion_table', 1),
(39, '2018_05_05_111728_create_jefes_table', 1),
(40, '2018_05_05_113721_add_constancia_to_preparaduria_table', 1),
(41, '2018_05_05_113912_create_concursopreparador_table', 1),
(42, '2018_05_11_163904_create_horario_table', 1),
(43, '2018_05_11_170013_create_oficio_contratacion_preparador_table', 1),
(44, '2018_05_11_174144_create_aulas_table', 1),
(45, '2018_05_11_174239_create_asignar_aula_table', 1),
(46, '2018_05_11_192708_create_semestre_table', 1),
(47, '2018_05_13_210421_create_factores_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `id_municipio` int(10) UNSIGNED NOT NULL,
  `id_pais` int(10) UNSIGNED NOT NULL,
  `id_state` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`id_municipio`, `id_pais`, `id_state`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(2, 1, 1, 'Valdez', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(3, 1, 1, 'Montes', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(4, 1, 4, 'Sotillo', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(5, 2, 3, 'Comunidad De Madrid', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(6, 2, 2, 'Cataluña', '2017-05-21 14:48:05', '2017-05-21 14:48:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficio`
--

CREATE TABLE `oficio` (
  `id_oficio` int(10) UNSIGNED NOT NULL,
  `id_documento` int(10) UNSIGNED NOT NULL,
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `id_subcategoria` int(10) UNSIGNED NOT NULL,
  `id_itemsubcategoria` int(10) UNSIGNED NOT NULL,
  `id_estados` int(10) UNSIGNED NOT NULL,
  `id_dependencia` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_para_user` int(10) UNSIGNED NOT NULL,
  `numero` int(11) NOT NULL,
  `anio` text COLLATE utf8_unicode_ci NOT NULL,
  `acronimo` text COLLATE utf8_unicode_ci NOT NULL,
  `nota` text COLLATE utf8_unicode_ci NOT NULL,
  `de` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `cuerpo` text COLLATE utf8_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `oficio`
--

INSERT INTO `oficio` (`id_oficio`, `id_documento`, `id_categoria`, `id_subcategoria`, `id_itemsubcategoria`, `id_estados`, `id_dependencia`, `id_user`, `id_para_user`, `numero`, `anio`, `acronimo`, `nota`, `de`, `cuerpo`, `fecha`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 3, 10, 17, 2, 4, 13, 1, '2018', 'DI-1/2018', 'OFICIO DE CONTRATACION', 'PROFA. Carmelys Rodriguez', 'Oficio de Conratacion', '2018-06-12', '2018-06-12 20:52:49', '2018-06-12 20:54:32'),
(2, 3, 1, 3, 9, 12, 2, 3, 13, 2, '2018', 'DI-2/2018', 'Oficio de Concurso de Preparadores', ' ', 'Oficio de Concurso de Preparadores', '2018-06-12', '2018-06-12 21:03:13', '2018-06-12 21:03:13'),
(3, 4, 1, 3, 9, 10, 20, 13, 14, 1, '2018', 'DEC N°1', 'Oficio De Listado De Preparadores Docentes', 'PROF. William Velasquez', 'prueba', '2018-06-12', '2018-06-12 21:06:16', '2018-06-12 21:06:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficio_contratacion_preparador`
--

CREATE TABLE `oficio_contratacion_preparador` (
  `id_oficio_contratacion_preparador` int(10) UNSIGNED NOT NULL,
  `id_oficio` int(10) UNSIGNED NOT NULL,
  `id_concurso` int(10) UNSIGNED NOT NULL,
  `id_periodo` int(10) UNSIGNED NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `nro_consejo` text COLLATE utf8_unicode_ci NOT NULL,
  `fecha_consejo` text COLLATE utf8_unicode_ci NOT NULL,
  `fecha_contratacion` text COLLATE utf8_unicode_ci NOT NULL,
  `observacion` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficio_copia`
--

CREATE TABLE `oficio_copia` (
  `id_oficio_copia` int(10) UNSIGNED NOT NULL,
  `id_oficio` int(10) UNSIGNED NOT NULL,
  `id_dependencia` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `oficio_copia`
--

INSERT INTO `oficio_copia` (`id_oficio_copia`, `id_oficio`, `id_dependencia`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '2018-06-12 21:06:16', '2018-06-12 21:06:16'),
(2, 3, 2, '2018-06-12 21:06:16', '2018-06-12 21:06:16'),
(3, 3, 3, '2018-06-12 21:06:16', '2018-06-12 21:06:16'),
(4, 3, 4, '2018-06-12 21:06:16', '2018-06-12 21:06:16'),
(5, 3, 6, '2018-06-12 21:06:16', '2018-06-12 21:06:16'),
(6, 3, 8, '2018-06-12 21:06:16', '2018-06-12 21:06:16'),
(7, 3, 10, '2018-06-12 21:06:16', '2018-06-12 21:06:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pais`
--

CREATE TABLE `pais` (
  `id_pais` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pais`
--

INSERT INTO `pais` (`id_pais`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Venezuela', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(2, 'España', '2017-05-21 14:48:05', '2017-05-21 14:48:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfil`
--

CREATE TABLE `perfil` (
  `id_perfil` int(10) UNSIGNED NOT NULL,
  `nombre_perfil` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_perfil` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `perfil`
--

INSERT INTO `perfil` (`id_perfil`, `nombre_perfil`, `descripcion_perfil`, `created_at`, `updated_at`) VALUES
(1, 'ADMINISTRADOR', 'ADMINISTRADOR', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(2, 'JEFE DE DEPARTAMENTO', 'JEFE DE DEPARTAMENTO', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(3, 'SECRETARIA', 'SECRETARIA', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(4, 'PROFESOR', 'PROFESOR', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(5, 'ESTUDIANTE', 'ESTUDIANTE', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(6, 'JEFE DE ESCUELA', 'JEFE DE ESCUELA', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(7, 'JEFE DE COMISION', '', '2017-05-21 14:48:05', '2017-05-21 14:48:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodo`
--

CREATE TABLE `periodo` (
  `id_periodo` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `periodo`
--

INSERT INTO `periodo` (`id_periodo`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'I-2018', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plazas`
--

CREATE TABLE `plazas` (
  `id_plazas` int(10) UNSIGNED NOT NULL,
  `id_concurso` int(10) UNSIGNED NOT NULL,
  `id_asignatura` int(10) UNSIGNED NOT NULL,
  `asignado` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `plazas`
--

INSERT INTO `plazas` (`id_plazas`, `id_concurso`, `id_asignatura`, `asignado`, `created_at`, `updated_at`) VALUES
(9, 7, 7, 0, '2018-07-23 02:38:26', '2018-07-23 02:38:26');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preparaduria`
--

CREATE TABLE `preparaduria` (
  `id_preparaduria` int(10) UNSIGNED NOT NULL,
  `id_estados` int(10) UNSIGNED NOT NULL,
  `id_concurso` int(10) UNSIGNED NOT NULL,
  `id_estudiante` int(10) UNSIGNED NOT NULL,
  `id_asignatura` int(10) UNSIGNED NOT NULL,
  `id_periodo` int(10) UNSIGNED NOT NULL,
  `numero` int(11) NOT NULL,
  `anio` text COLLATE utf8_unicode_ci NOT NULL,
  `semestre` text COLLATE utf8_unicode_ci NOT NULL,
  `creditos_aprobados` text COLLATE utf8_unicode_ci NOT NULL,
  `promedio_general` text COLLATE utf8_unicode_ci NOT NULL,
  `record` text COLLATE utf8_unicode_ci NOT NULL,
  `nota` text COLLATE utf8_unicode_ci NOT NULL,
  `observacion` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `inscripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `horario` text COLLATE utf8_unicode_ci NOT NULL,
  `curriculum` text COLLATE utf8_unicode_ci NOT NULL,
  `f2` double(8,2) NOT NULL,
  `f3` double(8,2) NOT NULL,
  `f4` double(8,2) NOT NULL,
  `f5` double(8,2) NOT NULL,
  `f6` double(8,2) NOT NULL,
  `f7` double(8,2) NOT NULL,
  `condicion` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preparaduria_asignaturas_cursando`
--

CREATE TABLE `preparaduria_asignaturas_cursando` (
  `id_preparaduria_asignaturas_cursando` int(10) UNSIGNED NOT NULL,
  `id_preparaduria` int(10) UNSIGNED NOT NULL,
  `id_asignatura` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id_profesor` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_tipo` int(10) UNSIGNED NOT NULL,
  `id_dependencia` int(10) UNSIGNED NOT NULL,
  `id_dedicacion` int(10) UNSIGNED NOT NULL,
  `firma` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id_profesor`, `id_user`, `id_tipo`, `id_dependencia`, `id_dedicacion`, `firma`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 2, 1, '1337305381.png', '2018-05-12 17:43:10', '2018-05-12 17:43:10'),
(2, 3, 1, 2, 1, '1337305561.png', '2018-05-12 17:46:07', '2018-05-12 17:46:07'),
(3, 13, 1, 20, 1, '1337307230.jpg', '2018-05-12 18:13:59', '2018-05-12 18:13:59'),
(4, 17, 1, 3, 1, '1308369457.png', '2018-06-11 08:57:42', '2018-06-11 08:57:42'),
(5, 17, 1, 3, 2, '1308395899.jpg', '2018-06-12 03:48:25', '2018-06-12 03:48:25'),
(6, 17, 1, 3, 2, '1308395976.png', '2018-06-12 03:49:53', '2018-06-12 03:49:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE `ruta` (
  `id_ruta` int(10) UNSIGNED NOT NULL,
  `id_estado` int(10) UNSIGNED NOT NULL,
  `id_documento` int(10) UNSIGNED NOT NULL,
  `id_dependencia` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ruta`
--

INSERT INTO `ruta` (`id_ruta`, `id_estado`, `id_documento`, `id_dependencia`, `id_user`, `fecha`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 4, '2018-06-12', '2018-06-12 20:46:47', '2018-06-12 20:46:47'),
(2, 2, 1, 2, 4, '2018-06-12', '2018-06-12 20:47:47', '2018-06-12 20:47:47'),
(3, 3, 1, 2, 3, '2018-06-12', '2018-06-12 20:48:51', '2018-06-12 20:48:51'),
(4, 5, 1, 2, 3, '2018-06-12', '2018-06-12 20:49:42', '2018-06-12 20:49:42'),
(5, 7, 1, 2, 3, '2018-06-12', '2018-06-12 20:50:01', '2018-06-12 20:50:01'),
(6, 17, 1, 3, 3, '2018-06-12', '2018-06-12 20:50:39', '2018-06-12 20:50:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutasp`
--

CREATE TABLE `rutasp` (
  `id_ruta_p` int(10) UNSIGNED NOT NULL,
  `id_estado` int(10) UNSIGNED NOT NULL,
  `id_preparaduria` int(10) UNSIGNED NOT NULL,
  `id_dependencia` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta_oficio`
--

CREATE TABLE `ruta_oficio` (
  `id_ruta_oficio` int(10) UNSIGNED NOT NULL,
  `id_estado` int(10) UNSIGNED NOT NULL,
  `id_oficio` int(10) UNSIGNED NOT NULL,
  `id_dependencia` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `ruta_oficio`
--

INSERT INTO `ruta_oficio` (`id_ruta_oficio`, `id_estado`, `id_oficio`, `id_dependencia`, `id_user`, `fecha`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 4, '2018-06-12', '2018-06-12 20:52:49', '2018-06-12 20:52:49'),
(2, 6, 1, 2, 4, '2018-06-12', '2018-06-12 20:53:25', '2018-06-12 20:53:25'),
(3, 7, 1, 2, 3, '2018-06-12', '2018-06-12 20:54:06', '2018-06-12 20:54:06'),
(4, 17, 1, 2, 3, '2018-06-12', '2018-06-12 20:54:32', '2018-06-12 20:54:32'),
(5, 1, 2, 2, 3, '2018-06-12', '2018-06-12 21:03:13', '2018-06-12 21:03:13'),
(6, 12, 2, 2, 3, '2018-06-12', '2018-06-12 21:03:13', '2018-06-12 21:03:13'),
(7, 1, 3, 20, 13, '2018-06-12', '2018-06-12 21:06:16', '2018-06-12 21:06:16'),
(8, 10, 3, 20, 13, '2018-06-12', '2018-06-12 21:06:16', '2018-06-12 21:06:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sello`
--

CREATE TABLE `sello` (
  `id_sello` int(10) UNSIGNED NOT NULL,
  `id_dependencia` int(10) UNSIGNED NOT NULL,
  `id_users` int(10) UNSIGNED NOT NULL,
  `sello` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sello`
--

INSERT INTO `sello` (`id_sello`, `id_dependencia`, `id_users`, `sello`, `created_at`, `updated_at`) VALUES
(1, 2, 3, '1337305565.png', '2018-05-12 17:46:08', '2018-05-12 17:46:08'),
(2, 3, 17, '1308369342.png', '2018-06-11 08:57:42', '2018-06-11 08:57:42'),
(3, 3, 17, '1308395859.jpg', '2018-06-12 03:48:26', '2018-06-12 03:48:26'),
(4, 3, 17, '1308395988.png', '2018-06-12 03:49:53', '2018-06-12 03:49:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `selloescuela`
--

CREATE TABLE `selloescuela` (
  `id_sello_escuela` int(10) UNSIGNED NOT NULL,
  `id_dependencia` int(10) UNSIGNED NOT NULL,
  `id_users` int(10) UNSIGNED NOT NULL,
  `sello` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `selloescuela`
--

INSERT INTO `selloescuela` (`id_sello_escuela`, `id_dependencia`, `id_users`, `sello`, `created_at`, `updated_at`) VALUES
(1, 20, 13, '1337307236.jpg', '2018-05-12 18:13:59', '2018-05-12 18:13:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestre`
--

CREATE TABLE `semestre` (
  `id_semestre` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `semestre`
--

INSERT INTO `semestre` (`id_semestre`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'I', NULL, NULL),
(2, 'II', NULL, NULL),
(3, 'III', NULL, NULL),
(4, 'IV', NULL, NULL),
(5, 'V', NULL, NULL),
(6, 'VI', NULL, NULL),
(7, 'VII', NULL, NULL),
(8, 'VIII', NULL, NULL),
(9, 'IX', NULL, NULL),
(10, 'X', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `states`
--

CREATE TABLE `states` (
  `id_state` int(10) UNSIGNED NOT NULL,
  `id_pais` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `states`
--

INSERT INTO `states` (`id_state`, `id_pais`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sucre', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(2, 2, 'Barcelona', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(3, 2, 'Madrid', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(4, 1, 'Anzoategui', '2017-05-21 14:48:05', '2017-05-21 14:48:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategoria_documento`
--

CREATE TABLE `subcategoria_documento` (
  `id_subcategoria` int(10) UNSIGNED NOT NULL,
  `id_categoria` int(10) UNSIGNED NOT NULL,
  `nombre_subcategoria` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_subcategoria` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `subcategoria_documento`
--

INSERT INTO `subcategoria_documento` (`id_subcategoria`, `id_categoria`, `nombre_subcategoria`, `descripcion_subcategoria`, `created_at`, `updated_at`) VALUES
(1, 1, 'Circular', 'Administrativos', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(2, 1, 'Invitacion', 'Administrativos', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(3, 1, 'Oficio', 'Administrativos', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(4, 1, 'Solicitud', 'Administrativos', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(5, 2, 'Concurso', 'Administrativos', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(6, 2, 'Estudiante', 'Administrativos', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(7, 2, 'Profesor', 'Administrativos', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(8, 2, 'Planificacion Academica', 'Administrativos', '2017-05-21 14:48:05', '2017-05-21 14:48:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `id_tipo` int(10) UNSIGNED NOT NULL,
  `nombre_tipo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion_tipo` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`id_tipo`, `nombre_tipo`, `descripcion_tipo`, `created_at`, `updated_at`) VALUES
(1, 'DOCENTE', 'DOCENTE', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(2, 'ADMINISTRATIVO', 'ADMINISTRATIVO', '2017-05-21 14:48:05', '2017-05-21 14:48:05'),
(3, 'ESTUDIANTE', 'ESTUDIANTE', '2017-05-21 14:48:05', '2017-05-21 14:48:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_oficio`
--

CREATE TABLE `tipo_oficio` (
  `id_tipo_oficio` int(10) UNSIGNED NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipo_oficio`
--

INSERT INTO `tipo_oficio` (`id_tipo_oficio`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Contratacion', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_dependencia` int(10) UNSIGNED NOT NULL,
  `id_perfil` int(10) UNSIGNED NOT NULL,
  `id_pais` int(10) UNSIGNED NOT NULL,
  `id_state` int(10) UNSIGNED NOT NULL,
  `id_municipio` int(10) UNSIGNED NOT NULL,
  `id_ciudad` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `cedula` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `nombres` text COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` text COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ocupacion` text COLLATE utf8_unicode_ci NOT NULL,
  `direccion` text COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `id_dependencia`, `id_perfil`, `id_pais`, `id_state`, `id_municipio`, `id_ciudad`, `name`, `email`, `avatar`, `password`, `cedula`, `nombres`, `apellidos`, `telefono`, `sexo`, `ocupacion`, `direccion`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 1, 1, 1, 'Administrador', 'admin@tensoft.com', 'admin.png', '$2y$10$Vq9dCRYq1btTxBo4qod3Ee4kWpiBnIFOznUxNibPmJM2iS9U24BLK', '1', 'Administrador', 'SDG', '0000000', 'Masculino', 'Administrador', 'Universidad de Oriente', 'pN5JfJ969p4hRpwyBCt8pjh4kM4sQmAloT0q1TcEaFkEGhVZCXx342V6TvJs', '2017-05-21 14:48:05', '2018-07-23 00:57:58'),
(2, 2, 7, 1, 1, 1, 1, 'Miguel A.', 'pagliarulot@edu.com.ve', '1308395747.jpg', '$2y$10$VxnowW.HLlC9Pd0oPb.Nuu90haaO6GueHmBXHUQsV2zMPNKL7oaX6', '1', 'Miguel A.', 'Pagliarulo T.', '0000000', 'Masculino', 'Docente', 'Universidad de Oriente', 'SgDlJc33XPDC0sfKdP2HxRqssOqxyqDyfL7TOI2W5CbhyP5fqOsR0hsB4uSR', '2017-05-21 14:48:05', '2018-07-23 02:38:30'),
(3, 2, 2, 1, 1, 1, 1, 'Carmelys', 'carmelys@edu.com.ve', '1808051620.jpg', '$2y$10$Vq9dCRYq1btTxBo4qod3Ee4kWpiBnIFOznUxNibPmJM2iS9U24BLK', '1', 'Carmelys', 'Rodriguez', '0000', 'Femenino', 'Docente', 'Universidad de Oriente', 'gkR8wmq2V9piamfxlZL7XSLhYgo9Dauwp2KjmvUxJMbvmC9yItvyWif0NIwc', '2017-05-21 14:48:05', '2018-06-12 21:04:37'),
(4, 2, 3, 1, 1, 1, 1, 'Elizabeth ', 'yuleinnys@edu.com.ve', '1339984285.jpg', '$2y$10$sn.dJSa1kvba4WGIJarOCOXXaVL1TRhtVZtaVb5UtcTFw7Kh8BZ0W', '1', 'Elizabeth ', 'Fuentes', '0000000', 'Femenino', 'Administrador', 'Universidad de Oriente', '4tAozisDG40QuDyiThvINSdmsngBhtmcm76TO54gzijMtyTvDJusSABtHrIV', '2017-05-21 14:48:05', '2018-06-12 20:55:42'),
(5, 2, 5, 1, 1, 1, 1, 'Gómez O., Eduardo J.', 'gomezej@edu.com.ve', '1147941394.jpg', '$2y$10$vpnR.Lfq4pIf9aTyFxXGzunCyPjUpqHI4mCUVT7nZmBq2X70u94RW', '20.991.067', 'Eduardo J.', 'Gómez O.', '0000000', 'Masculino', 'Estudiante', 'Universidad de Oriente', 'Ns5yBLufvnq7fCJ3t2lh7HadIYaiirJjxKpZwB3Mhb5yq83AwxMBA1FGP9Rt', '2017-05-21 14:48:05', '2018-06-01 23:53:22'),
(6, 2, 5, 1, 1, 1, 1, 'Sakazar Miguel', 'tineo22f@edu.com.ve', '1116417113.jpg', '$2y$10$aDxy09AEilCQSH4bikwlIe2Da1RT63Qs32pscDINGg5UHm5Hdf6yS', '26.545.411', 'Miguel D', 'Salazar U', '0000000', 'Masculino', 'Estudiante', 'Universidad de Oriente', 'tI12rcmWIqkzUt3hSJ5oWvky1H1wIJfLmz6AIxOcSBzTIH4x5d42VqBDvVrW', '2017-05-21 14:48:05', '2018-05-14 06:26:44'),
(7, 2, 5, 1, 1, 1, 1, 'Marval M., Pedro J.', 'marvalpj@edu.com.ve', '1871181507.jpg', '$2y$10$K1iaZiKRqGNUcnaDtlQtgOQhp7Elj5LcrDqgZq7itoFp6KDuoMXnO', '26.087.499', 'Pedro J.', 'Marval M.', '0000000', 'Masculino', 'Estudiante', 'Universidad de Oriente', 'rZQ6M8wQPjxzjI9rWqWHyG6KC3yuaKWOlXuRVz9oAQmEwBECAS72OMaVsjeh', '2017-05-21 14:48:05', '2018-05-23 18:06:18'),
(8, 2, 5, 1, 1, 1, 1, 'Natera L., José F.', 'naterajf@edu.com.ve', '1871182746.jpg', '$2y$10$rn0keAob4fBjV6jrZhVHveivoupxFbjJj4ilQSyl5R81eA.KnTY62', '24.657.897', 'Jose F', 'Natera L.', '0000000', 'Masculino', 'Estudiante', 'Universidad de Oriente', 'WT6eCbh9xFYSS3huWBC14iTImKcsnGz8FGGZ7g7bBmFtIUP1WFl4pncQHxlo', '2017-05-21 14:48:05', '2018-06-01 22:41:31'),
(9, 2, 5, 1, 1, 1, 1, 'Elvis S', 'serranoes@edu.com.ve', '1808049398.jpg', '$2y$10$Vq9dCRYq1btTxBo4qod3Ee4kWpiBnIFOznUxNibPmJM2iS9U24BLK', '23.805.156', 'Elvis S', 'Serrano H', '0000000', 'Masculino', 'Estudiante', 'Universidad de Oriente', 'iHVGDxUHSLxH3utktABunEa6Ao4LIyj0hl3V328BY1cnL0PRfMYxRrKvOOy1', '2017-05-21 14:48:05', '2018-06-01 23:58:30'),
(10, 2, 5, 1, 1, 1, 1, 'Humberto Gil', 'humbertog@edu.com.ve', '1116378371.jpg', '$2y$10$Vq9dCRYq1btTxBo4qod3Ee4kWpiBnIFOznUxNibPmJM2iS9U24BLK', '20.345.677', 'Humberto A', 'Gil M', '0000000', 'Masculino', 'Estudiante', 'Universidad de Oriente', 'zm8IbDuv7LEsFHnLYoOSWSesXPbX2aSQkLe73BBTKJtI5MLE8gRlaoCNoGcF', '2017-05-21 14:48:05', '2018-05-30 02:35:57'),
(11, 2, 5, 1, 1, 1, 1, 'Fleitas M., Orestes A.', 'orestesfl@edu.com.ve', 'foto3.jpg', '$2y$10$Vq9dCRYq1btTxBo4qod3Ee4kWpiBnIFOznUxNibPmJM2iS9U24BLK', '24.401.278', 'Orestes A.', 'Fleitas M.,', '0000000', 'Masculino', 'Estudiante', 'Universidad de Oriente', 'mG9MaKoxPEg9eQzt4UCJMFgqaGxOVY55xJyv4FkcoUAmBT8GIdcCLAR901KE', '2017-05-21 14:48:05', '2018-05-30 02:39:27'),
(12, 2, 5, 1, 1, 1, 1, 'Bryan Tineo', 'tineof@edu.com.ve', '1808049398.jpg', '$2y$10$Vq9dCRYq1btTxBo4qod3Ee4kWpiBnIFOznUxNibPmJM2iS9U24BLK', '23.433.825', 'Bryan E.', 'Tineo F', '0000000', 'Masculino', 'Estudiante', 'Universidad de Oriente', 'yPfAslTTOLAZUjirfnzffBPrhSiwV44fviqWFiIf3lieM1jgZWUlNzOLVzqV', '2017-05-21 14:48:05', '2018-07-23 03:05:24'),
(13, 20, 6, 1, 1, 1, 1, 'William', 'wvelasq@edu.com.ve', '1808049398.jpg', '$2y$10$Vq9dCRYq1btTxBo4qod3Ee4kWpiBnIFOznUxNibPmJM2iS9U24BLK', '1', 'William', 'Velasquez', '0000000', 'Masculino', 'Director', 'Universidad de Oriente', 'sAiUuBZvXGz5u7LuZIPNkEyVU8uny5zdSKlfPmX3VtN2beYKDXbP5o8ZyGcQ', '2017-05-21 14:48:05', '2018-06-12 21:06:41'),
(14, 14, 2, 1, 1, 1, 1, 'Neyla Cortez', 'cortezneyla@edu.com.ve', '1808049398.jpg', '$2y$10$Vq9dCRYq1btTxBo4qod3Ee4kWpiBnIFOznUxNibPmJM2iS9U24BLK', '1', 'Neyla', 'Cortez', '0', 'Femenino', 'Docente', 'x', 'kIecH31iLb7G85dY3drviqdHWkbSJglNLlhm1uZKTjJ0ptTcecpv1XqrSbZF', NULL, '2018-05-30 02:50:38'),
(15, 2, 4, 1, 1, 1, 1, 'Jose Alvino', 'djvelasq@udo.edu.ve', 'admin.png', '', '18.244.818', 'Jose Daniel', 'Alvino Velasquez', '0', 'Masculino', 'Lcido', 'bo', NULL, NULL, NULL),
(16, 2, 5, 1, 1, 1, 1, 'CLAUDIO', 'tauros23callo@gmail.com', '1747561454.png', '$2y$10$Vq9dCRYq1btTxBo4qod3Ee4kWpiBnIFOznUxNibPmJM2iS9U24BLK', '18211942', 'CLAUDIO', 'RONDON', '04167936874', 'Masculino', 'ESTUDIANTE', 'CUMANA', 'e2497e4yjg5lETdDB09Otpywyv5ocpGCLNQ1dj8Z', '2018-05-26 02:44:35', '2018-05-26 02:45:39'),
(17, 3, 2, 1, 1, 1, 1, 'Matemáticas', 'matematicas@udo.edu.ve', '1308395968.jpg', '$2y$10$GGMsrvN.1Z/vhAyaAugZRu17aUfGayWkUQWFt74nOa1ciOVOzX1D2', '1921122', 'Matemáticas', 'Matematicas', '000000', 'Masculino', 'prueba', 'cxx', 'ceAeQR60EInSeNwyj2vl2HHiSOHLuiDJgqLXNK7F0wNnXSLC9OuayIfWEIH4', '2018-06-07 05:31:27', '2018-06-12 20:51:56'),
(18, 2, 2, 1, 1, 1, 1, 'Quimica', 'quimica@udo.edu.ve', '1339985195.jpg', '$2y$10$GGMsrvN.1Z/vhAyaAugZRu17aUfGayWkUQWFt74nOa1ciOVOzX1D2', '1111', 'Quimica', 'quimica', '4545', 'Masculino', 'prueba', 'cxcx', '4FewWVQMkNMHkwKG2nr8mt17Y65HTJzetO4aYYm82QCvFREQLp58y4MOQtGF', '2018-06-12 18:36:56', '2018-06-12 18:48:28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignar_aula`
--
ALTER TABLE `asignar_aula`
  ADD PRIMARY KEY (`id_asignar_aula`),
  ADD KEY `asignar_aula_id_horario_foreign` (`id_horario`),
  ADD KEY `asignar_aula_id_aula_foreign` (`id_aula`);

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`id_asignatura`);

--
-- Indices de la tabla `aula`
--
ALTER TABLE `aula`
  ADD PRIMARY KEY (`id_aula`);

--
-- Indices de la tabla `categoria_documento`
--
ALTER TABLE `categoria_documento`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `circular`
--
ALTER TABLE `circular`
  ADD PRIMARY KEY (`id_circular`),
  ADD KEY `circular_id_documento_foreign` (`id_documento`),
  ADD KEY `circular_id_itemsubcategoria_foreign` (`id_itemsubcategoria`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`id_ciudad`),
  ADD KEY `ciudad_id_pais_foreign` (`id_pais`),
  ADD KEY `ciudad_id_state_foreign` (`id_state`),
  ADD KEY `ciudad_id_municipio_foreign` (`id_municipio`);

--
-- Indices de la tabla `concurso`
--
ALTER TABLE `concurso`
  ADD PRIMARY KEY (`id_concurso`),
  ADD KEY `concurso_id_estados_foreign` (`id_estados`),
  ADD KEY `concurso_id_periodo_foreign` (`id_periodo`);

--
-- Indices de la tabla `concurso_preparador`
--
ALTER TABLE `concurso_preparador`
  ADD PRIMARY KEY (`id_concurso_preparador`),
  ADD KEY `concurso_preparador_id_user_foreign` (`id_user`),
  ADD KEY `concurso_preparador_id_preparaduria_foreign` (`id_preparaduria`),
  ADD KEY `concurso_preparador_id_periodo_foreign` (`id_periodo`);

--
-- Indices de la tabla `contratacion`
--
ALTER TABLE `contratacion`
  ADD PRIMARY KEY (`id_contratacion`),
  ADD KEY `contratacion_id_user_foreign` (`id_user`),
  ADD KEY `contratacion_id_oficio_foreign` (`id_oficio`),
  ADD KEY `contratacion_id_asignatura_foreign` (`id_asignatura`);

--
-- Indices de la tabla `dedicacion`
--
ALTER TABLE `dedicacion`
  ADD PRIMARY KEY (`id_dedicacion`);

--
-- Indices de la tabla `dedicacion_estudiante`
--
ALTER TABLE `dedicacion_estudiante`
  ADD PRIMARY KEY (`id_dedicacion_estudiante`);

--
-- Indices de la tabla `dependencia`
--
ALTER TABLE `dependencia`
  ADD PRIMARY KEY (`id_dependencia`),
  ADD KEY `dependencia_id_institucion_foreign` (`id_institucion`),
  ADD KEY `dependencia_id_escuela_foreign` (`id_escuela`);

--
-- Indices de la tabla `dependencias`
--
ALTER TABLE `dependencias`
  ADD PRIMARY KEY (`id_dependencias`),
  ADD KEY `dependencias_id_departamento_foreign` (`id_departamento`);

--
-- Indices de la tabla `destinos`
--
ALTER TABLE `destinos`
  ADD PRIMARY KEY (`id_destinos`),
  ADD KEY `id_documento` (`id_documento`);

--
-- Indices de la tabla `documento`
--
ALTER TABLE `documento`
  ADD PRIMARY KEY (`id_documento`),
  ADD UNIQUE KEY `documento_codigo_plantilla_unique` (`codigo_plantilla`),
  ADD KEY `documento_id_dependencia_c_foreign` (`id_dependencia_c`),
  ADD KEY `documento_id_usuario_foreign` (`id_usuario`),
  ADD KEY `documento_id_categoria_foreign` (`id_categoria`),
  ADD KEY `documento_id_subcategoria_foreign` (`id_subcategoria`),
  ADD KEY `documento_id_itemsubcategoria_foreign` (`id_itemsubcategoria`),
  ADD KEY `documento_id_estados_foreign` (`id_estados`);

--
-- Indices de la tabla `escuela`
--
ALTER TABLE `escuela`
  ADD PRIMARY KEY (`id_escuela`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id_estados`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD KEY `estudiante_id_user_foreign` (`id_user`),
  ADD KEY `estudiante_id_tipo_foreign` (`id_tipo`),
  ADD KEY `estudiante_id_dependencia_foreign` (`id_dependencia`),
  ADD KEY `estudiante_id_dedicacion_estudiante_foreign` (`id_dedicacion_estudiante`);

--
-- Indices de la tabla `factores`
--
ALTER TABLE `factores`
  ADD PRIMARY KEY (`id_factores`),
  ADD KEY `factores_id_user_foreign` (`id_user`),
  ADD KEY `factores_id_preparaduria_foreign` (`id_preparaduria`),
  ADD KEY `factores_id_periodo_foreign` (`id_periodo`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id_horario`),
  ADD KEY `horario_id_preparaduria_foreign` (`id_preparaduria`),
  ADD KEY `horario_id_asignatura_foreign` (`id_asignatura`);

--
-- Indices de la tabla `institucion`
--
ALTER TABLE `institucion`
  ADD PRIMARY KEY (`id_institucion`);

--
-- Indices de la tabla `itemsubcategoria`
--
ALTER TABLE `itemsubcategoria`
  ADD PRIMARY KEY (`id_itemsubcategoria`),
  ADD KEY `itemsubcategoria_id_subcategoria_foreign` (`id_subcategoria`);

--
-- Indices de la tabla `jefes`
--
ALTER TABLE `jefes`
  ADD PRIMARY KEY (`id_jefes`),
  ADD KEY `jefes_id_dependencias_foreign` (`id_dependencias`),
  ADD KEY `jefes_id_users_foreign` (`id_users`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id_municipio`),
  ADD KEY `municipio_id_pais_foreign` (`id_pais`),
  ADD KEY `municipio_id_state_foreign` (`id_state`);

--
-- Indices de la tabla `oficio`
--
ALTER TABLE `oficio`
  ADD PRIMARY KEY (`id_oficio`),
  ADD KEY `oficio_id_documento_foreign` (`id_documento`),
  ADD KEY `oficio_id_categoria_foreign` (`id_categoria`),
  ADD KEY `oficio_id_subcategoria_foreign` (`id_subcategoria`),
  ADD KEY `oficio_id_itemsubcategoria_foreign` (`id_itemsubcategoria`),
  ADD KEY `oficio_id_estados_foreign` (`id_estados`),
  ADD KEY `oficio_id_dependencia_foreign` (`id_dependencia`),
  ADD KEY `oficio_id_user_foreign` (`id_user`),
  ADD KEY `oficio_id_para_user_foreign` (`id_para_user`);

--
-- Indices de la tabla `oficio_contratacion_preparador`
--
ALTER TABLE `oficio_contratacion_preparador`
  ADD PRIMARY KEY (`id_oficio_contratacion_preparador`),
  ADD KEY `oficio_contratacion_preparador_id_oficio_foreign` (`id_oficio`),
  ADD KEY `oficio_contratacion_preparador_id_concurso_foreign` (`id_concurso`),
  ADD KEY `oficio_contratacion_preparador_id_periodo_foreign` (`id_periodo`);

--
-- Indices de la tabla `oficio_copia`
--
ALTER TABLE `oficio_copia`
  ADD PRIMARY KEY (`id_oficio_copia`),
  ADD KEY `oficio_copia_id_oficio_foreign` (`id_oficio`),
  ADD KEY `oficio_copia_id_dependencia_foreign` (`id_dependencia`);

--
-- Indices de la tabla `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`id_pais`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`id_perfil`);

--
-- Indices de la tabla `periodo`
--
ALTER TABLE `periodo`
  ADD PRIMARY KEY (`id_periodo`);

--
-- Indices de la tabla `plazas`
--
ALTER TABLE `plazas`
  ADD PRIMARY KEY (`id_plazas`),
  ADD KEY `plazas_id_concurso_foreign` (`id_concurso`),
  ADD KEY `plazas_id_asignatura_foreign` (`id_asignatura`);

--
-- Indices de la tabla `preparaduria`
--
ALTER TABLE `preparaduria`
  ADD PRIMARY KEY (`id_preparaduria`),
  ADD KEY `preparaduria_id_estados_foreign` (`id_estados`),
  ADD KEY `preparaduria_id_concurso_foreign` (`id_concurso`),
  ADD KEY `preparaduria_id_estudiante_foreign` (`id_estudiante`),
  ADD KEY `preparaduria_id_asignatura_foreign` (`id_asignatura`),
  ADD KEY `preparaduria_id_periodo_foreign` (`id_periodo`);

--
-- Indices de la tabla `preparaduria_asignaturas_cursando`
--
ALTER TABLE `preparaduria_asignaturas_cursando`
  ADD PRIMARY KEY (`id_preparaduria_asignaturas_cursando`),
  ADD KEY `preparaduria_asignaturas_cursando_id_preparaduria_foreign` (`id_preparaduria`),
  ADD KEY `preparaduria_asignaturas_cursando_id_asignatura_foreign` (`id_asignatura`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id_profesor`),
  ADD KEY `profesor_id_user_foreign` (`id_user`),
  ADD KEY `profesor_id_tipo_foreign` (`id_tipo`),
  ADD KEY `profesor_id_dependencia_foreign` (`id_dependencia`),
  ADD KEY `profesor_id_dedicacion_foreign` (`id_dedicacion`);

--
-- Indices de la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD PRIMARY KEY (`id_ruta`),
  ADD KEY `ruta_id_estado_foreign` (`id_estado`),
  ADD KEY `ruta_id_documento_foreign` (`id_documento`),
  ADD KEY `ruta_id_dependencia_foreign` (`id_dependencia`),
  ADD KEY `ruta_id_user_foreign` (`id_user`);

--
-- Indices de la tabla `rutasp`
--
ALTER TABLE `rutasp`
  ADD PRIMARY KEY (`id_ruta_p`),
  ADD KEY `rutasp_id_estado_foreign` (`id_estado`),
  ADD KEY `rutasp_id_preparaduria_foreign` (`id_preparaduria`),
  ADD KEY `rutasp_id_dependencia_foreign` (`id_dependencia`),
  ADD KEY `rutasp_id_user_foreign` (`id_user`);

--
-- Indices de la tabla `ruta_oficio`
--
ALTER TABLE `ruta_oficio`
  ADD PRIMARY KEY (`id_ruta_oficio`),
  ADD KEY `ruta_oficio_id_estado_foreign` (`id_estado`),
  ADD KEY `ruta_oficio_id_oficio_foreign` (`id_oficio`),
  ADD KEY `ruta_oficio_id_dependencia_foreign` (`id_dependencia`),
  ADD KEY `ruta_oficio_id_user_foreign` (`id_user`);

--
-- Indices de la tabla `sello`
--
ALTER TABLE `sello`
  ADD PRIMARY KEY (`id_sello`),
  ADD KEY `sello_id_dependencia_foreign` (`id_dependencia`),
  ADD KEY `sello_id_users_foreign` (`id_users`);

--
-- Indices de la tabla `selloescuela`
--
ALTER TABLE `selloescuela`
  ADD PRIMARY KEY (`id_sello_escuela`),
  ADD KEY `selloescuela_id_dependencia_foreign` (`id_dependencia`),
  ADD KEY `selloescuela_id_users_foreign` (`id_users`);

--
-- Indices de la tabla `semestre`
--
ALTER TABLE `semestre`
  ADD PRIMARY KEY (`id_semestre`);

--
-- Indices de la tabla `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id_state`),
  ADD KEY `states_id_pais_foreign` (`id_pais`);

--
-- Indices de la tabla `subcategoria_documento`
--
ALTER TABLE `subcategoria_documento`
  ADD PRIMARY KEY (`id_subcategoria`),
  ADD KEY `subcategoria_documento_id_categoria_foreign` (`id_categoria`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `tipo_oficio`
--
ALTER TABLE `tipo_oficio`
  ADD PRIMARY KEY (`id_tipo_oficio`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_dependencia_foreign` (`id_dependencia`),
  ADD KEY `users_id_perfil_foreign` (`id_perfil`),
  ADD KEY `users_id_pais_foreign` (`id_pais`),
  ADD KEY `users_id_state_foreign` (`id_state`),
  ADD KEY `users_id_municipio_foreign` (`id_municipio`),
  ADD KEY `users_id_ciudad_foreign` (`id_ciudad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignar_aula`
--
ALTER TABLE `asignar_aula`
  MODIFY `id_asignar_aula` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `id_asignatura` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de la tabla `aula`
--
ALTER TABLE `aula`
  MODIFY `id_aula` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `categoria_documento`
--
ALTER TABLE `categoria_documento`
  MODIFY `id_categoria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `circular`
--
ALTER TABLE `circular`
  MODIFY `id_circular` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `id_ciudad` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `concurso`
--
ALTER TABLE `concurso`
  MODIFY `id_concurso` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `concurso_preparador`
--
ALTER TABLE `concurso_preparador`
  MODIFY `id_concurso_preparador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `contratacion`
--
ALTER TABLE `contratacion`
  MODIFY `id_contratacion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `dedicacion`
--
ALTER TABLE `dedicacion`
  MODIFY `id_dedicacion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `dedicacion_estudiante`
--
ALTER TABLE `dedicacion_estudiante`
  MODIFY `id_dedicacion_estudiante` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `dependencia`
--
ALTER TABLE `dependencia`
  MODIFY `id_dependencia` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `dependencias`
--
ALTER TABLE `dependencias`
  MODIFY `id_dependencias` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `destinos`
--
ALTER TABLE `destinos`
  MODIFY `id_destinos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `documento`
--
ALTER TABLE `documento`
  MODIFY `id_documento` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `escuela`
--
ALTER TABLE `escuela`
  MODIFY `id_escuela` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id_estados` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id_estudiante` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `factores`
--
ALTER TABLE `factores`
  MODIFY `id_factores` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `horario`
--
ALTER TABLE `horario`
  MODIFY `id_horario` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `institucion`
--
ALTER TABLE `institucion`
  MODIFY `id_institucion` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `itemsubcategoria`
--
ALTER TABLE `itemsubcategoria`
  MODIFY `id_itemsubcategoria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `jefes`
--
ALTER TABLE `jefes`
  MODIFY `id_jefes` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id_municipio` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `oficio`
--
ALTER TABLE `oficio`
  MODIFY `id_oficio` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `oficio_contratacion_preparador`
--
ALTER TABLE `oficio_contratacion_preparador`
  MODIFY `id_oficio_contratacion_preparador` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `oficio_copia`
--
ALTER TABLE `oficio_copia`
  MODIFY `id_oficio_copia` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `pais`
--
ALTER TABLE `pais`
  MODIFY `id_pais` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `perfil`
--
ALTER TABLE `perfil`
  MODIFY `id_perfil` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `periodo`
--
ALTER TABLE `periodo`
  MODIFY `id_periodo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `plazas`
--
ALTER TABLE `plazas`
  MODIFY `id_plazas` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `preparaduria`
--
ALTER TABLE `preparaduria`
  MODIFY `id_preparaduria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `preparaduria_asignaturas_cursando`
--
ALTER TABLE `preparaduria_asignaturas_cursando`
  MODIFY `id_preparaduria_asignaturas_cursando` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id_profesor` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `ruta`
--
ALTER TABLE `ruta`
  MODIFY `id_ruta` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `rutasp`
--
ALTER TABLE `rutasp`
  MODIFY `id_ruta_p` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `ruta_oficio`
--
ALTER TABLE `ruta_oficio`
  MODIFY `id_ruta_oficio` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `sello`
--
ALTER TABLE `sello`
  MODIFY `id_sello` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `selloescuela`
--
ALTER TABLE `selloescuela`
  MODIFY `id_sello_escuela` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `semestre`
--
ALTER TABLE `semestre`
  MODIFY `id_semestre` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `states`
--
ALTER TABLE `states`
  MODIFY `id_state` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `subcategoria_documento`
--
ALTER TABLE `subcategoria_documento`
  MODIFY `id_subcategoria` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `id_tipo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tipo_oficio`
--
ALTER TABLE `tipo_oficio`
  MODIFY `id_tipo_oficio` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignar_aula`
--
ALTER TABLE `asignar_aula`
  ADD CONSTRAINT `asignar_aula_id_aula_foreign` FOREIGN KEY (`id_aula`) REFERENCES `aula` (`id_aula`) ON DELETE CASCADE,
  ADD CONSTRAINT `asignar_aula_id_horario_foreign` FOREIGN KEY (`id_horario`) REFERENCES `horario` (`id_horario`) ON DELETE CASCADE;

--
-- Filtros para la tabla `circular`
--
ALTER TABLE `circular`
  ADD CONSTRAINT `circular_id_documento_foreign` FOREIGN KEY (`id_documento`) REFERENCES `documento` (`id_documento`) ON DELETE CASCADE,
  ADD CONSTRAINT `circular_id_itemsubcategoria_foreign` FOREIGN KEY (`id_itemsubcategoria`) REFERENCES `itemsubcategoria` (`id_itemsubcategoria`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD CONSTRAINT `ciudad_id_municipio_foreign` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`) ON DELETE CASCADE,
  ADD CONSTRAINT `ciudad_id_pais_foreign` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`) ON DELETE CASCADE,
  ADD CONSTRAINT `ciudad_id_state_foreign` FOREIGN KEY (`id_state`) REFERENCES `states` (`id_state`) ON DELETE CASCADE;

--
-- Filtros para la tabla `concurso`
--
ALTER TABLE `concurso`
  ADD CONSTRAINT `concurso_id_estados_foreign` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE,
  ADD CONSTRAINT `concurso_id_periodo_foreign` FOREIGN KEY (`id_periodo`) REFERENCES `periodo` (`id_periodo`) ON DELETE CASCADE;

--
-- Filtros para la tabla `concurso_preparador`
--
ALTER TABLE `concurso_preparador`
  ADD CONSTRAINT `concurso_preparador_id_periodo_foreign` FOREIGN KEY (`id_periodo`) REFERENCES `periodo` (`id_periodo`) ON DELETE CASCADE,
  ADD CONSTRAINT `concurso_preparador_id_preparaduria_foreign` FOREIGN KEY (`id_preparaduria`) REFERENCES `preparaduria` (`id_preparaduria`) ON DELETE CASCADE,
  ADD CONSTRAINT `concurso_preparador_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `contratacion`
--
ALTER TABLE `contratacion`
  ADD CONSTRAINT `contratacion_id_asignatura_foreign` FOREIGN KEY (`id_asignatura`) REFERENCES `asignatura` (`id_asignatura`) ON DELETE CASCADE,
  ADD CONSTRAINT `contratacion_id_oficio_foreign` FOREIGN KEY (`id_oficio`) REFERENCES `oficio` (`id_oficio`) ON DELETE CASCADE,
  ADD CONSTRAINT `contratacion_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `dependencia`
--
ALTER TABLE `dependencia`
  ADD CONSTRAINT `dependencia_id_escuela_foreign` FOREIGN KEY (`id_escuela`) REFERENCES `escuela` (`id_escuela`) ON DELETE CASCADE,
  ADD CONSTRAINT `dependencia_id_institucion_foreign` FOREIGN KEY (`id_institucion`) REFERENCES `institucion` (`id_institucion`) ON DELETE CASCADE;

--
-- Filtros para la tabla `dependencias`
--
ALTER TABLE `dependencias`
  ADD CONSTRAINT `dependencias_id_departamento_foreign` FOREIGN KEY (`id_departamento`) REFERENCES `dependencia` (`id_dependencia`) ON DELETE CASCADE;

--
-- Filtros para la tabla `destinos`
--
ALTER TABLE `destinos`
  ADD CONSTRAINT `destinos_ibfk_1` FOREIGN KEY (`id_documento`) REFERENCES `documento` (`id_documento`) ON DELETE CASCADE;

--
-- Filtros para la tabla `documento`
--
ALTER TABLE `documento`
  ADD CONSTRAINT `documento_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categoria_documento` (`id_categoria`) ON DELETE CASCADE,
  ADD CONSTRAINT `documento_id_dependencia_c_foreign` FOREIGN KEY (`id_dependencia_c`) REFERENCES `dependencia` (`id_dependencia`) ON DELETE CASCADE,
  ADD CONSTRAINT `documento_id_estados_foreign` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE,
  ADD CONSTRAINT `documento_id_itemsubcategoria_foreign` FOREIGN KEY (`id_itemsubcategoria`) REFERENCES `itemsubcategoria` (`id_itemsubcategoria`) ON DELETE CASCADE,
  ADD CONSTRAINT `documento_id_subcategoria_foreign` FOREIGN KEY (`id_subcategoria`) REFERENCES `subcategoria_documento` (`id_subcategoria`) ON DELETE CASCADE,
  ADD CONSTRAINT `documento_id_usuario_foreign` FOREIGN KEY (`id_usuario`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `estudiante_id_dedicacion_estudiante_foreign` FOREIGN KEY (`id_dedicacion_estudiante`) REFERENCES `dedicacion_estudiante` (`id_dedicacion_estudiante`) ON DELETE CASCADE,
  ADD CONSTRAINT `estudiante_id_dependencia_foreign` FOREIGN KEY (`id_dependencia`) REFERENCES `dependencia` (`id_dependencia`) ON DELETE CASCADE,
  ADD CONSTRAINT `estudiante_id_tipo_foreign` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id_tipo`) ON DELETE CASCADE,
  ADD CONSTRAINT `estudiante_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `factores`
--
ALTER TABLE `factores`
  ADD CONSTRAINT `factores_id_periodo_foreign` FOREIGN KEY (`id_periodo`) REFERENCES `periodo` (`id_periodo`) ON DELETE CASCADE,
  ADD CONSTRAINT `factores_id_preparaduria_foreign` FOREIGN KEY (`id_preparaduria`) REFERENCES `preparaduria` (`id_preparaduria`) ON DELETE CASCADE,
  ADD CONSTRAINT `factores_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_id_asignatura_foreign` FOREIGN KEY (`id_asignatura`) REFERENCES `asignatura` (`id_asignatura`) ON DELETE CASCADE,
  ADD CONSTRAINT `horario_id_preparaduria_foreign` FOREIGN KEY (`id_preparaduria`) REFERENCES `preparaduria` (`id_preparaduria`) ON DELETE CASCADE;

--
-- Filtros para la tabla `itemsubcategoria`
--
ALTER TABLE `itemsubcategoria`
  ADD CONSTRAINT `itemsubcategoria_id_subcategoria_foreign` FOREIGN KEY (`id_subcategoria`) REFERENCES `subcategoria_documento` (`id_subcategoria`) ON DELETE CASCADE;

--
-- Filtros para la tabla `jefes`
--
ALTER TABLE `jefes`
  ADD CONSTRAINT `jefes_id_dependencias_foreign` FOREIGN KEY (`id_dependencias`) REFERENCES `dependencias` (`id_dependencias`) ON DELETE CASCADE,
  ADD CONSTRAINT `jefes_id_users_foreign` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD CONSTRAINT `municipio_id_pais_foreign` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`) ON DELETE CASCADE,
  ADD CONSTRAINT `municipio_id_state_foreign` FOREIGN KEY (`id_state`) REFERENCES `states` (`id_state`) ON DELETE CASCADE;

--
-- Filtros para la tabla `oficio`
--
ALTER TABLE `oficio`
  ADD CONSTRAINT `oficio_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categoria_documento` (`id_categoria`) ON DELETE CASCADE,
  ADD CONSTRAINT `oficio_id_dependencia_foreign` FOREIGN KEY (`id_dependencia`) REFERENCES `dependencia` (`id_dependencia`) ON DELETE CASCADE,
  ADD CONSTRAINT `oficio_id_documento_foreign` FOREIGN KEY (`id_documento`) REFERENCES `documento` (`id_documento`) ON DELETE CASCADE,
  ADD CONSTRAINT `oficio_id_estados_foreign` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE,
  ADD CONSTRAINT `oficio_id_itemsubcategoria_foreign` FOREIGN KEY (`id_itemsubcategoria`) REFERENCES `itemsubcategoria` (`id_itemsubcategoria`) ON DELETE CASCADE,
  ADD CONSTRAINT `oficio_id_para_user_foreign` FOREIGN KEY (`id_para_user`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `oficio_id_subcategoria_foreign` FOREIGN KEY (`id_subcategoria`) REFERENCES `subcategoria_documento` (`id_subcategoria`) ON DELETE CASCADE,
  ADD CONSTRAINT `oficio_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `oficio_contratacion_preparador`
--
ALTER TABLE `oficio_contratacion_preparador`
  ADD CONSTRAINT `oficio_contratacion_preparador_id_concurso_foreign` FOREIGN KEY (`id_concurso`) REFERENCES `concurso` (`id_concurso`) ON DELETE CASCADE,
  ADD CONSTRAINT `oficio_contratacion_preparador_id_oficio_foreign` FOREIGN KEY (`id_oficio`) REFERENCES `oficio` (`id_oficio`) ON DELETE CASCADE,
  ADD CONSTRAINT `oficio_contratacion_preparador_id_periodo_foreign` FOREIGN KEY (`id_periodo`) REFERENCES `periodo` (`id_periodo`) ON DELETE CASCADE;

--
-- Filtros para la tabla `oficio_copia`
--
ALTER TABLE `oficio_copia`
  ADD CONSTRAINT `oficio_copia_id_dependencia_foreign` FOREIGN KEY (`id_dependencia`) REFERENCES `dependencias` (`id_dependencias`) ON DELETE CASCADE,
  ADD CONSTRAINT `oficio_copia_id_oficio_foreign` FOREIGN KEY (`id_oficio`) REFERENCES `oficio` (`id_oficio`) ON DELETE CASCADE;

--
-- Filtros para la tabla `plazas`
--
ALTER TABLE `plazas`
  ADD CONSTRAINT `plazas_id_asignatura_foreign` FOREIGN KEY (`id_asignatura`) REFERENCES `asignatura` (`id_asignatura`) ON DELETE CASCADE,
  ADD CONSTRAINT `plazas_id_concurso_foreign` FOREIGN KEY (`id_concurso`) REFERENCES `concurso` (`id_concurso`) ON DELETE CASCADE;

--
-- Filtros para la tabla `preparaduria`
--
ALTER TABLE `preparaduria`
  ADD CONSTRAINT `preparaduria_id_asignatura_foreign` FOREIGN KEY (`id_asignatura`) REFERENCES `asignatura` (`id_asignatura`) ON DELETE CASCADE,
  ADD CONSTRAINT `preparaduria_id_concurso_foreign` FOREIGN KEY (`id_concurso`) REFERENCES `concurso` (`id_concurso`) ON DELETE CASCADE,
  ADD CONSTRAINT `preparaduria_id_estados_foreign` FOREIGN KEY (`id_estados`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE,
  ADD CONSTRAINT `preparaduria_id_estudiante_foreign` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`) ON DELETE CASCADE,
  ADD CONSTRAINT `preparaduria_id_periodo_foreign` FOREIGN KEY (`id_periodo`) REFERENCES `periodo` (`id_periodo`) ON DELETE CASCADE;

--
-- Filtros para la tabla `preparaduria_asignaturas_cursando`
--
ALTER TABLE `preparaduria_asignaturas_cursando`
  ADD CONSTRAINT `preparaduria_asignaturas_cursando_id_asignatura_foreign` FOREIGN KEY (`id_asignatura`) REFERENCES `asignatura` (`id_asignatura`) ON DELETE CASCADE,
  ADD CONSTRAINT `preparaduria_asignaturas_cursando_id_preparaduria_foreign` FOREIGN KEY (`id_preparaduria`) REFERENCES `preparaduria` (`id_preparaduria`) ON DELETE CASCADE;

--
-- Filtros para la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD CONSTRAINT `profesor_id_dedicacion_foreign` FOREIGN KEY (`id_dedicacion`) REFERENCES `dedicacion` (`id_dedicacion`) ON DELETE CASCADE,
  ADD CONSTRAINT `profesor_id_dependencia_foreign` FOREIGN KEY (`id_dependencia`) REFERENCES `dependencia` (`id_dependencia`) ON DELETE CASCADE,
  ADD CONSTRAINT `profesor_id_tipo_foreign` FOREIGN KEY (`id_tipo`) REFERENCES `tipo` (`id_tipo`) ON DELETE CASCADE,
  ADD CONSTRAINT `profesor_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD CONSTRAINT `ruta_id_dependencia_foreign` FOREIGN KEY (`id_dependencia`) REFERENCES `dependencia` (`id_dependencia`) ON DELETE CASCADE,
  ADD CONSTRAINT `ruta_id_documento_foreign` FOREIGN KEY (`id_documento`) REFERENCES `documento` (`id_documento`) ON DELETE CASCADE,
  ADD CONSTRAINT `ruta_id_estado_foreign` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE,
  ADD CONSTRAINT `ruta_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `rutasp`
--
ALTER TABLE `rutasp`
  ADD CONSTRAINT `rutasp_id_dependencia_foreign` FOREIGN KEY (`id_dependencia`) REFERENCES `dependencia` (`id_dependencia`) ON DELETE CASCADE,
  ADD CONSTRAINT `rutasp_id_estado_foreign` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE,
  ADD CONSTRAINT `rutasp_id_preparaduria_foreign` FOREIGN KEY (`id_preparaduria`) REFERENCES `preparaduria` (`id_preparaduria`) ON DELETE CASCADE,
  ADD CONSTRAINT `rutasp_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `ruta_oficio`
--
ALTER TABLE `ruta_oficio`
  ADD CONSTRAINT `ruta_oficio_id_dependencia_foreign` FOREIGN KEY (`id_dependencia`) REFERENCES `dependencia` (`id_dependencia`) ON DELETE CASCADE,
  ADD CONSTRAINT `ruta_oficio_id_estado_foreign` FOREIGN KEY (`id_estado`) REFERENCES `estados` (`id_estados`) ON DELETE CASCADE,
  ADD CONSTRAINT `ruta_oficio_id_oficio_foreign` FOREIGN KEY (`id_oficio`) REFERENCES `oficio` (`id_oficio`) ON DELETE CASCADE,
  ADD CONSTRAINT `ruta_oficio_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sello`
--
ALTER TABLE `sello`
  ADD CONSTRAINT `sello_id_dependencia_foreign` FOREIGN KEY (`id_dependencia`) REFERENCES `dependencia` (`id_dependencia`) ON DELETE CASCADE,
  ADD CONSTRAINT `sello_id_users_foreign` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `selloescuela`
--
ALTER TABLE `selloescuela`
  ADD CONSTRAINT `selloescuela_id_dependencia_foreign` FOREIGN KEY (`id_dependencia`) REFERENCES `dependencia` (`id_dependencia`) ON DELETE CASCADE,
  ADD CONSTRAINT `selloescuela_id_users_foreign` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `states`
--
ALTER TABLE `states`
  ADD CONSTRAINT `states_id_pais_foreign` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`) ON DELETE CASCADE;

--
-- Filtros para la tabla `subcategoria_documento`
--
ALTER TABLE `subcategoria_documento`
  ADD CONSTRAINT `subcategoria_documento_id_categoria_foreign` FOREIGN KEY (`id_categoria`) REFERENCES `categoria_documento` (`id_categoria`) ON DELETE CASCADE;

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_ciudad_foreign` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_id_dependencia_foreign` FOREIGN KEY (`id_dependencia`) REFERENCES `dependencia` (`id_dependencia`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_id_municipio_foreign` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_id_pais_foreign` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_id_perfil_foreign` FOREIGN KEY (`id_perfil`) REFERENCES `perfil` (`id_perfil`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_id_state_foreign` FOREIGN KEY (`id_state`) REFERENCES `states` (`id_state`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
