<? session_start();?>
<html>
<title>My Africa Vision 2020</title>
<head></head>
<?php
 // retrieve a state from the African Union
//onLoad="return redirectMe()
 
require_once('db/dbinfo.inc'); 
require_once('securedata.php'); 
$uname=$_POST['uname'];
$pname=$_POST['pname'];
$hostname =$_SERVER['HTTP_HOST'];
//$state='Uganda'; //$hostname;
//$myvars="<br>".$uname."<br>".$pname."<br>"."<br>".MD5($pname)."<br>".$hostname."<br>".$state."<br>";
//echo "accessing from host ".$hostname."<br>";
// Pull in the NuSOAP code
require_once('lib/nusoap.php');
// enable line below for dev machine
$urlAV='http://'.$hostname.'/wsapps/wsapps.php?wsdl';
// enable line below for prod.
//$urlAV='http://'.$hostname.'/wsapps/wsapps.php?wsdl';
//echo 'Authenticating '.$myvars.'<br>'.$urlAV;

$client = new nusoap_client($urlAV,true);     
$err = $client->getError();

if ($err) {

      echo 'Constructor error' . $err . '';
      echo 'Debug' . htmlspecialchars($client->getDebug(), ENT_QUOTES) . '';
      exit();
}


$params_st = array(
      'uname'=>$uname,
      'pname'=>$pname,
	  'state'=>$state);
//$result = $client->call('Add', $params);
//$result = $client->call('Get', $params);
//print_r($params_st) ;
//echo '<br> executing ws....<br>';

 $result = $client->call('GetUser', $params_st);
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
//exit;
//
//echo 'User '.$uname.' pass '.$pname.' Found<br> ';
//print_r($UserInfo) ;
//exit;
//if($UserInfo=="no record"){
   // redirect user to main page to sign-up
  // $URL="/index.php?signup=true";
 //  header ("Location: $URL")
 
 //  }
//else {
//session_start();
/// function to logoff

	$challenge = "";
	
	for ($i = 0; $i < 80; $i++) {
		$challenge .= dechex(rand(0, 15));
	}
	$_SESSION[$challenge] = $UserInfo;// $challenge.';'.$myname.';'.$mystate.';'.$hostname.';'.$UsersOnLine;
	
 
 //list($myname,$mystate,$myemail,$mymembers) = split(',',$UserInfo);
 
?>
<script language="JavaScript" type="text/JavaScript">
<!--
function redirectMe(){
 
  
  
   if (top.frames.length==0)
    {
     //alert("You will be redirected to your Portal Page in 10 seconds!");
     //setTimeout('redirectMe()',10000);
     }

document.formRedirect.submit();

}
//-->
</script>

<body onLoad="return redirectMe()" >

 <form name="formRedirect" method="post" action="index.php?sid=updated">
        <input type="hidden" name="userinfo" id="myname" value="<?=$challenge?>" >

 </form> 
 </body>
 </html>