<? session_start();
 // retrieve a state from the African Union
//onLoad="return redirectMe()
 
require_once('db/dbinfo.inc'); 
require_once('securedata.php'); 
require_once('lib/nusoap.php');
$uname=$_GET['uname'];
$pname=$_GET['pname'];
//$hostname =$_SERVER['HTTP_HOST'];
//$state='Uganda'; //$hostname;
//$myvars="<br>".$uname."<br>".$pname."<br>"."<br>".MD5($pname)."<br>".$hostname."<br>".$state."<br>";
//echo "accessing from host ".$hostname."<br>";
// Pull in the NuSOAP code

// enable line below for dev machine
$urlAV='http://'.$hostname.'/wsapps/wsapps.php?wsdl';
// enable line below for prod.
//$urlAV='http://'.$hostname.'/wsapps/wsapps.php?wsdl';
//echo 'Authenticating '.$myvars.'<br>'.$urlAV.'<br>';

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
 //exit();
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
	
 echo  $UserInfo; //$challenge;
 
?>

 