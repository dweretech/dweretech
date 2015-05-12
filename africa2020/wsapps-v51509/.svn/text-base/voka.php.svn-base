<?php
/*
Go to http://sandboxsls.leveragesoftware.com/clients/admin 
Login with the following credentials: 
ClientID: sandboxsls
User: alumni
Password: networking
To integrate this system with another application using web services: 
Review the appropriate web service API documentation 
Pass the following data into the APIs
ClientID: sandboxsls
Passcode: 88166678178879c2 
*/
require_once('../lib/nusoap.php');
$urlLV='http://web.services.leveragesoftware.com/v4.6/profiles/profileservice.asmx?WSDL';
$urlVKA='http://www.vokacom.net/wscontacts/ContactsService.asmx?WSDL';

$client = new nusoap_client($urlLV,true);     
$err = $client->getError();

if ($err) {

      echo 'Constructor error' . $err . '';
      echo 'Debug' . htmlspecialchars($client->getDebug(), ENT_QUOTES) . '';
      exit();
}

$myCustomerID = 'klagony2';
$myPassCode = 'acholi';
$myProfileType = 'Personal Profile'; //88166678178879c2

$params = array(
      'passCode'=>$myPassCode,
      'customerID'=>$myCustomerID,
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
}

//echo 'Request' . htmlspecialchars($client->request, ENT_QUOTES) . '';
//echo 'Response' . htmlspecialchars($client->response, ENT_QUOTES) . '';
//echo 'Debug' . htmlspecialchars($client->getDebug(), ENT_QUOTES) . '';

?>


