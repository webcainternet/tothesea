<?php
// HTTP
define('HTTP_SERVER', 'http://tothesea.com.br/');

// HTTPS
define('HTTPS_SERVER', 'http://tothesea.com.br/');

switch ($_SERVER['SERVER_ADDR'])
    {
        //Ambiente Local
        case '127.0.0.1':
			// DIR
			define('DIR_APPLICATION', '/Users/fernandomendes/github/tothesea/public/catalog/');
			define('DIR_SYSTEM', '/Users/fernandomendes/github/tothesea/public/system/');
			define('DIR_DATABASE', '/Users/fernandomendes/github/tothesea/public/system/database/');
			define('DIR_LANGUAGE', '/Users/fernandomendes/github/tothesea/public/catalog/language/');
			define('DIR_TEMPLATE', '/Users/fernandomendes/github/tothesea/public/catalog/view/theme/');
			define('DIR_CONFIG', '/Users/fernandomendes/github/tothesea/public/system/config/');
			define('DIR_IMAGE', '/Users/fernandomendes/github/tothesea/public/image/');
			define('DIR_CACHE', '/Users/fernandomendes/github/tothesea/public/system/cache/');
			define('DIR_DOWNLOAD', '/Users/fernandomendes/github/tothesea/public/download/');
			define('DIR_LOGS', '/Users/fernandomendes/github/tothesea/public/system/logs/');

			// DB
			define('DB_DRIVER', 'mysqli');
			define('DB_HOSTNAME', 'localhost');
			define('DB_USERNAME', 'root');
			define('DB_PASSWORD', 'root');
			define('DB_DATABASE', 'tothesea');
			define('DB_PREFIX', 'oc_');
			break;
		default:
			// DIR
			define('DIR_APPLICATION', '/srv/httpd/tothesea.com.br/public/catalog/');
			define('DIR_SYSTEM', '/srv/httpd/tothesea.com.br/public/system/');
			define('DIR_DATABASE', '/srv/httpd/tothesea.com.br/public/system/database/');
			define('DIR_LANGUAGE', '/srv/httpd/tothesea.com.br/public/catalog/language/');
			define('DIR_TEMPLATE', '/srv/httpd/tothesea.com.br/public/catalog/view/theme/');
			define('DIR_CONFIG', '/srv/httpd/tothesea.com.br/public/system/config/');
			define('DIR_IMAGE', '/srv/httpd/tothesea.com.br/public/image/');
			define('DIR_CACHE', '/srv/httpd/tothesea.com.br/public/system/cache/');
			define('DIR_DOWNLOAD', '/srv/httpd/tothesea.com.br/public/download/');
			define('DIR_LOGS', '/srv/httpd/tothesea.com.br/public/system/logs/');

			// DB
			define('DB_DRIVER', 'mysqli');
			define('DB_HOSTNAME', 'localhost');
			define('DB_USERNAME', 'tothesea');
			define('DB_PASSWORD', 'd8wsudyf');
			define('DB_DATABASE', 'tothesea');
			define('DB_PREFIX', 'oc_');
			break;
	}
?>