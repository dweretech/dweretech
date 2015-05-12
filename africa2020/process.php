<?php

// Pull in the NuSOAP code
 // By Kitara Lagony 2010
 //
$UserInfo = $_REQUEST['UserInfo'];
 //echo 'found username: '.$myuname.'<br>File name is<br>';
GLOBAL $NewsContent;

$NewsContent = "<h3> DIVERSITY VISA NEWS</h3> <br> Processing ".$UserInfo ;

if((strpos($UserInfo,".txt"))||(strpos($UserInfo,".php"))) {
	//  get country name
	$filename = "xml/".$UserInfo;
	if(strpos($UserInfo,";")){ 
	   list($filen,$myname,$mystate,$myemail,$myuname,$myupass,$UsersOnLine) = split(';',$UserInfo);
	   //notes.php;Kitara Lagony;Uganda;klagony@dwere.net;klagony;d41d8cd98f00b204e9800998ecf8427e;8
	   //list($filen,$myuname,$myupass)=split(";",$UserInfo);
	     
		  $filename = "xml/".$filen; //set file extension
	   }
	// echo 'found username: '.$myuname.'<br>File name is<br>';
 }
 else
    $state=$UserInfo;
	
//get content of textfile

if (file_exists($filename)) {
   //echo "The file $filename exists";
    $content = file($filename);
	$content = str_replace('tempuname_to_replace' , $myuname, $content);
	$content = str_replace('tempupass_to_replace' , $myupass, $content);
	//echo $content;
	for($i=0; $i < count( $content); $i++) { 
	  echo $content[$i];
	  }
	  
} 
else {
//GetOnlineData($state);
//echo "Keyword sought " . $state;
$success=GetDBData($state);
  if(!$success) {
    echo '<br> Updating '.$state.' ...  ... online <br>';
	   DoPrintData($NewsContent,GetOnlineData($state));
  }	  
  else {
	  GetOnlineData($state);
   //echo "<br>Country being sought " . $state . " has no data...<br>";
  }
}
exit;
?>
<?php 
//-------------------------------------------
// Defined Functions
//-------------------------------------------

function updateState($state){
require_once('db/dbinfo.inc'); 
require_once('lib/nusoap.php');
// enable line below for dev machine
$urlAV='http://'.$hostname.'/wsapps/wsapps.php?wsdl';
// enable line below for prod.
//$urlAV='https://www1.africavision2020.org/wsapps/wsapps.php?wsdl';
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

function GetOnlineData($state){ 
//
// Fetch content data
//
require_once('db/dbinfo.inc'); 
 //updateState($state);
$stateFile = "upload/".$state.".txt";
if (file_exists($stateFile)) {
     // $content = file($stateFile);
	 echo '<br><br>Updating from cache file: '.$stateFile.'<br>'. $stateData; 
		$fp      = fopen($stateFile, 'r');
		$content = fread($fp, filesize($stateFile));
		//$content = addslashes($content);
		for($i=0; $i < count( $content); $i++) { 
		  echo $content[$i];
	  	}
		fclose($fp);
     $stateData = $content;
	/*
	  if (strlen($content)<>0) { 
	      $stateData  = $content;
		  echo '<br><br>File found: '.$stateFile.'<br>'. $stateData;  
       }
	   
	   */
}
else {
	// Go online and fetch new data.
 $content1  = file_get_contents('http://en.wikipedia.org/wiki/'.$state.'#History');
 // clean up the data for storage
 $mystate = substr($content1,strpos($content1,"h1 id=\"firstHeading")-2,strpos($content1,"<h2>Contents</h2>")-strpos($content1,"h1 id=\"firstHeading"));
 $baseUrl=str_ireplace("href=\"#","href=\"http://en.wikipedia.org/wiki/$state#",$mystate); 
 $wlinks2=str_ireplace("href=\"/wiki","href=\"http://en.wikipedia.org/wiki", $baseUrl);
 $stateData =str_ireplace("From Wikipedia, the free encyclopedia","", $wlinks2);
 $newdata=true;
}
 
 
if ((strlen($stateData)<>0) && $newdata){
	   $fh = fopen($stateFile, 'w') or die("can't open file: ".$stateFile );
        fwrite($fh,$stateData);
     
 
	//echo 'Bad data';
	fclose($fh);
	$imgdata=addslashes($stateData); 
	// echo  stripslashes ($imgdata);
	//$imgdata=addslashes($imgdata);
	
	// $dbconn = @mysql_connect($dbserver,$dbuser,$dbpass) or exit("SERVER Unavailable");
	//@mysql_select_db($dbname,$dbconn) or exit("DB Unavailable");
	
	//  $sql = "INSERT INTO files(name,size,content) VALUES('".$myFile."',".strlen($imgdata).",'". $imgdata ."')";
	$sql = "update state set url = '".$stateFile."', data ='". $imgdata ."', ldate = now() where name like '".$state."'";

  @mysql_query($sql);// or exit( $sql."  QUERY FAILED!");
 
  }
  else
    {
		  $stateData = 'Could not find data for '.$state;
//echo '<br>Done storing file <br>';
  //mysql_close($link);
   
  //fclose($hndl); 
	}
   return $stateData;
}
///
/// Get Database State Data
///
function GetDBData($lstate){
require_once('db/dbinfo.inc'); 
 
 
$sql = "SELECT name,url,data FROM state WHERE name like '".$lstate."'";

 
$result = @mysql_query($sql,$link);// or exit("QUERY FAILED!");
$row = mysql_num_rows($result);
if($row) {
//echo $row.' for Record found  <br>';
$contenttype = @mysql_result($result,0,"name");
$url = @mysql_result($result,0,"url");
if(strlen($url)) {
   $Statedata = @mysql_result($result,0,"data");
    
	$success = true;
   }
   else {
      echo 'Out of date needs update ...';
	  $success =false; //GetOnlineData($lstate);
	   
	  }
}
else
  {
  		$inst_sql="insert into state(name) values('" . $lstate. "')";
		//echo '<br> '.$inst_sql.'<br> ';
		@mysql_query($inst_sql);
		GetOnlineData($lstate);
  echo 'Record needs to be added';
  }
   if($success) DoPrintData($NewsContent,$Statedata);
//header("Content-type: $contenttype");
//echo $Statedata;

//mysql_close($link);
return $success;

}
// 
// Printer State data
///
function DoPrintData($News,$CountryData){
$NewsContent = "<h3> DIVERSITY VISA NEWS</h3>";
?>
 <table width='350' border=0 align="center" bgcolor='#FCFCC4' >
<tr><td ><a href="#" onclick="window.location='https://www.dvlottery.state.gov/'" target="_new"><font color="#FF0000"><?=$NewsContent?></font></a></td>
 </tr> 
 <tr><td width="796"><?=$CountryData?></td>
 </tr> 
 
</table>
<?php
return 0;
}
?>

