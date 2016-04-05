-- --
-- When importing this file in phpMyAdmin, use the ANSI dialect
-- --

CREATE TABLE IF NOT EXISTS `/*site_db*/`.`/*table_prefix*/ul_blocked_ips`(
  `ip` varchar(39) CHARACTER SET ascii NOT NULL,
  `block_expires` varchar(26) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `/*site_db*/`.`/*table_prefix*/ul_log`(
  `timestamp` varchar(26) CHARACTER SET ascii NOT NULL,
  `action` varchar(20) CHARACTER SET ascii NOT NULL,
  `comment` varchar(255) CHARACTER SET ascii NOT NULL DEFAULT '',
  `user` varchar(255) /*COLLATE utf8_unicode_ci*/ NOT NULL,
  `ip` varchar(39) CHARACTER SET ascii NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `/*site_db*/`.`/*table_prefix*/ul_logins`(
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) /*COLLATE utf8_unicode_ci*/ NOT NULL,
  `password` text /*CHARACTER SET ascii*/ NOT NULL,
  `date_created` varchar(26) CHARACTER SET ascii NOT NULL,
  `last_login` varchar(26) CHARACTER SET ascii NOT NULL,
  `block_expires` varchar(26) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`(255))
) AUTO_INCREMENT=1 ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `/*site_db*/`.`/*table_prefix*/ul_nonces`(
  `code` varchar(100) CHARACTER SET ascii NOT NULL,
  `action` text /*CHARACTER SET ascii*/ NOT NULL,
  `nonce_expires` varchar(26) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `action` (`action`(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `/*site_db*/`.`/*table_prefix*/ul_sessions`(
  `id` varchar(128) CHARACTER SET ascii NOT NULL DEFAULT '',
  `data` blob NOT NULL,
  `session_expires` varchar(26) CHARACTER SET ascii NOT NULL,
  `lock_expires` varchar(26) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
