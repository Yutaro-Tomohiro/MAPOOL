-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 
-- サーバのバージョン： 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `map`
--
CREATE DATABASE IF NOT EXISTS `map` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `map`;

-- --------------------------------------------------------

--
-- テーブルの構造 `map_image`
--

CREATE TABLE `map_image` (
  `id` int(5) NOT NULL,
  `country` text CHARACTER SET utf8 NOT NULL,
  `url` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- テーブルのデータのダンプ `map_image`
--

INSERT INTO `map_image` (`id`, `country`, `url`) VALUES
(23, 'cn', 'https://world-map-image-storage.s3.ap-northeast-1.amazonaws.com/cn_1570158131.jpg'),
(24, 'cn', 'https://world-map-image-storage.s3.ap-northeast-1.amazonaws.com/cn_1570158141.jpg'),
(25, 'us', 'https://world-map-image-storage.s3.ap-northeast-1.amazonaws.com/us_1571065105.jpg'),
(28, 'jp', 'https://world-map-image-storage.s3.ap-northeast-1.amazonaws.com/jp_1571066108.jpg'),
(29, 'jp', 'https://world-map-image-storage.s3.ap-northeast-1.amazonaws.com/jp_1571066124.jpg'),
(30, 'jp', 'https://world-map-image-storage.s3.ap-northeast-1.amazonaws.com/jp_1571066160.jpg'),
(32, 'jp', 'https://world-map-image-storage.s3.ap-northeast-1.amazonaws.com/jp_1571066357.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `map_image`
--
ALTER TABLE `map_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `map_image`
--
ALTER TABLE `map_image`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- テーブルのデータのダンプ `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'map_image', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"map\",\"phpmyadmin\",\"test\",\"wp\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"ãƒ†ãƒ¼ãƒ–ãƒ« @TABLE@ ã®æ§‹é€ \",\"latex_structure_continued_caption\":\"ãƒ†ãƒ¼ãƒ–ãƒ« @TABLE@ ã®æ§‹é€  (ç¶šã)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"ãƒ†ãƒ¼ãƒ–ãƒ« @TABLE@ ã®å†…å®¹\",\"latex_data_continued_caption\":\"ãƒ†ãƒ¼ãƒ–ãƒ« @TABLE@ ã®å†…å®¹ (ç¶šã)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"knjenc\":\"\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null,\"xkana\":null}');

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- テーブルのデータのダンプ `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"map\",\"table\":\"map_image\"},{\"db\":\"map\",\"table\":\"activations\"},{\"db\":\"map\",\"table\":\"persistences\"},{\"db\":\"map\",\"table\":\"reminders\"},{\"db\":\"map\",\"table\":\"roles\"},{\"db\":\"map\",\"table\":\"role_users\"},{\"db\":\"map\",\"table\":\"throttle\"},{\"db\":\"map\",\"table\":\"users\"},{\"db\":\"test\",\"table\":\"tbl_user\"},{\"db\":\"map\",\"table\":\"members\"}]');

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- テーブルのデータのダンプ `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-10-23 04:00:30', '{\"lang\":\"ja\",\"Console\\/Mode\":\"show\"}');

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- テーブルの構造 `tbl_user`
--

CREATE TABLE `tbl_user` (
  `userId` int(11) UNSIGNED NOT NULL COMMENT 'プライマリーキー',
  `password` char(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'パスワード',
  `displayName` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '氏名',
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'メールアドレス',
  `token` char(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'トークン',
  `loginFailureCount` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'ログイン失敗回数',
  `loginFailureDatetime` datetime DEFAULT NULL COMMENT 'ログイン失敗日時',
  `deleteFlag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '削除フラグ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`userId`) COMMENT 'プライマリーキー',
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `userId` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'プライマリーキー';
--
-- Database: `wp`
--
CREATE DATABASE IF NOT EXISTS `wp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `wp`;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_cocoon_accesses`
--

CREATE TABLE `wp_cocoon_accesses` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `post_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'post',
  `date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` bigint(20) DEFAULT '0',
  `last_ip` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_cocoon_affiliate_tags`
--

CREATE TABLE `wp_cocoon_affiliate_tags` (
  `id` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(126) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_cocoon_affiliate_tags`
--

INSERT INTO `wp_cocoon_affiliate_tags` (`id`, `date`, `modified`, `title`, `text`, `visible`) VALUES
(1, '2019-07-03 00:17:01', '2019-07-03 00:17:01', 'アフィリエイトタグサンプル', '<a href=\"https://wp-simplicity.com/\">Simplicity | 内部SEO施策済みのシンプルな無料Wordpressテーマ</a>', b'1');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_cocoon_function_texts`
--

CREATE TABLE `wp_cocoon_function_texts` (
  `id` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(126) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_cocoon_function_texts`
--

INSERT INTO `wp_cocoon_function_texts` (`id`, `date`, `modified`, `title`, `text`, `visible`) VALUES
(1, '2019-07-03 00:17:01', '2019-07-03 00:17:01', 'Wordpressカスタマイズ注意文サンプル', '<p class=\"alert-box\">Wordpressのfunctions.phpを編集する前は、編集前に必ずバックアップを取って保存してください。もし編集後、エラーが出るようでしたら、バックアップファイルを元に復元してください。 </p>', b'1');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_cocoon_item_rankings`
--

CREATE TABLE `wp_cocoon_item_rankings` (
  `id` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(126) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_ranking` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` bigint(20) DEFAULT '1',
  `visible` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_cocoon_speech_balloons`
--

CREATE TABLE `wp_cocoon_speech_balloons` (
  `id` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(126) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'http://localhost/wordpress/wp-content/themes/cocoon-master/images/anony.png',
  `style` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stn',
  `position` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'l',
  `iconstyle` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cb',
  `credit` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_cocoon_speech_balloons`
--

INSERT INTO `wp_cocoon_speech_balloons` (`id`, `date`, `modified`, `title`, `name`, `icon`, `style`, `position`, `iconstyle`, `credit`, `visible`) VALUES
(1, '2019-07-03 00:17:01', '2019-07-03 00:17:01', '[SAMPLE 001] 男性（左）', '', 'http://localhost/wordpress/wp-content/themes/cocoon-master/images/man.png', 'stn', 'l', 'cb', NULL, b'1'),
(2, '2019-07-03 00:17:01', '2019-07-03 00:17:01', '[SAMPLE 002] 女性（右）', '', 'http://localhost/wordpress/wp-content/themes/cocoon-master/images/woman.png', 'stn', 'r', 'cb', NULL, b'1'),
(3, '2019-07-03 00:17:01', '2019-07-03 00:17:01', '[SAMPLE 003] ビジネスマン（左）', '', 'http://localhost/wordpress/wp-content/themes/cocoon-master/images/b-man.png', 'line', 'l', 'cb', NULL, b'1'),
(4, '2019-07-03 00:17:01', '2019-07-03 00:17:01', '[SAMPLE 004] ビジネスウーマン（右）', '', 'http://localhost/wordpress/wp-content/themes/cocoon-master/images/b-woman.png', 'line', 'r', 'cb', NULL, b'1'),
(5, '2019-07-03 00:17:01', '2019-07-03 00:17:01', '[SAMPLE 005] 悩むおじさん（左）', '', 'http://localhost/wordpress/wp-content/themes/cocoon-master/images/ojisan.png', 'flat', 'l', 'cb', NULL, b'1'),
(6, '2019-07-03 00:17:01', '2019-07-03 00:17:01', '[SAMPLE 006] 悩むおばさん（左）', '', 'http://localhost/wordpress/wp-content/themes/cocoon-master/images/obasan.png', 'flat', 'r', 'cb', NULL, b'1'),
(7, '2019-07-03 00:17:01', '2019-07-03 00:17:01', '[SAMPLE 007] 男性医師（左）', '', 'http://localhost/wordpress/wp-content/themes/cocoon-master/images/doctor.png', 'stn', 'l', 'sb', NULL, b'1'),
(8, '2019-07-03 00:17:01', '2019-07-03 00:17:01', '[SAMPLE 008] 女性医師（右）', '', 'http://localhost/wordpress/wp-content/themes/cocoon-master/images/doctress.png', 'stn', 'r', 'sb', NULL, b'1'),
(9, '2019-07-03 00:17:01', '2019-07-03 00:17:01', '[SAMPLE 009] どや顔男性（左）', '', 'http://localhost/wordpress/wp-content/themes/cocoon-master/images/doya-man.png', 'think', 'l', 'cb', NULL, b'1'),
(10, '2019-07-03 00:17:01', '2019-07-03 00:17:01', '[SAMPLE 010] どや顔女性（右）', '', 'http://localhost/wordpress/wp-content/themes/cocoon-master/images/doya-woman.png', 'think', 'r', 'cb', NULL, b'1');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'WordPress コメントの投稿者', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-06-30 22:42:06', '2019-06-30 13:42:06', 'こんにちは、これはコメントです。\nコメントの承認、編集、削除を始めるにはダッシュボードの「コメント画面」にアクセスしてください。\nコメントのアバターは「<a href=\"https://gravatar.com\">Gravatar</a>」から取得されます。', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'tomoblog', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'y.tomohiro0701@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'Y年n月j日', 'yes'),
(24, 'time_format', 'g:i A', 'yes'),
(25, 'links_updated_date_format', 'Y年n月j日 g:i A', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"category/(.+?)/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"type/([^/]+)/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"feed/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"comments/feed/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"comments/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"search/(.+)/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"author/([^/]+)/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"([0-9]{4})/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"(.?.+?)/(feed|rdf|rss|rss2|atom|smartnews)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:73:\"C:\\xampp\\htdocs\\wordpress/wp-content/themes/cocoon-child-master/style.css\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'cocoon-master', 'yes'),
(41, 'stylesheet', 'cocoon-child-master', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Asia/Tokyo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'ja', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:29:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:14:\"sidebar-scroll\";a:0:{}s:11:\"main-scroll\";a:0:{}s:26:\"above-single-content-title\";a:0:{}s:26:\"below-single-content-title\";a:0:{}s:18:\"single-content-top\";a:0:{}s:21:\"single-content-middle\";a:0:{}s:21:\"single-content-bottom\";a:0:{}s:24:\"above-single-sns-buttons\";a:0:{}s:24:\"below-single-sns-buttons\";a:0:{}s:28:\"below-single-related-entries\";a:0:{}s:25:\"below-single-comment-form\";a:0:{}s:16:\"page-content-top\";a:0:{}s:19:\"page-content-middle\";a:0:{}s:19:\"page-content-bottom\";a:0:{}s:22:\"above-page-sns-buttons\";a:0:{}s:22:\"below-page-sns-buttons\";a:0:{}s:9:\"index-top\";a:0:{}s:12:\"index-middle\";a:0:{}s:12:\"index-bottom\";a:0:{}s:11:\"content-top\";a:0:{}s:14:\"content-bottom\";a:0:{}s:11:\"footer-left\";a:0:{}s:13:\"footer-center\";a:0:{}s:12:\"footer-right\";a:0:{}s:13:\"footer-mobile\";a:0:{}s:8:\"404-page\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1562082127;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1562118127;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1562161327;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1562161378;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1562161379;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1561902196;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(122, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-5.2.2.zip\";s:6:\"locale\";s:2:\"ja\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-5.2.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.2\";s:7:\"version\";s:5:\"5.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1562080598;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(123, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1562080602;s:7:\"checked\";a:7:{s:19:\"cocoon-child-master\";s:5:\"1.0.8\";s:13:\"cocoon-master\";s:7:\"1.8.7.2\";s:14:\"tm-beans-child\";s:5:\"1.0.0\";s:8:\"tm-beans\";s:5:\"1.5.1\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(124, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1562080602;s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(125, '_site_transient_timeout_browser_bcf1814caa6afe84eeebef28ff236a7f', '1562506979', 'no'),
(126, '_site_transient_browser_bcf1814caa6afe84eeebef28ff236a7f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"75.0.3770.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(127, '_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89', '1562506979', 'no'),
(128, '_site_transient_php_check_472f71d2a071d463a95f84346288dc89', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(132, 'can_compress_scripts', '1', 'no'),
(143, 'current_theme', 'Cocoon Child', 'yes'),
(144, 'theme_mods_tm-beans', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:12:\"beans_layout\";s:1:\"c\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1561947553;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar_primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:17:\"sidebar_secondary\";a:0:{}s:14:\"offcanvas_menu\";a:0:{}}}}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(158, 'theme_mods_tm-beans-child', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:12:\"beans_layout\";s:1:\"c\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1562080618;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar_primary\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:17:\"sidebar_secondary\";a:0:{}s:14:\"offcanvas_menu\";a:0:{}}}}', 'yes'),
(163, '_site_transient_timeout_beans_updater', '1562083105', 'no'),
(164, '_site_transient_beans_updater', 'a:8:{s:4:\"name\";s:5:\"Beans\";s:4:\"slug\";s:5:\"beans\";s:4:\"path\";s:8:\"tm-beans\";s:7:\"version\";s:5:\"1.5.1\";s:6:\"tested\";s:5:\"4.9.7\";s:8:\"requires\";s:5:\"4.2.0\";s:13:\"changelog_url\";s:34:\"https://www.getbeans.io/changelog/\";s:12:\"download_url\";s:65:\"https://www.getbeans.io/download-beans/?no_cache=1&theme_update=1\";}', 'no'),
(177, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(180, '_site_transient_timeout_theme_roots', '1562082400', 'no'),
(181, '_site_transient_theme_roots', 'a:7:{s:19:\"cocoon-child-master\";s:7:\"/themes\";s:13:\"cocoon-master\";s:7:\"/themes\";s:14:\"tm-beans-child\";s:7:\"/themes\";s:8:\"tm-beans\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(182, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1562124050', 'no'),
(183, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:0:{}}', 'no'),
(184, '_transient_timeout_feed_992efac292246ae35bf235a03417a202', '1562123808', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(185, '_transient_feed_992efac292246ae35bf235a03417a202', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"ブログ | 日本語\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"https://ja.wordpress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"WordPress 日本語ローカルサイトブログ\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 19 Jun 2019 01:43:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"ja\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.3-alpha-45584\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:48:\"\n		\n		\n				\n		\n				\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"WordPress 5.2.2メンテナンスリリース\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://ja.wordpress.org/2019/06/19/wordpress-5-2-2-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 19 Jun 2019 01:42:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5660\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"以下は、marybaum が書いた WordPress.org 公式ブログの記事、「WordPress 5.2 [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"JOTAKI Taisuke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4748:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/marybaum/\">marybaum</a> が書いた WordPress.org 公式ブログの記事、「<a href=\"https://wordpress.org/news/2019/06/wordpress-5-2-2-maintenance-release/\">WordPress 5.2.2 Maintenance Release</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。<br></p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordPress 5.2.2が利用可能になりました! このメンテナンスリリースでは13個のバグを修正し、<a href=\"https://ja.wordpress.org/2019/05/08/jaco/\">5.2で導入された</a>サイトヘルス機能にすこし磨きをかけました。</p>\n\n\n\n<p>詳細な情報は <a href=\"https://core.trac.wordpress.org/query?status=closed&amp;resolution=fixed&amp;milestone=5.2.2&amp;order=priority\">Trac の変更リスト</a>か、<a href=\"https://wordpress.org/support/wordpress-version/version-5-2-2/\">バージョン5.2.2のドキュメンテーションページ</a>を参照してください。</p>\n\n\n\n<p>WordPress 5.2.2はショートサイクルメンテナンスリリースです。次のメジャーリリースは5.3です。進行状況の詳細は  <a href=\"https://make.wordpress.org/core/\">make.wordpress.org/core</a> をチェックしてみたください。</p>\n\n\n\n<p><a href=\"https://ja.wordpress.org/download/\">WordPress 5.2.</a>2 をダウンロードするか、<code>ダッシュボード → 更新</code>と 進み、<code>今すぐ更新する</code>をクリックしてください。自動バックグラウンド更新をサポートしているサイトは、すでに自動更新がはじまっています。</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/audrasjb/\">JB Audras</a>、<a href=\"https://profiles.wordpress.org/justinahinon/\">Justin Ahinon</a> と <a href=\"https://profiles.wordpress.org/marybaum/\">Mary Baum</a>   が共同でリードし、エグゼクティブディレクターの Josepha Haden Chomphosy の素晴らしいガイドを受け、他に30名の貢献者の皆さんとともにリリースしました。このリリースに協力していただいた皆さんに感謝します!</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/afragen/\">Andy Fragen</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/davidbaumwald/\">David Baumwald</a>, <a href=\"https://profiles.wordpress.org/dkarfa/\">Debabrata Karfa</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse/\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/jankimoradiya/\">Janki Moradiya</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jitendrabanjara1991/\">jitendrabanjara1991</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey/\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/jorgefilipecosta/\">Jorge Costa</a>, <a href=\"https://profiles.wordpress.org/justinahinon/\">Justin Ahinon</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/marybaum/\">Mary Baum</a>, <a href=\"https://profiles.wordpress.org/immeet94/\">Meet Makadia</a>, <a href=\"https://profiles.wordpress.org/dimadin/\">Milan Dinić</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/palmiak/\">palmiak</a>, <a href=\"https://profiles.wordpress.org/pedromendonca/\">Pedro Mendonça</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/ramiy/\">Rami Yushuvaev</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/tinkerbelly/\">sarah semark</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/shashank3105/\">Shashank Panchal</a>, <a href=\"https://profiles.wordpress.org/karmatosed/\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/hedgefield/\">Tim Hengeveld</a>, <a href=\"https://profiles.wordpress.org/vaishalipanchal/\">vaishalipanchal</a>, <a href=\"https://profiles.wordpress.org/vrimill/\">vrimill</a>、と <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:48:\"\n		\n		\n				\n		\n				\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"WordPress 5.2.1 メンテナンスリリース\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://ja.wordpress.org/2019/05/22/wordpress-5-2-1-maintenance-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 22 May 2019 07:22:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5650\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"以下は、Josephaが書いた WordPress.org 公式ブログの記事、「WordPress 5.2.1 [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"JOTAKI Taisuke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5703:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha</a>が書いた WordPress.org 公式ブログの記事、「<a href=\"https://wordpress.org/news/2019/05/wordpress-5-2-1-maintenance-release/\">WordPress 5.2.1 Maintenance Release</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。<br></p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordPress 5.2.1が利用可能になりました! このメンテナンスリリースでは、ブロックエディター、アクセシビリティ、国際化、そして<a href=\"https://ja.wordpress.org/2019/05/08/jaco/\">5.2で導入された</a>サイトヘルス機能の改善と33件のバグを修正しています。</p>\n\n\n\n<p><a href=\"https://core.trac.wordpress.org/query?status=closed&amp;resolution=fixed&amp;milestone=5.2.1&amp;order=priority\">変更点のすべてのリストは Trac で</a>参照できます。</p>\n\n\n\n<p>WordPress 5.2.1はショートサイクルのメンテナンスリリースです。<a href=\"https://core.trac.wordpress.org/query?milestone=5.2.2\">バージョン5.2.2</a>はだいたい2週間後のリリースが予定されています。</p>\n\n\n\n<p><a href=\"https://ja.wordpress.org/download/\">WordPress 5.2.1</a> をダウンロードするか、<code>ダッシュボード → 更新</code>と 進み、<code>今すぐ更新する</code>をクリックしてください。自動バックグラウンド更新をサポートしているサイトは、すでに自動更新がはじまっています。</p>\n\n\n\n<p>Jonathan Desrosiers と William Earnhardt が共同でリードし、他に52名の貢献者の皆さんとともにリリースしました。このリリースに協力していただいた皆さんに感謝します!</p>\n\n\n\n<p><a href=\"https://profiles.wordpress.org/xavortm/\">Alex Dimitrov</a>, <a href=\"https://profiles.wordpress.org/tellyworth/\">Alex Shiels</a>, <a href=\"https://profiles.wordpress.org/afercia/\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/aduth/\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/azaozz/\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/rarst/\">Andrey “Rarst” Savchenko</a>, <a href=\"https://profiles.wordpress.org/afragen/\">Andy Fragen</a>, <a href=\"https://profiles.wordpress.org/anischarolia/\">anischarolia</a>, <a href=\"https://profiles.wordpress.org/birgire/\">Birgir Erlendsson (birgire)</a>, <a href=\"https://profiles.wordpress.org/chesio/\">chesio</a>, <a href=\"https://profiles.wordpress.org/chetan200891/\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/daxelrod/\">daxelrod</a>, <a href=\"https://profiles.wordpress.org/dkarfa/\">Debabrata Karfa</a>, <a href=\"https://profiles.wordpress.org/odminstudios/\">Dima</a>, <a href=\"https://profiles.wordpress.org/dd32/\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/ocean90/\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/iseulde/\">Ella van Durpe</a>, <a href=\"https://profiles.wordpress.org/edocev/\">Emil Dotsev</a>, <a href=\"https://profiles.wordpress.org/sachyya-sachet/\">ghoul</a>, <a href=\"https://profiles.wordpress.org/gziolo/\">Grzegorz (Greg) Ziółkowski</a>, <a href=\"https://profiles.wordpress.org/gwwar/\">gwwar</a>, <a href=\"https://profiles.wordpress.org/hareesh-pillai/\">Hareesh</a>, <a href=\"https://profiles.wordpress.org/ianbelanger/\">Ian Belanger</a>, <a href=\"https://profiles.wordpress.org/imath/\">imath</a>, <a href=\"https://profiles.wordpress.org/audrasjb/\">Jb Audras</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt/\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/joen/\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey/\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha</a>, <a href=\"https://profiles.wordpress.org/jrf/\">jrf</a>, <a href=\"https://profiles.wordpress.org/kjellr/\">kjellr</a>, <a href=\"https://profiles.wordpress.org/clorith/\">Marius L. J.</a>, <a href=\"https://profiles.wordpress.org/mikengarrett/\">MikeNGarrett</a>, <a href=\"https://profiles.wordpress.org/dimadin/\">Milan Dinić</a>, <a href=\"https://profiles.wordpress.org/mukesh27/\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/onlanka/\">onlanka</a>, <a href=\"https://profiles.wordpress.org/paragoninitiativeenterprises/\">paragoninitiativeenterprises</a>, <a href=\"https://profiles.wordpress.org/parkcityj/\">parkcityj</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc/\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/presskopp/\">Presskopp</a>, <a href=\"https://profiles.wordpress.org/youknowriad/\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov/\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/netweb/\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/sebastienserre/\">Sébastien SERRE</a>, <a href=\"https://profiles.wordpress.org/tfrommen/\">Thorsten Frommen</a>, <a href=\"https://profiles.wordpress.org/hedgefield/\">Tim Hengeveld</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs/\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/timph/\">timph</a>, <a href=\"https://profiles.wordpress.org/tobiasbg/\">TobiasBg</a>, <a href=\"https://profiles.wordpress.org/tonybogdanov/\">tonybogdanov</a>, <a href=\"https://profiles.wordpress.org/tobifjellner/\">Tor-Bjorn Fjellner</a>, <a href=\"https://profiles.wordpress.org/earnjam/\">William Earnhardt</a>, そして <a href=\"https://profiles.wordpress.org/fierevere/\">Yui</a>。</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:48:\"\n		\n		\n				\n		\n				\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"WordPress 5.2 “ジャコ”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://ja.wordpress.org/2019/05/08/jaco/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 08 May 2019 02:04:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5639\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"以下は、Matt Mullenweg が書いた WordPress.org 公式ブログの記事、「WordPre [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"JOTAKI Taisuke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:29968:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/matt\">Matt Mullenweg</a> が書いた WordPress.org 公式ブログの記事、「<a href=\"https://wordpress.org/news/2019/05/jaco/\">WordPress 5.2 “Jaco”</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。<br></p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>サイトを安全に保つ</h2>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2019/05/about_maintain-wordpress-cropped.png?fit=632%2C500&amp;ssl=1\" alt=\"\" class=\"wp-image-6926\" /></figure>\n\n\n\n<p>名高く革新的なジャズベーシスト、ジャコ・パストリアスに敬意を評して命名された WordPress 5.2がダウンロードもしくは WordPress のダッシュボードからのアップデートが可能になりました。このアップデートの新しい機能により、サイトでもし何かがうまくいかなかったときの修正がこれまでより、より容易になりました。</p>\n\n\n\n<p>設定の問題や致命的なエラーを特定、修正するためのより強力なツールが備わりました。クライアントを手助けする開発者であれ、ご自分のサイトのみを管理する方であれ、これらのツールは必要なときに正しい情報を手に入れる助けになるでしょう。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h3>サイトヘルスチェック</h3>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"alignleft\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2019/05/about_site-health.png?resize=205%2C143&amp;ssl=1\" alt=\"\" class=\"wp-image-6927\" /></figure></div>\n\n\n\n<p>5.1で導入された<a href=\"https://ja.wordpress.org/2019/02/22/betty/\">サイトヘルス</a>機能に加え、このリリースではよくある設定問題のデバッグに役立つ2つの新しいページが追加されました。また、開発者がサイト管理者のためにデバッグ情報を含められるスペースも追加しています。</p>\n\n\n\n<h3>PHP エラープロテクション</h3>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"alignleft\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2019/05/about_error-protection.png?resize=202%2C228&amp;ssl=1\" alt=\"\" class=\"wp-image-6930\" /></figure></div>\n\n\n\n<p>この管理者向けのアップデートにより、開発者の時間を損なわずに致命的なエラーを安全に修正もしくは管理できるようになります。いわゆる「死のホワイトスクリーン」のより優れた処理と、エラーを引き起こしているプラグインもしくはテーマを停止させるリカバリーモードへの移行が特徴です。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>皆さんのための改善</h2>\n\n\n\n<h3>アクセシビリティの向上</h3>\n\n\n\n<p>スクリーンリーダーやその他の支援技術を利用する方々のため、状況認識とキーボードナビゲーションのフローを改善するための多くの変更が連携して施されました。</p>\n\n\n\n<h3>新しいダッシュボードアイコン</h3>\n\n\n\n<p>Instagram、BuddyPress 用のアイコンセット、そしてグローバルな多様性を受け入れるための回転する地球を含む13個の新しいアイコンが備わりました。ダッシュボードで見つけてお楽しみください !</p>\n\n\n\n<h3>プラグイン互換性チェック</h3>\n\n\n\n<p>インストールされているプラグインがサイトの PHP のバージョンと互換性があるかを WordPress が自動的に検知するようになりました。もしそのプラグインが現在使用中の PHP のバージョンよりも上のバージョンを必要とする場合、潜在的な互換性エラーを回避するため、WordPress はそのプラグインを有効化しません。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>開発者をハッピーに</h2>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/2019/03/26/coding-standards-updates-for-php-5-6/\"><strong>PHP バージョンの引き上げ</strong></a></p>\n\n\n\n<p>サポートされる PHP の最低バージョンが5.6.20になりました。WordPress 5.2から、テーマとプラグインは名前空間、無名関数、そしてもっとたくさんのことを安全に活用できるようになりました !</p>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/2019/04/24/developer-focused-privacy-updates-in-5-2/\"><strong>プライバシーのアップデート</strong></a></p>\n\n\n\n<p>新しいテーマページテンプレート、条件分岐関数、そしてプライバシーポリシーページのデザインとカスタマイズをより容易にする2つの CSS クラス。</p>\n\n\n\n<p><strong><a href=\"https://make.wordpress.org/core/2019/04/24/miscellaneous-developer-updates-in-5-2/\">新しいボディタグのフック</a> </strong></p>\n\n\n\n<p>5.2 では <code>wp_body_open</code> フックが導入されました。テーマが、<code>&lt;body&gt;</code> 要素の最初にコードを挿入できるようにします。</p>\n\n\n\n<p><a href=\"https://make.wordpress.org/core/2019/03/25/building-javascript/\"><strong>JavaScript のビルド</strong></a></p>\n\n\n\n<p>wordpress/scripts パッケージ内での webpack と Babel 設定の追加により、モダンな JavaScript を書くための複雑なビルドツールのセットアップに開発者は悩む必要がなくなりました。</p>\n\n\n\n<p><em>*PHP の古いバージョン(5.6.20未満)でサイトが動いている場合は、5.2をインストールする前に <a href=\"https://ja.wordpress.org/support/update-php/\">PHP をアップデート</a>してください。</em></p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>チーム</h2>\n\n\n\n<p>このリリースは <a href=\"http://ma.tt/\">Matt Mullenweg</a>、<a href=\"https://josepha.blog/\">Josepha Haden Chomphosy</a>、そして <a href=\"https://pento.net/\">Gary Pendergast</a> によってリードされました。 彼らは以下の327名の寛大なボランティア貢献者の皆さんに素晴らしい力添えを受けました。ご利用中の音楽サービスでジャコ・パストリアスの曲を流しながら、この方たちのプロフィールページを眺めてみてください:<a href=\"https://profiles.wordpress.org/aandrewdixon\">aandrewdixon</a>, <a href=\"https://profiles.wordpress.org/aaroncampbell\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/jorbin\">Aaron Jorbin</a>, <a href=\"https://profiles.wordpress.org/adamsilverstein\">Adam Silverstein</a>, <a href=\"https://profiles.wordpress.org/adamsoucie\">Adam Soucie</a>, <a href=\"https://profiles.wordpress.org/oztaser\">Adil Öztaşer</a>, <a href=\"https://profiles.wordpress.org/ajitbohra\">Ajit Bohra</a>, <a href=\"https://profiles.wordpress.org/schlessera\">Alain Schlesser</a>, <a href=\"https://profiles.wordpress.org/aldavigdis\">aldavigdis</a>, <a href=\"https://profiles.wordpress.org/alexdenning\">Alex Denning</a>, <a href=\"https://profiles.wordpress.org/akirk\">Alex Kirk</a>, <a href=\"https://profiles.wordpress.org/viper007bond\">Alex Mills</a>, <a href=\"https://profiles.wordpress.org/tellyworth\">Alex Shiels</a>, <a href=\"https://profiles.wordpress.org/lexiqueen\">Alexis</a>, <a href=\"https://profiles.wordpress.org/alexislloyd\">Alexis Lloyd</a>, <a href=\"https://profiles.wordpress.org/allancole\">allancole</a>, <a href=\"https://profiles.wordpress.org/allendav\">Allen Snook</a>, <a href=\"https://profiles.wordpress.org/arena\">André</a>, <a href=\"https://profiles.wordpress.org/nosolosw\">Andrés</a>, <a href=\"https://profiles.wordpress.org/andraganescu\">andraganescu</a>, <a href=\"https://profiles.wordpress.org/afercia\">Andrea Fercia</a>, <a href=\"https://profiles.wordpress.org/andreamiddleton\">Andrea Middleton</a>, <a href=\"https://profiles.wordpress.org/euthelup\">Andrei Lupu</a>, <a href=\"https://profiles.wordpress.org/aduth\">Andrew Duthie</a>, <a href=\"https://profiles.wordpress.org/nacin\">Andrew Nacin</a>, <a href=\"https://profiles.wordpress.org/azaozz\">Andrew Ozz</a>, <a href=\"https://profiles.wordpress.org/rarst\">Andrey &#8220;Rarst&#8221; Savchenko</a>, <a href=\"https://profiles.wordpress.org/afragen\">Andy Fragen</a>, <a href=\"https://profiles.wordpress.org/andizer\">Andy Meerwaldt</a>, <a href=\"https://profiles.wordpress.org/aniketpatel\">Aniket Patel</a>, <a href=\"https://profiles.wordpress.org/atimmer\">Anton Timmermans</a>, <a href=\"https://profiles.wordpress.org/vanyukov\">Anton Vanyukov</a>, <a href=\"https://profiles.wordpress.org/avillegasn\">Antonio Villegas</a>, <a href=\"https://profiles.wordpress.org/antonypuckey\">antonypuckey</a>, <a href=\"https://profiles.wordpress.org/aristath\">Aristeides Stathopoulos</a>, <a href=\"https://profiles.wordpress.org/wpboss\">Aslam Shekh</a>, <a href=\"https://profiles.wordpress.org/axaak\">axaak</a>, <a href=\"https://profiles.wordpress.org/pixolin\">Bego Mario Garde</a>, <a href=\"https://profiles.wordpress.org/empireoflight\">Ben Dunkle</a>, <a href=\"https://profiles.wordpress.org/britner\">Ben Ritner &#8211; Kadence Themes</a>, <a href=\"https://profiles.wordpress.org/bfintal\">Benjamin Intal</a>, <a href=\"https://profiles.wordpress.org/billerickson\">Bill Erickson</a>, <a href=\"https://profiles.wordpress.org/birgire\">Birgir Erlendsson</a>, <a href=\"https://profiles.wordpress.org/bodohugobarwich\">Bodo (Hugo) Barwich</a>, <a href=\"https://profiles.wordpress.org/gitlost\">bonger</a>, <a href=\"https://profiles.wordpress.org/boonebgorges\">Boone Gorges</a>, <a href=\"https://profiles.wordpress.org/bradleyt\">Bradley Taylor</a>, <a href=\"https://profiles.wordpress.org/kraftbj\">Brandon Kraft</a>, <a href=\"https://profiles.wordpress.org/brentswisher\">Brent Swisher</a>, <a href=\"https://profiles.wordpress.org/bulletdigital\">bulletdigital</a>, <a href=\"https://profiles.wordpress.org/burhandodhy\">Burhan Nasir</a>, <a href=\"https://profiles.wordpress.org/cathibosco1\">Cathi Bosco</a>, <a href=\"https://profiles.wordpress.org/chetan200891\">Chetan Prajapati</a>, <a href=\"https://profiles.wordpress.org/chiaralovelaces\">Chiara Magnani</a>, <a href=\"https://profiles.wordpress.org/chouby\">Chouby</a>, <a href=\"https://profiles.wordpress.org/chrisvanpatten\">Chris Van Patten</a>, <a href=\"https://profiles.wordpress.org/dswebsme\">D.S. Webster</a>, <a href=\"https://profiles.wordpress.org/colorful-tones\">Damon Cook</a>, <a href=\"https://profiles.wordpress.org/danielbachhuber\">Daniel Bachhuber</a>, <a href=\"https://profiles.wordpress.org/danieltj\">Daniel James</a>, <a href=\"https://profiles.wordpress.org/diddledan\">Daniel Llewellyn</a>, <a href=\"https://profiles.wordpress.org/talldanwp\">Daniel Richards</a>, <a href=\"https://profiles.wordpress.org/mte90\">Daniele Scasciafratte</a>, <a href=\"https://profiles.wordpress.org/nerrad\">Darren Ethier (nerrad)</a>, <a href=\"https://profiles.wordpress.org/drw158\">Dave Whitley</a>, <a href=\"https://profiles.wordpress.org/davefx\">DaveFX</a>, <a href=\"https://profiles.wordpress.org/davetgreen\">davetgreen</a>, <a href=\"https://profiles.wordpress.org/david.binda\">David Binovec</a>, <a href=\"https://profiles.wordpress.org/davidbinda\">David Binovec</a>, <a href=\"https://profiles.wordpress.org/dlh\">David Herrera</a>, <a href=\"https://profiles.wordpress.org/dgroddick\">David Roddick</a>, <a href=\"https://profiles.wordpress.org/get_dave\">David Smith</a>, <a href=\"https://profiles.wordpress.org/davidbaumwald\">davidb</a>, <a href=\"https://profiles.wordpress.org/folletto\">Davide &#8216;Folletto&#8217; Casali</a>, <a href=\"https://profiles.wordpress.org/dekervit\">dekervit</a>, <a href=\"https://profiles.wordpress.org/denis-de-bernardy\">Denis de Bernardy</a>, <a href=\"https://profiles.wordpress.org/dmsnell\">Dennis Snell</a>, <a href=\"https://profiles.wordpress.org/valendesigns\">Derek Herman</a>, <a href=\"https://profiles.wordpress.org/pcfreak30\">Derrick Hammer</a>, <a href=\"https://profiles.wordpress.org/designsimply\">designsimply</a>, <a href=\"https://profiles.wordpress.org/dhanukanuwan\">Dhanukanuwan</a>, <a href=\"https://profiles.wordpress.org/dharm1025\">Dharmesh Patel</a>, <a href=\"https://profiles.wordpress.org/dianeco\">Diane</a>, <a href=\"https://profiles.wordpress.org/diegoreymendez\">diegoreymendez</a>, <a href=\"https://profiles.wordpress.org/dilipbheda\">Dilip Bheda</a>, <a href=\"https://profiles.wordpress.org/odminstudios\">Dima</a>, <a href=\"https://profiles.wordpress.org/dd32\">Dion Hulse</a>, <a href=\"https://profiles.wordpress.org/dency\">Dixita Dusara</a>, <a href=\"https://profiles.wordpress.org/iamdmitrymayorov\">Dmitry Mayorov</a>, <a href=\"https://profiles.wordpress.org/ocean90\">Dominik Schilling</a>, <a href=\"https://profiles.wordpress.org/drewapicture\">Drew Jaynes</a>, <a href=\"https://profiles.wordpress.org/dsifford\">dsifford</a>, <a href=\"https://profiles.wordpress.org/iseulde\">Ella van Durpe</a>, <a href=\"https://profiles.wordpress.org/etoledom\">etoledom</a>, <a href=\"https://profiles.wordpress.org/fabiankaegy\">fabiankaegy</a>, <a href=\"https://profiles.wordpress.org/faisal03\">Faisal Alvi</a>, <a href=\"https://profiles.wordpress.org/parsmizban\">Farhad Sakhaei</a>, <a href=\"https://profiles.wordpress.org/flixos90\">Felix Arntz</a>, <a href=\"https://profiles.wordpress.org/peaceablewhale\">Franklin Tse</a>, <a href=\"https://profiles.wordpress.org/fuegas\">Fuegas</a>, <a href=\"https://profiles.wordpress.org/garrett-eclipse\">Garrett Hyder</a>, <a href=\"https://profiles.wordpress.org/garyj\">Gary Jones</a>, <a href=\"https://profiles.wordpress.org/soulseekah\">Gennady Kovshenin</a>, <a href=\"https://profiles.wordpress.org/gziolo\">Grzegorz (Greg) Ziółkowski</a>, <a href=\"https://profiles.wordpress.org/wido\">Guido Scialfa</a>, <a href=\"https://profiles.wordpress.org/gutendev\">GutenDev</a>, <a href=\"https://profiles.wordpress.org/hannahmalcolm\">Hannah Malcolm</a>, <a href=\"https://profiles.wordpress.org/hardik-amipara\">Hardik Amipara</a>, <a href=\"https://profiles.wordpress.org/thakkarhardik\">Hardik Thakkar</a>, <a href=\"https://profiles.wordpress.org/luehrsen\">Hendrik Luehrsen</a>, <a href=\"https://profiles.wordpress.org/henrywright-1\">Henry</a>, <a href=\"https://profiles.wordpress.org/henrywright\">Henry Wright</a>, <a href=\"https://profiles.wordpress.org/ryanshoover\">Hoover</a>, <a href=\"https://profiles.wordpress.org/ianbelanger\">Ian Belanger</a>, <a href=\"https://profiles.wordpress.org/iandunn\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/ice9js\">ice9js</a>, <a href=\"https://profiles.wordpress.org/zinigor\">Igor Zinovyev</a>, <a href=\"https://profiles.wordpress.org/imath\">imath</a>, <a href=\"https://profiles.wordpress.org/ixium\">Ixium</a>, <a href=\"https://profiles.wordpress.org/jdgrimes\">J.D. Grimes</a>, <a href=\"https://profiles.wordpress.org/jakeparis\">jakeparis</a>, <a href=\"https://profiles.wordpress.org/cc0a\">James</a>, <a href=\"https://profiles.wordpress.org/janak007\">janak Kaneriya</a>, <a href=\"https://profiles.wordpress.org/jarred-kennedy\">Jarred Kennedy</a>, <a href=\"https://profiles.wordpress.org/vengisss\">Javier Villanueva</a>, <a href=\"https://profiles.wordpress.org/jayupadhyay01\">Jay Upadhyay</a>, <a href=\"https://profiles.wordpress.org/jaydeep-rami\">Jaydip Rami</a>, <a href=\"https://profiles.wordpress.org/jaymanpandya\">Jayman Pandya</a>, <a href=\"https://profiles.wordpress.org/jdeeburke\">jdeeburke</a>, <a href=\"https://profiles.wordpress.org/audrasjb\">Jean-Baptiste Audras</a>, <a href=\"https://profiles.wordpress.org/jeffpaul\">Jeff Paul</a>, <a href=\"https://profiles.wordpress.org/cheffheid\">Jeffrey de Wit</a>, <a href=\"https://profiles.wordpress.org/miss_jwo\">Jenny</a>, <a href=\"https://profiles.wordpress.org/jeremyfelt\">Jeremy Felt</a>, <a href=\"https://profiles.wordpress.org/endocreative\">Jeremy Green</a>, <a href=\"https://profiles.wordpress.org/jeherve\">Jeremy Herve</a>, <a href=\"https://profiles.wordpress.org/jitendrabanjara1991\">jitendrabanjara1991</a>, <a href=\"https://profiles.wordpress.org/johnjamesjacoby\">JJJ</a>, <a href=\"https://profiles.wordpress.org/joedolson\">Joe Dolson</a>, <a href=\"https://profiles.wordpress.org/joemcgill\">Joe McGill</a>, <a href=\"https://profiles.wordpress.org/joen\">Joen Asmussen</a>, <a href=\"https://profiles.wordpress.org/j-falk\">Johan Falk</a>, <a href=\"https://profiles.wordpress.org/johannadevos\">Johanna de Vos</a>, <a href=\"https://profiles.wordpress.org/johnbillion\">John Blackbourn</a>, <a href=\"https://profiles.wordpress.org/desrosj\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/jonathandejong\">Jonathandejong</a>, <a href=\"https://profiles.wordpress.org/spacedmonkey\">Jonny Harris</a>, <a href=\"https://profiles.wordpress.org/jonnybojangles\">jonnybojangles</a>, <a href=\"https://profiles.wordpress.org/joostdevalk\">Joost de Valk</a>, <a href=\"https://profiles.wordpress.org/jordesign\">jordesign</a>, <a href=\"https://profiles.wordpress.org/koke\">Jorge Bernal</a>, <a href=\"https://profiles.wordpress.org/jorgefilipecosta\">Jorge Costa</a>, <a href=\"https://profiles.wordpress.org/keraweb\">Jory Hogeveen</a>, <a href=\"https://profiles.wordpress.org/jcastaneda\">Jose Castaneda</a>, <a href=\"https://profiles.wordpress.org/josephwa\">josephwa</a>, <a href=\"https://profiles.wordpress.org/builtbynorthby\">Josh Feck</a>, <a href=\"https://profiles.wordpress.org/joshuawold\">JoshuaWold</a>, <a href=\"https://profiles.wordpress.org/joyously\">Joy</a>, <a href=\"https://profiles.wordpress.org/jplojohn\">jplo</a>, <a href=\"https://profiles.wordpress.org/jrtashjian\">JR Tashjian</a>, <a href=\"https://profiles.wordpress.org/jrf\">jrf</a>, <a href=\"https://profiles.wordpress.org/juiiee8487\">Juhi Patel</a>, <a href=\"https://profiles.wordpress.org/juliarrr\">juliarrr</a>, <a href=\"https://profiles.wordpress.org/kadamwhite\">K. Adam White</a>, <a href=\"https://profiles.wordpress.org/kamataryo\">KamataRyo</a>, <a href=\"https://profiles.wordpress.org/karinedo\">Karine Do</a>, <a href=\"https://profiles.wordpress.org/katyatina\">Katyatina</a>, <a href=\"https://profiles.wordpress.org/kelin1003\">Kelin Chauhan</a>, <a href=\"https://profiles.wordpress.org/ryelle\">Kelly Dwan</a>, <a href=\"https://profiles.wordpress.org/itzmekhokan\">Khokan Sardar</a>, <a href=\"https://profiles.wordpress.org/killua99\">killua99</a>, <a href=\"https://profiles.wordpress.org/ixkaito\">Kite</a>, <a href=\"https://profiles.wordpress.org/kjellr\">Kjell Reigstad</a>, <a href=\"https://profiles.wordpress.org/knutsp\">Knut Sparhell</a>, <a href=\"https://profiles.wordpress.org/olein\">Koji Kuno</a>, <a href=\"https://profiles.wordpress.org/obenland\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/xkon\">Konstantinos Xenos</a>, <a href=\"https://profiles.wordpress.org/codemascot\">Kʜᴀɴ (ಠ_ಠ)</a>, <a href=\"https://profiles.wordpress.org/laurelfulford\">laurelfulford</a>, <a href=\"https://profiles.wordpress.org/lkraav\">lkraav</a>, <a href=\"https://profiles.wordpress.org/lukecarbis\">Luke Carbis</a>, <a href=\"https://profiles.wordpress.org/lgedeon\">Luke Gedeon</a>, <a href=\"https://profiles.wordpress.org/lukepettway\">Luke Pettway</a>, <a href=\"https://profiles.wordpress.org/maedahbatool\">Maedah Batool</a>, <a href=\"https://profiles.wordpress.org/travel_girl\">Maja Benke</a>, <a href=\"https://profiles.wordpress.org/malae\">Malae</a>, <a href=\"https://profiles.wordpress.org/manzoorwanijk\">Manzoor Wani</a>, <a href=\"https://profiles.wordpress.org/robobot3000\">Marcin</a>, <a href=\"https://profiles.wordpress.org/iworks\">Marcin Pietrzak</a>, <a href=\"https://profiles.wordpress.org/marco-peralta\">Marco Peralta</a>, <a href=\"https://profiles.wordpress.org/marcofernandes\">marcofernandes</a>, <a href=\"https://profiles.wordpress.org/mkaz\">Marcus Kazmierczak</a>, <a href=\"https://profiles.wordpress.org/marekhrabe\">marekhrabe</a>, <a href=\"https://profiles.wordpress.org/clorith\">Marius Jensen</a>, <a href=\"https://profiles.wordpress.org/mbelchev\">Mariyan Belchev</a>, <a href=\"https://profiles.wordpress.org/mapk\">Mark Uraine</a>, <a href=\"https://profiles.wordpress.org/markcallen\">markcallen</a>, <a href=\"https://profiles.wordpress.org/mechter\">Markus Echterhoff</a>, <a href=\"https://profiles.wordpress.org/m-e-h\">Marty Helmick</a>, <a href=\"https://profiles.wordpress.org/marybaum\">marybaum</a>, <a href=\"https://profiles.wordpress.org/mattnyeus\">mattnyeus</a>, <a href=\"https://profiles.wordpress.org/mdwolinski\">mdwolinski</a>, <a href=\"https://profiles.wordpress.org/immeet94\">Meet Makadia</a>, <a href=\"https://profiles.wordpress.org/melchoyce\">Mel Choyce</a>, <a href=\"https://profiles.wordpress.org/mheikkila\">mheikkila</a>, <a href=\"https://profiles.wordpress.org/wpscholar\">Micah Wood</a>, <a href=\"https://profiles.wordpress.org/michelleweber\">michelleweber</a>, <a href=\"https://profiles.wordpress.org/mcsf\">Miguel Fonseca</a>, <a href=\"https://profiles.wordpress.org/mmtr86\">Miguel Torres</a>, <a href=\"https://profiles.wordpress.org/simison\">Mikael Korpela</a>, <a href=\"https://profiles.wordpress.org/mauteri\">Mike Auteri</a>, <a href=\"https://profiles.wordpress.org/mikeschinkel\">Mike Schinkel [WPLib Box project lead]</a>, <a href=\"https://profiles.wordpress.org/mikeschroder\">Mike Schroder</a>, <a href=\"https://profiles.wordpress.org/mikeselander\">Mike Selander</a>, <a href=\"https://profiles.wordpress.org/mikengarrett\">MikeNGarrett</a>, <a href=\"https://profiles.wordpress.org/dimadin\">Milan Dinić</a>, <a href=\"https://profiles.wordpress.org/0mirka00\">mirka</a>, <a href=\"https://profiles.wordpress.org/lord_viper\">Mobin Ghasempoor</a>, <a href=\"https://profiles.wordpress.org/mohadeseghasemi\">Mohadese Ghasemi</a>, <a href=\"https://profiles.wordpress.org/saimonh\">Mohammed Saimon</a>, <a href=\"https://profiles.wordpress.org/mor10\">Morten Rand-Hendriksen</a>, <a href=\"https://profiles.wordpress.org/man4toman\">Morteza Geransayeh</a>, <a href=\"https://profiles.wordpress.org/mmuhsin\">Muhammad Muhsin</a>, <a href=\"https://profiles.wordpress.org/mukesh27\">Mukesh Panchal</a>, <a href=\"https://profiles.wordpress.org/m_uysl\">Mustafa Uysal</a>, <a href=\"https://profiles.wordpress.org/mzorz\">mzorz</a>, <a href=\"https://profiles.wordpress.org/nfmohit\">Nahid F. Mohit</a>, <a href=\"https://profiles.wordpress.org/naoki0h\">Naoki Ohashi</a>, <a href=\"https://profiles.wordpress.org/nateallen\">Nate Allen</a>, <a href=\"https://profiles.wordpress.org/greatislander\">Ned Zimmerman</a>, <a href=\"https://profiles.wordpress.org/neobabis\">Neokazis Charalampos</a>, <a href=\"https://profiles.wordpress.org/modernnerd\">Nick Cernis</a>, <a href=\"https://profiles.wordpress.org/ndiego\">Nick Diego</a>, <a href=\"https://profiles.wordpress.org/celloexpressions\">Nick Halsey</a>, <a href=\"https://profiles.wordpress.org/jainnidhi\">Nidhi Jain</a>, <a href=\"https://profiles.wordpress.org/nielslange\">Niels Lange</a>, <a href=\"https://profiles.wordpress.org/nielsdeblaauw\">nielsdeblaauw</a>, <a href=\"https://profiles.wordpress.org/nnikolov\">Nikolay Nikolov</a>, <a href=\"https://profiles.wordpress.org/rabmalin\">Nilambar Sharma</a>, <a href=\"https://profiles.wordpress.org/ninio\">ninio</a>, <a href=\"https://profiles.wordpress.org/notnownikki\">notnownikki</a>, <a href=\"https://profiles.wordpress.org/pandelisz\">pandelisz</a>, <a href=\"https://profiles.wordpress.org/paragoninitiativeenterprises\">paragoninitiativeenterprises</a>, <a href=\"https://profiles.wordpress.org/swissspidy\">Pascal Birchler</a>, <a href=\"https://profiles.wordpress.org/pbearne\">Paul Bearne</a>, <a href=\"https://profiles.wordpress.org/pbiron\">Paul Biron</a>, <a href=\"https://profiles.wordpress.org/pedromendonca\">Pedro Mendonça</a>, <a href=\"https://profiles.wordpress.org/peterbooker\">Peter Booker</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/pfiled\">pfiled</a>, <a href=\"https://profiles.wordpress.org/pilou69\">pilou69</a>, <a href=\"https://profiles.wordpress.org/pranalipatel\">Pranali Patel</a>, <a href=\"https://profiles.wordpress.org/pratikkry\">Pratik K. Yadav</a>, <a href=\"https://profiles.wordpress.org/presskopp\">Presskopp</a>, <a href=\"https://profiles.wordpress.org/psealock\">psealock</a>, <a href=\"https://profiles.wordpress.org/bamadesigner\">Rachel Cherry</a>, <a href=\"https://profiles.wordpress.org/rahmon\">Rahmon</a>, <a href=\"https://profiles.wordpress.org/superpoincare\">Ramanan</a>, <a href=\"https://profiles.wordpress.org/ramiy\">Rami Yushuvaev</a>, <a href=\"https://profiles.wordpress.org/ramizmanked\">Ramiz Manked</a>, <a href=\"https://profiles.wordpress.org/ramonopoly\">ramonopoly</a>, <a href=\"https://profiles.wordpress.org/youknowriad\">Riad Benguella</a>, <a href=\"https://profiles.wordpress.org/rinatkhaziev\">Rinat Khaziev</a>, <a href=\"https://profiles.wordpress.org/noisysocks\">Robert Anderson</a>, <a href=\"https://profiles.wordpress.org/rsusanto\">Rudy Susanto</a>, <a href=\"https://profiles.wordpress.org/ryan\">Ryan Boren</a>, <a href=\"https://profiles.wordpress.org/welcher\">Ryan Welcher</a>, <a href=\"https://profiles.wordpress.org/saeedfard\">Saeed Fard</a>, <a href=\"https://profiles.wordpress.org/salcode\">Sal Ferrarello</a>, <a href=\"https://profiles.wordpress.org/samanehmirrajabi\">Samaneh Mirrajabi</a>, <a href=\"https://profiles.wordpress.org/samikeijonen\">Sami Keijonen</a>, <a href=\"https://profiles.wordpress.org/elhardoum\">Samuel Elh</a>, <a href=\"https://profiles.wordpress.org/sgarza\">Santiago Garza</a>, <a href=\"https://profiles.wordpress.org/saracope\">Sara Cope</a>, <a href=\"https://profiles.wordpress.org/saracup\">saracup</a>, <a href=\"https://profiles.wordpress.org/tinkerbelly\">sarah semark</a>, <a href=\"https://profiles.wordpress.org/sebastianpisula\">Sebastian Pisula</a>, <a href=\"https://profiles.wordpress.org/ebrahimzadeh\">Sekineh Ebrahimzadeh</a>, <a href=\"https://profiles.wordpress.org/sergeybiryukov\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/sergioestevao\">SergioEstevao</a>, <a href=\"https://profiles.wordpress.org/sgastard\">sgastard</a>, <a href=\"https://profiles.wordpress.org/sharifkiberu\">sharifkiberu</a>, <a href=\"https://profiles.wordpress.org/shazdeh\">shazdeh</a>, <a href=\"https://profiles.wordpress.org/shital-patel\">Shital Marakana</a>, <a href=\"https://profiles.wordpress.org/sky_76\">sky_76</a>, <a href=\"https://profiles.wordpress.org/soean\">Soren Wrede</a>, <a href=\"https://profiles.wordpress.org/netweb\">Stephen Edgar</a>, <a href=\"https://profiles.wordpress.org/stevenkword\">Steven Word</a>, <a href=\"https://profiles.wordpress.org/subrataemfluence\">Subrata Sarkar</a>, <a href=\"https://profiles.wordpress.org/sudar\">Sudar Muthu</a>, <a href=\"https://profiles.wordpress.org/sudhiryadav\">Sudhir Yadav</a>, <a href=\"https://profiles.wordpress.org/szepeviktor\">szepe.viktor</a>, <a href=\"https://profiles.wordpress.org/miyauchi\">Takayuki Miyauchi</a>, <a href=\"https://profiles.wordpress.org/karmatosed\">Tammie Lister</a>, <a href=\"https://profiles.wordpress.org/themonic\">Themonic</a>, <a href=\"https://profiles.wordpress.org/thomstark\">thomstark</a>, <a href=\"https://profiles.wordpress.org/tfrommen\">Thorsten Frommen</a>, <a href=\"https://profiles.wordpress.org/thrijith\">Thrijith Thankachan</a>, <a href=\"https://profiles.wordpress.org/hedgefield\">Tim Hedgefield</a>, <a href=\"https://profiles.wordpress.org/timwright12\">Tim Wright</a>, <a href=\"https://profiles.wordpress.org/timothyblynjacobs\">Timothy Jacobs</a>, <a href=\"https://profiles.wordpress.org/timph\">timph</a>, <a href=\"https://profiles.wordpress.org/tmatsuur\">tmatsuur</a>, <a href=\"https://profiles.wordpress.org/ohiosierra\">tmdesigned</a>, <a href=\"https://profiles.wordpress.org/tmdesigned\">tmdesigned</a>, <a href=\"https://profiles.wordpress.org/tz-media\">Tobias Zimpel</a>, <a href=\"https://profiles.wordpress.org/tomharrigan\">TomHarrigan</a>, <a href=\"https://profiles.wordpress.org/tobifjellner\">Tor-Bjorn Fjellner</a>, <a href=\"https://profiles.wordpress.org/toro_unit\">Toro_Unit (Hiroshi Urabe)</a>, <a href=\"https://profiles.wordpress.org/torres126\">torres126</a>, <a href=\"https://profiles.wordpress.org/zodiac1978\">Torsten Landsiedel</a>, <a href=\"https://profiles.wordpress.org/itowhid06\">Towhidul Islam</a>, <a href=\"https://profiles.wordpress.org/liljimmi\">Tracy Levesque</a>, <a href=\"https://profiles.wordpress.org/umang7\">Umang Bhanvadia</a>, <a href=\"https://profiles.wordpress.org/vaishalipanchal\">Vaishali Panchal</a>, <a href=\"https://profiles.wordpress.org/webfactory\">WebFactory</a>, <a href=\"https://profiles.wordpress.org/westonruter\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/bahia0019\">William &#8216;Bahia&#8217; Bay</a>, <a href=\"https://profiles.wordpress.org/earnjam\">William Earnhardt</a>, <a href=\"https://profiles.wordpress.org/williampatton\">williampatton</a>, <a href=\"https://profiles.wordpress.org/willscrlt\">Willscrlt</a>, <a href=\"https://profiles.wordpress.org/wolly\">Wolly aka Paolo Valenti</a>, <a href=\"https://profiles.wordpress.org/wrwrwr0\">wrwrwr0</a>, <a href=\"https://profiles.wordpress.org/yoavf\">Yoav Farhi</a>, <a href=\"https://profiles.wordpress.org/fierevere\">Yui</a>, そして <a href=\"https://profiles.wordpress.org/zebulan\">zebulan</a>。</p>\n\n\n\n<p>また、<a href=\"https://wordpress.org/support/\">サポートフォーラム</a> (<a href=\"https://ja.wordpress.org/support/\">日本語</a>)で貢献してくださっているコミュニティボランティアの皆さんにも感謝いたします。WordPress を初めて使う方からであれ、最初のリリースからの利用者であれ、彼らは世界中からの質問に答えています。こうしたリリースは皆さんのおかげでより成功したものと</p>\n\n\n\n<p>最新情報を追ったり、貢献したい方は <a href=\"https://make.wordpress.org/\">Make WordPress</a> や<a href=\"https://make.wordpress.org/core/\">コア開発ブログ</a>をチェックしてみてください。</p>\n\n\n\n<p>WordPress を選んでいただき、ありがとうございます !</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:48:\"\n		\n		\n				\n		\n				\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.2 RC2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://ja.wordpress.org/2019/05/06/wordpress-5-2-rc2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 06 May 2019 06:45:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5636\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"以下は、Josephaが書いた WordPress.org 公式ブログの記事、「WordPress 5.2 R [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"JOTAKI Taisuke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3447:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha</a>が書いた WordPress.org 公式ブログの記事、<a href=\"https://wordpress.org/news/2019/05/wordpress-5-2-rc2/\">「WordPress 5.2 RC 2」</a>を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordPress 5.2 の2つ目のリリース候補が利用可能になりました !</p>\n\n\n\n<p>WordPress  5.2は<strong><a href=\"https://make.wordpress.org/core/5-2/\">5月7日 (火)</a></strong><a href=\"https://make.wordpress.org/core/5-2/\"> </a>にリリース予定ですが、そのためには皆さんの手助けが必要です。まだバージョン5.2を試していないなら、今がその時です。</p>\n\n\n\n<p>WordPress 5.2リリース候補版をテストする方法は2つあります。<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使うか、<a href=\"https://wordpress.org/wordpress-5.2-RC2.zip\">ここから RC 版 (zip) をダウンロード</a>してください。</p>\n\n\n\n<p>WordPress 5.2についての詳細は<a href=\"https://wordpress.org/news/2019/04/wordpress-5-2-release-candidate/\">最初のリリース候補の投稿を御覧ください。</a>(<a href=\"https://ja.wordpress.org/2019/04/29/wordpress-5-2-release-candidate/\">日本語</a>)</p>\n\n\n\n<p>このリリースには最終的なアバウトページのデザインが含まれます。また、次の修正が含まれています:</p>\n\n\n\n<ul><li>リカバリーモード通知メールの正しい翻訳 (#47093)。</li><li>マルチサイトでのサイトヘルス機能の改善 (#47084)。</li></ul>\n\n\n\n<h2>プラグイン・テーマ開発者の方へ</h2>\n\n\n\n<p>WordPress 5.2でプラグインとテーマをテストし、readme ファイルの「検証済み最新バージョン」を 5.2に更新してください。互換性の問題を発見した場合は、最終リリース前に解決できるように<a href=\"https://wordpress.org/support/forum/alphabeta/\">サポートフォーラム (英語版)</a> に投稿してください。</p>\n\n\n\n<p>大きな変更の詳細に触れた、開発者向けの<a href=\"https://make.wordpress.org/core/2019/04/16/wordpress-5-2-field-guide/\">5.2フィールドガイド</a>も公開しています。</p>\n\n\n\n<h2>協力するには</h2>\n\n\n\n<p>英語以外の言語を話す方は、<a href=\"https://translate.wordpress.org/projects/wp/dev\">WordPress を100言語以上に翻訳するのにご協力</a>ください !</p>\n\n\n\n<p><strong>バグを見つけたと思った場合</strong>は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta\">アルファ・ベータエリア</a><a href=\"https://ja.wordpress.org/support/forum/alphabeta/\"> (日本語)</a> に投稿できます。情報をお待ちしています。もし再現可能なバグ報告を書ける場合は <a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac に報告</a>してください。<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ一覧はこちら</a>で見ることができます。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p><em>It’s the start of May<br>and the release is coming.<br>We all give a cheer!</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n		\n				\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"WordPress 5.2 リリース候補\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://ja.wordpress.org/2019/04/29/wordpress-5-2-release-candidate/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 29 Apr 2019 05:29:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5630\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"以下は、Josephaが書いた WordPress.org 公式ブログの記事、「WordPress 5.2 R [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"JOTAKI Taisuke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4355:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha</a>が書いた WordPress.org 公式ブログの記事、<a href=\"https://wordpress.org/news/2019/04/wordpress-5-2-release-candidate/\">「WordPress 5.2 Release Candidate」</a>を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordPress 5.2の最初のリリース候補版がご利用いただけるようになりました。</p>\n\n\n\n<p>これは、WordPress 5.2のリリースが近づいている今、重要なマイルストーンです。「リリース候補版」とは、新しいバージョンをリリースする準備はできたものの、多くのユーザーと数千個のプラグイン・テーマが存在するため、何か足りないものがある可能性もあるということを意味しています。WordPress  5.2は<strong>5月7日 (火)</strong> にリリース予定ですが、そのためには皆さんの手助けが必要です。まだバージョン5.2を試していないなら、今がその時です。</p>\n\n\n\n<p>WordPress 5.2リリース候補版をテストする方法は2つあります。<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使うか、<a href=\"https://wordpress.org/wordpress-5.2-RC1.zip\">ここから RC 版 (zip) をダウンロード</a>してください。</p>\n\n\n\n<h2>WordPress 5.2に含まれるのは?</h2>\n\n\n\n<p>前回のリリースに引き続き、WordPress 5.2ではさらに設定問題や致命的なエラーを特定、修正するためのより強固なツールを提供しています。クライアントを手助けする開発者であれ、ご自分のサイトのみを管理する方であれ、これらのツールは必要なときに正しい情報を手に入れる助けになるでしょう。</p>\n\n\n\n<p>サイトヘルスチェックツールと PHP エラープロテクションツールはまったく新しい機能で、もしサイトのプラグインやテーマに関する問題を発見しても安心させてくれます。また、ダッシュボードで使用できるアイコンの更新や、支援技術を使用するすべてのユーザーに対する新しいアクセシビリティへの対応などもあります。</p>\n\n\n\n<h2>プラグイン・テーマ開発者の方へ</h2>\n\n\n\n<p>WordPress 5.2でプラグインとテーマをテストし、readme ファイルの「検証済み最新バージョン」を 5.2に更新してください。互換性の問題を発見した場合は、最終リリース前に解決できるように<a href=\"https://wordpress.org/support/forum/alphabeta/\">サポートフォーラム (英語版)</a> に投稿してください。</p>\n\n\n\n<p>大きな変更の詳細に触れた、開発者向けの<a href=\"https://make.wordpress.org/core/2019/04/16/wordpress-5-2-field-guide/\">5.2フィールドガイド</a>も公開しています。</p>\n\n\n\n<h2>協力するには</h2>\n\n\n\n<p>英語以外の言語を話す方は、<a href=\"https://translate.wordpress.org/projects/wp/dev\">WordPress を100言語以上に翻訳するのにご協力</a>ください。このリリースが、5.2リリーススケジュールにおける<a href=\"https://make.wordpress.org/polyglots/handbook/glossary/#hard-freeze\">ハードストリングフリーズ</a> (文字列が確定したポイント) のタイミングとなります。</p>\n\n\n\n<p><strong>バグを見つけたと思った場合</strong>は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta\">アルファ・ベータエリア</a><a href=\"https://ja.wordpress.org/support/forum/alphabeta/\"> (日本語)</a> に投稿できます。情報をお待ちしています。もし再現可能なバグ報告を書ける場合は <a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac に報告</a>してください。<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ一覧はこちら</a>で見ることができます。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p><em>Howdy, RC 1!<br>With tools this interesting,<br>I can hardly wait.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n		\n				\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:25:\"WordPress 5.2 ベータ 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ja.wordpress.org/2019/04/13/wordpress-5-2-beta-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 13 Apr 2019 03:06:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5610\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"以下は、Jonathan Desrosiers が書いた WordPress.org 公式ブログの記事、「Wo [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"JOTAKI Taisuke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6421:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/desrosj/\">Jonathan Desrosiers</a> が書いた WordPress.org 公式ブログの記事、<a href=\"https://wordpress.org/news/2019/04/wordpress-5-2-beta-3/\">「WordPress 5.2 Beta 3」</a>を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordPress 5.2 ベータ 3がリリースされました。</p>\n\n\n\n<p>この<strong>ソフトウェアはまだ開発中です</strong>ので、本番サイトで使うことはおすすめしません。新しいバージョンを試すためにテストサイトを立ち上げることを検討してみてください。</p>\n\n\n\n<p>WordPress 5.2ベータをテストする方法は2つあります。<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使うか (「最新版ナイトリービルド」を選択)、<a href=\"https://wordpress.org/wordpress-5.2-beta3.zip\">ここから ベータ 版 (zip) をダウンロード</a>してください。</p>\n\n\n\n<p>WordPress 5.2は<a href=\"https://make.wordpress.org/core/5-2/\">4月30日</a>にリリースされる予定です。そこにたどり着くために私たちにはみなさんの助けが必要です。<a href=\"https://ja.wordpress.org/2019/04/13/wordpress-5-2-beta-2/\">ベータ2</a>を試した皆さんからのテストやフィードバックに感謝します。あれから<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=04%2F09%2F2019..04%2F13%2F2019&amp;milestone=5.2&amp;group=component&amp;col=id&amp;col=summary&amp;col=status&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=priority&amp;order=priority\">40のチケットがクローズされました。</a>主な変更とバグの修正をご紹介します。</p>\n\n\n\n<ul><li>新しいサイトヘルス機能は改善され続けています。</li><li>サポートしていないバージョンの PHP 上で動いているサイトではプラグインがアップデートされなくなりました。(<a href=\"https://core.trac.wordpress.org/ticket/46613\">#46613</a>)</li><li>サイトがリカバリーモードで動いている場合、それがより明確になりました。(<a href=\"https://core.trac.wordpress.org/ticket/46608\">#46608</a>)</li><li>集中ボタンがクラッシクエディターでのキーボードナビゲーションを妨げないようになりました。(<a href=\"https://core.trac.wordpress.org/ticket/46640\">#46640</a>).</li><li>支援技術により管理バーサブメニューでのアナウンスがより良くなりました。 (<a href=\"https://core.trac.wordpress.org/ticket/37513\">#37513</a>).</li><li>WordPress メールの件名がより一貫性を持つようになりました。 (<a href=\"https://core.trac.wordpress.org/ticket/37940\">#37940</a>).</li><li>個人データのエクスポートはユーザーデータのダウンロードが完了したときだけ表示されます。( <a href=\"https://core.trac.wordpress.org/ticket/44644\">#44644</a>).</li><li>アクセシビリティをさらに改善しました (<a href=\"https://core.trac.wordpress.org/ticket/35497\">#35497</a> と <a href=\"https://core.trac.wordpress.org/ticket/42853\">#42853</a>).</li></ul>\n\n\n\n<h2>PHP の最低バージョンのアップデート</h2>\n\n\n\n<p><strong>重要なお知らせ:</strong> WordPress 5.2ベータ2から、WordPress が必要とする PHP の最低バージョンが5.6.20になります。もし PHP  の古いバージョンで運営している場合は 、WordPress 5.2 が正式にリリースされる前にアップデートすることを強くおすすめします。</p>\n\n\n\n<figure class=\"wp-block-embed-wordpress wp-block-embed is-type-wp-embed is-provider-日本語\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"VZ8A9yLpYF\"><a href=\"https://ja.wordpress.org/2019/04/03/minimum-php-version-update/\">PHP 最低必須バージョンの変更</a></blockquote><iframe title=\"&#8220;PHP 最低必須バージョンの変更&#8221; &#8212; 日本語\" class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" style=\"position: absolute; clip: rect(1px, 1px, 1px, 1px);\" src=\"https://ja.wordpress.org/2019/04/03/minimum-php-version-update/embed/#?secret=VZ8A9yLpYF\" data-secret=\"VZ8A9yLpYF\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>開発者の方へ</h2>\n\n\n\n<p>WordPress 5.2 は、WordPress を開発する体験をより洗練されたものにするための変更を数多く含んでいます。遅れないようにするため、<a href=\"https://make.wordpress.org/core/\">Make WordPress Core ブログ</a> を購読し、皆さんのプロダクトに影響を与えうるアップデートや変更に関する<a href=\"https://make.wordpress.org/core/tag/5-1+dev-notes/\">開発者向け文章</a>に特別な注意を払っておいてください。</p>\n\n\n\n<h2>協力するには</h2>\n\n\n\n<p>英語以外の言語を話す方は、<a href=\"https://translate.wordpress.org/projects/wp/dev\">WordPress を100言語以上に翻訳するのにご協力</a>ください。 ベータ 3 リリースが、5.2 リリースサイクルにおける<a href=\"https://make.wordpress.org/polyglots/handbook/glossary/#soft-freeze\">ソフトストリングフリーズ</a> (文字列がおおむね確定したポイント) のタイミングとなります。</p>\n\n\n\n<p><strong>バグを見つけたと思った場合</strong>は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta\">アルファ・ベータエリア</a><a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">&nbsp;(日本語)</a>&nbsp;に投稿できます。情報をお待ちしています。もし再現可能なバグ報告を書ける場合は&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac に報告</a>してください。<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ一覧はこちら</a>で見ることができます。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p><em>Would you look at that<br>each day brings release closer<br>test to be ready</em>.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n		\n				\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"WordPress 5.2 ベータ2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ja.wordpress.org/2019/04/13/wordpress-5-2-beta-2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 13 Apr 2019 02:31:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5605\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"以下は、Gary Pendergastが書いた WordPress.org 公式ブログの記事、「WordPre [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"JOTAKI Taisuke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:5684:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/pento/\">Gary Pendergast</a>が書いた WordPress.org 公式ブログの記事、<a href=\"https://wordpress.org/news/2019/04/wordpress-5-2-beta-2/\">「WordPress 5.2 Beta 2」</a>を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordPress 5.2 ベータ 2がリリースされました。</p>\n\n\n\n<p>この<strong>ソフトウェアはまだ開発中です</strong>ので、本番サイトで使うことはおすすめしません。新しいバージョンを試すためにテストサイトを立ち上げることを検討してみてください。</p>\n\n\n\n<p>WordPress 5.2ベータをテストする方法は2つあります。<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> プラグインを使うか (「最新版ナイトリービルド」を選択)、<a href=\"https://wordpress.org/wordpress-5.2-beta2.zip\">ここから ベータ 版 (zip) をダウンロード</a>してください。</p>\n\n\n\n<p>WordPress 5.2は<a href=\"https://make.wordpress.org/core/5-2/\">4月30日</a>にリリースされる予定です。そこにたどり着くために私たちにはみなさんの助けが必要です。ベータ1を試した皆さんからのテストやフィードバックに感謝します。あれから<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=2019-03-28..&amp;milestone=5.2&amp;group=component&amp;col=id&amp;col=summary&amp;col=owner&amp;col=type&amp;col=priority&amp;col=component&amp;col=version&amp;order=priority\">100のチケットがクローズされました。</a>主な変更とバグの修正をご紹介します。</p>\n\n\n\n<ul><li>Emoji 12のサポートを追加しました! </li><li>新しい <code>wp_body_open()</code> テンプレートタグ (と、それに付随する<code>wp_body_open</code> アクション) により、テーマ (そしてプラグインも) から <code>&lt;body&gt;</code> 開始タグ直後にコンテンツを追加できるようになりました。 (<a href=\"https://core.trac.wordpress.org/ticket/12563\">#12563</a>)</li><li>ダイナミックブロックコンテンツで余計なパラグラフタグが間違って表示されないようになりました。 (<a href=\"https://core.trac.wordpress.org/ticket/45495\">#45495</a>)</li><li>サイトヘルスチェックの画面でバグの修正、微調整、パフォーマンスの向上が行われました。</li><li>クラッシュプロテクションがプラグインの編集を妨げないようになりました。(<a href=\"https://core.trac.wordpress.org/ticket/46045\">#46045</a>).</li><li>カスタムエラーハンドラーが正しく読み込まれるようになりました。 (<a href=\"https://core.trac.wordpress.org/ticket/46069\">#46069</a>).</li></ul>\n\n\n\n<h2>PHP の最低バージョンのアップデート</h2>\n\n\n\n<p>WordPress 5.2ベータ2から、WordPress が必要とする PHP の最低バージョンが5.6.20になります。もし PHP の古いバージョンで運営している場合は 、WordPress 5.2 が正式にリリースされる前にアップデートすることを強くおすすめします。</p>\n\n\n\n<figure class=\"wp-block-embed-wordpress wp-block-embed is-type-wp-embed is-provider-日本語\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"jnrY1zz3C2\"><a href=\"https://ja.wordpress.org/2019/04/03/minimum-php-version-update/\">PHP 最低必須バージョンの変更</a></blockquote><iframe title=\"&#8220;PHP 最低必須バージョンの変更&#8221; &#8212; 日本語\" class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" style=\"position: absolute; clip: rect(1px, 1px, 1px, 1px);\" src=\"https://ja.wordpress.org/2019/04/03/minimum-php-version-update/embed/#?secret=jnrY1zz3C2\" data-secret=\"jnrY1zz3C2\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>開発者の方へ</h2>\n\n\n\n<p>WordPress 5.2 は、WordPress を開発する体験をより洗練されたものにするための変更を数多く含んでいます。遅れないようにするため、<a href=\"https://make.wordpress.org/core/\">Make WordPress Core ブログ</a> を購読し、皆さんのプロダクトに影響を与えうるアップデートや変更に関する<a href=\"https://make.wordpress.org/core/tag/5-1+dev-notes/\">開発者向け文章</a>に特別な注意を払っておいてください。</p>\n\n\n\n<h2>協力するには</h2>\n\n\n\n<p>英語以外の言語を話す方は、<a href=\"https://translate.wordpress.org/projects/wp/dev\">WordPress を100言語以上に翻訳するのにご協力</a>ください。</p>\n\n\n\n<p>バグ<strong>を見つけたと思った場合</strong>は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta\">アルファ・ベータエリア</a><a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">(日本語)</a>&nbsp;に投稿できます。情報をお待ちしています。もし再現可能なバグ報告を書ける場合は&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac に報告</a>してください。<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ一覧はこちら</a>で見ることができます。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p><em>The wonderful thing<br> about betas, is betas<br> are wonderful things.</em> </p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n		\n				\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"WordPress 5.2 ベータ1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://ja.wordpress.org/2019/04/04/wordpress-5-2-beta-1/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 04 Apr 2019 08:41:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5572\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"以下は、Josephaが書いた WordPress.org 公式ブログの記事、「WordPress 5.2 B [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"JOTAKI Taisuke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9990:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/chanthaboune/\">Josepha</a>が書いた WordPress.org 公式ブログの記事、<a href=\"https://wordpress.org/news/2019/03/wordpress-5-2-beta-1/\">「WordPress 5.2 Beta 1」</a>を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>WordPress 5.2 ベータ 1がリリースされました。</p>\n\n\n\n<p>この<strong>ソフトウェアはまだ開発中です</strong>ので、本番サイトで使うことはおすすめしません。新しいバージョンを試すためにテストサイトを立ち上げることを検討してみてください。</p>\n\n\n\n<p>WordPress 5.2 ベータ版をテストする方法は2つあります:</p>\n\n\n\n<ul><li><a href=\"https://ja.wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;プラグイン (「最新版ナイトリービルド」を選択 ) を利用する</li><li><a href=\"https://wordpress.org/wordpress-5.2-beta1.zip\">ベータ版の ZIP ファイルをこちらからダウンロードする</a></li></ul>\n\n\n\n<p>WordPress 5.2は<a href=\"https://make.wordpress.org/core/5-2/\">4月30日</a>にリリースされる予定です。そこにたどり着くために私たちにはみなさんの助けが必要です。今後数週間でできるだけ多くのバグを見つけることができるよう、以下にテストすべき重要項目の一部を挙げました。</p>\n\n\n\n<h2>ブロックエディター</h2>\n\n\n\n<p>WordPress 5.1以降、ブロックエディターのパフォーマンスが大幅に向上し、大量の投稿の読み込み時間が35％短縮され、キーを押す時間（入力時の反応の速さ）が半分になりました。</p>\n\n\n\n<p>アクセシビリティも向上し続けています。ブロックエディターは、ブラウザの縮小モーション設定をサポートします。投稿URLのスラッグはより良いラベルとヘルプテキストを持っています。ランドマークをナビゲートするキーボードのフォーカススタイルは、より明確で一貫性があります。さまざまな新しい会話メッセージがあり、スクリーンリーダーの動作をより便利にするために既存のメッセージが調整されています。</p>\n\n\n\n<p>いくつかの新しいブロックを追加しました。</p>\n\n\n\n<ul><li>RSSブロック</li><li>Amazon Kindle埋め込みブロック</li><li>検索ブロック</li><li>カレンダーブロック</li><li>タグクラウドブロック</li></ul>\n\n\n\n<p>これらのブロックを追跡し、必要なものだけを表示するために、ブロックのオンとオフを切り替える新しいブロック管理ツールがあります。</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://i2.wp.com/wordpress.org/news/files/2019/03/01-block-manager-1024x768.png?fit=632%2C474&amp;ssl=1\" alt=\"\" class=\"wp-image-6806\" /><figcaption>ブロック管理モーダル</figcaption></figure>\n\n\n\n<p>私たちは常に既存のブロックにも取り組んでいます。ブロックエディターには何百ものバグフィックスと改良がほどこされました。グーテンベルグプラグインリリースでそれらについてもっと読むことができます：4.9、5.0、5.1、5.2、および5.3。</p>\n\n\n\n<h3>WordPress モバイルアプリ</h3>\n\n\n\n<p>ブロックエディターはウェブサイトだけのものでもありません。WordPress モバイルアプリには現在、実験的なバージョンの組み込みのブロックエディターが含まれています。これはまだ開発中ですが、今すぐ試すことができます。</p>\n\n\n\n<figure class=\"wp-block-embed-wordpress wp-block-embed is-type-wp-embed is-provider-make-wordpress-mobile\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"AikCDGVOo4\"><a href=\"https://make.wordpress.org/mobile/2019/02/26/the-block-editor-is-coming-to-the-mobile-apps/\">The block editor is coming to the mobile apps</a></blockquote><iframe title=\"&#8220;The block editor is coming to the mobile apps&#8221; &#8212; Make WordPress Mobile\" class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" style=\"position: absolute; clip: rect(1px, 1px, 1px, 1px);\" src=\"https://make.wordpress.org/mobile/2019/02/26/the-block-editor-is-coming-to-the-mobile-apps/embed/#?secret=AikCDGVOo4\" data-secret=\"AikCDGVOo4\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>サイトヘルスチェック</h2>\n\n\n\n<p>サイトヘルスチェックは、WordPress エコシステム全体の安定性とパフォーマンスの向上を目的とした進行中のプロジェクトです。</p>\n\n\n\n<p>このプロジェクトの最初のフェーズ（当初は WordPress 5.1を目標としていました）が WordPress 5.2には含まれています。初めに WordPress が問題のあるコードをキャッチして一時停止するので、ダッシュボードにログインして問題が何であるかを確認できます（<a href=\"https://core.trac.wordpress.org/ticket/44458\">#44458</a>）。以前は、ファイルにFTPでアクセスするか、ホストに連絡する必要がありました。</p>\n\n\n\n<p>また、ダッシュボードに新しいヘルスチェックツールを追加しています。 <em>ツール</em>メニューにアクセスして<em>ヘルスチェック</em>をクリックすると、サイトの速度とセキュリティを向上させるのに役立つ情報が得られます。</p>\n\n\n\n<figure class=\"wp-block-embed-wordpress wp-block-embed is-type-wp-embed is-provider-make-wordpress-core\"><div class=\"wp-block-embed__wrapper\">\n<blockquote class=\"wp-embedded-content\" data-secret=\"pWu7mOaVYB\"><a href=\"https://make.wordpress.org/core/2019/03/20/the-improved-fatal-error-protection/\">The Improved Fatal Error Protection</a></blockquote><iframe title=\"&#8220;The Improved Fatal Error Protection&#8221; &#8212; Make WordPress Core\" class=\"wp-embedded-content\" sandbox=\"allow-scripts\" security=\"restricted\" style=\"position: absolute; clip: rect(1px, 1px, 1px, 1px);\" src=\"https://make.wordpress.org/core/2019/03/20/the-improved-fatal-error-protection/embed/#?secret=pWu7mOaVYB\" data-secret=\"pWu7mOaVYB\" width=\"600\" height=\"338\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe>\n</div></figure>\n\n\n\n<h2>PHP バージョンバンプ</h2>\n\n\n\n<p>このリリースでは、<a href=\"https://make.wordpress.org/core/2018/12/08/updating-the-minimum-php-version/\">WordPress がサポートされる PHP の最低バージョンを5.6に引き上げます</a>。この変更に準備ができているかどうかを確認するため、WordPress 5.2では必要に応じて警告が表示され、PHP のバージョンをアップグレードする手助けをします。</p>\n\n\n\n<h2>開発者の皆さんへ</h2>\n\n\n\n<ul><li>プラグインがサポートする PHP の最低バージョンを指定できるようになったため、ユーザーのサイトを壊す危険を冒さずに安全に開発方法を現代化することができます。(<a href=\"https://core.trac.wordpress.org/ticket/40934\">#40934</a>)</li><li><code>sodium_compat</code> ライブラリを追加しました。これは、<a href=\"https://blog.zend.com/2018/11/06/modern-cryptography-in-php-7-2-with-sodium/\">PHP 7.2で追加されたSodiumベースの暗号化ライブラリ</a>に対する下位互換性を提供します。 (<a href=\"https://core.trac.wordpress.org/ticket/45806\">#45806</a>)</li><li>ダッシュアイコンの新しいリリースがあります。WordPress ダッシュボードアイコンフォントです。利用できる新しい25のアイコンがあります！ (<a href=\"https://core.trac.wordpress.org/ticket/41074\">#41074</a>)</li><li>アクセシビリティを向上させるために  <code>get_search_form()</code> にラベルを渡せるようになりました 。(<a href=\"https://core.trac.wordpress.org/ticket/42057\">#42057</a>)</li></ul>\n\n\n\n<p>WordPress 5.2ではこれまでに<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;milestone=5.2&amp;group=resolution&amp;order=priority\">130個のチケットがクローズ</a>され、WordPress の操作性を円滑にするための多数の小さなバグ修正と改良が行われています。</p>\n\n\n\n<p>5.2 について開発者が知っておくべきその他の変更の詳細については、今後の数週間 <a href=\"https://make.wordpress.org/core/\">Make WordPress Core ブログ</a> (<code>dev-notes</code>&nbsp;タグが<a href=\"https://make.wordpress.org/core/tag/5-1+dev-notes/\">ついています</a>) をチェックしてみてください。</p>\n\n\n\n<h2>協力するには</h2>\n\n\n\n<p>英語以外の言語を話す方は、<a href=\"https://translate.wordpress.org/projects/wp/dev\">WordPress を100言語以上に翻訳するのにご協力</a>ください。</p>\n\n\n\n<p>バグ<strong>を見つけたと思った場合</strong>は、サポートフォーラムの<a href=\"https://wordpress.org/support/forum/alphabeta\">アルファ・ベータエリア</a><a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">(日本語)</a>&nbsp;に投稿できます。情報をお待ちしています。もし再現可能なバグ報告を書ける場合は&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">WordPress Trac に報告</a>してください。<a href=\"https://core.trac.wordpress.org/tickets/major\">既知のバグ一覧はこちら</a>で見ることができます。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p><em>With each new release,<br>bearing multiple betas; <br>We fix, then we fly.</em></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:51:\"\n		\n		\n				\n		\n				\n		\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"PHP 最低必須バージョンの変更\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://ja.wordpress.org/2019/04/03/minimum-php-version-update/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 03 Apr 2019 01:48:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"Hosting\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5559\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:154:\"今月末リリース予定の WordPress 5.2 では PHP の最低必須バージョンを更新し、PHP 5.6.20 以降が必須となる見通しです。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Naoko Takano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:4816:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/jorbin/\">Aaron Jorbin</a>&nbsp;が書いた WordPress.org 公式ブログの記事、「<a href=\"https://wordpress.org/news/2019/04/minimum-php-version-update/\">Minimum PHP Version update</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<p>今月末に WordPress 5.2 のリリースを予定していますが、それと同時に PHP の最低必須バージョンを更新します。WordPress には、PHP 5.6.20 以降が必須となります。</p>\n\n\n\n<p>WordPress 5.1 から、PHP バージョン 5.6 以下を使っているユーザーの方にはダッシュボードに <a href=\"https://ja.wordpress.org/support/update-php/\">PHP の更新を助ける情報</a>を含む通知が表示されています。以来、<a href=\"https://ja.wordpress.org/about/stats/\">WordPress 統計情報</a>で、より新しいバージョンの PHP を利用するユーザーの増加が確認できるようになりました。</p>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://ja.wordpress.org/files/2019/04/update-php-notice-1024x388.png\" alt=\"\" class=\"wp-image-5562\" srcset=\"https://ja.wordpress.org/files/2019/04/update-php-notice-1024x388.png 1024w, https://ja.wordpress.org/files/2019/04/update-php-notice-300x114.png 300w, https://ja.wordpress.org/files/2019/04/update-php-notice-768x291.png 768w, https://ja.wordpress.org/files/2019/04/update-php-notice.png 1226w\" sizes=\"(max-width: 1024px) 100vw, 1024px\" /><figcaption>古すぎるバージョンの PHP を使っているユーザーに表示される通知</figcaption></figure>\n\n\n\n<h2>PHP をアップグレードすべき理由</h2>\n\n\n\n<p>お使いのサーバーでサポート対象外バージョンの PHP が稼働している場合、 WordPress 更新ツールは WordPress 5.2 をサイトに提供しません。WordPress を手動で更新しようとした場合、作業は失敗するでしょう。最新の WordPress 機能を使い続けたい場合は PHP をより新しいバージョンにアップグレードする必要があります。</p>\n\n\n\n<p>PHP を新しいバージョンにアップグレードする際、WordPress としては推奨バージョンである PHP 7.3 への更新をおすすめしています。PHP internals チームは、最新バージョンがこれまで最速となるようすばらしい努力を重ねてきています。これはつまり、アップグレードを行うことでサイト運営者・訪問者の両方に対してサイトのスピードを改善できるということです。</p>\n\n\n\n<p>このパフォーマンス強化はまた、サイトのホスティングに必要なサーバーの数を減らせるということも意味しています。PHP をアップグレードすることは、サイト運営者であるあなたに朗報なだけではなく、<a href=\"https://wordpress.org/news/2019/03/one-third-of-the-web/\">Web 上のサイトの1/3を占める WordPress</a> がこれまでよりも少ない電力を要するため、地球にも優しいということでもあります。</p>\n\n\n\n<h2>PHP のアップグレード方法</h2>\n\n\n\n<p>新バージョンの PHP にアップグレードするために手助けが必要な方は、詳<a href=\"https://ja.wordpress.org/support/update-php/\">しいドキュメンテーションを利用できます</a>。リンク先のページには、ホスティングサービス (レンタルサーバーなど) へサポートを依頼するために送るメッセージのサンプルも含まれます。多くのホスティングサービスも、各自に特化した&nbsp;<a href=\"https://github.com/WordPress/servehappy-resources/blob/master/tutorials/hosting-specific/tutorials-ja.md\">PHP をアップグレード</a>する方法についての情報を公開しています。</p>\n\n\n\n<h2>現在は PHP 5.6、近々 PHP 7 以降へ</h2>\n\n\n\n<p>今回、<a href=\"https://wordpress.org/news/2010/07/eol-for-php4-and-mysql4/\">2010年</a>以来初めて WordPress の PHP 必須バージョンを上げることになりますが、これが2019年最後の変更とはならないかもしれません。WordPress コアチームは、年末に PHP 7 以降を最低必須バージョンにすることも視野に入れつつ、最新バージョンの PHP がどれくらい採用されているかを観察していく予定です。</p>\n\n\n\n<p><a href=\"https://ja.wordpress.org/support/update-php/\"><strong>PHP のバージョンアップ</a>をして、今後 WordPress のバージョンを更新できるように備えましょう !</strong></p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:48:\"\n		\n		\n				\n		\n				\n\n		\n				\n								\n										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"WordPress 5.1 “ベティ”\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://ja.wordpress.org/2019/02/22/betty/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 Feb 2019 02:04:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"https://ja.wordpress.org/?p=5542\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"WordPress のバージョン 5.1「ベティ」がご利用いただけるようになりました。\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Naoko Takano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:47762:\"\n<p>以下は、<a href=\"https://profiles.wordpress.org/matt\">Matt Mullenweg</a>&nbsp;が書いた WordPress.org 公式ブログの記事、「<a href=\"https://wordpress.org/news/2019/02/betty/\">WordPress 5.1 “Betty”</a>」を訳したものです。</p>\n\n\n\n<p>誤字脱字誤訳などありましたら<a href=\"https://ja.wordpress.org/support/forum/alphabeta/\">フォーラムまでお知らせください</a>。<br></p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>コツコツ改善</h2>\n\n\n\n<figure class=\"wp-block-image\"><img src=\"https://s.w.org/images/core/5.1/update.svg\" alt=\"PHP 互換性チェック機能のイメージ\" /></figure>\n\n\n\n<p>WordPress のバージョン 5.1が、ダウンロードまたはダッシュボードからの更新用にご利用いただけるようになりました。このリリースは、ジャズボーカリストのベティ・カーターに敬意を表して名付けました。</p>\n\n\n\n<p>新しいブロックエディターを導入したメジャーリリースである <a href=\"https://ja.wordpress.org/2018/12/07/wordpress-5-0-bebo/\">WordPress 5.0</a>  の後継となる今回のバージョンのフォーカスは「洗練」です。特に、エディター全体のパフォーマンスの向上に力を注ぎました。さらにこのリリースは、サイト管理者や開発者に必須のツールを新たに含むことにより、より良く、速く、安全な WordPress への道筋をつけるものとなっています。</p>\n\n\n\n<h2>サイトヘルス</h2>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"alignright is-resized\"><img src=\"https://s.w.org/images/core/5.1/site-health.svg\" alt=\"サイトヘルス機能のイメージ\" width=\"182\" height=\"160\" /></figure></div>\n\n\n\n<p>今回のリリースでは安全性と速度を念頭に置いて、WordPress 初となる「<a href=\"https://make.wordpress.org/core/2019/01/14/php-site-health-mechanisms-in-5-1/\">サイトヘルス</a>」機能を導入しました。かなり古いバージョンの PHP (WordPress を動しているプログラミング言語) を実行しているサイト管理者に対し、WordPress はお知らせを表示し始めます。</p>\n\n\n\n<p>新しいプラグインをインストールする際、サイトヘルス機能は使用中の PHP バージョンとプラグインの互換性をチェックします。もしプラグインが現在のサイトでは動作しないバージョンを必須としている場合は、WordPress がプラグインをインストールできなくします。</p>\n\n\n\n<h2>エディターの改善</h2>\n\n\n\n<div class=\"wp-block-image\"><figure class=\"alignright is-resized\"><img src=\"https://s.w.org/images/core/5.1/editor-performance.svg\" alt=\"エディターパフォーマンス改善のイメージ\" width=\"182\" height=\"182\" /></figure></div>\n\n\n\n<p>WordPress 5.0 から導入された新ブロックエディターは改善を続けています。今回最も大きな点として、エディター内での安定したパフォーマンス向上を実現することができました。エディターの起動が少し速く、タイピングがよりスムーズに感じるはずです。</p>\n\n\n\n<p>次回数回のリリースでも、さらなるパフォーマンス改善を予定しています。</p>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>開発者の皆さんへ</h2>\n\n\n\n<h3><a href=\"https://make.wordpress.org/core/2019/01/28/multisite-support-for-site-metadata-in-5-1/\">マルチサイトメタデータ</a></h3>\n\n\n\n<p>5.1 には、サイトに関するメタデータを保存し、マルチサイトネットワークで必要となる任意のサイトデータの保存も可能にする新しいデータベーステーブルを追加しました。</p>\n\n\n\n<h3><a href=\"https://make.wordpress.org/core/2019/01/23/cron-api-changes-in-wordpress-5-1/\">Cron API</a></h3>\n\n\n\n<p>Cron API を、データを返すのを助ける新機能および Cron ストレージを変更するための新しいフィルターとともに更新しました。他の挙動変更により、FastCGI と PHP-FPM 7.0.16 以降を実行中のサーバーでのCron 生成に影響があります。</p>\n\n\n\n<h3><a href=\"https://make.wordpress.org/core/2018/05/16/preparing-wordpress-for-a-javascript-future-part-1-build-step-and-folder-reorganization/\">新 JS ビルド</a></h3>\n\n\n\n<p>WordPress 5.1 では、5.0 でスタートした大幅なコードの再編成の後、新しい JavaScript ビルドオプションを取り入れました。</p>\n\n\n\n<h3><a href=\"https://make.wordpress.org/core/2019/01/23/miscellaneous-developer-focused-changes-in-5-1/\">その他の開発者向け改善点</a></h3>\n\n\n\n<p>その他の改善は以下などです。</p>\n\n\n\n<ul><li><code>WP_DEBUG_LOG</code> 定数用の値変更</li><li>テストスイート内の新しいテスト設定ファイル定数、新しいプラグインアクションフック</li><li><code>wp_unique_post_slug()</code>、<code>WP_User_Query</code>、<code>count_users()</code> 用の短絡フィルター</li><li>新&nbsp;<code>human_readable_duration</code>&nbsp;関数</li><li>タクソノミーメタボックスのサニタイズ改善</li><li><code>WP_Meta_Query</code> を使う際のメタキーに対する制限的な&nbsp;<code>LIKE</code>&nbsp;のサポート</li><li>REST API エンドポイント登録時の間違いの通知</li></ul>\n\n\n\n<hr class=\"wp-block-separator\" />\n\n\n\n<h2>チーム</h2>\n\n\n\n<p>このリリースのリードは <a href=\"http://ma.tt/\">Matt Mullenweg</a> 、そして <a href=\"https://pento.net/\">Gary Pendergast</a> が<a href=\"https://core.trac.wordpress.org/changeset/42343\">シニア・コード・リシャッフラー</a>そして<a href=\"https://core.trac.wordpress.org/changeset/43309\">詩人</a>として共同作業しました。2人は、以下の561人の貢献者による素晴らしい力添えを受けました。このうち、231人は初の貢献者でした ! ご利用中の音楽サービスでベティ・カーターの曲を流しながら、この方たちのプロフィールページを眺めてみてください。 <a href=\"https://profiles.wordpress.org/0x6f0\">0x6f0</a>,&nbsp;<a href=\"https://profiles.wordpress.org/1265578519-1\">1265578519</a>,&nbsp;<a href=\"https://profiles.wordpress.org/1naveengiri\">1naveengiri</a>,&nbsp;<a href=\"https://profiles.wordpress.org/360zen\">360zen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/aardrian\">aardrian</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jorbin\">Aaron Jorbin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/abdullahramzan\">Abdullah Ramzan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/abhayvishwakarma\">Abhay Vishwakarma</a>,&nbsp;<a href=\"https://profiles.wordpress.org/abhijitrakas\">Abhijit Rakas</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ibachal\">Achal Jain</a>,&nbsp;<a href=\"https://profiles.wordpress.org/achbed\">achbed</a>,&nbsp;<a href=\"https://profiles.wordpress.org/adamsilverstein\">Adam Silverstein</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ajitbohra\">Ajit Bohra</a>,&nbsp;<a href=\"https://profiles.wordpress.org/schlessera\">Alain Schlesser</a>,&nbsp;<a href=\"https://profiles.wordpress.org/aldavigdis\">aldavigdis</a>,&nbsp;<a href=\"https://profiles.wordpress.org/alejandroxlopez\">alejandroxlopez</a>,&nbsp;<a href=\"https://profiles.wordpress.org/alexstine\">Alex</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tellyworth\">Alex Shiels</a>,&nbsp;<a href=\"https://profiles.wordpress.org/xyfi\">Alexander Botteram</a>,&nbsp;<a href=\"https://profiles.wordpress.org/alexvorn2\">Alexandru Vornicescu</a>,&nbsp;<a href=\"https://profiles.wordpress.org/alexgso\">alexgso</a>,&nbsp;<a href=\"https://profiles.wordpress.org/all\">All</a>,&nbsp;<a href=\"https://profiles.wordpress.org/allancole\">allancole</a>,&nbsp;<a href=\"https://profiles.wordpress.org/allendav\">Allen Snook</a>,&nbsp;<a href=\"https://profiles.wordpress.org/alvarogois\">Alvaro Gois dos Santos</a>,&nbsp;<a href=\"https://profiles.wordpress.org/acirujano\">Ana Cirujano</a>,&nbsp;<a href=\"https://profiles.wordpress.org/anantajitjg\">Anantajit JG</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nosolosw\">Andrés</a>,&nbsp;<a href=\"https://profiles.wordpress.org/afercia\">Andrea Fercia</a>,&nbsp;<a href=\"https://profiles.wordpress.org/andg\">Andrea Gandino</a>,&nbsp;<a href=\"https://profiles.wordpress.org/andreamiddleton\">Andrea Middleton</a>,&nbsp;<a href=\"https://profiles.wordpress.org/andrei0x309\">andrei0x309</a>,&nbsp;<a href=\"https://profiles.wordpress.org/andreiglingeanu\">andreiglingeanu</a>,&nbsp;<a href=\"https://profiles.wordpress.org/aduth\">Andrew Duthie</a>,&nbsp;<a href=\"https://profiles.wordpress.org/andrewza\">Andrew Lima</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nacin\">Andrew Nacin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/anevins\">Andrew Nevins</a>,&nbsp;<a href=\"https://profiles.wordpress.org/azaozz\">Andrew Ozz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rarst\">Andrey Savchenko</a>,&nbsp;<a href=\"https://profiles.wordpress.org/afragen\">Andy Fragen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/andizer\">Andy Meerwaldt</a>,&nbsp;<a href=\"https://profiles.wordpress.org/la-geek\">Angelika Reisiger</a>,&nbsp;<a href=\"https://profiles.wordpress.org/antaltettinger\">Antal Tettinger</a>,&nbsp;<a href=\"https://profiles.wordpress.org/antipole\">antipole</a>,&nbsp;<a href=\"https://profiles.wordpress.org/atimmer\">Anton Timmermans</a>,&nbsp;<a href=\"https://profiles.wordpress.org/avillegasn\">Antonio Villegas</a>,&nbsp;<a href=\"https://profiles.wordpress.org/antonioeatgoat\">antonioeatgoat</a>,&nbsp;<a href=\"https://profiles.wordpress.org/aranwer104\">Anwer AR</a>,&nbsp;<a href=\"https://profiles.wordpress.org/aryamaaru\">Arun</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mrasharirfan\">Ashar Irfan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ashokrd2013\">ashokrd2013</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ayeshrajans\">Ayesh Karunaratne</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ayubadiputra\">Ayub Adiputra</a>,&nbsp;<a href=\"https://profiles.wordpress.org/barryceelen\">Barry Ceelen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/behzod\">Behzod Saidov</a>,&nbsp;<a href=\"https://profiles.wordpress.org/benhuberman\">benhuberman</a>,&nbsp;<a href=\"https://profiles.wordpress.org/benoitchantre\">Benoit Chantre</a>,&nbsp;<a href=\"https://profiles.wordpress.org/benvaassen\">benvaassen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bhargavmehta\">Bhargav Mehta</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bikecrazyy\">bikecrazyy</a>,&nbsp;<a href=\"https://profiles.wordpress.org/birgire\">Birgir Erlendsson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bjornw\">BjornW</a>,&nbsp;<a href=\"https://profiles.wordpress.org/blair-jersyer\">Blair jersyer</a>,&nbsp;<a href=\"https://profiles.wordpress.org/blob\">blob</a>,&nbsp;<a href=\"https://profiles.wordpress.org/blobfolio\">Blobfolio</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bobbingwide\">bobbingwide</a>,&nbsp;<a href=\"https://profiles.wordpress.org/boblinthorst\">boblinthorst</a>,&nbsp;<a href=\"https://profiles.wordpress.org/boonebgorges\">Boone Gorges</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bor0\">Boro Sitnikovski</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bradparbs\">Brad Parbs</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bradleyt\">Bradley</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bramheijmink\">bramheijmink</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kraftbj\">Brandon Kraft</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bpayton\">Brandon Payton</a>,&nbsp;<a href=\"https://profiles.wordpress.org/brentswisher\">Brent Swisher</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rzen\">Brian Richards</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bridgetwillard\">bridgetwillard</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bandonrandon\">Brooke.</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bruceallen\">bruceallen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/burhandodhy\">Burhan Nasir</a>,&nbsp;<a href=\"https://profiles.wordpress.org/burlingtonbytes\">Bytes.co</a>,&nbsp;<a href=\"https://profiles.wordpress.org/icaleb\">Caleb Burks</a>,&nbsp;<a href=\"https://profiles.wordpress.org/calin\">Calin Don</a>,&nbsp;<a href=\"https://profiles.wordpress.org/campusboy1987\">campusboy</a>,&nbsp;<a href=\"https://profiles.wordpress.org/carolinegeven\">carolinegeven</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ccismaru\">ccismaru</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chasewg\">chasewg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chetan200891\">Chetan Prajapati</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chouby\">Chouby</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chrico\">ChriCo</a>,&nbsp;<a href=\"https://profiles.wordpress.org/chriscct7\">chriscct7</a>,&nbsp;<a href=\"https://profiles.wordpress.org/boda1982\">Christopher Spires</a>,&nbsp;<a href=\"https://profiles.wordpress.org/claudiu\">claudiu</a>,&nbsp;<a href=\"https://profiles.wordpress.org/cliffpaulick\">Clifford Paulick</a>,&nbsp;<a href=\"https://profiles.wordpress.org/munklefish\">Code Clinic</a>,&nbsp;<a href=\"https://profiles.wordpress.org/codegrau\">codegrau</a>,&nbsp;<a href=\"https://profiles.wordpress.org/coleh\">coleh</a>,&nbsp;<a href=\"https://profiles.wordpress.org/conner_bw\">conner_bw</a>,&nbsp;<a href=\"https://profiles.wordpress.org/coreymckrill\">Corey McKrill</a>,&nbsp;<a href=\"https://profiles.wordpress.org/croce\">croce</a>,&nbsp;<a href=\"https://profiles.wordpress.org/littlebigthing\">Csaba (LittleBigThings)</a>,&nbsp;<a href=\"https://profiles.wordpress.org/clarinetlord\">Cyrus Collier</a>,&nbsp;<a href=\"https://profiles.wordpress.org/danielbachhuber\">Daniel Bachhuber</a>,&nbsp;<a href=\"https://profiles.wordpress.org/danieltj\">Daniel James</a>,&nbsp;<a href=\"https://profiles.wordpress.org/daniel-koskinen\">Daniel Koskinen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/talldanwp\">Daniel Richards</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mte90\">Daniele Scasciafratte</a>,&nbsp;<a href=\"https://profiles.wordpress.org/danimalbrown\">danimalbrown</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dannycooper\">Danny Cooper</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dannydehaan\">Danny de Haan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/darko-a7\">Darko A7</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nerrad\">Darren Ethier (nerrad)</a>,&nbsp;<a href=\"https://profiles.wordpress.org/davepullig\">Dave Pullig</a>,&nbsp;<a href=\"https://profiles.wordpress.org/davidakennedy\">David A. Kennedy</a>,&nbsp;<a href=\"https://profiles.wordpress.org/davidanderson\">David Anderson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/davidbinda\">David Binovec</a>,&nbsp;<a href=\"https://profiles.wordpress.org/desertsnowman\">David Cramer</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dlh\">David Herrera</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dglingren\">David Lingren</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dshanske\">David Shanske</a>,&nbsp;<a href=\"https://profiles.wordpress.org/superdav42\">David Stone</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dekervit\">dekervit</a>,&nbsp;<a href=\"https://profiles.wordpress.org/denisco\">Denis Yanchevskiy</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dmsnell\">Dennis Snell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/designsimply\">designsimply</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dfangstrom\">dfangstrom</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dhanendran\">Dhanendran</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dharm1025\">Dharmesh Patel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dhavalkasvala\">Dhaval kasavala</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dhruvin\">Dhruvin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/diedeexterkate\">DiedeExterkate</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dilipbheda\">Dilip Bheda</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dingo_bastard\">dingo_d</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dd32\">Dion Hulse</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dipeshkakadiya\">dipeshkakadiya</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ocean90\">Dominik Schilling</a>,&nbsp;<a href=\"https://profiles.wordpress.org/donncha\">Donncha O Caoimh</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dontstealmyfish\">dontstealmyfish</a>,&nbsp;<a href=\"https://profiles.wordpress.org/drewapicture\">Drew Jaynes</a>,&nbsp;<a href=\"https://profiles.wordpress.org/drivingralle\">Drivingralle</a>,&nbsp;<a href=\"https://profiles.wordpress.org/drywallbmb\">drywallbmb</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dschalk\">dschalk</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dsifford\">dsifford</a>,&nbsp;<a href=\"https://profiles.wordpress.org/eamax\">eamax</a>,&nbsp;<a href=\"https://profiles.wordpress.org/eartboard\">eArtboard</a>,&nbsp;<a href=\"https://profiles.wordpress.org/edo888\">edo888</a>,&nbsp;<a href=\"https://profiles.wordpress.org/edocev\">edocev</a>,&nbsp;<a href=\"https://profiles.wordpress.org/electricfeet\">ElectricFeet</a>,&nbsp;<a href=\"https://profiles.wordpress.org/iseulde\">Ella Van&nbsp;Durpe</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ericlewis\">Eric Andrew Lewis</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ericdaams\">Eric Daams</a>,&nbsp;<a href=\"https://profiles.wordpress.org/erich_k4wp\">Erich Munz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ethitter\">Erick Hitter</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ericmeyer\">ericmeyer</a>,&nbsp;<a href=\"https://profiles.wordpress.org/etoledom\">etoledom</a>,&nbsp;<a href=\"https://profiles.wordpress.org/evansolomon\">Evan Solomon</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dyrer\">Evangelos Athanasiadis</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ever\">ever</a>,&nbsp;<a href=\"https://profiles.wordpress.org/everyone\">everyone</a>,&nbsp;<a href=\"https://profiles.wordpress.org/faisal03\">Faisal Alvi</a>,&nbsp;<a href=\"https://profiles.wordpress.org/felipeelia\">Felipe Elia</a>,&nbsp;<a href=\"https://profiles.wordpress.org/flixos90\">Felix Arntz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/fclaussen\">Fernando Claussen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/flipkeijzer\">flipkeijzer</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mista-flo\">Florian TIAR</a>,&nbsp;<a href=\"https://profiles.wordpress.org/folio\">folio</a>,&nbsp;<a href=\"https://profiles.wordpress.org/fpcsjames\">FPCSJames</a>,&nbsp;<a href=\"https://profiles.wordpress.org/frank-klein\">Frank Klein</a>,&nbsp;<a href=\"https://profiles.wordpress.org/from\">frOM</a>,&nbsp;<a href=\"https://profiles.wordpress.org/fuchsws\">fuchsws</a>,&nbsp;<a href=\"https://profiles.wordpress.org/fullyint\">fullyint</a>,&nbsp;<a href=\"https://profiles.wordpress.org/gma992\">Gabriel Maldonado</a>,&nbsp;<a href=\"https://profiles.wordpress.org/garetharnold\">Gareth</a>,&nbsp;<a href=\"https://profiles.wordpress.org/garrett-eclipse\">Garrett Hyder</a>,&nbsp;<a href=\"https://profiles.wordpress.org/garyj\">Gary Jones</a>,&nbsp;<a href=\"https://profiles.wordpress.org/soulseekah\">Gennady Kovshenin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kloon\">Gerhard Potgieter</a>,&nbsp;<a href=\"https://profiles.wordpress.org/girishpanchal\">Girish Panchal</a>,&nbsp;<a href=\"https://profiles.wordpress.org/gm_alex\">GM_Alex</a>,&nbsp;<a href=\"https://profiles.wordpress.org/gnif\">gnif</a>,&nbsp;<a href=\"https://profiles.wordpress.org/graymouser\">graymouser</a>,&nbsp;<a href=\"https://profiles.wordpress.org/greg\">greg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/gziolo\">Grzegorz (Greg) Ziółkowski</a>,&nbsp;<a href=\"https://profiles.wordpress.org/guido07111975\">Guido</a>,&nbsp;<a href=\"https://profiles.wordpress.org/gutendev\">GutenDev</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hafiz\">Hafiz Rahman</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hailite\">Hai@LiteSpeed</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hansjovisyoast\">Hans-Christiaan Braun</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hardeepasrani\">Hardeep Asrani</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hardik-amipara\">Hardik Amipara</a>,&nbsp;<a href=\"https://profiles.wordpress.org/harsh175\">Harsh Patel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/haruharuharuby\">haruharuharuby</a>,&nbsp;<a href=\"https://profiles.wordpress.org/idea15\">Heather Burns</a>,&nbsp;<a href=\"https://profiles.wordpress.org/helen\">Helen Hou-Sandi</a>,&nbsp;<a href=\"https://profiles.wordpress.org/henrywright\">Henry Wright</a>,&nbsp;<a href=\"https://profiles.wordpress.org/herregroen\">Herre Groen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hitendra\">hitendra</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hitendra-chopda\">Hitendra Chopda</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ianbelanger\">Ian Belanger</a>,&nbsp;<a href=\"https://profiles.wordpress.org/iandunn\">Ian Dunn</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ibantxillo\">ibantxillo</a>,&nbsp;<a href=\"https://profiles.wordpress.org/igmoweb\">Ignacio Cruz Moreno</a>,&nbsp;<a href=\"https://profiles.wordpress.org/igorsch\">Igor</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ibenic\">Igor Benic</a>,&nbsp;<a href=\"https://profiles.wordpress.org/imath\">imath</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ionvv\">ionvv</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ireneyoast\">Irene Strikkers</a>,&nbsp;<a href=\"https://profiles.wordpress.org/isabel104\">isabel104</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ishitaka\">ishitaka</a>,&nbsp;<a href=\"https://profiles.wordpress.org/meatman89fs\">Ivan Mudrik</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jdgrimes\">J.D. Grimes</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jackreichert\">Jack Reichert</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jakept\">Jacob Peattie</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jnylen0\">James Nylen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/janak007\">janak Kaneriya</a>,&nbsp;<a href=\"https://profiles.wordpress.org/janalwin\">janalwin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jankimoradiya\">Janki Moradiya</a>,&nbsp;<a href=\"https://profiles.wordpress.org/janthiel\">janthiel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jaswrks\">Jason Caldwell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/javorszky\">javorszky</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jaydeep-rami\">Jaydip Rami</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jaymanpandya\">Jayman Pandya</a>,&nbsp;<a href=\"https://profiles.wordpress.org/audrasjb\">Jb Audras</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jfarthing84\">Jeff Farthing</a>,&nbsp;<a href=\"https://profiles.wordpress.org/cheffheid\">Jeffrey de Wit</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jeffpaul\">Jeffrey Paul</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jmdodd\">Jennifer M. Dodd</a>,&nbsp;<a href=\"https://profiles.wordpress.org/miss_jwo\">Jenny</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jeremeylduvall\">Jeremey</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jeremyfelt\">Jeremy Felt</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jeherve\">Jeremy Herve</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jpry\">Jeremy Pry</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jeremyescott\">Jeremy Scott</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jesperher\">Jesper V Nielsen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/professor44\">Jesse Friedman</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jjcomack\">Jimmy Comack</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jipmoors\">Jip Moors</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jirihon\">Jiri Hon</a>,&nbsp;<a href=\"https://profiles.wordpress.org/johnjamesjacoby\">JJJ</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joanrho\">joanrho</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jobthomas\">Job</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sephsekla\">Joe Bailey-Roberts</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joedolson\">Joe Dolson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joehoyle\">Joe Hoyle</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joemcgill\">Joe McGill</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joelcj91\">Joel James</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joen\">Joen Asmussen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/johnbillion\">John Blackbourn</a>,&nbsp;<a href=\"https://profiles.wordpress.org/johnny5\">John Godley</a>,&nbsp;<a href=\"https://profiles.wordpress.org/johnalarcon\">johnalarcon</a>,&nbsp;<a href=\"https://profiles.wordpress.org/johnpgreen\">johnpgreen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/johnschulz\">johnschulz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jrchamp\">Jonathan Champ</a>,&nbsp;<a href=\"https://profiles.wordpress.org/desrosj\">Jonathan Desrosiers</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joneiseman\">joneiseman</a>,&nbsp;<a href=\"https://profiles.wordpress.org/spacedmonkey\">Jonny Harris</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joostdevalk\">Joost de Valk</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jorgefilipecosta\">Jorge Costa</a>,&nbsp;<a href=\"https://profiles.wordpress.org/josephscott\">Joseph Scott</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joshuawold\">JoshuaWold</a>,&nbsp;<a href=\"https://profiles.wordpress.org/joyously\">Joy</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jpurdy647\">jpurdy647</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jrdelarosa\">jrdelarosa</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jryancard\">jryancard</a>,&nbsp;<a href=\"https://profiles.wordpress.org/juiiee8487\">Juhi Patel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jamosova\">Julia Amosova</a>,&nbsp;<a href=\"https://profiles.wordpress.org/juliemoynat\">juliemoynat</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jrf\">Juliette Reinders Folmer</a>,&nbsp;<a href=\"https://profiles.wordpress.org/junaidkbr\">Junaid Ahmed</a>,&nbsp;<a href=\"https://profiles.wordpress.org/justinsainton\">Justin Sainton</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jtsternberg\">Justin Sternberg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/greenshady\">Justin Tadlock</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kadamwhite\">K.Adam White</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kapteinbluf\">kapteinbluf</a>,&nbsp;<a href=\"https://profiles.wordpress.org/keesiemeijer\">keesiemeijer</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ryelle\">Kelly Dwan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kelvink\">kelvink</a>,&nbsp;<a href=\"https://profiles.wordpress.org/khaihong\">khaihong</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kiranpotphode\">Kiran Potphode</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ixkaito\">Kite</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kjellr\">kjellr</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kkarpieszuk\">kkarpieszuk</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kmeze\">kmeze</a>,&nbsp;<a href=\"https://profiles.wordpress.org/knutsp\">Knut Sparhell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/konainm\">konainm</a>,&nbsp;<a href=\"https://profiles.wordpress.org/obenland\">Konstantin Obenland</a>,&nbsp;<a href=\"https://profiles.wordpress.org/xkon\">Konstantinos Xenos</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kristastevens\">kristastevens</a>,&nbsp;<a href=\"https://profiles.wordpress.org/krutidugade\">krutidugade</a>,&nbsp;<a href=\"https://profiles.wordpress.org/laghee\">laghee</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lakenh\">Laken Hafner</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lancewillett\">Lance Willett</a>,&nbsp;<a href=\"https://profiles.wordpress.org/laurelfulford\">laurelfulford</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lbenicio\">lbenicio</a>,&nbsp;<a href=\"https://profiles.wordpress.org/leanderiversen\">Leander Iversen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/leemon\">leemon</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lenasterg\">lenasterg</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lisannekluitmans\">lisannekluitmans</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lizkarkoski\">lizkarkoski</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lucagrandicelli\">Luca Grandicelli</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lucasrolff\">LucasRolff</a>,&nbsp;<a href=\"https://profiles.wordpress.org/luciano\">luciano</a>,&nbsp;<a href=\"https://profiles.wordpress.org/luminus\">Luminus</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mariovalney\">Mário Valney</a>,&nbsp;<a href=\"https://profiles.wordpress.org/maartenleenders\">maartenleenders</a>,&nbsp;<a href=\"https://profiles.wordpress.org/macbookandrew\">macbookandrew</a>,&nbsp;<a href=\"https://profiles.wordpress.org/travel_girl\">Maja Benke</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mako09\">Mako</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tomdxw\">mallorydxw-old</a>,&nbsp;<a href=\"https://profiles.wordpress.org/manuelaugustin\">Manuel Augustin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/manuel_84\">manuel_84</a>,&nbsp;<a href=\"https://profiles.wordpress.org/zottto\">Marc Nilius</a>,&nbsp;<a href=\"https://profiles.wordpress.org/marcelo2605\">marcelo2605</a>,&nbsp;<a href=\"https://profiles.wordpress.org/marcomartins\">Marco Martins</a>,&nbsp;<a href=\"https://profiles.wordpress.org/marcomarsala\">marco.marsala</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mkaz\">Marcus Kazmierczak</a>,&nbsp;<a href=\"https://profiles.wordpress.org/marcwieland95\">marcwieland95</a>,&nbsp;<a href=\"https://profiles.wordpress.org/clorith\">Marius L. J.</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mariusvw\">mariusvw</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mbelchev\">Mariyan Belchev</a>,&nbsp;<a href=\"https://profiles.wordpress.org/markjaquith\">Mark Jaquith</a>,&nbsp;<a href=\"https://profiles.wordpress.org/iceable\">Mathieu Sarrasin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mathieuhays\">mathieuhays</a>,&nbsp;<a href=\"https://profiles.wordpress.org/webdevmattcrom\">Matt Cromwell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mgibbs189\">Matt Gibbs</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sivel\">Matt Martz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mboynes\">Matthew Boynes</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lonelyvegan\">Matthew Riley MacPherson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mattyrob\">mattyrob</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mcmwebsol\">mcmwebsol</a>,&nbsp;<a href=\"https://profiles.wordpress.org/melchoyce\">Mel Choyce</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mensmaximus\">mensmaximus</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mermel\">mermel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/metalandcoffee\">metalandcoffee</a>,&nbsp;<a href=\"https://profiles.wordpress.org/wpscholar\">Micah Wood</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mnelson4\">Michael Nelson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/michielatyoast\">Michiel Heijmans</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sebastienthivinfocom\">Migrated to @sebastienserre</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mcsf\">Miguel Fonseca</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mmtr86\">Miguel Torres</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mihaiiceyro\">mihaiiceyro</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mihdan\">mihdan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mikegillihan\">Mike Gillihan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mikejolley\">Mike Jolley</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mikeschroder\">Mike Schroder</a>,&nbsp;<a href=\"https://profiles.wordpress.org/dimadin\">Milan Dinić</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lanche86\">Milan Ivanovic</a>,&nbsp;<a href=\"https://profiles.wordpress.org/milana_cap\">Milana Cap</a>,&nbsp;<a href=\"https://profiles.wordpress.org/milindmore22\">Milind More</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mirkoschubert\">mirkoschubert</a>,&nbsp;<a href=\"https://profiles.wordpress.org/monikarao\">Monika Rao</a>,&nbsp;<a href=\"https://profiles.wordpress.org/boemedia\">Monique Dubbelman</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mt8biz\">moto hachi ( mt8.biz )</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mrmadhat\">mrmadhat</a>,&nbsp;<a href=\"https://profiles.wordpress.org/xpertone\">Muhammad Kashif</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mukesh27\">Mukesh Panchal</a>,&nbsp;<a href=\"https://profiles.wordpress.org/lorenzone92\">MultiformeIngegno</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mmaumio\">Muntasir Mahmud</a>,&nbsp;<a href=\"https://profiles.wordpress.org/munyagu\">munyagu</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mythemeshop\">MyThemeShop</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mzorz\">mzorz</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nadim0988\">nadim0988</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nandorsky\">nandorsky</a>,&nbsp;<a href=\"https://profiles.wordpress.org/naoki0h\">Naoki Ohashi</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nao\">Naoko Takano</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nataliashitova\">nataliashitova</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nateallen\">Nate Allen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nathanatmoz\">Nathan Johnson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ndavison\">ndavison</a>,&nbsp;<a href=\"https://profiles.wordpress.org/greatislander\">Ned Zimmerman</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nextendweb\">Nextendweb</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ndiego\">Nick Diego</a>,&nbsp;<a href=\"https://profiles.wordpress.org/celloexpressions\">Nick Halsey</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nickmomrik\">Nick Momrik</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nick_thegeek\">Nick the Geek</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nahuelmahe\">Nicolas Figueira</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nikeo\">Nicolas GUILLAUME</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nicollle\">Nicolle Helgers</a>,&nbsp;<a href=\"https://profiles.wordpress.org/jainnidhi\">Nidhi Jain</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nielslange\">Niels Lange</a>,&nbsp;<a href=\"https://profiles.wordpress.org/nikschavan\">Nikhil Chavan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rabmalin\">Nilambar Sharma</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mrtortai\">Noam Eppel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/notnownikki\">notnownikki</a>,&nbsp;<a href=\"https://profiles.wordpress.org/odysseygate\">odyssey</a>,&nbsp;<a href=\"https://profiles.wordpress.org/omarreiss\">Omar Reiss</a>,&nbsp;<a href=\"https://profiles.wordpress.org/codestor\">Omkar Bhagat</a>,&nbsp;<a href=\"https://profiles.wordpress.org/on\">on</a>,&nbsp;<a href=\"https://profiles.wordpress.org/others\">others</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ov3rfly\">Ov3rfly</a>,&nbsp;<a href=\"https://profiles.wordpress.org/paaljoachim\">Paal Joachim Romdahl</a>,&nbsp;<a href=\"https://profiles.wordpress.org/palmiak\">palmiak</a>,&nbsp;<a href=\"https://profiles.wordpress.org/panchen\">panchen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/parbaugh\">parbaugh</a>,&nbsp;<a href=\"https://profiles.wordpress.org/xparham\">Parham Ghaffarian</a>,&nbsp;<a href=\"https://profiles.wordpress.org/swissspidy\">Pascal Birchler</a>,&nbsp;<a href=\"https://profiles.wordpress.org/casiepa\">Pascal Casier</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pbearne\">Paul Bearne</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pbiron\">Paul Biron</a>,&nbsp;<a href=\"https://profiles.wordpress.org/natacado\">Paul Paradise</a>,&nbsp;<a href=\"https://profiles.wordpress.org/paulschreiber\">Paul Schreiber</a>,&nbsp;<a href=\"https://profiles.wordpress.org/piewp\">Perdaan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pputzer\">Peter Putzer</a>,&nbsp;<a href=\"https://profiles.wordpress.org/peterwilsoncc\">Peter Wilson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/walbo\">Petter Walbø Johnsgård</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pskli\">Pierre Saïkali</a>,&nbsp;<a href=\"https://profiles.wordpress.org/wizzard_\">Pieter Daalder</a>,&nbsp;<a href=\"https://profiles.wordpress.org/piyush9100\">Piyush Patel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/poena\">poena</a>,&nbsp;<a href=\"https://profiles.wordpress.org/promz\">Pramod Jodhani</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pmbaldha\">Prashant Baldha</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pratikkry\">Pratik K. Yadav</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pratikthink\">Pratik K. Yadav</a>,&nbsp;<a href=\"https://profiles.wordpress.org/precies\">precies</a>,&nbsp;<a href=\"https://profiles.wordpress.org/presskopp\">Presskopp</a>,&nbsp;<a href=\"https://profiles.wordpress.org/presslabs\">Presslabs</a>,&nbsp;<a href=\"https://profiles.wordpress.org/presstigers\">PressTigers</a>,&nbsp;<a href=\"https://profiles.wordpress.org/programmin\">programmin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/punit5658\">Punit Patel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/purnendu\">Purnendu Dash</a>,&nbsp;<a href=\"https://profiles.wordpress.org/qcmiao\">qcmiao</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rachelbaker\">Rachel Baker</a>,&nbsp;<a href=\"https://profiles.wordpress.org/bamadesigner\">Rachel Cherry</a>,&nbsp;<a href=\"https://profiles.wordpress.org/larrach\">Rachel Peter</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rafsuntaskin\">Rafsun Chowdhury</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rahulsprajapati\">Rahul Prajapati</a>,&nbsp;<a href=\"https://profiles.wordpress.org/cthreelabs\">Raja Mohammed</a>,&nbsp;<a href=\"https://profiles.wordpress.org/superpoincare\">Ramanan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ramiy\">Rami Yushuvaev</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ramizmanked\">Ramiz Manked</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ramonopoly\">ramonopoly</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ravanh\">RavanH</a>,&nbsp;<a href=\"https://profiles.wordpress.org/redcastor\">redcastor</a>,&nbsp;<a href=\"https://profiles.wordpress.org/remyvv\">remyvv</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rensw90\">rensw90</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rhetorical\">rhetorical</a>,&nbsp;<a href=\"https://profiles.wordpress.org/youknowriad\">Riad Benguella</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rianrietveld\">Rian Rietveld</a>,&nbsp;<a href=\"https://profiles.wordpress.org/iamfriendly\">Richard Tape</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rickalee\">Ricky Lee Whittemore</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rinkuyadav999\">Rinku Y</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rishishah\">Rishi Shah</a>,&nbsp;<a href=\"https://profiles.wordpress.org/robbie505\">Robbie</a>,&nbsp;<a href=\"https://profiles.wordpress.org/robdxw\">robdxw</a>,&nbsp;<a href=\"https://profiles.wordpress.org/noisysocks\">Robert Anderson</a>,&nbsp;<a href=\"https://profiles.wordpress.org/littlerchicken\">Robin Cornett</a>,&nbsp;<a href=\"https://profiles.wordpress.org/robinvandervliet\">Robin van der Vliet</a>,&nbsp;<a href=\"https://profiles.wordpress.org/rmccue\">Ryan McCue</a>,&nbsp;<a href=\"https://profiles.wordpress.org/othellobloke\">Ryan Paul</a>,&nbsp;<a href=\"https://profiles.wordpress.org/welcher\">Ryan Welcher</a>,&nbsp;<a href=\"https://profiles.wordpress.org/ryotsun\">ryotsun</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sebastienserre\">Sébastien SERRE</a>,&nbsp;<a href=\"https://profiles.wordpress.org/stodorovic\">Saša</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sagarnasit\">sagarnasit</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sasiddiqui\">Sami Ahmed Siddiqui</a>,&nbsp;<a href=\"https://profiles.wordpress.org/samikeijonen\">Sami Keijonen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/otto42\">Samuel Wood (Otto)</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tinkerbelly\">sarah semark</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sayedwp\">Sayed Taqui</a>,&nbsp;<a href=\"https://profiles.wordpress.org/scottlee\">Scott Lee</a>,&nbsp;<a href=\"https://profiles.wordpress.org/coffee2code\">Scott Reilly</a>,&nbsp;<a href=\"https://profiles.wordpress.org/seanchayes\">Sean Hayes</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sebakurzyn\">Sebastian Kurzynoswki</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sebastianpisula\">Sebastian Pisula</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sergeybiryukov\">Sergey Biryukov</a>,&nbsp;<a href=\"https://profiles.wordpress.org/shamim51\">Shamim Hasan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/shaneeckert\">Shane Eckert</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sharaz\">Sharaz Shahid</a>,&nbsp;<a href=\"https://profiles.wordpress.org/shashwatmittal\">Shashwat Mittal</a>,&nbsp;<a href=\"https://profiles.wordpress.org/shooper\">Shawn Hooper</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sherwood\">sherwood</a>,&nbsp;<a href=\"https://profiles.wordpress.org/shital-patel\">Shital Marakana</a>,&nbsp;<a href=\"https://profiles.wordpress.org/shivapoudel\">Shiva Poudel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/pross\">Simon Prosser</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sjardo\">sjardo</a>,&nbsp;<a href=\"https://profiles.wordpress.org/skoldin\">skoldin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/slilley\">slilley</a>,&nbsp;<a href=\"https://profiles.wordpress.org/slushman\">slushman</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sonjaleix\">Sonja Leix</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sonjanyc\">sonjanyc</a>,&nbsp;<a href=\"https://profiles.wordpress.org/soean\">Soren Wrede</a>,&nbsp;<a href=\"https://profiles.wordpress.org/spartank\">spartank</a>,&nbsp;<a href=\"https://profiles.wordpress.org/spyderbytes\">spyderbytes</a>,&nbsp;<a href=\"https://profiles.wordpress.org/sstoqnov\">Stanimir Stoyanov</a>,&nbsp;<a href=\"https://profiles.wordpress.org/metodiew\">Stanko Metodiev</a>,&nbsp;<a href=\"https://profiles.wordpress.org/stazdotio\">stazdotio</a>,&nbsp;<a href=\"https://profiles.wordpress.org/netweb\">Stephen Edgar</a>,&nbsp;<a href=\"https://profiles.wordpress.org/stephenharris\">Stephen Harris</a>,&nbsp;<a href=\"https://profiles.wordpress.org/stevenlinx\">stevenlinx</a>,&nbsp;<a href=\"https://profiles.wordpress.org/stormrockwell\">Storm Rockwell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/skostadinov\">Stoyan Kostadinov</a>,&nbsp;<a href=\"https://profiles.wordpress.org/strategio\">strategio</a>,&nbsp;<a href=\"https://profiles.wordpress.org/subrataemfluence\">Subrata Sarkar</a>,&nbsp;<a href=\"https://profiles.wordpress.org/manikmist09\">Sultan Nasir Uddin</a>,&nbsp;<a href=\"https://profiles.wordpress.org/swift\">swift</a>,&nbsp;<a href=\"https://profiles.wordpress.org/takahashi_fumiki\">Takahashi Fumiki</a>,&nbsp;<a href=\"https://profiles.wordpress.org/miyauchi\">Takayuki Miyauchi</a>,&nbsp;<a href=\"https://profiles.wordpress.org/karmatosed\">Tammie Lister</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tlovett1\">Taylor Lovett</a>,&nbsp;<a href=\"https://profiles.wordpress.org/teddytime\">teddytime</a>,&nbsp;<a href=\"https://profiles.wordpress.org/terriann\">Terri Ann</a>,&nbsp;<a href=\"https://profiles.wordpress.org/terwdan\">terwdan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tharsheblows\">tharsheblows</a>,&nbsp;<a href=\"https://profiles.wordpress.org/the\">the</a>,&nbsp;<a href=\"https://profiles.wordpress.org/themezee\">ThemeZee</a>,&nbsp;<a href=\"https://profiles.wordpress.org/thomasplevy\">Thomas Patrick Levy</a>,&nbsp;<a href=\"https://profiles.wordpress.org/thomas-vitale\">Thomas Vitale</a>,&nbsp;<a href=\"https://profiles.wordpress.org/thomaswm\">thomaswm</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tfrommen\">Thorsten Frommen</a>,&nbsp;<a href=\"https://profiles.wordpress.org/thrijith\">Thrijith Thankachan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tiagohillebrandt\">Tiago Hillebrandt</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tigertech\">tigertech</a>,&nbsp;<a href=\"https://profiles.wordpress.org/timhavinga\">Tim Havinga</a>,&nbsp;<a href=\"https://profiles.wordpress.org/hedgefield\">Tim Hengeveld</a>,&nbsp;<a href=\"https://profiles.wordpress.org/timmydcrawford\">Timmy Crawford</a>,&nbsp;<a href=\"https://profiles.wordpress.org/timothyblynjacobs\">Timothy Jacobs</a>,&nbsp;<a href=\"https://profiles.wordpress.org/titodevera\">titodevera</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tkama\">Tkama</a>,&nbsp;<a href=\"https://profiles.wordpress.org/to\">to</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tz-media\">Tobias Zimpel</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tjnowell\">Tom J Nowell</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tomharrigan\">TomHarrigan</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tferry\">Tommy</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tonybogdanov\">tonybogdanov</a>,&nbsp;<a href=\"https://profiles.wordpress.org/tobifjellner\">Tor-Bjorn Fjellner</a>,&nbsp;<a href=\"https://profiles.wordpress.org/torontodigits\">TorontoDigits</a>,&nbsp;<a href=\"https://profiles.wordpress.org/mirucon\">Toshihiro Kanai</a>,&nbsp;<a href=\"https://profiles.wordpress.org/itowhid06\">Towhidul Islam</a>,&nbsp;<a href=\"https://profiles.wordpress.org/transl8or\">transl8or</a>,&nbsp;<a href=\"https://profiles.wordpress.org/grapplerulrich\">Ulrich</a>,&nbsp;<a href=\"https://profiles.wordpress.org/upadalavipul\">upadalavipul</a>,&nbsp;<a href=\"https://profiles.wordpress.org/usmankhalid\">Usman Khalid</a>,&nbsp;<a href=\"https://profiles.wordpress.org/utsav72640\">Utsav tilava</a>,&nbsp;<a href=\"https://profiles.wordpress.org/uttam007\">uttam007</a>,&nbsp;<a href=\"https://profiles.wordpress.org/vaishalipanchal\">Vaishali Panchal</a>,&nbsp;<a href=\"https://profiles.wordpress.org/valer1e\">Valérie Galassi</a>,&nbsp;<a href=\"https://profiles.wordpress.org/valchovski\">valchovski</a>,&nbsp;<a href=\"https://profiles.wordpress.org/vishaldodiya\">vishaldodiya</a>,&nbsp;<a href=\"https://profiles.wordpress.org/vnsavage\">vnsavage</a>,&nbsp;<a href=\"https://profiles.wordpress.org/voneff\">voneff</a>,&nbsp;<a href=\"https://profiles.wordpress.org/warmlaundry\">warmlaundry</a>,&nbsp;<a href=\"https://profiles.wordpress.org/wbrubaker\">wbrubaker</a>,&nbsp;<a href=\"https://profiles.wordpress.org/westonruter\">Weston Ruter</a>,&nbsp;<a href=\"https://profiles.wordpress.org/who\">who</a>,&nbsp;<a href=\"https://profiles.wordpress.org/kwonye\">Will Kwon</a>,&nbsp;<a href=\"https://profiles.wordpress.org/earnjam\">William Earnhardt</a>,&nbsp;<a href=\"https://profiles.wordpress.org/williampatton\">williampatton</a>,&nbsp;<a href=\"https://profiles.wordpress.org/wpcs\">wpcs</a>,&nbsp;<a href=\"https://profiles.wordpress.org/wpzinc\">wpzinc</a>,&nbsp;<a href=\"https://profiles.wordpress.org/xhezairi\">xhezairi</a>,&nbsp;<a href=\"https://profiles.wordpress.org/yahil\">Yahil Madakiya</a>,&nbsp;<a href=\"https://profiles.wordpress.org/yoavf\">Yoav Farhi</a>,&nbsp;<a href=\"https://profiles.wordpress.org/fierevere\">Yui</a>,&nbsp;<a href=\"https://profiles.wordpress.org/yuriv\">YuriV</a>,&nbsp;<a href=\"https://profiles.wordpress.org/zanematthew\">Zane Matthew</a>, <a href=\"https://profiles.wordpress.org/zebulan\">zebulan</a>.</p>\n\n\n\n<p>最後に、WordPress 5.1 に協力してくれたコミュニティ翻訳者の皆さん、ありがとうございました。彼らや彼女らのおかげで、WordPress 5.1 はリリース時に34言語への翻訳が完了していました。今後、言語数はもっと増えるでしょう。</p>\n\n\n\n<p>最新情報を追ったり、貢献したい方は <a href=\"https://make.wordpress.org/\">Make WordPress</a> や<a href=\"https://make.wordpress.org/core/\">コア開発ブログ</a>をチェックしてみてください。</p>\n\n\n\n<p>WordPress を選んでいただき、ありがとうございます !</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:35:\"https://ja.wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"\n	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"\n	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 02 Jul 2019 15:16:47 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Wed, 18 Jul 2012 08:25:33 GMT\";s:4:\"link\";s:61:\"<https://ja.wordpress.org/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20130910190210\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(186, '_transient_timeout_feed_mod_992efac292246ae35bf235a03417a202', '1562123808', 'no'),
(187, '_transient_feed_mod_992efac292246ae35bf235a03417a202', '1562080608', 'no'),
(188, '_transient_timeout_feed_6f409681938158427d2ded6eb1b9ea27', '1562123809', 'no'),
(189, '_transient_feed_6f409681938158427d2ded6eb1b9ea27', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n\n	\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:141:\"\n		\n		\n		\n		\n		\n		\n		\n\n		\n		\n					\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n			\n				\n\n					\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"WordPress | サポートフォーラム » 返信一覧\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"https://ja.wordpress.org/support/forums/feed\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 03 Jul 2019 00:16:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://bbpress.org/?v=2.6-alpha-6091\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"ja\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:226:\"https://ja.wordpress.org/support/topic/%e3%80%8ctop%e3%81%b8%e6%88%bb%e3%82%8b%e3%80%8d%e3%81%ae%e3%82%a2%e3%82%a4%e3%82%b3%e3%83%b3%e3%81%8c%e3%83%90%e3%83%84%e3%83%9e%e3%83%bc%e3%82%af%e3%81%ab%e3%81%aa%e3%82%8b/#post-237421\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"返信先: 「TOPへ戻る」のアイコンがバツマークになる\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:226:\"https://ja.wordpress.org/support/topic/%e3%80%8ctop%e3%81%b8%e6%88%bb%e3%82%8b%e3%80%8d%e3%81%ae%e3%82%a2%e3%82%a4%e3%82%b3%e3%83%b3%e3%81%8c%e3%83%90%e3%83%84%e3%83%9e%e3%83%bc%e3%82%af%e3%81%ab%e3%81%aa%e3%82%8b/#post-237421\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 02 Jul 2019 11:38:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"\n						\n						<p>作りが同じであれば、比較しやすいと思いますが。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"CG\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:226:\"https://ja.wordpress.org/support/topic/%e3%80%8ctop%e3%81%b8%e6%88%bb%e3%82%8b%e3%80%8d%e3%81%ae%e3%82%a2%e3%82%a4%e3%82%b3%e3%83%b3%e3%81%8c%e3%83%90%e3%83%84%e3%83%9e%e3%83%bc%e3%82%af%e3%81%ab%e3%81%aa%e3%82%8b/#post-237420\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:60:\"「TOPへ戻る」のアイコンがバツマークになる\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:226:\"https://ja.wordpress.org/support/topic/%e3%80%8ctop%e3%81%b8%e6%88%bb%e3%82%8b%e3%80%8d%e3%81%ae%e3%82%a2%e3%82%a4%e3%82%b3%e3%83%b3%e3%81%8c%e3%83%90%e3%83%84%e3%83%9e%e3%83%bc%e3%82%af%e3%81%ab%e3%81%aa%e3%82%8b/#post-237420\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 02 Jul 2019 09:01:59 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1042:\"\n						\n						<p>こんにちは。<br />\n新しくHPを作成している途中なのですが、どうしても改善出来ない現象が起こっているので、お詳しい方がいらっしゃいましたら是非お力をお貸しください。</p>\n<p>今回質問したい内容は、「TOPへ戻る」の実装をした際に、<br />\nなぜかアイコンが□の中にバツマークが入ったアイコンが表示されてしまうのです。</p>\n<p>今は取ってしまいましたが、他にもContact Info Barの電話やメールのアイコンも□の中にバツマークが表示されて、うまく正しいアイコンが表示されません。</p>\n<p>プラグインを止めてみたりしましたが改善されずお手上げ状態です。</p>\n<p>他のサイトを同じ作りで、その同じ作りのサイトでは問題なくアイコンが表示されているのでより一層なぜだかわかりません。</p>\n<p>違うサイトとはこちら：https://www.iphoneclear.jp/</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"バッテリー\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:241:\"https://ja.wordpress.org/support/topic/%e3%80%8c%e3%83%97%e3%83%a9%e3%82%b0%e3%82%a4%e3%83%b3%e3%82%92%e8%bf%bd%e5%8a%a0%e3%80%8d%e7%94%bb%e9%9d%a2%e3%81%a7%e4%b8%8d%e6%98%8e%e3%81%aa%e3%82%a8%e3%83%a9%e3%83%bc%e3%81%8c%e7%99%ba/#post-237419\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:101:\"返信先: 「プラグインを追加」画面で”不明なエラーが発生”と表示される\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:241:\"https://ja.wordpress.org/support/topic/%e3%80%8c%e3%83%97%e3%83%a9%e3%82%b0%e3%82%a4%e3%83%b3%e3%82%92%e8%bf%bd%e5%8a%a0%e3%80%8d%e7%94%bb%e9%9d%a2%e3%81%a7%e4%b8%8d%e6%98%8e%e3%81%aa%e3%82%a8%e3%83%a9%e3%83%bc%e3%81%8c%e7%99%ba/#post-237419\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 02 Jul 2019 08:39:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:260:\"\n						\n						<p>３社のサーバーにあるワードプレスサイトで確認しました。「e」と検索した場合と、「注目」タブで「予期しないエラーが発生しました。」のメッセージが出ますね。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"CG\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:241:\"https://ja.wordpress.org/support/topic/%e3%80%8c%e3%83%97%e3%83%a9%e3%82%b0%e3%82%a4%e3%83%b3%e3%82%92%e8%bf%bd%e5%8a%a0%e3%80%8d%e7%94%bb%e9%9d%a2%e3%81%a7%e4%b8%8d%e6%98%8e%e3%81%aa%e3%82%a8%e3%83%a9%e3%83%bc%e3%81%8c%e7%99%ba/#post-237417\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"「プラグインを追加」画面で”不明なエラーが発生”と表示される\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:241:\"https://ja.wordpress.org/support/topic/%e3%80%8c%e3%83%97%e3%83%a9%e3%82%b0%e3%82%a4%e3%83%b3%e3%82%92%e8%bf%bd%e5%8a%a0%e3%80%8d%e7%94%bb%e9%9d%a2%e3%81%a7%e4%b8%8d%e6%98%8e%e3%81%aa%e3%82%a8%e3%83%a9%e3%83%bc%e3%81%8c%e7%99%ba/#post-237417\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 02 Jul 2019 08:18:42 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1875:\"\n						\n						<p>プラグイン→新規追加　「プラグインを追加」画面で</p>\n<p><em>不明なエラーが発生しました。WordPress.org またはこのサーバーの設定に何か問題が起きている可能性があります。</em></p>\n<p>とエラーがでます。</p>\n<p>「人気タブ」、「おすすめタブ」を表示、また検索欄から検索をするとこのようなエラーが出てきます。</p>\n<p>何故か知りませんが検索欄を使う場合、検索する文字列によってエラーにならず通常通り表示される場合があります。</p>\n<p>例.「o」と検索した場合は通常通り表示<br />\n   「e」と検索した場合はエラーが表示</p>\n<p>バックアップデータを復元した後、このようなエラーが出てきたので原因はそれだと思いますが。。。</p>\n<p>一応サーバーのエラーログを見てみると、以下のようなログが確認できました。</p>\n<p>/public_html/wp-content/plugins/jetpack/modules/plugin-search.php on line 333, referer: </p>\n<p>/public_html/wp-content/plugins/jetpack/modules/plugin-search.php on line 334, referer: </p>\n<p>似たような記事を見つけましたが、情報が古かったので質問させていただきました。よろしくお願いします。https://ja.wordpress.org/support/topic/%E3%83%86%E3%83%BC%E3%83%9E%E3%81%AE%E6%96%B0%E8%A6%8F%E8%BF%BD%E5%8A%A0%E3%81%AE%E3%82%A8%E3%83%A9%E3%83%BC/</p>\n\n\n<ul id=\"bbp-topic-revision-log-237417\" class=\"bbp-topic-revision-log\">\n\n	<li id=\"bbp-topic-revision-log-237417-item-237418\" class=\"bbp-topic-revision-log-item\">\n		このトピックは<a href=\"https://ja.wordpress.org/support/users/nanachika/\" title=\"nanachika のプロフィールを表示\">nanachika</a>が6 時間、 52 分前に変更しました。\n	</li>\n\n</ul>\n\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"nanachika\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:212:\"https://ja.wordpress.org/support/topic/%e3%83%a1%e3%83%87%e3%82%a3%e3%82%a2%e3%83%a9%e3%82%a4%e3%83%96%e3%83%a9%e3%83%aa%e3%81%ab%e7%94%bb%e5%83%8f%e3%81%8c%e6%ae%8b%e3%82%89%e3%81%aa%e3%81%84/page/2/#post-237415\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"返信先: メディアライブラリに画像が残らない\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:212:\"https://ja.wordpress.org/support/topic/%e3%83%a1%e3%83%87%e3%82%a3%e3%82%a2%e3%83%a9%e3%82%a4%e3%83%96%e3%83%a9%e3%83%aa%e3%81%ab%e7%94%bb%e5%83%8f%e3%81%8c%e6%ae%8b%e3%82%89%e3%81%aa%e3%81%84/page/2/#post-237415\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 01 Jul 2019 13:12:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:533:\"\n						\n						<p>Media from FTP の検索＆登録で、ファイル検索して「メディアを更新」すると、管理画面のメディアに取り込まれます。<br />\nMedia from FTP で検索すれば、使い方は出てきます。<br />\nプラグインのページ<br />\n<a href=\"https://ja.wordpress.org/plugins/media-from-ftp/\" rel=\"nofollow\">https://ja.wordpress.org/plugins/media-from-ftp/</a><br />\nにもチュートリアル動画がありますので、一度ご覧になってください。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Toshiyuki Honda\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:212:\"https://ja.wordpress.org/support/topic/%e3%83%a1%e3%83%87%e3%82%a3%e3%82%a2%e3%83%a9%e3%82%a4%e3%83%96%e3%83%a9%e3%83%aa%e3%81%ab%e7%94%bb%e5%83%8f%e3%81%8c%e6%ae%8b%e3%82%89%e3%81%aa%e3%81%84/page/2/#post-237414\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"返信先: メディアライブラリに画像が残らない\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:212:\"https://ja.wordpress.org/support/topic/%e3%83%a1%e3%83%87%e3%82%a3%e3%82%a2%e3%83%a9%e3%82%a4%e3%83%96%e3%83%a9%e3%83%aa%e3%81%ab%e7%94%bb%e5%83%8f%e3%81%8c%e6%ae%8b%e3%82%89%e3%81%aa%e3%81%84/page/2/#post-237414\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 01 Jul 2019 12:46:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:483:\"\n						\n						<p>Toshiyuki Hondaさん<br />\nCGさん</p>\n<p>お返事が遅れてすみません。<br />\n「Media from FTP」をおすすめしてくださってありがとうございます！<br />\n早速ファイルの保存場所を書記に戻して導入してみましたが、だめでした。。。<br />\n何か操作があるのでしょうか？もしあれば教えていただきたいです！<br />\nどうぞよろしくお願いいたします。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"naginagi21\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:187:\"https://ja.wordpress.org/support/topic/%e3%83%96%e3%83%ad%e3%82%b0%e3%82%b5%e3%83%a0%e3%83%8d%e3%82%a4%e3%83%ab%e8%a1%a8%e7%a4%ba%e6%95%b0%e3%82%92%e5%a2%97%e3%82%84%e3%81%99/#post-237413\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"返信先: ブログサムネイル表示数を増やす\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:187:\"https://ja.wordpress.org/support/topic/%e3%83%96%e3%83%ad%e3%82%b0%e3%82%b5%e3%83%a0%e3%83%8d%e3%82%a4%e3%83%ab%e8%a1%a8%e7%a4%ba%e6%95%b0%e3%82%92%e5%a2%97%e3%82%84%e3%81%99/#post-237413\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 01 Jul 2019 12:19:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:915:\"\n						\n						<p><a href=\"https://ja.wordpress.org/support/users/ishitaka/\" class=\"mention\" rel=\"nofollow\">@ishitaka</a> codeボタン理解いたしました</p>\n<p><a href=\"https://ja.wordpress.org/support/users/ishitaka/\" class=\"mention\" rel=\"nofollow\">@ishitaka</a><br />\n<a href=\"https://ja.wordpress.org/support/users/rocketmartue/\" class=\"mention\" rel=\"nofollow\">@rocketmartue</a>  御教示ありがとうございました。　<br />\nもう一度index.phpのlistの部分<br />\n<code>=&gt; 3);</code>を<code>=&gt; 6);</code>にするとすんなり表示成功しました。<br />\n前回全角にしていたことでもないですし何故すんなりいったのか不明です。<code>=&gt; 6 );</code>のように半角スペースが入っていたわけでもなく。。。サーバ、通信環境の問題でしょうか？　お陰様でとにかく解決いたしました。</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"ricaco\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:250:\"https://ja.wordpress.org/support/topic/%e7%89%b9%e5%ae%9a%e3%81%ae%e3%83%a6%e3%83%bc%e3%82%b6%e3%83%bc%e3%81%8c%e6%8a%95%e7%a8%bf%e3%81%97%e3%81%9f%e3%82%ab%e3%83%86%e3%82%b4%e3%83%aa%e3%83%bc%e6%af%8e%e3%81%ae%e6%8a%95%e7%a8%bf%e6%95%b0/#post-237412\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"返信先: 特定のユーザーが投稿したカテゴリー毎の投稿数\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:250:\"https://ja.wordpress.org/support/topic/%e7%89%b9%e5%ae%9a%e3%81%ae%e3%83%a6%e3%83%bc%e3%82%b6%e3%83%bc%e3%81%8c%e6%8a%95%e7%a8%bf%e3%81%97%e3%81%9f%e3%82%ab%e3%83%86%e3%82%b4%e3%83%aa%e3%83%bc%e6%af%8e%e3%81%ae%e6%8a%95%e7%a8%bf%e6%95%b0/#post-237412\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 01 Jul 2019 10:38:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:292:\"\n						\n						<p>こんにちは</p>\n<p>サイドナビかどこかに、全ユーザーについて表示したいということでしょうか？<br />\nそれとも、ログインしている自分自身の投稿について表示したいということでしょうか？</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:7:\"munyagu\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:205:\"https://ja.wordpress.org/support/topic/%e3%82%b5%e3%83%a0%e3%83%8d%e3%82%a4%e3%83%ab%e3%81%ae%e8%87%aa%e5%8b%95%e7%94%9f%e6%88%90%e3%82%92%e6%ad%a2%e3%82%81%e3%82%89%e3%82%8c%e3%81%aa%e3%81%84/#post-237411\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:62:\"返信先: サムネイルの自動生成を止められない\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:205:\"https://ja.wordpress.org/support/topic/%e3%82%b5%e3%83%a0%e3%83%8d%e3%82%a4%e3%83%ab%e3%81%ae%e8%87%aa%e5%8b%95%e7%94%9f%e6%88%90%e3%82%92%e6%ad%a2%e3%82%81%e3%82%89%e3%82%8c%e3%81%aa%e3%81%84/#post-237411\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 30 Jun 2019 15:33:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"\n						\n						<p>こんにちは</p>\n<p>テーマは何をお使いですか？</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"ishitaka\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:55:\"\n					\n					\n					\n					\n					\n\n					\n\n					\n					\n				\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:250:\"https://ja.wordpress.org/support/topic/%e7%89%b9%e5%ae%9a%e3%81%ae%e3%83%a6%e3%83%bc%e3%82%b6%e3%83%bc%e3%81%8c%e6%8a%95%e7%a8%bf%e3%81%97%e3%81%9f%e3%82%ab%e3%83%86%e3%82%b4%e3%83%aa%e3%83%bc%e6%af%8e%e3%81%ae%e6%8a%95%e7%a8%bf%e6%95%b0/#post-237410\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"返信先: 特定のユーザーが投稿したカテゴリー毎の投稿数\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:250:\"https://ja.wordpress.org/support/topic/%e7%89%b9%e5%ae%9a%e3%81%ae%e3%83%a6%e3%83%bc%e3%82%b6%e3%83%bc%e3%81%8c%e6%8a%95%e7%a8%bf%e3%81%97%e3%81%9f%e3%82%ab%e3%83%86%e3%82%b4%e3%83%aa%e3%83%bc%e6%af%8e%e3%81%ae%e6%8a%95%e7%a8%bf%e6%95%b0/#post-237410\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sun, 30 Jun 2019 14:56:18 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:133:\"\n						\n						<p>WP_Query()で投稿取得後、post_count で件数を取得してみてはどうでしょうか？</p>\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Toshiyuki Honda\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:44:\"https://ja.wordpress.org/support/forums/feed\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:7:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Tue, 02 Jul 2019 15:16:49 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:6:\"x-olaf\";s:3:\"⛄\";s:12:\"x-robots-tag\";s:15:\"noindex, follow\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";}}s:5:\"build\";s:14:\"20130910190210\";}', 'no'),
(190, '_transient_timeout_feed_mod_6f409681938158427d2ded6eb1b9ea27', '1562123809', 'no'),
(191, '_transient_feed_mod_6f409681938158427d2ded6eb1b9ea27', '1562080609', 'no'),
(192, '_transient_timeout_dash_v2_45827e8e892dd0b85803a110fad8690f', '1562123809', 'no'),
(193, '_transient_dash_v2_45827e8e892dd0b85803a110fad8690f', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/2019/06/19/wordpress-5-2-2-maintenance-release/\'>WordPress 5.2.2メンテナンスリリース</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/support/topic/%E3%80%8Ctop%E3%81%B8%E6%88%BB%E3%82%8B%E3%80%8D%E3%81%AE%E3%82%A2%E3%82%A4%E3%82%B3%E3%83%B3%E3%81%8C%E3%83%90%E3%83%84%E3%83%9E%E3%83%BC%E3%82%AF%E3%81%AB%E3%81%AA%E3%82%8B/#post-237421\'>返信先: 「TOPへ戻る」のアイコンがバツマークになる</a></li><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/support/topic/%E3%80%8Ctop%E3%81%B8%E6%88%BB%E3%82%8B%E3%80%8D%E3%81%AE%E3%82%A2%E3%82%A4%E3%82%B3%E3%83%B3%E3%81%8C%E3%83%90%E3%83%84%E3%83%9E%E3%83%BC%E3%82%AF%E3%81%AB%E3%81%AA%E3%82%8B/#post-237420\'>「TOPへ戻る」のアイコンがバツマークになる</a></li><li><a class=\'rsswidget\' href=\'https://ja.wordpress.org/support/topic/%E3%80%8C%E3%83%97%E3%83%A9%E3%82%B0%E3%82%A4%E3%83%B3%E3%82%92%E8%BF%BD%E5%8A%A0%E3%80%8D%E7%94%BB%E9%9D%A2%E3%81%A7%E4%B8%8D%E6%98%8E%E3%81%AA%E3%82%A8%E3%83%A9%E3%83%BC%E3%81%8C%E7%99%BA/#post-237419\'>返信先: 「プラグインを追加」画面で”不明なエラーが発生”と表示される</a></li></ul></div>', 'no'),
(195, 'theme_mods_cocoon-master', 'a:8:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:22:\"accesses_table_version\";s:5:\"0.0.3\";s:29:\"speech_balloons_table_version\";s:5:\"0.0.0\";s:28:\"affiliate_tags_table_version\";s:3:\"0.0\";s:28:\"function_texts_table_version\";s:3:\"0.0\";s:27:\"item_rankings_table_version\";s:3:\"0.0\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1562080628;s:4:\"data\";a:28:{s:19:\"wp_inactive_widgets\";a:0:{}s:7:\"sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:14:\"sidebar-scroll\";a:0:{}s:11:\"main-scroll\";a:0:{}s:26:\"above-single-content-title\";a:0:{}s:26:\"below-single-content-title\";a:0:{}s:18:\"single-content-top\";a:0:{}s:21:\"single-content-middle\";a:0:{}s:21:\"single-content-bottom\";a:0:{}s:24:\"above-single-sns-buttons\";a:0:{}s:24:\"below-single-sns-buttons\";a:0:{}s:28:\"below-single-related-entries\";a:0:{}s:25:\"below-single-comment-form\";a:0:{}s:16:\"page-content-top\";a:0:{}s:19:\"page-content-middle\";a:0:{}s:19:\"page-content-bottom\";a:0:{}s:22:\"above-page-sns-buttons\";a:0:{}s:22:\"below-page-sns-buttons\";a:0:{}s:9:\"index-top\";a:0:{}s:12:\"index-middle\";a:0:{}s:12:\"index-bottom\";a:0:{}s:11:\"content-top\";a:0:{}s:14:\"content-bottom\";a:0:{}s:11:\"footer-left\";a:0:{}s:13:\"footer-center\";a:0:{}s:12:\"footer-right\";a:0:{}s:13:\"footer-mobile\";a:0:{}s:8:\"404-page\";a:0:{}}}}', 'yes'),
(196, 'widget_links', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(197, 'widget_new_entries', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(198, 'widget_related_entries', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(199, 'widget_popular_entries', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(200, 'widget_recent_comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(201, 'widget_sns_follow_buttons', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(202, 'widget_pc_text', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(203, 'widget_pc_ad', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(204, 'widget_mobile_text', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(205, 'widget_mobile_ad', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(206, 'widget_author_box', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(207, 'widget_fb_like_box', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(208, 'widget_cta_box', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(209, 'widget_item_ranking', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(210, 'widget_common_ad', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(211, 'widget_toc', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(213, 'theme_mods_cocoon-child-master', 'a:8:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:22:\"accesses_table_version\";s:5:\"0.0.3\";s:29:\"speech_balloons_table_version\";s:5:\"0.0.0\";s:28:\"affiliate_tags_table_version\";s:3:\"0.0\";s:28:\"function_texts_table_version\";s:3:\"0.0\";s:27:\"item_rankings_table_version\";s:3:\"0.0\";s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(214, 'category_children', 'a:0:{}', 'yes'),
(215, '_transient_timeout_cocoon_bcc_1d5ee8aadad03f56e814e0068d581928', '1564672853', 'no'),
(216, '_transient_cocoon_bcc_1d5ee8aadad03f56e814e0068d581928', 'O:15:\"OpenGraphGetter\":3:{s:24:\"\0OpenGraphGetter\0_values\";a:7:{s:5:\"title\";s:10:\"Simplicity\";s:4:\"type\";s:7:\"article\";s:11:\"description\";s:177:\"内部SEO施策済みのシンプルな無料Wordpressテーマを公開しています。初心者でも出来る限り分かりやすく使えるように作成しました。\";s:3:\"url\";s:26:\"https://wp-simplicity.com/\";s:5:\"image\";s:74:\"https://wp-simplicity.com/wp-content/uploads/2017/07/OH53_ipponnoki500.jpg\";s:9:\"site_name\";s:10:\"Simplicity\";s:6:\"locale\";s:5:\"ja_JP\";}s:26:\"\0OpenGraphGetter\0_position\";i:0;s:5:\"image\";s:115:\"http://localhost/wordpress/wp-content/uploads/cocoon-resources/blog-card-cache/7183f3692da296da4ede1d25e5a91233.jpg\";}', 'no');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:4:\"home\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://localhost/wordpress/'),
(11, 6, '_edit_lock', '1561902775:1'),
(14, 6, '_edit_last', '1'),
(17, 8, '_edit_lock', '1561902805:1'),
(20, 8, '_edit_last', '1'),
(21, 8, '_pingme', '1'),
(22, 8, '_encloseme', '1'),
(23, 10, '_wp_trash_meta_status', 'publish'),
(24, 10, '_wp_trash_meta_time', '1561903369'),
(33, 11, '_wp_trash_meta_status', 'publish'),
(34, 11, '_wp_trash_meta_time', '1561996815'),
(43, 13, '_wp_trash_meta_status', 'publish'),
(44, 13, '_wp_trash_meta_time', '1561996871'),
(45, 15, '_wp_trash_meta_status', 'publish'),
(46, 15, '_wp_trash_meta_time', '1561996904'),
(47, 16, '_wp_trash_meta_status', 'publish'),
(48, 16, '_wp_trash_meta_time', '1561996921');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-06-30 22:42:06', '2019-06-30 13:42:06', '<!-- wp:paragraph -->\n<p>WordPress へようこそ。こちらは最初の投稿です。編集または削除し、コンテンツ作成を始めてください。</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-06-30 22:42:06', '2019-06-30 13:42:06', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2019-06-30 22:42:06', '2019-06-30 13:42:06', '<!-- wp:paragraph -->\n<p>これはサンプルページです。同じ位置に固定され、(多くのテーマでは) サイトナビゲーションメニューに含まれる点がブログ投稿とは異なります。まずは、サイト訪問者に対して自分のことを説明する自己紹介ページを作成するのが一般的です。たとえば以下のようなものです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>はじめまして。昼間はバイク便のメッセンジャーとして働いていますが、俳優志望でもあります。これは僕のサイトです。ロサンゼルスに住み、ジャックという名前のかわいい犬を飼っています。好きなものはピニャコラーダ、そして通り雨に濡れること。</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>または、このようなものです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>XYZ 小道具株式会社は1971年の創立以来、高品質の小道具を皆様にご提供させていただいています。ゴッサム・シティに所在する当社では2,000名以上の社員が働いており、様々な形で地域のコミュニティへ貢献しています。</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>新しく WordPress ユーザーになった方は、<a href=\"http://localhost/wordpress/wp-admin/\">ダッシュボード</a>へ行ってこのページを削除し、独自のコンテンツを含む新しいページを作成してください。それでは、お楽しみください !</p>\n<!-- /wp:paragraph -->', 'サンプルページ', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-06-30 22:42:06', '2019-06-30 13:42:06', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-06-30 22:42:06', '2019-06-30 13:42:06', '<!-- wp:heading --><h2>私たちについて</h2><!-- /wp:heading --><!-- wp:paragraph --><p>私たちのサイトアドレスは http://localhost/wordpress です。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>このサイトが収集する個人データと収集の理由</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>コメント</h3><!-- /wp:heading --><!-- wp:paragraph --><p>訪問者がこのサイトにコメントを残す際、コメントフォームに表示されているデータ、そしてスパム検出に役立てるための IP アドレスとブラウザーユーザーエージェント文字列を収集します。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>メールアドレスから作成される匿名化された (「ハッシュ」とも呼ばれる) 文字列は、あなたが Gravatar サービスを使用中かどうか確認するため同サービスに提供されることがあります。同サービスのプライバシーポリシーは https://automattic.com/privacy/ にあります。コメントが承認されると、プロフィール画像がコメントとともに一般公開されます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>メディア</h3><!-- /wp:heading --><!-- wp:paragraph --><p>サイトに画像をアップロードする際、位置情報 (EXIF GPS) を含む画像をアップロードするべきではありません。サイトの訪問者は、サイトから画像をダウンロードして位置データを抽出することができます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>お問い合わせフォーム</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookie</h3><!-- /wp:heading --><!-- wp:paragraph --><p>サイトにコメントを残す際、お名前、メールアドレス、サイトを Cookie に保存することにオプトインできます。これはあなたの便宜のためであり、他のコメントを残す際に詳細情報を再入力する手間を省きます。この Cookie は1年間保持されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>ログインページを訪問すると、お使いのブラウザーが Cookie を受け入れられるかを判断するために一時 Cookie を設定します。この Cookie は個人データを含んでおらず、ブラウザーを閉じると廃棄されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>ログインの際さらに、ログイン情報と画面表示情報を保持するため、私たちはいくつかの Cookie を設定します。ログイン Cookie は2日間、画面表示オプション Cookie は1年間保持されます。「ログイン状態を保存する」を選択した場合、ログイン情報は2週間維持されます。ログアウトするとログイン Cookie は消去されます。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>もし投稿を編集または公開すると、さらなる Cookie がブラウザーに保存されます。この Cookie は個人データを含まず、単に変更した投稿の ID を示すものです。1日で有効期限が切れます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>他サイトからの埋め込みコンテンツ</h3><!-- /wp:heading --><!-- wp:paragraph --><p>このサイトの投稿には埋め込みコンテンツ (動画、画像、投稿など) が含まれます。他サイトからの埋め込みコンテンツは、訪問者がそのサイトを訪れた場合とまったく同じように振る舞います。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>これらのサイトは、あなたのデータの収集、Cookie の使用、サードパーティによる追加トラッキングの埋め込み、埋め込みコンテンツとのやりとりの監視を行うことがあります。アカウントを使ってそのサイトにログイン中の場合、埋め込みコンテンツとのやりとりのトラッキングも含まれます。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>アナリティクス</h3><!-- /wp:heading --><!-- wp:heading --><h2>あなたのデータの共有先</h2><!-- /wp:heading --><!-- wp:heading --><h2>データを保存する期間</h2><!-- /wp:heading --><!-- wp:paragraph --><p>あなたがコメントを残すと、コメントとそのメタデータが無期限に保持されます。これは、モデレーションキューにコメントを保持しておく代わりに、フォローアップのコメントを自動的に認識し承認できるようにするためです。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>このサイトに登録したユーザーがいる場合、その方がユーザープロフィールページで提供した個人情報を保存します。すべてのユーザーは自分の個人情報を表示、編集、削除することができます (ただしユーザー名は変更することができません)。サイト管理者もそれらの情報を表示、編集できます。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>データに対するあなたの権利</h2><!-- /wp:heading --><!-- wp:paragraph --><p>このサイトのアカウントを持っているか、サイトにコメントを残したことがある場合、私たちが保持するあなたについての個人データ (提供したすべてのデータを含む) をエクスポートファイルとして受け取るリクエストを行うことができます。また、個人データの消去リクエストを行うこともできます。これには、管理、法律、セキュリティ目的のために保持する義務があるデータは含まれません。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>あなたのデータの送信先</h2><!-- /wp:heading --><!-- wp:paragraph --><p>訪問者によるコメントは、自動スパム検出サービスを通じて確認を行う場合があります。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>あなたの連絡先情報</h2><!-- /wp:heading --><!-- wp:heading --><h2>追加情報</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>データの保護方法</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>データ漏洩対策手順</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>データ送信元のサードパーティ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>ユーザーデータに対して行う自動的な意思決定およびプロファイリング</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>業界規制の開示要件</h3><!-- /wp:heading -->', 'プライバシーポリシー', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-06-30 22:42:06', '2019-06-30 13:42:06', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-06-30 22:42:59', '0000-00-00 00:00:00', '', '自動下書き', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-06-30 22:42:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2019-06-30 22:43:18', '2019-06-30 13:43:18', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-06-30 22:43:18', '2019-06-30 13:43:18', '', 0, 'http://localhost/wordpress/2019/06/30/home/', 0, 'nav_menu_item', '', 0),
(6, 1, '2019-06-30 22:52:52', '2019-06-30 13:52:52', '<!-- wp:paragraph -->\n<p>テキストです。 テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。 </p>\n<!-- /wp:paragraph -->', 'タイトル１', '', 'publish', 'open', 'open', '', '%e3%82%bf%e3%82%a4%e3%83%88%e3%83%ab%ef%bc%91', '', '', '2019-06-30 22:52:54', '2019-06-30 13:52:54', '', 0, 'http://localhost/wordpress/?p=6', 0, 'post', '', 0),
(7, 1, '2019-06-30 22:52:52', '2019-06-30 13:52:52', '<!-- wp:paragraph -->\n<p>テキストです。 テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。 </p>\n<!-- /wp:paragraph -->', 'タイトル１', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-06-30 22:52:52', '2019-06-30 13:52:52', '', 6, 'http://localhost/wordpress/2019/06/30/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-06-30 22:53:22', '2019-06-30 13:53:22', '<!-- wp:paragraph -->\n<p> テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> </p>\n<!-- /wp:paragraph -->', 'タイトル２', '', 'publish', 'open', 'open', '', '%e3%82%bf%e3%82%a4%e3%83%88%e3%83%ab%ef%bc%92', '', '', '2019-06-30 22:53:24', '2019-06-30 13:53:24', '', 0, 'http://localhost/wordpress/?p=8', 0, 'post', '', 0),
(9, 1, '2019-06-30 22:53:22', '2019-06-30 13:53:22', '<!-- wp:paragraph -->\n<p> テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。  テキストです。 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> </p>\n<!-- /wp:paragraph -->', 'タイトル２', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-06-30 22:53:22', '2019-06-30 13:53:22', '', 8, 'http://localhost/wordpress/2019/06/30/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-06-30 23:02:49', '2019-06-30 14:02:49', '{\n    \"tm-beans::beans_layout\": {\n        \"value\": \"c\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-06-30 14:02:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f9f3ae0e-a586-4165-b622-64daec11b718', '', '', '2019-06-30 23:02:49', '2019-06-30 14:02:49', '', 0, 'http://localhost/wordpress/2019/06/30/f9f3ae0e-a586-4165-b622-64daec11b718/', 0, 'customize_changeset', '', 0),
(11, 1, '2019-07-02 01:00:14', '2019-07-01 16:00:14', '{\n    \"nav_menu[-1529291147750242300]\": {\n        \"value\": {\n            \"name\": \"programming\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-01 16:00:14\"\n    },\n    \"nav_menu_item[-8866427069667752000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"\\u30db\\u30fc\\u30e0\",\n            \"url\": \"http://localhost/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u30db\\u30fc\\u30e0\",\n            \"nav_menu_term_id\": -1529291147750242300,\n            \"_invalid\": false,\n            \"type_label\": \"\\u30ab\\u30b9\\u30bf\\u30e0\\u30ea\\u30f3\\u30af\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-01 16:00:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c7b4ca65-22b2-4375-8f5c-8dbc78fb7c4c', '', '', '2019-07-02 01:00:14', '2019-07-01 16:00:14', '', 0, 'http://localhost/wordpress/2019/07/02/c7b4ca65-22b2-4375-8f5c-8dbc78fb7c4c/', 0, 'customize_changeset', '', 0),
(13, 1, '2019-07-02 01:01:09', '2019-07-01 16:01:09', '{\n    \"nav_menu[3]\": {\n        \"value\": false,\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-01 16:01:09\"\n    },\n    \"nav_menu_item[-7233231911798811000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Programming\",\n            \"url\": \"http://localhost/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u30db\\u30fc\\u30e0\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u30ab\\u30b9\\u30bf\\u30e0\\u30ea\\u30f3\\u30af\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-01 16:01:09\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '59d81d30-c809-43fb-8b51-eb362c6b4069', '', '', '2019-07-02 01:01:09', '2019-07-01 16:01:09', '', 0, 'http://localhost/wordpress/2019/07/02/59d81d30-c809-43fb-8b51-eb362c6b4069/', 0, 'customize_changeset', '', 0),
(15, 1, '2019-07-02 01:01:43', '2019-07-01 16:01:43', '{\n    \"nav_menu_item[14]\": {\n        \"value\": false,\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-01 16:01:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5d4dcf5a-3717-4abe-879a-733cc8475fe5', '', '', '2019-07-02 01:01:43', '2019-07-01 16:01:43', '', 0, 'http://localhost/wordpress/2019/07/02/5d4dcf5a-3717-4abe-879a-733cc8475fe5/', 0, 'customize_changeset', '', 0),
(16, 1, '2019-07-02 01:02:01', '2019-07-01 16:02:01', '{\n    \"tm-beans-child::beans_layout\": {\n        \"value\": \"c\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-07-01 16:02:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd9f9d9b4-a2e1-42d5-82db-2ee2f4319c1a', '', '', '2019-07-02 01:02:01', '2019-07-01 16:02:01', '', 0, 'http://localhost/wordpress/2019/07/02/d9f9d9b4-a2e1-42d5-82db-2ee2f4319c1a/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, '未分類', '%e6%9c%aa%e5%88%86%e9%a1%9e', 0),
(2, 'Navigation', 'navigation', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(6, 1, 0),
(8, 1, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'tomo'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"6d6ee932b3cb1b60415a1f74b4273c8a35cee887bc7fc039980e9afc48370165\";a:4:{s:10:\"expiration\";i:1563111777;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36\";s:5:\"login\";i:1561902177;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4');

-- --------------------------------------------------------

--
-- テーブルの構造 `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'tomo', '$P$B.hQ570Yrmh2lQYJ700ZkUc9gO4C9X0', 'tomo', 'y.tomohiro0701@gmail.com', '', '2019-06-30 13:42:06', '', 0, 'tomo');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_cocoon_accesses`
--
ALTER TABLE `wp_cocoon_accesses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_pid_ptype_date` (`post_id`,`post_type`,`date`);

--
-- Indexes for table `wp_cocoon_affiliate_tags`
--
ALTER TABLE `wp_cocoon_affiliate_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cocoon_function_texts`
--
ALTER TABLE `wp_cocoon_function_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cocoon_item_rankings`
--
ALTER TABLE `wp_cocoon_item_rankings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_cocoon_speech_balloons`
--
ALTER TABLE `wp_cocoon_speech_balloons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_cocoon_accesses`
--
ALTER TABLE `wp_cocoon_accesses`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cocoon_affiliate_tags`
--
ALTER TABLE `wp_cocoon_affiliate_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_cocoon_function_texts`
--
ALTER TABLE `wp_cocoon_function_texts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_cocoon_item_rankings`
--
ALTER TABLE `wp_cocoon_item_rankings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_cocoon_speech_balloons`
--
ALTER TABLE `wp_cocoon_speech_balloons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
