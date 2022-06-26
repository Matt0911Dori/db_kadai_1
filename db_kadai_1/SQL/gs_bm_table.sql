-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2022 年 6 月 22 日 02:09
-- サーバのバージョン： 10.4.21-MariaDB
-- PHP のバージョン: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `db_kadai_2`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `bookname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `bookname`, `bookurl`, `comment`, `indate`) VALUES
(1, '3', '3', '3', '2022-06-22 07:35:27'),
(2, 'PHP入門', 'https://www.amazon.co.jp/%E6%9C%AC-%E6%9B%B8%E7%B1%8D-%E9%80%9A%E8%B2%A9/b?ie=UTF8&node=465392', '面白い', '2022-06-22 07:37:25'),
(3, 'html入門', 'https://www.amazon.co.jp/%E6%9C%AC-%E6%9B%B8%E7%B1%8D-%E9%80%9A%E8%B2%A9/b?ie=UTF8&node=465392', 'タメになる', '2022-06-22 07:37:42'),
(4, 'CSS上級編', 'https://www.amazon.co.jp/%E6%9C%AC-%E6%9B%B8%E7%B1%8D-%E9%80%9A%E8%B2%A9/b?ie=UTF8&node=465392', '参考になった', '2022-06-22 07:38:06'),
(5, 'PHP達人', 'https://www.amazon.co.jp/%E6%9C%AC-%E6%9B%B8%E7%B1%8D-%E9%80%9A%E8%B2%A9/b?ie=UTF8&node=465392', 'すごい', '2022-06-22 07:38:21');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
