-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 30, 2023 at 03:42 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pr7`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `weigth` int NOT NULL,
  `category` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `weigth`, `category`) VALUES
(1, 'Стул HOFF Julia 56х94х65.5 см, Серый', 5999, 5, 4),
(2, 'Кресло-кокон подвесное Fisht Белый, Коричневый', 15999, 29, 3),
(3, 'Кресло-кокон подвесное Fisht 135х190х100 см, Белый, Бежевый', 15999, 29, 3),
(4, 'Кресло-кокон подвесное Fisht 135х190х100 см, Белый, Зеленый', 15999, 29, 3),
(5, 'Диван-кровать SCANDICA Норман мини', 24999, 64, 2),
(6, 'Угловой диван-кровать Каир с универсальным углом', 21999, 90, 2),
(7, 'Диван-кровать Милена ', 37999, 71, 2),
(8, 'Диван BRADEX Picasso', 62799, 29, 2),
(9, 'Каркас кровати Соренто 90х200 см', 6599, 35, 1),
(10, 'Кровать с подъёмным механизмом Sandra 160х200 см', 28999, 140, 1),
(11, 'Письменный стол SCANDICA Хортен', 8999, 31, 5),
(12, 'Кухонный стол Бостон 222.7х77х90 см, Дуб', 14999, 44, 5),
(13, 'Кухонный стол раздвижной Trip 120х75х80 см, Серый', 17999, 41, 5),
(14, 'Журнальный стол Лофт', 2299, 13, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
