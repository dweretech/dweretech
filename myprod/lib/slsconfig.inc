<?php
define ('DBTYPE','test',true);
define('DEBUG',1,true);
// define db access
if(dbtype==test) {
	define('HOSTNAME',"midas3.stanford.edu",true);
	define('PORT',"1025",true);
	define('DBUSER',"LAWApplication_DEV",true);
	define('DBPASS',"Hy^YVg@9d",true);
	define('DBNAME',"oodtest1",true);
}
if(dbtype==prod) {
	define('HOSTNAME',"midas1.stanford.edu",true);
	define('PORT',"1025",true);
	define('DBUSER',"LAWApplication_PROD",true);
	define('DBPASS',"Hy^YVg@9p",true);
	define('DBNAME',"odtxnprd",true);
}
GLOBAL $connection; // global variable for db connection.
$connection = sybase_connect(hostname.':'.port,dbuser,dbpass);
// Get connection to DB
if (!$connection) {
echo "Couldn't make a connection!";
exit;
}
else{
//echo "Connected OK";
}
// Performs JavaScript redirect.
function DoJavaScriptRedirect($url)
{?>
	<script type="text/javascript" language="javascript1.5">
    <!--
	
    window.location = "<?=$url?>";
    //–->
    </script>
    <?

}
?>