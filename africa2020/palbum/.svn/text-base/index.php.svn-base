<?php

//define('dbhost','dwerenet.startlogicmysql.com',true);
require_once('../db/dbinfo.inc'); 
 echo '<table align=center border=1> ';

$sql = "SELECT name,country FROM webuser order by country asc";
//header("Content-type: $contenttype");
$result = @mysql_query($sql,$link) or exit("QUERY FAILED!");
$i=0;
while($row = mysql_fetch_array($result)){
$fname = @mysql_result($result,$i,"name");
$state =  @mysql_result($result,$i,"country");

echo '<tr><td>'. $i.' </td><td>'. $fname.' </td><td> '.$state.'</td></tr>';
$i++;
}
 echo '</table> ';
mysql_close($link);
?>
