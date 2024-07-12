-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-07-2024 a las 02:14:15
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
-- Base de datos: `proyectopeliculas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `peliculas`
--

CREATE TABLE `peliculas` (
  `id_pelicula` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `genero` varchar(100) NOT NULL,
  `duracion` varchar(20) NOT NULL,
  `director` varchar(100) NOT NULL,
  `reparto` varchar(500) NOT NULL,
  `sinopsis` varchar(1000) NOT NULL,
  `imagen` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `peliculas`
--

INSERT INTO `peliculas` (`id_pelicula`, `titulo`, `genero`, `duracion`, `director`, `reparto`, `sinopsis`, `imagen`) VALUES
(1, 'Intensa mente 2', ' Infantil/Comedia', '1h 36m', 'Kelsey Mann', 'Mar Bordallor, Beatriz Berciano, Fernando Cabrera', 'La trama de Inside Out 2 retoma la historia de Riley, la niña de 11 años cuya vida cambió drásticamente en la primera película. En esta secuela, Riley ya es una adolescente, enfrentándose a los desafíos típicos de esta etapa de la vida, como el estrés, las nuevas responsabilidades y las fluctuaciones emocionales. Las cinco emociones personificadas - Alegría, Tristeza, Miedo, Asco e Ira - volverán a desempeñar un papel crucial en la vida de Riley, guiándola y, en ocasiones, complicando su camino.', 'intensamente_2.jpeg'),
(2, 'El planeta de los simios: Nuevo reino', 'Acción/Ciencia ficción', '2h 25m', 'Wes Ball', 'Freya Allan, Owen Teague', 'Muchos años después de la época de César, los simios se han dividido en clanes y los hombres se han vuelto salvajes. Un clan brutal secuestra a la tribu del chimpancé Noa, pero, con la ayuda de una humana, emprende la misión de rescatarlos.', 'planeta_de_los_simios.jpeg'),
(3, 'Intensa mente', ' Infantil/Comedia', '1h 34m', 'Pete Docter', 'Amy Poehler, Phyllis Smith, Richard Kind, Bill Hader, Lewis Black, Mindy Kaling', 'Cuando Riley se muda, sus emociones, Alegría, Temor, Furia, Desagrado y Tristeza trabajan juntos, pero cuando Alegría y Tristeza se pierden, deben viajar por lugares desconocidos para volver a casa.', 'intensamente.jpeg'),
(4, 'Bad Boys 4', 'Acción/Comedia', '1h 55m', 'Adil El Arbi, Bilall Fallah', 'Will Smith, Martin Lawrence, Vanessa Hudgens, Alexander Ludwig', 'Los detectives Mike Lowrey (Will Smith) y Marcus Burnett (Martin Lawrence) vuelven a hacer de las suyas. Ahora Lowery pasa por la crisis de mediana edad y Burnett está pensando en retirarse. Eso sí, cuando les llega un nuevo caso que resolver, volverán a trabajar juntos por última vez. Esta vez, ante la nueva amenaza que se les presenta, tendrán que trabajar codo con codo con una moderna unidad policial que tendrá algunas diferencias con los dos detectives de la vieja escuela. ', 'bad_boys_4.jpeg'),
(5, 'Amigos Imaginarios', 'Animación/Comedia/Drama', '1h 44m', 'John Krasinski', 'Cailey Fleming, Ryan Reynolds, John Krasinski, Fiona Shaw', 'Sigue a una niña que pasa por una experiencia difícil y entonces empieza a ver a los amigos imaginarios de todo el mundo que se han quedado atrás cuando sus amigos de la vida real han crecido.', 'amigos_imaginarios.jpeg'),
(6, 'MR-9: Ejecuta o Muere', 'Acción/Drama/Suspenso', '1h 46m', 'Asif Akbar', 'Frank Grillo, Michael Jai White, Kelly Greyson', 'Un espía de élite de Bangladesh forma equipo con un agente de la CIA para acabar con una organización criminal internacional dirigida por un despiadado hombre de negocios.', 'mr_9.jpeg'),
(7, 'Sueño de fuga', 'Drama', '2h 22min', 'Frank Darabont', 'Tim Robbins, Morgan Freeman, Bob Gunton', 'El banquero Andy Dufresne es arrestado por matar a su esposa y amante. Tras una dura adaptación, intenta mejorar las condiciones de la prisión y dar esperanza a sus compañeros.', 'suenio_de_fuga.jpeg'),
(8, 'El padrino', 'Crimen/Drama', '2h 55min', 'Francis Ford Coppola', 'Marlon Brando, Al Pacino, James Caan', 'El patriarca de una organización criminal transfiere el control de su clandestino imperio a su reacio hijo.', 'el_padrino.jpeg'),
(9, 'El padrino 2', 'Crimen/Drama', '3h 22min', 'Francis Ford Coppola', 'Al Pacino, Robert De Niro, Robert Duvall', 'Relato de la vida temprana y la carrera de Vito Corleone en la ciudad de Nueva York en 1920, mientras que su hijo, Michael, se expande y refuerza su control sobre el sindicato de delitos familiares.', 'el_padrino_2.jpeg'),
(10, 'El padrino 3', 'Crimen/Drama', '2h 42min', 'Francis Ford Coppola', 'Al Pacino, Diane Keaton, Andy García', 'En medio de tratar de legitimar sus negocios en la ciudad de Nueva York e Italia en 1979, el anciano mafioso Don Michael Corleone busca confesar sus pecados, mientras toma a su sobrino Vincent Mancini bajo su protección.', 'el_padrino_3.jpeg'),
(11, 'La lista de Schindler', 'Biografía/Drama/Historia', '3h 15min', 'Steven Spielberg', 'Liam Neeson, Ralph Fiennes, Ben Kingsley', 'Después de presenciar la persecución judía por parte de los nazis en la Polonia ocupada por los alemanes, el empresario Oskar Schindler se preocupa por su fuerza laboral judía.', 'lista_schindler.jpeg'),
(12, '12 hombres en pugna', 'Crimen/Drama', '1h 36m', 'Sidney Lumet', '\r\nHenry Fonda, Lee J. Cobb, Martin Balsam', 'Un jurado que se retira intenta evitar un error judicial al obligar a sus colegas a reconsiderar la evidencia.', '12_hombres_en_pugna.jpeg'),
(13, 'El viaje de Chihiro', 'Animación/Aventura/Familia', '2h 5min', 'Hayao Miyazaki', 'Daveigh Chase, Suzanne Pleshette, Miyu Irino', 'Durante el traslado de su familia a los suburbios, una niña de 10 años se adentra en un mundo gobernado por dioses, brujas y espíritus, y donde los humanos se convierten en bestias.', 'el_viaje_de_chihiro.jpeg'),
(14, 'Batman: El caballero de la noche', 'Acción/Crimen/Drama', '2h 32m', 'Christopher Nolan', '\r\nChristian Bale, Heath Ledger, Aaron Eckhart', 'Cuando el Joker emerge causando caos y violencia en Gotham, el caballero de la noches deberá aceptar una de las pruebas psicológicas y físicas más difíciles para poder luchar con las injusticias del enemigo.', 'batman_caballero_de_la_noche.jpeg'),
(15, 'Milagros inesperados', 'Crimen/Drama/Fantasía', '3h 9min', 'Frank Darabont', 'Tom Hanks, Michael Clarke Duncan, David Morse', 'La vida de los guardias en el corredor de la muerte se ve afectada por uno de los reclusos: un hombre negro acusado de violar y asesinar a un niño, pero que tiene un misterioso don.', 'milagros_inesperados.jpeg'),
(16, 'Parásitos', 'Drama/Suspenso', '2h 12m', 'Bong Joon Ho', 'Song Kang, hoLee Sun, kyunCho Yeo-jeong', 'Desempleados, la familia de Ki-taek toma interés en la acaudalada y glamorosa vida de los Park, hasta que se ven envueltos en un inesperado incidente', 'parasitos.jpeg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  ADD PRIMARY KEY (`id_pelicula`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `peliculas`
--
ALTER TABLE `peliculas`
  MODIFY `id_pelicula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
