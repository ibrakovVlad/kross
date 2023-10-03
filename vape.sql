-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 01 2023 г., 13:54
-- Версия сервера: 10.4.26-MariaDB
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `vape`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `callback_data` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `text`, `callback_data`) VALUES
(10, 'A BATHING APE', 1),
(11, 'ADIDAS', 2),
(12, 'NIKE', 3),
(13, 'NEW BALANCE', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `categories_product`
--

CREATE TABLE `categories_product` (
  `id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `callback_data` varchar(255) NOT NULL,
  `categories_key` varchar(255) NOT NULL,
  `product_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `categories_product`
--

INSERT INTO `categories_product` (`id`, `text`, `callback_data`, `categories_key`, `product_key`) VALUES
(1, 'BAPE STA SHARK', '1', '10', '7'),
(4, 'ADIDAS CAMPUS 00S BLACK', '2', '11', '8'),
(5, 'ADIDAS CAMPUS 00S GREEN', '2', '11', '9'),
(6, 'ADIDAS CAMPUS 80S SOUTH PARK', '2', '13', '10'),
(7, 'ADIDAS CAMPUS x BAD BUNNY BLACK', '2', '14', '11'),
(8, 'ADIDAS CAMPUS x BAD BUNNY GREY', '2', '14', '12'),
(9, 'ADIDAS CAMPUS x BAD BUNNY BEIGE', '2', '14', '13'),
(10, 'ADIDAS FORUM x BAD BUNNY BLACK', '2', '15', '14'),
(11, 'ADIDAS FORUM x BAD BUNNY GRAY', '2', '15', '15'),
(12, 'ADIDAS FORUM x BAD BUNNY WHITE', '2', '15', '16'),
(13, 'ADIDAS NEIGHBORHOOD X ADIMATIC', '2', '16', '17'),
(14, 'ADIDAS FORUM 84 LOW x OFF WHITE', '2', '17', '18'),
(15, 'ADIDAS FORUM CENTENNIAL 85 ', '2', '17', '19'),
(16, 'ADIDAS RETROPY E5 WHITE&PURPLE', '2', '18', '20'),
(17, 'ADIDAS RETROPY E5 BLACK&WHITE', '2', '18', '21'),
(18, 'ADIDAS SAMBA CLASSIC', '2', '19', '22'),
(19, 'ADIDAS SUPERSTAR HEART', '2', '20', '23'),
(20, 'ADIDAS YEEZY BOOST 500 BLACK', '2', '21', '24'),
(21, 'ADIDAS YEEZY BOOST 700 BLACK', '2', '22', '25'),
(22, 'ADIDAS YEEZY BOOST 700 BEIGE', '2', '22', '26'),
(23, 'NEW BALANCE 2002R GRAY', '4', '23', '27'),
(24, 'NEW BALANCE 530 WHITE', '4', '24', '28'),
(25, 'NEW BALANCE 574 GRAY', '4', '26', '29'),
(26, 'NIKE AIR FORCE 1 ARMY GREEN', '3', '27', '30'),
(27, 'NIKE AIR FORCE 1 BLACK', '3', '27', '31'),
(28, 'NIKE AIR FORCE 1 LX', '3', '27', '32'),
(29, 'NIKE AIR FORCE VALENTINE DAY 2021', '3', '27', '33'),
(30, 'NIKE AIR FORCE VALENTINE DAY 2023', '3', '27', '34'),
(31, 'NIKE AIR FORCE 1 SKELETON BLACK', '3', '27', '35'),
(32, 'NIKE AIR FORCE 1 WHITE ', '3', '27', '36'),
(33, 'МЕХОВЫЕ NIKE AIR FORCE 1 LOW BLACK', '3', '27', '37'),
(34, 'МЕХОВЫЕ NIKE AIR FORCE 1 LX', '3', '27', '38'),
(35, 'MEXОВЫЕ NIKE AIR FORCE 1 MID GORE TEX BOOT BLACK', '3', '28', '39'),
(36, 'NIKE AIR FORCE 1 MID GORE TEX BOOT BROWN', '3', '28', '40'),
(37, 'NIKE AIR JORDAN 1 LOW TRAVIS SKOTT BLACK DARK BROWN', '3', '29', '41'),
(38, 'NIKE AIR JORDAN 1 LOW TRAVIS SKOTT FANTOM BLACK', '3', '29', '42'),
(39, 'NIKE AIR JORDAN 1 LOW TRAVIS SKOTT FRAGMENT DESIGN', '3', '29', '43'),
(40, 'NIKE AIR JORDAN 4 RETRO BLACK CAT', '3', '30', '44'),
(41, 'NIKE AIR JORDAN 4 RETRO RED THUNDER', '3', '30', '45'),
(42, 'NIKE AIR JORDAN 4 RETRO CANYON PURPLE', '3', '30', '46'),
(43, 'NIKE AIR JORDAN 4 RETRO OREO', '3', '30', '47'),
(44, 'NIKE AIR JORDAN 4 RETRO PSG', '3', '30', '48'),
(45, 'NIKE AIR JORDAN 4 RETRO UNIVERSITY BLUE', '3', '30', '49'),
(46, 'NIKE AIR MAX 96II', '3', '31', '50'),
(47, 'NIKE AIR MAX PLUS TN', '3', '31', '51'),
(48, 'SKEPTA X NIKE AIR MAX TAILWIND', '3', '31', '52'),
(49, 'NIKE BLAZER LOW WHITE&BLUE', '3', '32', '53'),
(50, 'NIKE SACAI BLACK&WHITE', '3', '33', '54'),
(51, 'NIKE SACAI GREEN&YELLOW', '3', '33', '55'),
(52, 'NIKE SB DUNK LOW LOBSTER BLUE', '3', '34', '56'),
(53, 'NIKE SB DUNK LOW LOBSTER GREEN', '3', '34', '57'),
(54, 'NIKE SB DUNK LOW LOBSTER PURPLE', '3', '34', '58'),
(55, 'NIKE DUNK SB MUMMY', '3', '34', '59'),
(56, 'NIKE DUNK SB CACTUS JACK', '3', '34', '60'),
(57, 'NIKE DUNK SB STRANGE LOVE', '3', '34', '61'),
(58, 'NIKE SB DUNK LOW ATOMIC PINK', '3', '34', '62'),
(59, 'NIKE SB DUNK LOW OTOMO KATSUHIRO', '3', '34', '63'),
(60, 'NIKE SB DUNK LOW GOLF CLUB 58 ', '3', '34', '64'),
(61, 'NIKE SB DUNK PIGEON PURPLE', '3', '34', '65'),
(62, 'NIKE SB DUNK LOW WHY SO SAD?', '3', '34', '66'),
(63, 'NIKE SB DUNK LOW VALENTINE DAY', '3', '34', '67'),
(64, 'NIKE SB DUNK LOW PIGEON BLACK&RED', '3', '34', '68'),
(65, 'NIKE STUSSY AIR ZOOM', '3', '35', '69');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `descript` text NOT NULL,
  `price` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `image`, `name`, `descript`, `price`, `key`) VALUES
(1, 'https://sun9-75.userapi.com/impg/cvYdpznMaPQwtlpZxEclAmHZK1Nv-708wYc78Q/pM80GfibLVM.jpg?size=1170x1170&quality=95&sign=12ebb5250e72080f8edeb0c211057660&type=album', 'BAPE STA SHARK', '\nРазмерный ряд: 41, 42, 43, 44, 45\n\nСпособы получения:\n\n- Самовывоз ул. Комсомольская д. 199/1\n- Доставка по г. Оренбург курьером\n- Отправка Почта России, СДЭК\n\nДля покупки и уточнения обращайтесь к @vladofblad', '3.599₽', '7'),
(2, 'https://sun9-3.userapi.com/impg/J--MLWWWpp8uAWSMdkCOKv_q6vuiRgwEFCxvsw/s4m1nAUEwYE.jpg?size=1170x1170&quality=95&sign=7fbf5638194a04374f9f684de1bbb5a3&type=album', 'ADIDAS CAMPUS 00S BLACK', '\r\nРазмерный ряд: 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.799₽', '8'),
(3, 'https://sun9-20.userapi.com/impg/UtGhbjvrPmutpi21L4dK-cnvfsc82ZkcOIZ-8A/rgdOMuUW9sg.jpg?size=1170x1170&quality=95&sign=89057423a1dff0c721753ea443e43273&type=album', 'ADIDAS CAMPUS 00S GREEN', '\r\nРазмерный ряд: 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.799₽', '9'),
(4, 'https://sun9-29.userapi.com/impg/VUYIABt56LY2iTwjRz2o6xtFzmNCtn_dEVBQWw/zk5jawFv5M4.jpg?size=1170x1170&quality=95&sign=3a93ae82ee7b425261b7c11606e72edd&type=album', 'ADIDAS CAMPUS 80S SOUTH PARK', '\r\nРазмерный ряд: 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.899₽', '10'),
(5, 'https://sun9-5.userapi.com/impg/rQflmhm3MM0XYkeDjyKmAfAEk49F36Py7fytCw/11I5Ir71eGc.jpg?size=800x800&quality=96&sign=066bac6af1ef1163c0751abe4af22d30&type=album', 'ADIDAS CAMPUS x BAD BUNNY BLACK', '\r\nРазмерный ряд: 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.699₽', '11'),
(6, 'https://sun9-73.userapi.com/impg/X8OgkR1xf6f6pDctfidkLmLGzkOrGdWyg2zHkA/0YVvNsADQ6Q.jpg?size=1166x1164&quality=96&sign=6147af80298c2a1ef17fb7cbc92abc6b&type=album', 'ADIDAS CAMPUS x BAD BUNNY GREY', '\r\nРазмерный ряд: 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.699₽', '12'),
(7, 'https://sun9-5.userapi.com/impg/rRoHAHYoAvLNBDPg18Myqw89S3UvLXuX1vRXVQ/e-iS0RzqR7I.jpg?size=1170x1170&quality=95&sign=0ac655a8b9add5aed99a64c7d3d4799c&type=album', 'ADIDAS CAMPUS x BAD BUNNY BEIGE', '\r\nРазмерный ряд: 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.699₽', '13'),
(8, 'https://sun9-29.userapi.com/impg/yV4mTowsCRLEqTM473nJaywt9dgiT_T0UoFvjQ/99wFJZoFFbU.jpg?size=1400x1400&quality=96&sign=ec40936a77d55197ff9241233dc59bfa&type=album', 'ADIDAS FORUM x BAD BUNNY BLACK', '\r\nРазмерный ряд: 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.699₽', '14'),
(9, 'https://sun9-4.userapi.com/impg/u_3SWOnj9YCtqBIsDHFwQvDj6XqJPf1Dkr2xxw/8dgULyPzR6k.jpg?size=1190x1188&quality=96&sign=c3dd68567c102a96230f4759b4101510&type=album', 'ADIDAS FORUM x BAD BUNNY GRAY', '\nРазмерный ряд: 36, 37, 38, 38, 40, 41, 42, 43, 44, 45\n\nСпособы получения:\n\n- Самовывоз ул. Комсомольская д. 199/1\n- Доставка по г. Оренбург курьером\n- Отправка Почта России, СДЭК\n\nДля покупки и уточнения обращайтесь к @vladofblad', '3.999₽', '15'),
(10, 'https://sun9-73.userapi.com/impg/8X9dUw_bFGoQM1PiHbKeW37hzMY3cuUl9Qpi6A/ttYPJAxiCdY.jpg?size=1170x1170&quality=95&sign=2c3a1a322a7e46660046415a2ed86702&type=album', 'ADIDAS FORUM x BAD BUNNY WHITE', '\nРазмерный ряд: 36, 37, 38, 38, 40, 41, 42, 43, 44, 45\n\nСпособы получения:\n\n- Самовывоз ул. Комсомольская д. 199/1\n- Доставка по г. Оренбург курьером\n- Отправка Почта России, СДЭК\n\nДля покупки и уточнения обращайтесь к @vladofblad', '3.699₽', '16'),
(11, 'https://sun9-75.userapi.com/impg/559jI0_7ZkrO01hnKx9TzlVDfMnKPovNPSQtrQ/1iA7v-Jofo8.jpg?size=926x926&quality=96&sign=b389e7e042808f175d0121c4809204ed&type=album', 'ADIDAS NEIGHBORHOOD X ADIMATIC', '\r\nРазмерный ряд: 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.499₽', '17'),
(12, 'https://sun9-54.userapi.com/impg/vmtzRsS66iGB7AGqpr76dHO6yrPjA8sFoxoWxg/6ebPJ8pANkk.jpg?size=1600x1600&quality=96&sign=95873d5dc313714e5ded022cb6546bec&type=album', 'ADIDAS FORUM 84 LOW x OFF WHITE', '\r\nРазмерный ряд: 36, 37, 38, 39, 40, 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.899₽', '18'),
(13, 'https://sun9-45.userapi.com/impg/_KWfR6LU4EhhC60RBXaiDHZPHXprtu-8sra7nQ/FOeoK6KemJY.jpg?size=1000x1000&quality=96&sign=49d4a0d8246183f2f657cd3265867990&type=album', 'ADIDAS FORUM CENTENNIAL 85', '\r\nРазмерный ряд: 36, 37, 38, 39, 40, 41\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.699₽', '19'),
(14, 'https://sun9-47.userapi.com/impg/dRk3IJupgoGJpMIswZkp5W-wQzEIIgU2Bb841A/tI316IX9Ico.jpg?size=1600x1600&quality=96&sign=ec742f6721150bbd55dd666bbcc7a190&type=album', 'ADIDAS RETROPY E5 WHITE&PURPLE', '\r\nРазмерный ряд: 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.299₽', '20'),
(15, 'https://sun9-77.userapi.com/impg/kSLcP9D8I35_QptR_r7YJJ9zHJIysGoCqktZOg/6hisVYhN1S8.jpg?size=1000x1000&quality=96&sign=a64d7eda85e5df74d53ca0a4861f605e&type=album', 'ADIDAS RETROPY E5 BLACK&WHITE', '\r\nРазмерный ряд: 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.299₽', '21'),
(16, 'https://sun9-62.userapi.com/impg/pKHz8Mc8U4B75A2trPTAuAVIBk6lkOTWnfd7ew/qkYSWcqLyNU.jpg?size=1080x1080&quality=96&sign=5cb94e6798df64e9f7dd6ab03f6f0806&type=album', 'ADIDAS SAMBA CLASSIC', '\r\nРазмерный ряд: 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.399₽', '22'),
(17, 'https://sun9-50.userapi.com/impg/wUtRXslp4IGH-IQobA7iuO6Qxe3xo9Atvs6T4w/OvpLGK6o5wg.jpg?size=1080x1080&quality=96&sign=b75e6f2e8abe3bbfc4f13e2acdaa3ad4&type=album', 'ADIDAS SUPERSTAR HEART', '\nРазмерный ряд: 36, 37, 38, 39, 40, 41\n\nСпособы получения:\n\n- Самовывоз ул. Комсомольская д. 199/1\n- Доставка по г. Оренбург курьером\n- Отправка Почта России, СДЭК\n\nДля покупки и уточнения обращайтесь к @vladofblad', '3.599₽', '23'),
(18, 'https://sun9-7.userapi.com/impg/wSQsiJL_WbAFDX5TcMChKZprnBiy7zmnv_80mg/wP3XMIcIKq0.jpg?size=1700x1700&quality=96&sign=8b0d29a2d642271254b3b715564010ae&type=album', 'ADIDAS YEEZY BOOST 500 BLACK', '\r\nРазмерный ряд: 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.699₽', '24'),
(19, 'https://sun9-56.userapi.com/impg/a3fqjnirm7_WGqxaD18Nc8-h0Oz_5evWmQKtVw/w0YpHKkhXP0.jpg?size=1500x1500&quality=96&sign=47dc4415a552b64024bcacaf2b665368&type=album', 'ADIDAS YEEZY BOOST 700 BLACK', '\r\nРазмерный ряд: 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.699₽', '25'),
(20, 'https://sun9-39.userapi.com/impg/glRTd0aVipjfWO1nFV8d54FLInjviuJqAaLewQ/qrSVaT1x9Vk.jpg?size=1024x1024&quality=96&sign=67dd433ab055ce77f5f4d34e1eb589b0&type=album', 'ADIDAS YEEZY BOOST 700 BEIGE', '\r\nРазмерный ряд: 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.699₽', '26'),
(21, 'https://sun9-7.userapi.com/impg/RdgO2taxaBAnnxNvpBueUfSz53QFMZtvIjkrjw/bKAbHueHnlk.jpg?size=1253x1157&quality=96&sign=33a4b8c90919f52c905a8a5bf0c94abe&type=album', 'NEW BALANCE 2002R GRAY', '\r\nРазмерный ряд: 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.499₽', '27'),
(22, 'https://sun9-39.userapi.com/impg/wifTszBKVzBAyMcCZzmPB4bjEl0Xtogm_D5sig/ieo7FEZcAHs.jpg?size=1300x1301&quality=96&sign=dcc39462ff64e444005698d6117809a7&type=album', 'NEW BALANCE 530 WHITE', '\r\nРазмерный ряд: 36, 37, 38, 39, 40, 41\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.299₽', '28'),
(23, 'https://sun9-15.userapi.com/impg/w1BxgIebCjeJAYoLbnp0Xre4ftStnNaQutIhBQ/QS-c6B3ssew.jpg?size=2560x1814&quality=96&sign=88ef0c64a85af78374088995de835ccd&type=album', 'NEW BALANCE 574 GRAY', '\r\nРазмерный ряд: 46, 47, 48, 49\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.499₽', '29'),
(24, 'https://sun9-39.userapi.com/impg/o-AUWnriL87oek6hdrt8VOOr5lWKK8aGKdS8sQ/n5E0bLo5Ep8.jpg?size=1000x1000&quality=96&sign=85e11a0f5e4c0407bf79ba6d1d2ea711&type=album', 'NIKE AIR FORCE 1 ARMY GREEN', '\r\nРазмерный ряд: 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.499₽', '30'),
(25, 'https://sun9-21.userapi.com/impg/turFx2waQW6_RJ1GSrEoPc1Krh2uO45wGbU05w/ZJBflWeWmf0.jpg?size=1000x1000&quality=96&sign=5631667a0115c7eb3c158a2963e6e8ef&type=album', 'NIKE AIR FORCE 1 BLACK', '\r\nРазмерный ряд: 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.499₽', '31'),
(26, 'https://sun9-35.userapi.com/impg/4h7UVNea0H0YW16wMsAwA6HxdBUTGWp-4l3dVQ/Q58PwoABBXo.jpg?size=1200x1200&quality=96&sign=d9b2cd8d6e0d7d5436be3f44d6c62138&type=album', 'NIKE AIR FORCE 1 LX', '\r\nРазмерный ряд: 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.299₽', '32'),
(27, '', 'NIKE AIR FORCE VALENTINE DAY 2021', '\r\nРазмерный ряд: 36, 37, 38, 39, 40, 41\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.399₽', '33'),
(28, 'https://sun9-6.userapi.com/impg/lYB_VXJFqpP9FZE87cySo5zZ6JwK8LFe4UQcuA/DmmvC6LeNUE.jpg?size=1000x1000&quality=96&sign=e24121d5c42196aac2ea23115a230d15&type=album', 'NIKE AIR FORCE VALENTINE DAY 2023', '\r\nРазмерный ряд: 36, 37, 38, 39, 40, 41\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.999₽', '34'),
(29, 'https://sun9-42.userapi.com/impg/7F0KZ1Vh23swpbb44T-Wq_NLyw1pjz5iSMVeDQ/OKG_6QSiJRM.jpg?size=1300x1300&quality=96&sign=f1f270296941310da46495166206e2c1&type=album', 'NIKE AIR FORCE 1 SKELETON BLACK', '\r\nРазмерный ряд: 36, 37, 38, 39, 40, 41\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.699₽', '35'),
(30, 'https://sun9-51.userapi.com/impg/QU8T2FtCC3sYhCc0G8fF4Dq-RQp-FmwHiCUfYA/7E2UNAc6ErA.jpg?size=2000x2000&quality=96&sign=22738a7836116dba4928c1bec1f0c6cc&type=album', 'NIKE AIR FORCE 1 WHITE ', '\r\nРазмерный ряд: 36, 37, 38, 39, 40, 41\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.499₽', '36'),
(31, 'https://sun9-21.userapi.com/impg/turFx2waQW6_RJ1GSrEoPc1Krh2uO45wGbU05w/ZJBflWeWmf0.jpg?size=1000x1000&quality=96&sign=5631667a0115c7eb3c158a2963e6e8ef&type=album', 'МЕХОВЫЕ NIKE AIR FORCE 1 LOW BLACK', '\nРазмерный ряд: 41, 42, 43, 44, 45, 46\n\nСпособы получения:\n\n- Самовывоз ул. Комсомольская д. 199/1\n- Доставка по г. Оренбург курьером\n- Отправка Почта России, СДЭК\n\nДля покупки и уточнения обращайтесь к @vladofblad', '3.899₽', '37'),
(32, 'https://sun9-35.userapi.com/impg/4h7UVNea0H0YW16wMsAwA6HxdBUTGWp-4l3dVQ/Q58PwoABBXo.jpg?size=1200x1200&quality=96&sign=d9b2cd8d6e0d7d5436be3f44d6c62138&type=album', 'МЕХОВЫЕ NIKE AIR FORCE 1 LX', '\nРазмерный ряд: 41, 42, 43, 44, 45, 46\n\nСпособы получения:\n\n- Самовывоз ул. Комсомольская д. 199/1\n- Доставка по г. Оренбург курьером\n- Отправка Почта России, СДЭК\n\nДля покупки и уточнения обращайтесь к @vladofblad', '3.899₽', '38'),
(33, 'https://sun9-39.userapi.com/impg/GcYT8-sqsrn6CshlUToX-f_e0TwUGZBiFC_Ajg/Sh-Gju0hebc.jpg?size=1000x1000&quality=96&sign=a4de8224d792ce594ec405d265069c61&type=album', 'MEXОВЫЕ NIKE AIR FORCE 1 MID GORE TEX BOOT BLACK', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '4.999₽', '39'),
(34, 'https://sun9-34.userapi.com/impg/eE68uoOsapttOomLtFu2tnFrHy8c2ggDYpALdQ/7hpnU8fVe5s.jpg?size=1000x1000&quality=96&sign=44fca1aff8fac53cc085c2923f94ad65&type=album', 'NIKE AIR FORCE 1 MID GORE TEX BOOT BROWN', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '4.099₽', '40'),
(35, 'https://sun9-45.userapi.com/impg/0N3vWKlnMMZM7QFKsguPnlhVeYY0gxIQgcJi_g/X-TyLFSM_Mc.jpg?size=1200x1200&quality=96&sign=7f471e67d906f1191a6bbe3f1941ac24&type=album', 'NIKE AIR JORDAN 1 LOW TRAVIS SKOTT BLACK DARK BROWN', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.799₽', '41'),
(36, 'https://sun9-32.userapi.com/impg/iFzSrSuCuq_YkY6tUU2K_CKuZuyxfMOqLP923g/G3t10QjA2X0.jpg?size=1024x1024&quality=96&sign=c4c14166723a665fc9a655eb0c1642d0&type=album', 'NIKE AIR JORDAN 1 LOW TRAVIS SKOTT FANTOM BLACK', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.699₽', '42'),
(37, 'https://sun9-13.userapi.com/impg/Hi69NBLfWOF14_VVLmL8HHgra0acRi6tL2eOeg/VhmJ3ktxeqg.jpg?size=1750x1744&quality=96&sign=cd6a18ff57d1ff02e74831674b79d056&type=album', 'NIKE AIR JORDAN 1 LOW TRAVIS SKOTT FRAGMENT DESIGN', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.699₽', '43'),
(38, 'https://sun9-61.userapi.com/impg/DhnAdW2oRlpVCr06pO9L9acZcZ3461NtNu4rBg/dvwp7WrozAE.jpg?size=1500x1500&quality=96&sign=7c796b12060b1ae184663d9b78d76377&type=album', 'NIKE AIR JORDAN 4 RETRO BLACK CAT', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.799₽', '44'),
(39, 'https://sun9-53.userapi.com/impg/uSQjFbF7opKmgmMrp6T1Pun_tzYVqL7C0iehpQ/RK_z6tMJIiI.jpg?size=1000x1000&quality=96&sign=b7527882a4d4d5e6747aaad52f5c3da6&type=album', 'NIKE AIR JORDAN 4 RETRO RED THUNDER', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.799₽', '45'),
(40, 'https://sun9-79.userapi.com/impg/HogK2B9eCRPIcLw3F9qbcHWIAMkj1XsXfvlHzg/XhUL-hVn5Ks.jpg?size=1000x1000&quality=96&sign=5611ebffd5b2ab05886eb309361674e8&type=album', 'NIKE AIR JORDAN 4 RETRO CANYON PURPLE', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.799₽', '46'),
(41, 'https://sun9-2.userapi.com/impg/xL8iLJQIyUKJz-uciNzsowhBluJMsrEXoNLO0A/SESzTSrFDGI.jpg?size=1000x1000&quality=96&sign=a6c3cabfba3e65b14f512c7ac6371d91&type=album', 'NIKE AIR JORDAN 4 RETRO OREO', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.799₽', '47'),
(42, 'https://sun9-15.userapi.com/impg/kWKtNFS22-N0mZm7Kh_ERf49k-cPrVVr_jvGsA/4CDy4tp7RBM.jpg?size=2000x2000&quality=96&sign=c769c40cf6adfffa873b37436b90c6ff&type=album', 'NIKE AIR JORDAN 4 RETRO PSG', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.799₽', '48'),
(43, 'https://sun9-75.userapi.com/impg/cUcwq6Ri1_kGZP_N1lJEZhZvJb18XRFYuT6aDQ/vu4Fz6k7iD0.jpg?size=1500x1500&quality=96&sign=e6e27be780fdcac964597acbc055ae77&type=album', 'NIKE AIR JORDAN 4 RETRO UNIVERSITY BLUE', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.799₽', '49'),
(44, 'https://sun9-49.userapi.com/impg/sluiUbS-wqZSmRA69BD-VsT5JW3XpLKObjnWnQ/NLeT3QdSi4c.jpg?size=1280x1280&quality=96&sign=cfcc6b052bacc200b93e3696c5eba1e1&type=album', 'NIKE AIR MAX 96II', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.499₽', '50'),
(45, 'https://sun9-6.userapi.com/impg/uqNdh7bH2EmBC1lajZJVoH3Ze-IfOPEwNfh4hA/UtrmTtlF-KQ.jpg?size=1104x1104&quality=96&sign=936c597d846c9c8925e7e0e80c9a19f8&type=album', 'NIKE AIR MAX PLUS TN', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.499₽', '51'),
(46, 'https://sun9-45.userapi.com/impg/9P9Z880pogTR6eXl4nMhHwAvf933esLyREb5zg/ENgh1H91qYQ.jpg?size=1000x1000&quality=96&sign=117f94524f49c6884ff421b33dbbacae&type=album', 'SKEPTA X NIKE AIR MAX TAILWIND', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.699₽', '52'),
(47, 'https://sun9-40.userapi.com/impg/o0pguu6I2IhdVZhxPp9DLrpsALnK-mLn1REihg/T5HcErgWmPU.jpg?size=1500x1500&quality=96&sign=ef702cc64c3dfed65b9ce3eaba9c15ab&type=album', 'NIKE BLAZER LOW WHITE&BLUE', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '2.499₽', '53'),
(48, 'https://sun9-66.userapi.com/impg/gseJk2nKLh9O6yyZSBTi7ariifTk2xIPgJ0sKQ/5tFd0Ceua7M.jpg?size=1000x1000&quality=96&sign=3ea80b2056fc849587c2e81e03e6f818&type=album', 'NIKE SACAI BLACK&WHITE', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.399₽', '54'),
(49, 'https://sun9-34.userapi.com/impg/4OmIsGTTHS4H3U1-P8OfhT0DmIu5Tc-WngNosA/u74CXN1qfi0.jpg?size=1000x1000&quality=96&sign=d3c939739c43989f1b2c5674b5fdd716&type=album', 'NIKE SACAI GREEN&YELLOW', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '2.899₽', '55'),
(50, 'https://sun9-67.userapi.com/impg/kbiu24vMs9o9sXVTfAaTmzuX5vGRsApEe1xK9Q/z8l8O3BhOxI.jpg?size=1000x1000&quality=96&sign=87d95719312258fe7d1ad7c965eaa79f&type=album', 'NIKE SB DUNK LOW LOBSTER BLUE', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.699₽', '56'),
(51, 'https://sun9-57.userapi.com/impg/Xw02jhCG0bmyXHeaGjIeQX9DXArl6sq47ehEsA/vFivZbvbJOI.jpg?size=1200x1200&quality=96&sign=cf6a91b86609c75ac787769afdbe393c&type=album', 'NIKE SB DUNK LOW LOBSTER GREEN', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.699₽', '57'),
(52, 'https://sun9-72.userapi.com/impg/jPz4RgGZ80E1hb7FGSFvChgYmmzhFGPlbZejQQ/eW2kJ9FHBRk.jpg?size=1000x1000&quality=96&sign=d661a0d83871f40720b0e69a13cd645e&type=album', 'NIKE SB DUNK LOW LOBSTER PURPLE', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.699₽', '58'),
(53, 'https://sun9-21.userapi.com/impg/vrxelOpCxhwcxSgswxD2kWu6axIvuz-3VBMxdA/jSe1koa3ERU.jpg?size=990x992&quality=96&sign=fd7b910cca446993c7d64e5da35595fd&type=album', 'NIKE DUNK SB MUMMY', 'Размерный ряд: 36, 37, 38, 39, 40, 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.499₽', '59'),
(54, 'https://sun9-32.userapi.com/impg/X4etYBs1mliU3PXv6276LafeUHKGIJRNPaVX8w/8X1E5_rSqzw.jpg?size=1500x1500&quality=96&sign=fb55a11f5ad94228ac3391ea1e41884e&type=album', 'NIKE DUNK SB CACTUS JACK', 'Размерный ряд: 40, 41, 42, 43, 44, 45\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.599₽', '60'),
(55, 'https://sun9-46.userapi.com/impg/hzTaDrq8FVcTFVC2LnjfdCBQZAx1B7TNloV_sA/DgpgmnBNlj8.jpg?size=1024x1024&quality=96&sign=927d42ae53abe961b1a3c85286a9feba&type=album', 'NIKE DUNK SB STRANGE LOVE', 'Размерный ряд: 36, 37, 38, 39, 40, 41\n\nСпособы получения:\n\n- Самовывоз ул. Комсомольская д. 199/1\n- Доставка по г. Оренбург курьером\n- Отправка Почта России, СДЭК\n\nДля покупки и уточнения обращайтесь к @vladofblad', '3.699₽', '61'),
(56, 'https://sun9-14.userapi.com/impg/5D0AiCOld55DhvFfEGOS8eCKi91ergB6xLth-Q/Q4-IaTXUL4M.jpg?size=2160x2160&quality=96&sign=1a8649d63f9ba387ab33f91fd955212d&type=album', 'NIKE SB DUNK LOW ATOMIC PINK', 'Размерный ряд: 36, 37, 38, 39, 40, 41\n\nСпособы получения:\n\n- Самовывоз ул. Комсомольская д. 199/1\n- Доставка по г. Оренбург курьером\n- Отправка Почта России, СДЭК\n\nДля покупки и уточнения обращайтесь к @vladofblad', '3.699₽', '62'),
(57, 'https://sun9-14.userapi.com/impg/a6pifM1GkLMlIfRbtJlB7NlhKHsU7CJ9Sn0JAg/gzYYzaAuN-M.jpg?size=1080x1080&quality=96&sign=4c1f45a62cd8bd6d41df521a828f6029&type=album', 'NIKE SB DUNK LOW OTOMO KATSUHIRO', 'Размерный ряд: 41, 42, 43, 44, 45, 46\n\nСпособы получения:\n\n- Самовывоз ул. Комсомольская д. 199/1\n- Доставка по г. Оренбург курьером\n- Отправка Почта России, СДЭК\n\nДля покупки и уточнения обращайтесь к @vladofblad', '3.599₽', '63'),
(58, 'https://sun9-43.userapi.com/impg/KpBCFr5Qt9wIO1TsqeCKmuXOhQBzfPkZZlCHUQ/Ax8hwqBEW48.jpg?size=1000x1000&quality=96&sign=aa5927622f328b02efc50752c5ac7415&type=album', 'NIKE SB DUNK LOW GOLF CLUB 58 ', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.499₽', '64'),
(59, 'https://sun9-52.userapi.com/impg/Zdv_6du99TeIOSqxsezd6reUH1836beyk_WCIA/gQ3SOwjE2PY.jpg?size=2160x2160&quality=96&sign=7352dc5796fdca69178a753c08894b07&type=album', 'NIKE SB DUNK PIGEON PURPLE', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.299₽', '65'),
(60, 'https://sun9-60.userapi.com/impg/rMmw5INB6g336kjmpeZekdWgtBsvhAJD_W0J6A/9vELVtLu7tI.jpg?size=1000x1000&quality=96&sign=13180d1ac13be4b58a53132b084a1af4&type=album', 'NIKE SB DUNK LOW WHY SO SAD?', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.399₽', '66'),
(61, 'https://sun9-80.userapi.com/impg/pP5I8G0V0gvYoOi08C7JLDQwIGDviBg4q7b6ZQ/vHvMvc_2N9E.jpg?size=1280x1268&quality=96&sign=8037b760e66ecc84417c7b98dd69b3ee&type=album', 'NIKE SB DUNK LOW VALENTINE DAY', 'Размерный ряд: 36, 37, 38, 39, 40, 41\n\nСпособы получения:\n\n- Самовывоз ул. Комсомольская д. 199/1\n- Доставка по г. Оренбург курьером\n- Отправка Почта России, СДЭК\n\nДля покупки и уточнения обращайтесь к @vladofblad', '3.599₽', '67'),
(62, 'https://sun9-2.userapi.com/impg/LIyxeu_IbfAUVNH8QX9Q50g0R8EZ_lP1gTaX6g/TdeWznX2qg8.jpg?size=810x758&quality=96&sign=3e47ef85fe0de78fa4c721065e965262&type=album', 'NIKE SB DUNK LOW PIGEON BLACK&RED', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.499₽', '68'),
(63, 'https://sun9-77.userapi.com/impg/vklSC4TfMrBn7TGo0TXvtR6xYouxVAjNXcaLTA/3e6xI36RI_A.jpg?size=1104x1104&quality=96&sign=edb183d3046372666a69c33d2ac12679&type=album', 'NIKE STUSSY AIR ZOOM', 'Размерный ряд: 41, 42, 43, 44, 45, 46\r\n\r\nСпособы получения:\r\n\r\n- Самовывоз ул. Комсомольская д. 199/1\r\n- Доставка по г. Оренбург курьером\r\n- Отправка Почта России, СДЭК\r\n\r\nДля покупки и уточнения обращайтесь к @vladofblad', '3.399₽', '69');

-- --------------------------------------------------------

--
-- Структура таблицы `type_categories`
--

CREATE TABLE `type_categories` (
  `id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `callback_data` int(11) NOT NULL,
  `categories_key` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `type_categories`
--

INSERT INTO `type_categories` (`id`, `text`, `callback_data`, `categories_key`) VALUES
(7, 'A BATHING APE', 1, '10'),
(8, 'ADIDAS CAMPUS 00S', 2, '11'),
(9, 'ADIDAS CAMPUS 80S', 2, '13'),
(12, 'ADIDAS CAMPUS x BAD BUNNY', 2, '14'),
(13, 'ADIDAS FORUM x BAD BUNNY', 2, '15'),
(14, 'ADIDAS NEIGHBORHOOD X ADIMATIC', 2, '16'),
(15, 'ADIDAS FORUM', 2, '17'),
(16, 'ADIDAS RETROPY E5', 2, '18'),
(17, 'ADIDAS SAMBA', 2, '19'),
(18, 'ADIDAS SUPERSTAR', 2, '20'),
(19, 'ADIDAS YEEZY BOOST 500', 2, '21'),
(20, 'ADIDAS YEEZY BOOST 700', 2, '22'),
(21, 'NEW BALANCE 2002R', 4, '23'),
(22, 'NEW BALANCE 530', 4, '24'),
(24, 'NEW BALANCE 574', 4, '26'),
(25, 'NIKE AIR FORCE 1 LOW', 3, '27'),
(26, 'NIKE AIR FORCE 1 MID', 3, '28'),
(27, 'NIKE AIR JORDAN 1 LOW', 3, '29'),
(28, 'NIKE AIR JORDAN 4 RETRO', 3, '30'),
(29, 'NIKE AIR MAX', 3, '31'),
(30, 'NIKE BLAZER ', 3, '32'),
(31, 'NIKE SACAI', 3, '33'),
(32, 'NIKE SB DUNK LOW', 3, '34'),
(33, 'NIKE AIR ZOOM', 3, '35');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories_product`
--
ALTER TABLE `categories_product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `type_categories`
--
ALTER TABLE `type_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `categories_product`
--
ALTER TABLE `categories_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT для таблицы `type_categories`
--
ALTER TABLE `type_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
