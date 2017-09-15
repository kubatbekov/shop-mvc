-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Сен 15 2017 г., 09:42
-- Версия сервера: 10.1.10-MariaDB
-- Версия PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `myframework`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `sort_order`, `status`) VALUES
(1, 0, 'KIDS', 0, 1),
(2, 0, 'FASHION', 0, 1),
(3, 0, 'SPORTSWEAR', 0, 1),
(4, 0, 'MENS', 0, 1),
(5, 0, 'Футболки', 0, 1),
(6, 0, 'Womans', 10, 1),
(7, 4, 'Nike', 0, 1),
(8, 4, 'Adidas', 0, 1),
(9, 6, 'Dress', 0, 1),
(10, 6, 'coat', 0, 1),
(11, 5, 'Blue tie shirt', 0, 1),
(12, 1, 'Kid', 0, 1),
(13, 2, 'Fashion', 0, 1),
(14, 3, 'Adidas', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `create_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `text`, `create_date`) VALUES
(1, 'First news!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid doloremque facilis labore magni molestiae nostrum quisquam, quo quos, sint soluta totam unde voluptas voluptatibus! Ad beatae cumque earum odio voluptate!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid doloremque facilis labore magni molestiae nostrum quisquam, quo quos, sint soluta totam unde voluptas voluptatibus! Ad beatae cumque earum odio voluptate!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid doloremque facilis labore magni molestiae nostrum quisquam, quo quos, sint soluta totam unde voluptas voluptatibus! Ad beatae cumque earum odio voluptate!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid doloremque facilis labore magni molestiae nostrum quisquam, quo quos, sint soluta totam unde voluptas voluptatibus! Ad beatae cumque earum odio voluptate!\r\n\r\n', '2017-04-25 11:20:23'),
(2, 'Second news!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid doloremque facilis labore magni molestiae nostrum quisquam, quo quos, sint soluta totam unde voluptas voluptatibus! Ad beatae cumque earum odio voluptate!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid doloremque facilis labore magni molestiae nostrum quisquam, quo quos, sint soluta totam unde voluptas voluptatibus! Ad beatae cumque earum odio voluptate!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid doloremque facilis labore magni molestiae nostrum quisquam, quo quos, sint soluta totam unde voluptas voluptatibus! Ad beatae cumque earum odio voluptate!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid doloremque facilis labore magni molestiae nostrum quisquam, quo quos, sint soluta totam unde voluptas voluptatibus! Ad beatae cumque earum odio voluptate!\r\n\r\n', '2017-04-25 07:19:22'),
(3, 'Third news!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid doloremque facilis labore magni molestiae nostrum quisquam, quo quos, sint soluta totam unde voluptas voluptatibus! Ad beatae cumque earum odio voluptate!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid doloremque facilis labore magni molestiae nostrum quisquam, quo quos, sint soluta totam unde voluptas voluptatibus! Ad beatae cumque earum odio voluptate!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid doloremque facilis labore magni molestiae nostrum quisquam, quo quos, sint soluta totam unde voluptas voluptatibus! Ad beatae cumque earum odio voluptate!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid doloremque facilis labore magni molestiae nostrum quisquam, quo quos, sint soluta totam unde voluptas voluptatibus! Ad beatae cumque earum odio voluptate!\r\n\r\n', '2017-04-25 11:20:23'),
(4, 'Fourth news!', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid doloremque facilis labore magni molestiae nostrum quisquam, quo quos, sint soluta totam unde voluptas voluptatibus! Ad beatae cumque earum odio voluptate!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid doloremque facilis labore magni molestiae nostrum quisquam, quo quos, sint soluta totam unde voluptas voluptatibus! Ad beatae cumque earum odio voluptate!Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid doloremque facilis labore magni molestiae nostrum quisquam, quo quos, sint soluta totam unde voluptas voluptatibus! Ad beatae cumque earum odio voluptate!\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquid doloremque facilis labore magni molestiae nostrum quisquam, quo quos, sint soluta totam unde voluptas voluptatibus! Ad beatae cumque earum odio voluptate!\r\n\r\n', '2017-04-25 07:19:22');

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `code` int(11) NOT NULL,
  `price` float NOT NULL,
  `availability` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `is_new` int(11) NOT NULL DEFAULT '0',
  `is_recommended` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `name`, `category_id`, `subcategory_id`, `code`, `price`, `availability`, `brand`, `image`, `description`, `is_new`, `is_recommended`, `status`) VALUES
(3, 'Tie short', 5, 11, 12, 123, 1, 'KG', '', 'kg', 1, 1, 1),
(8, 'Blue Dress', 1, 12, 465, 222, 1, 'Adidas', '02.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.', 0, 1, 1),
(9, 'Blue Dress', 2, 13, 465, 222, 1, 'Adidas', '02.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.', 0, 0, 1),
(10, 'Mens tie', 4, 7, 465, 222, 1, 'Adidas', '02.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.', 0, 0, 1),
(11, 'Blue Dress', 3, 14, 465, 222, 1, 'Adidas', '02.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.', 0, 0, 1),
(12, 'Blue Dress', 3, 14, 465, 222, 1, 'Adidas', '02.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.', 0, 1, 1),
(13, 'Blue Dress', 3, 14, 465, 222, 1, 'Adidas', '02.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.', 0, 0, 1),
(14, 'Blue Dress', 3, 14, 465, 222, 1, 'Adidas', '02.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus aliquid animi blanditiis corporis doloribus\r\n    earum fuga magnam magni molestias, nam nemo obcaecati qui repellendus rerum similique tempore ullam, velit\r\n    voluptates.', 0, 0, 1),
(15, 'subcategory_id', 1, 12, 123, 222, 1, 'KG', '', 'ee', 1, 1, 1),
(16, 'Coat ', 4, 0, 1231, 1000, 1, 'usa', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_comment` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `products` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product_order`
--

INSERT INTO `product_order` (`id`, `user_name`, `user_phone`, `user_comment`, `user_id`, `date`, `products`, `status`) VALUES
(4, 'admin', '2141234', 'today', 11, '0000-00-00 00:00:00', '{"15":1}', 1),
(5, 'Андрей', '9966787845', 'сегодня', 11, '0000-00-00 00:00:00', '{"10":1}', 1),
(6, 'admin', '11111111111111111111', 'test', 11, '0000-00-00 00:00:00', '{"14":1,"13":1,"12":1}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `registration_date` datetime NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `registration_date`, `role`) VALUES
(10, 'jonatan', 'jonatan@gmail.com', '63ee451939ed580ef3c4b6f0109d1fd0', '0000-00-00 00:00:00', ''),
(11, 'admin', 'admin@gmail.com', '63ee451939ed580ef3c4b6f0109d1fd0', '0000-00-00 00:00:00', 'admin'),
(13, 'testuser', 'test@gmail.com', '63ee451939ed580ef3c4b6f0109d1fd0', '0000-00-00 00:00:00', ''),
(14, 'rahat', 'rahat@gmail.com', 'e9cc3f037e8ed88090a7ed47d304b129', '0000-00-00 00:00:00', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
