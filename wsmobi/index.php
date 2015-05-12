<html>
<head>
<link href="calendar.css" type="text/css" rel="stylesheet" />
</head>
<body>
<?php
require_once('lib/nusoap.php');
 
//This is your webservice server WSDL URL address
$wsdl = "http://192.168.174.131/wsmobi/wsapps.php?wsdl";
 
//create client object
$client = new nusoap_client($wsdl, 'wsdl');
 
$err = $client->getError();
if ($err) {
	// Display the error
	echo '<h2>Constructor error</h2>' . $err;
	// At this point, you know the call that follows will fail
        exit();
}
 
print "</br>";
$msgArr = array('fullname'=>'Kitara Lagony',
		'phoneNo'=>'+16198315144@tmomail.net',
		'msg'=>'This is the message to tbe sent');

$result3 = $client->call('sendmsg',$msgArr);
print_r($result3);

include 'calendar.php';
$calendar = new Calendar();
echo $calendar->show();

?>
</body>
</html>


