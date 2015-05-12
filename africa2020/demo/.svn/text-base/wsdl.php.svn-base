<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<?php
require_once('libs/nusoap.php');
$wsdl="http://yourhost/webservice/server.php?wsdl";
$wsdl="http://web.services.leveragesoftware.com/v4.6/profiles/profileservice.asmx?WSDL";
$client=new soapclient($wsdl, 'wsdl');
$param=array('int1'=>'15.00', 'int2'=>'10');
echo $client->call('add', $param);
?>
<body>

</body>
</html>
