<?php

namespace Flixmates\Config;

date_default_timezone_set("Asia/Kolkata");
defined('the_add_log') or die('Direct Access Not Allowed.');


class ADDLOGS {

    public function __construct()
    {
    }

    function add_log($a, $uniqid = null) {
        $fp = fopen('/var/www/html/flix_mates/flix_mates.log', 'a+');
        $string = date("Y-m-d H:i:s")."|$uniqid|$a\n";
        fwrite($fp, $string);
        fwrite($fp, '');
        fclose($fp);
    }   
}   

