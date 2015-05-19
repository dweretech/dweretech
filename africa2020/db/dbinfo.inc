<?php
define('ekey','dwt4av197105',true);  // encryption user key
$hostname =$_SERVER['HTTP_HOST'];

if($hostname=='africavision2020.com' || $hostname=='africavision2020.org' ){
  $hostname = $hostname;
   define('dbhost','23.229.183.131',true);
   $base_url='www'.$hostname;
} 
else{
$hostname = $hostname.'/africa2020';
define('dbhost','23.229.183.131',true);
   $base_url=$hostname;
}
#echo "db host is ".dbhost;
define('dbuser','africa-dbuser',true);
define('dbpass','Afrika4UnME',true);
define('dbname','africa2020',true);

GLOBAL $connection,$db, $base_url,$mypage,$url;

//echo "trying to connect";

//$link = mysql_connect('dweretec.startlogicmysql.com', 'dwtadmin', 'dwere4u'); 
$link = mysql_connect(dbhost, dbuser, dbpass); 
if (!$link) { 
    die('Could not connect: ' . mysql_error()); 
} 
//echo 'Connected successfully'; 
mysql_select_db(dbname); 
?>
