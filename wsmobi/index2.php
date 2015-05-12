<?php
// Pull in the NuSOAP code
require_once('lib/nusoap.php');
$urlLV='http://192.168.174.131/wsmobi/wsapps.php?wsdl';

$client = new nusoap_client($urlLV,true);     
$err = $client->getError();

if ($err) {

      echo 'Constructor error' . $err . '';
      echo 'Debug' . htmlspecialchars($client->getDebug(), ENT_QUOTES) . '';
      exit();
}

$myCustomerID = 'Uganda';
$myPassCode = 'acholi';
$myProfileType = 'Personal Profile'; //88166678178879c2

$params = array(
      'passCode'=>$myPassCode,
      'name'=>$myCustomerID,
      'profileType'=>$myProfileType);

//$result = $client->call('Add', $params);
$result = $client->call('Get', $params);
//$result = $client->call('GetAll', $params);

if ($client->fault) {
      echo 'Fault'; print_r($result); echo '';
} else {
      $err = $client->getError();
      if ($err) {
            echo 'Error' . $err . '';
      } else {
            echo 'Result<br><pre>'; print_r($result); echo '</pre>';
      }
}?>
