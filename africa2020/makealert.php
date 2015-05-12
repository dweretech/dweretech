<html>


<script  type="text/javascript"  language="javascript1.5"> 
 
 xmlhttp.open("GET","makealert.php?name=Sudan",true);
 xmlhttp.onreadystatechange=function() {
  if (xmlhttp.readyState==4) {
    alert(xmlhttp.getAllResponseHeaders())

  }
 }
 xmlhttp.send(null);

 
 
</script>

<body >
<?php
 //
 $my_name = "<script language=\"javascript\">document.write(\"myName\");</script>";
        echo "$my_name";
 
require_once('db/dbinfo.inc'); 
require_once('securedata.php'); 
$myname=$_GET['name'];
$mystate=$_GET['state'];
$hostname =$_SERVER['HTTP_HOST'];
// Pull in the NuSOAP code
require_once('lib/nusoap.php');
$urlAV='http://'.$hostname.'/wsapps/wsapps.php?wsdl';
echo 'Inserting '.$myname.'<br>';
$client = new nusoap_client($urlAV,true);     
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
      'passCode'=>$mystate,
      'name'=>$mystate,
      'profileType'=>$myProfileType);

$params_st = array(
      'name'=>$myname,
      'profileType'=>$myProfileType);
//$result = $client->call('Add', $params);
//$result = $client->call('Get', $params);
 $result = $client->call('InsertState', $params_st);

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

echo 'State '.$myname.' inserted '. $UsersOnLine ;
?>
   </body>
</html>