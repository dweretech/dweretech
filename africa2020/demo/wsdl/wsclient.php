<?php
require_once('lib/nusoap.php'); 
require_once("lib/class.wsdlcache.php");
$wsdl="https://slsdev-connect/demo/wsdl/server.php?wsdl";
#$client=new soapclient($wsdl, true); 
$client=new nusoap_client($wsdl,'wsdl');
$param=array(
'amount'=>'15.00',
); 
echo $client->call('CalculateOntarioTax', $param);
?>
