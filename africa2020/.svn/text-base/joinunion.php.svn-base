<html>
<body >
<?php
 // retrieve a state from the African Union

 
require_once('db/dbinfo.inc'); 
require_once('securedata.php'); 
$uname=$_GET['uname'];
$upass=$_GET['upass'];
$hostname =$_SERVER['HTTP_HOST'];

// Pull in the NuSOAP code
require_once('lib/nusoap.php');
$urlAV='http://'.$hostname.'/wsapps/wsapps.php?wsdl';
//echo 'Inserting '.$myname.'<br>';
$client = new nusoap_client($urlAV,true);     
$err = $client->getError();

if ($err) {

      echo 'Constructor error' . $err . '';
      echo 'Debug' . htmlspecialchars($client->getDebug(), ENT_QUOTES) . '';
      exit();
}


$params_st = array(
      'uname'=>$uname,
      'upass'=>$upass);
//$result = $client->call('Add', $params);
//$result = $client->call('Get', $params);
 $result = $client->call('GetUser', $params_st);

if ($client->fault) {
      echo 'Fault'; print_r($result); echo '';
} else {
      $err = $client->getError();
      if ($err) {
            echo 'Error' . $err . '';
      } else {
            $UsersOnLine = $result;
      }
}

echo 'State '.$myname.' Found'. $UsersOnLine ;
?>
   </body>
</html>