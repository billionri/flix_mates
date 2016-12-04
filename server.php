<?php

define('thedbconn', TRUE);
define('thehelper_functions', TRUE);
define('the_lang_list', TRUE);
require_once 'dbconn.php';
require_once 'helper_functions.php';
        #CHECK LOGIN
        $get_all_data = QB::table('flix_login')->select('*');
        if(!$get_all_data->count()) {
            //Check If both arn't same , new exists in db
	    return 0;
        }
	echo json_encode($get_all_data->get());


