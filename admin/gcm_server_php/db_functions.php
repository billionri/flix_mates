<?php

namespace Flixmates\Config;
class DB_Functions {
 
    private $db;
 
    //put your code here
    // constructor
    function __construct() {
        include_once 'db_connect.php';
        // connecting to database
        $this->db = new DB_Connect();
        $this->db->connect();
    }
 
    // destructor
    function __destruct() {
         
    }
 
    /**
     * Storing new user
     * returns user details
     */
    public function storeUser($name, $mobile, $gcm_regid) {
        // insert user into database
        $result = mysql_query("INSERT INTO gcm_users(name, mobile, gcm_regid, created_at) VALUES('$name', '$email', '$gcm_regid', NOW())");
        // check for successful store
        if ($result) {
            // get user details
            $id = mysql_insert_id(); // last inserted id
            $result = mysql_query("SELECT * FROM gcm_users WHERE id = $id") or die(mysql_error());
            // return user details
            if (mysql_num_rows($result) > 0) {
                return mysql_fetch_array($result);
            } else {
                return false;
            }
        } else {
            return false;
        }
    }
 
    /**
     * Getting all users
     */
    public function getAllUsers() {
        $result = mysql_query("select l.first_name as name, l.mobile, l.email, fp.user_image, gc.gcm_regid, gc.id, gc.user_id FROM gcm_users gc ".
            "left join flix_login l on l.id=gc.user_id ".
            "left join flix_profiles fp on l.id=fp.user_id ".
            "where gc.gcm_regid !=''");
            var_dump($result); exit;
        return $result;
    }
 
}
 

?>
