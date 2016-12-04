<?php
if (isset($_GET["regId"]) && isset($_GET["message"])) {
    include_once 'db_connect.php';
    // connecting to database
    $db = new DB_Connect();
    $db->connect();
    $regId = $_GET["regId"];
    $message = $_GET["message"];
    $user_id = $_GET["user_id"];
     
    include_once 'GCM.php';
     
    $gcm = new GCM();
 
    $registatoin_ids = array($regId);

    $result = mysql_query("INSERT INTO gcm_users_notifications(user_id, message, created_at) VALUES('$user_id', '$message', NOW())");
    $message = array("flix" => $message);
 
    $result = $gcm->send_notification($registatoin_ids, $message);
 
    echo $result;
}
?>
