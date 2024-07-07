-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: database:3306
-- Tiempo de generación: 12-06-2023 a las 13:16:21
-- Versión del servidor: 8.0.33
-- Versión de PHP: 8.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `SIBW`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cientificos`
--

CREATE TABLE `cientificos` (
  `id` int NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `nacimiento` date NOT NULL,
  `muerte` date NOT NULL,
  `ciudad` varchar(20) NOT NULL,
  `pais` varchar(20) NOT NULL,
  `texto` varchar(10000) NOT NULL,
  `imagen` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `cientificos`
--

INSERT INTO `cientificos` (`id`, `nombre`, `nacimiento`, `muerte`, `ciudad`, `pais`, `texto`, `imagen`) VALUES
(1, 'Stephen Hawking', '1942-01-08', '2018-03-14', 'Oxford', 'Reino Unido', 'Stephen Hawking (1942-2018) fue un físico teórico y cosmólogo británico reconocido mundialmente por sus contribuciones a la comprensión del universo y los agujeros negros. A los 21 años fue diagnosticado con una enfermedad degenerativa conocida como Esclerosis Lateral Amiotrófica (ELA) que lo dejó paralizado progresivamente, pero no le impidió seguir trabajando y haciendo importantes descubrimientos en su campo.\r\n\r\nHawking realizó importantes aportes a la física teórica, incluyendo la unificación de la relatividad general y la teoría cuántica, la formulación de la teoría de la radiación de los agujeros negros, la predicción de que los agujeros negros emiten radiación y la elaboración de una teoría completa de la creación del universo (la teoría del Big Bang). Sus libros de divulgación científica, como \"Breve historia del tiempo\", se convirtieron en bestsellers y popularizaron la ciencia para el público en general.\r\n\r\nAdemás de su trabajo en física teórica, Hawking fue un defensor activo de la divulgación científica y la conciencia sobre los desafíos globales, como el cambio climático y la necesidad de explorar el espacio. Falleció en 2018 a los 76 años de edad, dejando un legado científico y un impacto duradero en la cultura popular y la ciencia en todo el mundo.', 'imgs/Stephen.jpg'),
(2, 'Marie Curie', '1867-11-07', '1934-07-04', 'Varsovia', 'Polonia', 'Marie Curie (1867-1934) fue una científica polaca-francesa que realizó importantes contribuciones en el campo de la física y la química. Fue la primera mujer en ganar un Premio Nobel, y la primera persona en ganar dos premios Nobel en diferentes áreas de la ciencia.\r\n\r\nMarie Curie es conocida por su trabajo pionero en el estudio de la radiactividad, que ella misma descubrió junto a su esposo Pierre Curie. En 1898, descubrieron dos elementos radiactivos, el polonio y el radio. En 1903, Marie Curie ganó el Premio Nobel de Física junto a su esposo y Henri Becquerel por sus investigaciones sobre la radiación. En 1911, ganó su segundo Premio Nobel, esta vez en Química, por su descubrimiento del radio y sus propiedades.\r\n\r\nAdemás de sus logros científicos, Marie Curie se destacó por su coraje y determinación en una época en que las mujeres eran discriminadas en el campo de la ciencia. Trabajó incansablemente a pesar de los obstáculos y la falta de reconocimiento, y se convirtió en un modelo a seguir para las mujeres en todo el mundo. A pesar de sufrir de enfermedades relacionadas con la radiación, continuó trabajando en su investigación hasta el final de su vida, dejando un legado duradero en la ciencia y la historia.', 'imgs/Marie.jpg'),
(3, 'Galileo Galilei', '1564-02-15', '1642-01-08', 'Pisa', 'Italia', 'Galileo Galilei (1564-1642) fue un físico, matemático, astrónomo e inventor italiano considerado uno de los padres de la ciencia moderna. Galileo realizó importantes contribuciones en muchos campos, incluyendo la física, la astronomía y la ingeniería.\r\n\r\nGalileo es más conocido por su defensa del heliocentrismo, la teoría de que la Tierra y otros planetas giran alrededor del Sol. Sus observaciones con el telescopio, que él mismo mejoró, lo llevaron a descubrir las fases de Venus, las cuatro lunas más grandes de Júpiter y otros objetos celestes. Estos descubrimientos apoyaron la teoría heliocéntrica de Copérnico y contradecían la idea geocéntrica del universo defendida por la iglesia católica.\r\n\r\nLa defensa de Galileo del heliocentrismo lo llevó a un conflicto con la iglesia católica, que lo acusó de herejía y lo obligó a retractarse públicamente de sus ideas. Pasó el resto de su vida bajo arresto domiciliario y escribió algunos de sus trabajos más importantes durante ese tiempo, incluyendo su obra maestra \"Diálogo sobre los dos sistemas del mundo\", donde presentó argumentos a favor del heliocentrismo. Galileo dejó un legado duradero en la ciencia y la historia, y es recordado como uno de los mayores científicos de todos los tiempos.', 'imgs/GalileoGalilei.jpg'),
(4, 'Dmitri Mendeléyev', '1834-02-08', '1907-02-02', 'Tobolsk', 'Rusia', 'Dmitri Mendeléyev (1834-1907) fue un químico ruso conocido por crear la primera versión de la tabla periódica de los elementos. Su trabajo en la química y la física lo llevó a hacer importantes descubrimientos y contribuciones en muchos campos científicos.\r\n\r\nMendeléyev comenzó su trabajo en la tabla periódica en la década de 1860, cuando estaba enseñando química en la Universidad de San Petersburgo. Trabajó para organizar los elementos conocidos en una tabla en la que los elementos con propiedades similares estuvieran agrupados juntos. Después de años de trabajo, en 1869 presentó su versión de la tabla periódica, que se convirtió en la base de la tabla que se utiliza hoy en día.\r\n\r\nAdemás de su trabajo en la tabla periódica, Mendeléyev hizo importantes contribuciones en la química orgánica, la termodinámica y la geología. Escribió varios libros y artículos científicos y fue reconocido con numerosos premios y honores durante su vida. Su trabajo en la tabla periódica y la organización de los elementos allanó el camino para muchos avances posteriores en la química y la física, y su legado sigue siendo relevante en la ciencia moderna.', 'imgs/Mendeleyev.jpg'),
(5, 'Nikola Tesla', '1856-07-10', '1943-01-07', 'Smiljan', 'Croacia', 'Nikola Tesla (1856-1943) fue un inventor, ingeniero eléctrico y físico serbio-estadounidense, conocido por sus numerosas invenciones y contribuciones en el campo de la electricidad y el electromagnetismo.\r\n\r\nTesla trabajó con Thomas Edison en la mejora de la tecnología eléctrica, pero sus ideas divergían con las de Edison, lo que los llevó a tener una relación conflictiva. Tesla inventó la corriente alterna (AC), que es la forma predominante de distribución de energía eléctrica en todo el mundo. También inventó el transformador, el motor de corriente alterna y la bobina Tesla, que aún se utilizan en la actualidad en muchos dispositivos electrónicos.\r\n\r\nA lo largo de su vida, Tesla presentó numerosas patentes y trabajó en proyectos ambiciosos, como la transmisión de energía inalámbrica y la comunicación global inalámbrica. Tesla también contribuyó a la teoría del campo electromagnético y trabajó en el desarrollo de la radio. A pesar de sus numerosas contribuciones a la ciencia y la tecnología, Tesla murió en la pobreza, pero su legado sigue siendo relevante en la ciencia y la tecnología modernas.', 'imgs/Tesla.jpeg'),
(6, 'Santiago Ramón y Cajal', '1852-05-01', '1934-10-17', 'Petilla de Aragón', 'España', 'Santiago Ramón y Cajal (1852-1934) fue un médico español conocido por su trabajo pionero en el campo de la neurociencia. Fue el primer científico en demostrar que el cerebro está compuesto de células individuales llamadas neuronas y que la comunicación entre ellas se lleva a cabo a través de sinapsis.\r\n\r\nRamón y Cajal realizó numerosos estudios microscópicos de tejidos cerebrales, incluyendo la observación de neuronas y la descripción de su estructura y función. También contribuyó al estudio de enfermedades neurológicas y psiquiátricas, como la epilepsia y la esquizofrenia.\r\n\r\nPor sus contribuciones a la neurociencia, Ramón y Cajal fue galardonado con el Premio Nobel de Fisiología o Medicina en 1906. Es considerado uno de los fundadores de la neurociencia moderna y su trabajo sentó las bases para futuras investigaciones en este campo. Además de su trabajo científico, Ramón y Cajal también fue un artista talentoso y dibujó numerosas ilustraciones de sus observaciones microscópicas.', 'imgs/RamonyCajal.jpg'),
(7, 'Erwin Schrödinger', '1887-08-12', '1961-01-04', 'Viena', 'Austria', 'Erwin Schrödinger (1887-1961) fue un físico austríaco conocido por sus contribuciones a la teoría cuántica. En 1933, recibió el Premio Nobel de Física por su trabajo en la formulación de la ecuación de Schrödinger, que describe el comportamiento de las partículas subatómicas.\r\n\r\nAdemás de su trabajo en la teoría cuántica, Schrödinger también realizó investigaciones en la biología teórica, abordando preguntas fundamentales sobre la vida y la conciencia. En su libro \"¿Qué es la vida?\", Schrödinger propuso que los genes están hechos de una sustancia que él llamó \"aperiodicidad\", y que esta sustancia proporciona la base física para la herencia.\r\n\r\nSchrödinger también fue un filósofo influyente, y sus ideas sobre la naturaleza de la realidad y la conciencia han sido objeto de debate y discusión en la comunidad científica y filosófica. Su legado sigue siendo relevante en la física, la biología y la filosofía, y sus contribuciones han allanado el camino para futuras investigaciones y descubrimientos en estos campos.', 'imgs/Schrodinger.jpg'),
(8, 'Rosalind Franklin', '1920-06-25', '1958-04-16', 'Londres', 'Reino Unido', 'Rosalind Franklin (1920-1958) fue una química y cristalógrafa británica que contribuyó significativamente a la comprensión de la estructura del ADN. Trabajó en el King\'s College de Londres, donde utilizó la técnica de difracción de rayos X para estudiar la estructura de las moléculas biológicas.\r\n\r\nFranklin realizó importantes contribuciones a la comprensión de la estructura de las fibras de proteína y de los virus, pero es más conocida por su trabajo en el estudio de la estructura del ADN. Su trabajo con la técnica de difracción de rayos X permitió a su equipo deducir la forma de doble hélice del ADN y la disposición de los nucleótidos que componen la molécula.\r\n\r\nA pesar de su importante contribución al descubrimiento de la estructura del ADN, Franklin no recibió el reconocimiento que merecía en su momento debido a la falta de reconocimiento y respeto por las mujeres en la ciencia. Trágicamente, Franklin falleció de cáncer de ovario a los 37 años, antes de que el descubrimiento del ADN recibiera el Premio Nobel en 1962. A pesar de ello, su trabajo sigue siendo una inspiración para científicos y mujeres en la ciencia en todo el mundo.', 'imgs/Rosalind.jpg'),
(9, 'Thomas Edison', '1847-02-11', '1931-10-18', 'Ohio', 'Estados Unidos', 'Thomas Edison (1847-1931) fue un inventor estadounidense y un icono en la historia de la tecnología y la innovación. Su invención más famosa es la bombilla eléctrica incandescente, que revolucionó la iluminación y cambió la forma en que las personas vivían y trabajaban. Además, Edison también creó el primer sistema eléctrico de distribución de energía, lo que permitió que la electricidad fuera accesible para una gran cantidad de personas.\r\n\r\nA lo largo de su carrera, Edison registró más de mil patentes en diversos campos, desde la electrificación y la tecnología hasta la comunicación y la radiotelegrafía. Fue un inventor prolífico y también un emprendedor exitoso que fundó la General Electric Company, una de las corporaciones más grandes y poderosas en el mundo de la tecnología y la energía. Su legado e influencia se extienden más allá de sus invenciones y patentes, y su ejemplo sigue inspirando a innovadores y empresarios de todo el mundo.\r\n\r\nA pesar de sus muchos logros, Edison también enfrentó desafíos y fracasos en su carrera. Sin embargo, siempre perseveró y continuó innovando hasta el final de su vida. Su legado ha dejado una huella imborrable en la historia de la tecnología y la ciencia, y su influencia continúa inspirando a nuevas generaciones de inventores y empresarios.', 'imgs/Edison.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `ref` int NOT NULL,
  `id` int NOT NULL,
  `autor` varchar(30) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `comentario` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`ref`, `id`, `autor`, `fecha`, `hora`, `comentario`) VALUES
(0, 1, 'Diego Navarro', '2023-03-15', '18:07:44', 'Stephen Hawking ha sido la fuente de inspiración para mi vida en el ámbito científico, siempre le estaré agradecido.\r\n'),
(1, 1, 'Javier Méndez', '2023-03-18', '21:36:56', 'La forma que tiene de explicar la ciencia de una manera sencilla y entretenida a través de sus libros me ha hecho aficionarme a ellos.\r\n'),
(2, 2, 'David Román', '2023-04-04', '21:22:38', 'Me encanta Marie Curie.'),
(3, 2, 'Pablo', '2023-04-03', '16:07:05', 'Que grande Marie Curie.'),
(4, 3, 'Juan', '2023-04-16', '15:22:03', 'Me encanta Galileo Galilei.'),
(5, 3, 'Javi', '2023-04-19', '21:10:47', 'Que grande Galileo Galilei.'),
(6, 4, 'Javi', '2023-03-22', '17:09:13', 'Me encanta Mendeléyev.'),
(7, 4, 'Juan', '2023-04-12', '16:09:49', 'Que grande Mendeléyev.'),
(8, 5, 'Diego', '2023-04-25', '18:10:12', 'Que grande Tesla.'),
(9, 5, 'Onofre', '2023-04-21', '17:10:38', 'Me encanta Tesla.'),
(10, 6, 'Felipe', '2023-04-09', '10:10:59', 'Siempre tuve la duda de si eran dos personas o una.'),
(11, 6, 'José', '2023-04-26', '07:11:29', 'Que grande Santiago.'),
(12, 7, 'Denis', '2023-04-30', '16:11:49', 'Siempre me fascinó el experimento del gato.'),
(13, 7, 'Ponce', '2023-04-16', '09:12:32', 'Tiene un nombre complicado de recordar.'),
(14, 8, 'Alberto', '2023-04-10', '10:12:57', 'Rosalind fue una persona maravillosa.'),
(15, 8, 'Victor', '2023-04-28', '21:06:19', 'Qué importantes fueron sus investigaciones para la humanidad.'),
(16, 9, 'Fernando', '2023-04-12', '11:14:52', 'Dicen que lo de la bombilla fue un robo...'),
(17, 9, 'Lucía', '2023-04-24', '16:15:17', 'Que grande Edison.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cosasInteres`
--

