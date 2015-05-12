<?php

//define('dbhost','dwerenet.startlogicmysql.com',true);
require_once('../db/dbinfo.inc'); 
 

$sql = "SELECT name,data FROM state WHERE name like 'Uganda'";

$result = @mysql_query($sql,$link) or exit("QUERY FAILED!");

$contenttype = @mysql_result($result,0,"name");
$image = @mysql_result($result,0,"data");

header("Content-type: $contenttype");
echo $image;

mysql_close($link);
?>
