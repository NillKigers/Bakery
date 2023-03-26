-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 26 2023 г., 10:14
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Структура таблицы `Klienti`
--

CREATE TABLE `Klienti` (
  `id klienta` int NOT NULL,
  `ID produkcii` int DEFAULT NULL,
  `ID sklada` int DEFAULT NULL,
  `Telefon` varchar(50) DEFAULT NULL,
  `Familiya` varchar(50) DEFAULT NULL,
  `Imya` varchar(50) DEFAULT NULL,
  `Otchestvo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Produkciya`
--

CREATE TABLE `Produkciya` (
  `ID produkcii` int NOT NULL,
  `Vid produkcii` varchar(30) DEFAULT NULL,
  `Cena` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `Sklad`
--

CREATE TABLE `Sklad` (
  `ID sklada` int NOT NULL,
  `Vid produkcii` varchar(30) DEFAULT NULL,
  `Kolichestvo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `userName` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `userName`, `phone`) VALUES
(2, 'userName', '7 914 1997263'),
(3, 'userName', '+7 914 299 12 12');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Klienti`
--
ALTER TABLE `Klienti`
  ADD PRIMARY KEY (`id klienta`);

--
-- Индексы таблицы `Produkciya`
--
ALTER TABLE `Produkciya`
  ADD PRIMARY KEY (`ID produkcii`);

--
-- Индексы таблицы `Sklad`
--
ALTER TABLE `Sklad`
  ADD PRIMARY KEY (`ID sklada`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Klienti`
--
ALTER TABLE `Klienti`
  MODIFY `id klienta` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Produkciya`
--
ALTER TABLE `Produkciya`
  MODIFY `ID produkcii` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `Sklad`
--
ALTER TABLE `Sklad`
  MODIFY `ID sklada` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
