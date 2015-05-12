<?php session_start();?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Exiting Vision 2020</title>
</head>
<?php
require_once('db/dbinfo.inc'); 
require_once('securedata.php'); 
require_once('lib/nusoap.php');
/// function to logoff

//-----------------------

session_unset();
$UserInfo=$_GET['UserInfo'];
//Patrict Okot;Uganda;pokot@dwere.net;pakitara;7a913819256c63965fc05e634ef72032;7/433/396

 list($myname,$mystate,$myemail,$myuname,$myupass,$UsersOnLine) = split(';',$UserInfo);

//$state='Uganda'; //$hostname;
$myvars="<br>".$myname."<br>".$myuname. "<br>".$myupass.  "<br>".$hostname."<br>".$mystate."<br>";
//echo "accessing from host ".$hostname."<br>";
// Pull in the NuSOAP code
 
// enable line below for dev machine
$urlAV='http://'.$hostname.'/wsapps/wsapps.php?wsdl';
// enable line below for prod.
//$urlAV='http://'.$hostname.'/wsapps/wsapps.php?wsdl';
// echo 'Authenticating '.$myvars.'<br>'.$urlAV.'<br>';

$client = new nusoap_client($urlAV,true);     
$err = $client->getError();

if ($err) {

      echo 'Constructor error' . $err . '';
      echo 'Debug' . htmlspecialchars($client->getDebug(), ENT_QUOTES) . '';
      exit();
}


$params_st = array(
      'uname'=>$myuname,
      'pname'=>$myupass);
//$result = $client->call('Add', $params);
//$result = $client->call('Get', $params);
//print_r($params_st) ;
//echo '<br> executing ws....<br>';

$result = $client->call('LogOffUser', $params_st); 
//$result = $client->call('GetUser', $params_st);
//print_r($result) ;
//echo '<br> Done calling ws <br>';
 

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
 
 echo  '<a href="index.php">Click <font color=red>'.$UserInfo.'</font> to complete</a> ';//$challenge;
 
?>
<script language="javascript1.5">
<!-- java script
function redirect(){
//alert('You are being logged off... bye');
URL=window.location.href ;

	i=URL.indexOf("?");

	QryStrValue=URL.substring(i+1);

	if (QryStrValue!='X')
	{
	
		window.location=URL + "?X";
 		//getText('AVLoginV',document.formSearch.txtSearch.value);
	    alert('AVLoginV'+document.formSearch.txtSearch.value);
	    window.location='index.php';
	}

}
//-->
</script>
<body onload="redirect()">
</body>
</html>
