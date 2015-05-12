<?php
GLOBAL $connection,$db, $base_url,$mypage,$url;
define('ekey','dwt4av197105',true);  // encryption user key
$hostname =$_SERVER['HTTP_HOST'];

if($hostname=='www.africavision2020.com' || $hostname=='www.africavision2020.org' ){
  $hostname = $hostname;
   define('dbhost','afrikawebapps.db.6341855.hostedresource.com',true);
   $base_url='www'.$hostname;
}
else{
$hostname = $hostname;
define('dbhost','192.168.174.4',true);
   $base_url=$hostname;
}
#echo "db host is ".dbhost;
define('dbuser','africadbuser',true);
define('dbpass','dwere4U',true);
define('dbname','afrikawebapps',true);



//echo "trying to connect";

//$link = mysql_connect('dweretec.startlogicmysql.com', 'dwtadmin', 'dwere4u');
$link = mysql_connect(dbhost, dbuser, dbpass);
if (!$link) {
    die('Could not connect: ' . mysql_error());
}
//echo 'Connected successfully';
mysql_select_db(dbname);
?>
