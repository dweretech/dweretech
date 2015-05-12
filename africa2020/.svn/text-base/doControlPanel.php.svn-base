
<?php
require_once('db/dbinfo.inc'); 
require_once('securedata.php'); 
$name=$_GET['name'];
$option=$_GET['option'];
$sid = $_GET['sid'];
$hostname =$_SERVER['HTTP_HOST'];
require_once('lib/nusoap.php');
// enable line below for dev machine
//$urlAV='http://'.$hostname.'/africa2020/wsapps/wsapps.php?wsdl';

// enable this for production
$urlAV='http://'.$hostname.'/wsapps/wsapps.php?wsdl';

$client = new nusoap_client($urlAV,true);     
$err = $client->getError();

if ($err) {

      echo 'Constructor error' . $err . '';
      echo 'Debug' . htmlspecialchars($client->getDebug(), ENT_QUOTES) . '';
      exit();
}


$params_st = array(
      'name'=>$name,
      'option'=>$option 
	   );
 $result = $client->call('GetState', $params_st);
//print_r($result) ;
//echo '<br> printing  ws results....<br>';
//exit;
if ($client->fault) {
      echo '<br>Fault: -->'; print_r($result); echo '';
} else {
      $err = $client->getError();
      if ($err) {
            echo '<br>Error: -->' . $err . '';
      } else {
            $UserInfo = $result;
      }
}
echo $UserInfo;

?>