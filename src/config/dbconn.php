<?php

namespace Flixmates\Config;

defined('thedbconn') or die('Direct Access Not Allowed.');

class DBCONN {
    public function __construct()
    {
        $dbconfig = array(
            'driver'   => 'mysql',
            'host'     => 'localhost',
            'username' => 'root',
            'password' => 'nasopada039',
            'database' => 'flix',
            'port'     => '3306',
        );

        new \Pixie\Connection('mysql', $dbconfig, 'QB');
    }

}
