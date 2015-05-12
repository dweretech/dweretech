<?php
$state = $_REQUEST['file'];
if(strpos($state,";")){
   list($filen,$myname,$mystate,$myemail,$myuname,$myupass,$UsersOnLine) = split(';',$state);
   $state = $mystate;
   }
 // notes.php;Kitara_Lagony;Eritrea;klagony@dwere.net;klagony;d41d8cd98f00b204e9800998ecf8427e;2/829/799 
 // //yyyyyyy;P. Okot;Tanzania;pakitara@gmail.com;pakitara;da14cca95fede304e67cb4eca1e8940e;1/298/221
require_once('db/dbinfo.inc'); 
require_once('lib/nusoap.php');
// enable line below for dev machine
//$urlAV='http://'.$hostname.'/wsapps/wsapps.php?wsdl';
// enable line below for prod.
$urlAV='http://'.$hostname.'/wsapps/wsapps.php?wsdl';
//echo 'Authenticating '.$myvars.'<br>'.$urlAV;

$client = new nusoap_client($urlAV,true);     
$err = $client->getError();
$option='iNews';
//exit;
if ($err) {

      echo 'Constructor error' . $err . '';
      echo 'Debug' . htmlspecialchars($client->getDebug(), ENT_QUOTES) . '';
      exit();
}

//echo '<br> executing ws....<br> '.$state;
$params_st = array(
	  'name'=>$state,
	  'option'=>$option
	  );
//$result = $client->call('Add', $params);
//$result = $client->call('Get', $params);
//print_r($params_st) ;
//echo '<br> executing ws....<br>';
$result = $client->call('GetState', $params_st);
list($UsersOnLine,$y09,$y10)=split('/',$result);
?>
There are <font color="#FF0000">
      <?=$UsersOnLine?>
      </font> user(s) online from
      <?=$state.' from '.$hostname?>
      .<br>
      Date:
    <?php $todayis = date("F j, Y, g:i a");
 echo $todayis;
 
 ?>
 <br>
   <p align=" left" ><a href="http://www.dvlottery.state.gov" target="_blank" class="AVMenu style18" title="Check result after July 1, 2010 for Entrants who applied for DV-2011. "><u>US Visa Lottery </u></a><br>
     <font color="red">
     <?=$y09?>
     </font> People selected 2009<br>
     <font color="red">
     <?=$y10?>
   </font> People selected 2010
    