CREATE TABLE `cosasInteres` (
  `id` int NOT NULL,
  `descripcionInteres1` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `enlaceInt1` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descripcionInt1` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `enlaceInt2` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descripcionInt2` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descripcionInteres2` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `enlaceInt3` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descripcionInt3` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `cosasInteres`
--

INSERT INTO `cosasInteres` (`id`, `descripcionInteres1`, `enlaceInt1`, `descripcionInt1`, `enlaceInt2`, `descripcionInt2`, `descripcionInteres2`, `enlaceInt3`, `descripcionInt3`) VALUES
(1, 'Aquí se muestran enlaces de interés sobre Stephen Hawking y sus logros, así como un enlace para ver todos los libros publicados por él.', 'https://es.wikipedia.org/wiki/Stephen_Hawking', 'WIKIPEDIA DE STEPHEN HAWKING', 'https://www.todostuslibros.com/autor/hawking-stephen', 'TODOS LOS LIBROS DE STEPHEN HAWKING', 'Así mismo, se hizo una película sobre la vida completa de Stephen Hawking, la cual puede ser vista en el siguiente enlace de manera legal.', 'https://www.primevideo.com/detail/La-Teor%C3%ADa-del-Todo/0JGK0436YR7O6JNTAUGGZ8PNV4?_encoding=UTF8&language=es_ES', 'PELICULA: \"LA TEORÍA DEL TODO\"'),
(2, 'Aquí se muestran enlaces de interés sobre Marie Curie.', 'https://es.wikipedia.org/wiki/Marie_Curie', 'WIKIPEDIA DE MARIE CURIE', 'https://www.conicyt.cl/mujeres-en-ciencia-y-tecnologia/mujeres-destacadas/premios-nobel/marie-curie/', 'MARIE CURIE CONICYT', '', '', ''),
(3, 'Aquí se muestran enlaces de interés sobre Galileo Galilei.', 'https://es.wikipedia.org/wiki/Galileo_Galilei', 'WIKIPEDIA DE GALILEO GALILEI', '', '', '', '', ''),
(4, 'Aquí se muestran enlaces de interés sobre Dimitri Mendeléyev.', 'https://es.wikipedia.org/wiki/Dmitri_Mendel%C3%A9yev', 'WIKIPEDIA DIMITRI MENDELÉYEV', '', '', '', '', ''),
(5, 'Aquí se muestran enlaces de interés sobre Nikola Tesla.', 'https://es.wikipedia.org/wiki/Nikola_Tesla', 'WIKIPEDIA DE NIKOLA TESLA', '', '', '', '', ''),
(6, 'Aquí se muestran enlaces de interés sobre Santiago Ramón y Cajal.', 'https://es.wikipedia.org/wiki/Santiago_Ram%C3%B3n_y_Cajal', 'WIKIPEDIA DE SANTIAGO RAMÓN Y CAJAL', '', '', '', '', ''),
(7, 'Aquí se muestran enlaces de interés sobre Erwin Schrödinger.', 'https://es.wikipedia.org/wiki/Erwin_Schr%C3%B6dinger', 'WIKIPEDIA DE ERWIN SCHRÖDINGER', '', '', '', '', ''),
(8, 'Aquí se muestran enlaces de interés sobre Rosalind Franklin.', 'https://es.wikipedia.org/wiki/Rosalind_Franklin', 'WIKIPEDIA DE ROSALIND FRANKLIN', '', '', '', '', ''),
(9, 'Aquí se muestran enlaces de interés sobre Thomas Edison.', 'https://es.wikipedia.org/wiki/Thomas_Alva_Edison', 'WIKIPEDIA DE THOMAS EDISON', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id` int NOT NULL,
  `imagen1` varchar(100) NOT NULL,
  `imagen2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id`, `imagen1`, `imagen2`) VALUES
(1, '/imgs/StephenHawking/Stephen1.jpg', '/imgs/StephenHawking/Stephen2.jpg'),
(2, '/imgs/MarieCurie/Marie1.jpeg', '/imgs/MarieCurie/Marie2.jpg'),
(3, '/imgs/GalileoGalilei/Galileo1.jpg', '/imgs/GalileoGalilei/Galileo2.jpg'),
(4, '/imgs/Mendeleyev/Mende1.jpg', '/imgs/Mendeleyev/Mende2.jpg'),
(5, '/imgs/Tesla/Tesla1.png', '/imgs/Tesla/Tesla2.jpg'),
(6, '/imgs/RamonyCajal/RyC1.jpeg', '/imgs/RamonyCajal/RyC2.jpeg'),
(7, '/imgs/Schrodinger/Schro1.jpg', '/imgs/Schrodinger/Schro2.jpeg'),
(8, '/imgs/Rosalind/Rosalind1.jpg', '/imgs/Rosalind/Rosalind2.jpg'),
(9, '/imgs/Edison/Edison1.jpg', '/imgs/Edison/Edison2.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `palabras`
--

CREATE TABLE `palabras` (
  `nombre` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `palabras`
--

INSERT INTO `palabras` (`nombre`) VALUES
('discapacitado'),
('maricon'),
('muerto'),
('puta'),
('puto'),
('retrasada'),
('retrasado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `username` varchar(50) NOT NULL,
  `password` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rol` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nombre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`username`, `password`, `rol`, `nombre`, `apellidos`, `email`) VALUES
('denisvs', '$2y$10$7B3FS4wQyiA3YjTfhneO/uSFYMo.QIkFA7y7JXruDvOxpsPlkASZK', NULL, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cientificos`
--
ALTER TABLE `cientificos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`ref`),
  ADD KEY `idAutorComm` (`id`);

--
-- Indices de la tabla `cosasInteres`
--
ALTER TABLE `cosasInteres`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `palabras`
--
ALTER TABLE `palabras`
  ADD PRIMARY KEY (`nombre`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`username`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `idAutorComm` FOREIGN KEY (`id`) REFERENCES `cientificos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `cosasInteres`
--
ALTER TABLE `cosasInteres`
  ADD CONSTRAINT `idAutorInteres` FOREIGN KEY (`id`) REFERENCES `cientificos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `idAutorFotos` FOREIGN KEY (`id`) REFERENCES `cientificos` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
