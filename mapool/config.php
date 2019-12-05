<?php

define('DSN', 'mysql:host=localhost;dbname=map;charset=utf8');
define('DB_USER', 'root');
define('DB_PASSWORD', '');
define('SITE_URL', 'http://localhost/map1/map.php');

error_reporting(E_ALL & ~E_NOTICE);
session_set_cookie_params(1440, '/');
