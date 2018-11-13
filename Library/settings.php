<?php
if (! session_id() ) {
    session_start();
}

ini_set('error_reporting', E_ALL);
ini_set('display_errors', 1);

switch ($_SERVER['SERVER_NAME']) {
	case 'cmm-students.localhost':
				define('DOCUMENT_ROOT'	, '/Volumes/Web/cmm-students/www/Felix/Homework/Opdracht13/result' 				);
				define('SITE_ROOT'		, DOCUMENT_ROOT . '/' 											   				);
				define('IMG_ROOT'		, DOCUMENT_ROOT . '/images' 													);
				define('LIB_ROOT'		, SITE_ROOT . 'Library/' 														);

				define('WEB_URL'	    , 'http://cmm-students.localhost/Felix/Homework/Opdracht13/result/public_html/' );
				define('IMG_URL'	    , WEB_URL . '/images' 															);
				define('CSS_URL'	    , WEB_URL . '/css' 																);
				define('JS_URL'	        , WEB_URL . '/javascript' 														);
			break;
			
	case 'www.felix.cmm':
				define('DOCUMENT_ROOT'	, $_SERVER['DOCUMENT_ROOT'] . '/'   	);
				define('SITE_ROOT'		, DOCUMENT_ROOT . '/..'        			);
				define('IMG_ROOT'		, DOCUMENT_ROOT . '/images'    			);
				define('LIB_ROOT'		, SITE_ROOT . '/Library/'       		);
				 
				define('WEB_URL'	    , '//' . $_SERVER['HTTP_HOST'] 			);
				define('IMG_URL'	    , WEB_URL . '/images'          			);
				define('CSS_URL'	    , WEB_URL . '/css'             			);
				define('JS_URL'	        , WEB_URL . '/javascript'      			);
			break;

	default:
				define('DOCUMENT_ROOT'	, $_SERVER['DOCUMENT_ROOT'] . '/'   	);
				define('SITE_ROOT'		, DOCUMENT_ROOT . '/..'        			);
				define('IMG_ROOT'		, DOCUMENT_ROOT . '/images'    			);
				define('LIB_ROOT'		, SITE_ROOT . '/Library/'       		);
				 
				define('WEB_URL'	    , '//' . $_SERVER['HTTP_HOST'] 			);
				define('IMG_URL'	    , WEB_URL . '/images'          			);
				define('CSS_URL'	    , WEB_URL . '/css'             			);
				define('JS_URL'	        , WEB_URL . '/javascript'      			);
			
}

require_once (LIB_ROOT . 'Controllers/DatabaseController.php');
require_once (LIB_ROOT . 'Controllers/StringController.php');
require_once (LIB_ROOT . 'Controllers/LoginController.php');
require_once (LIB_ROOT . 'Controllers/NewsController.php');