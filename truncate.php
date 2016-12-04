<?php
require "vendor/autoload.php";
error_reporting(E_ALL);
define('the_add_log', TRUE);
//require_once("add_log.inc");

$addlogobj =  new Flixmates\Config\ADDLOGS;
$uniqid = uniqid();
shell_exec("/var/www/html/flix_mates/truncate.sh");
$addlogobj->add_log("All data deleted ...", $uniqid);
echo "All data deleted ...<br/><br/>";

array_map('unlink', glob("/var/www/html/flix_mates/images_upload/*"));
$addlogobj->add_log("All Image Files deleted from server.", $uniqid);
echo"All Image Files deleted ...<br/><br/>";

array_map('unlink', glob("/var/www/html/flix_mates/videos_upload/*"));
$addlogobj->add_log("All Video Files deleted from server ...", $uniqid);
echo"All Video Files deleted ...<br/><br/>";

array_map('unlink', glob("/var/www/html/flix_mates/audios_upload/*"));
$addlogobj->add_log("All Audio Files deleted from server ...", $uniqid);
echo"All Audio Files deleted ...<br/><br/>";
exit;
?>
<html>
<title>Truncate it all </title>
</html>

