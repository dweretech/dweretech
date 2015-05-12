<?php

// Pull in the NuSOAP code
 
$UserInfo = $_REQUEST['UserInfo'];

if((strpos($UserInfo,".txt"))||(strpos($UserInfo,".php"))) {
	//  get country name
	$filename = "xml/".$UserInfo;
	if(strpos($UserInfo,";")){ 
	   list($filen,$myname,$mystate,$myemail,$myuname,$myupass,$UsersOnLine) = split(';',$UserInfo);
	   //notes.php;Kitara Lagony;Uganda;klagony@dwere.net;klagony;d41d8cd98f00b204e9800998ecf8427e;8
	   //list($filen,$myuname,$myupass)=split(";",$UserInfo);
	      //echo 'found username: '.$myuname.'<br>File name is<br>';
		  $filename = "xml/".$filen;
	   }
	
 }
 else
    $state=$UserInfo;
//get content of textfile

if (file_exists($filename)) {
   //echo "The file $filename exists";
    $content = file($filename);
	$content = str_replace('tempuname_to_replace' , $myuname, $content);
	$content = str_replace('tempupass_to_replace' , $myupass, $content);
	
	  
} 
else {
?>
<table>
<tr>
<td><?=GetControlData($state)?>
</td>
</tr>
</table>
<?php
}
exit;
?>
<?php 
//-------------------------------------------
// Defined Functions
//-------------------------------------------
// updateState
function updateState($state){
require_once('db/dbinfo.inc'); 
require_once('lib/nusoap.php');
// enable line below for dev machine
$urlAV='http://'.$hostname.'/wsapps/wsapps.php?wsdl';
// enable line below for prod.
//$urlAV='https://www.africavision2020.com/wsapps/wsapps.php?wsdl';
//echo 'Authenticating '.$myvars.'<br>'.$urlAV;

$client = new nusoap_client($urlAV,true);     
$err = $client->getError();

if ($err) {

      echo 'Constructor error' . $err . '';
      echo 'Debug' . htmlspecialchars($client->getDebug(), ENT_QUOTES) . '';
      exit();
}


$params_st = array(
	  'name'=>$state);
//$result = $client->call('Add', $params);
//$result = $client->call('Get', $params);
//print_r($params_st) ;
//echo '<br> executing ws....<br>';
$result = $client->call('InsertState', $params_st);
//print_r($result) ;

return 0;
}
//-------------------------------------------
// Defined Functions
//-------------------------------------------
// GetControlData
function GetControlData($state){ 
//
// Fetch content data
//
require_once('db/dbinfo.inc'); 
 updateState($state);
 $content1  = file_get_contents('http://en.wikipedia.org/wiki/'.$state.'#History');
 //$content1  = file_get_contents('http://en.wikipedia.org/wiki/Kenya#History');
 
 //echo strpos($content1,"h1 id=\"firstHeading").'    URL=http://en.wikipedia.org/wiki/'.$state.'#History'.strpos($content1,"Calling code").'<br><br>';
 $mystate = substr($content1,strpos($content1,"h1 id=\"firstHeading")-2,strpos($content1,"<h2>Contents</h2>")-strpos($content1,"h1 id=\"firstHeading"));
  $baseUrl=str_ireplace("href=\"#","href=\"http://en.wikipedia.org/wiki/$state#",$mystate); 
 $wlinks2=str_ireplace("href=\"/wiki","href=\"http://en.wikipedia.org/wiki", $baseUrl);
 $welcome=str_ireplace("From Wikipedia, the free encyclopedia","", $wlinks2);
 echo "<table border=0 class='AVForms' width='350' >";
 echo "<tr><td>".$welcome."</td></tr>"; 
 
echo "</table>";
$stateData = $welcome;
 
//echo 'Size of data is '.strlen($stateData);
//echo '<br><br>';
$myFile = "upload/".$state.".txt";
if (strlen($stateData)<>0){
 	
	$fh = fopen($myFile, 'w') or die("can't open file: ".$myFile );
    fwrite($fh,$stateData);
 }
 else
  //echo 'Bad data';
fclose($fh);

 

  $imgdata=addslashes($stateData); 
  //echo  stripslashes ($imgdata);
  //$imgdata=addslashes($imgdata);

 // $dbconn = @mysql_connect($dbserver,$dbuser,$dbpass) or exit("SERVER Unavailable");
  //@mysql_select_db($dbname,$dbconn) or exit("DB Unavailable");

//  $sql = "INSERT INTO files(name,size,content) VALUES('".$myFile."',".strlen($imgdata).",'". $imgdata ."')";
  $sql = "update state set url = '".$myFile."', data ='". $imgdata ."', ldate = now() where name like '".$state."'";

  @mysql_query($sql,$link) or exit("QUERY FAILED!");
//echo '<br>Done storing file <br>';
  mysql_close($link);

  //fclose($hndl); 
  
return 0;
}

?>

