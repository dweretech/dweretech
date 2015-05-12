<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<?php 

//
// Fetch content data
//
require_once('db/dbinfo.inc'); 
 //updateState($state);
  $npage =1;
 $UserInfo= $_GET['cmd'];
 if(strpos($UserInfo,";")){ 
     // Lanyero Scovia;Lesotho;lscovia@dwere.com;lscovia;7a913819256c63965fc05e634ef72032;2/4/2
	   list($myname,$mystate,$myemail,$myuname,$myupass,$UsersOnLine,$cmd) = split(';',$UserInfo);
 }
 //if($npage)
 //   echo 'Next Page: '.$npage;
  //echo 'User info: <br><br>'.$UserInfo.'<br><br>';
 
  
 /*
 $content1  = file_get_contents('http://en.wikipedia.org/wiki/'.$state.'#History');
 //$content1  = file_get_contents('http://en.wikipedia.org/wiki/Kenya#History');
 
echo strpos($content1,"h1 id=\"firstHeading").'    URL=http://en.wikipedia.org/wiki/'.$state.'#History'.strpos($content1,"Calling code").'<br><br>';
 $mystate = substr($content1,strpos($content1,"h1 id=\"firstHeading")-2,strpos($content1,"<h2>Contents</h2>")-strpos($content1,"h1 id=\"firstHeading"));
  $baseUrl=str_ireplace("href=\"#","href=\"http://en.wikipedia.org/wiki/$state#",$mystate); 
 $wlinks2=str_ireplace("href=\"/wiki","href=\"http://en.wikipedia.org/wiki", $baseUrl);
 $welcome=str_ireplace("From Wikipedia, the free encyclopedia","", $wlinks2);

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
*/
//$imgdata=addslashes($stateData); 
  //echo  stripslashes ($imgdata);
  //$imgdata=addslashes($imgdata);

 // $dbconn = @mysql_connect($dbserver,$dbuser,$dbpass) or exit("SERVER Unavailable");
  //@mysql_select_db($dbname,$dbconn) or exit("DB Unavailable");

//  $sql = "INSERT INTO files(name,size,content) VALUES('".$myFile."',".strlen($imgdata).",'". $imgdata ."')";
  $ssql = "select id, code, name,url,data,ldate from state  where name like '".$mystate."'";
	list($dcmd,$dstate) = split('/',$cmd);

 if($dcmd=='reset'){
		$dsql = "delete from state where name like '".$dstate."'";
	//echo $cmd. '<br>'.$dcmd.'<br> '.$dsql;

	$result = mysql_query($dsql);// or exit( $sql."  QUERY FAILED!");
	//echo 'Deleting record '. $mystate.' sql: '.$dsql;
	exit;
 }
 if($cmd>=0){
	 $npage = $cmd;
   }
  $sql = "select distinct name,id, code, name,url,data,ldate  from state where id >= $npage order by id asc";
// echo '<br>'. $sql ;
// exit;
  $i= $npage;
  $result = mysql_query($sql);// or exit( $sql."  QUERY FAILED!");
  $c=1;
 echo '<table align=center border =0 cellpadding="2" cellspacing="0" class=\'Style20\'>';
  	  while ($row = mysql_fetch_assoc($result)) {
		  $i++;
		    $bgc = "#CCFF99";
			if(fmod($c,2)==0)
			    $bgc = "#CCFF00";
			$c++;
			echo '<tr bgcolor="'.$bgc.'" ><td align=center width=50 > '.$i ; //$row['id'];
			// echo ' </td><td> '.$row['id'];
			echo ' </td><td width=250 > '.$row['name'];
			//echo ' </td><td> '.$row['url'];
			//echo ' </td><td  > '.$row['ldate'];
			echo ' </td></tr> ';

		  	if($i>=0){
				if($npage>=15) {
				   $ppage=$npage-15;
				}else
				  $ppage=0;
			    $bk = '<a href="#" onClick=" 
				   DoAdmin(\'AVbodyV\',document.formSearch.userinfo.value+\';'.$ppage.'\')"><  </a> ';
		   }
		  
		  if(fmod($i,15)==0){
		    echo  ' <tr><td colspan=2 title=\''.$npage.'\'>'.$bk.' - | - 
			       <a href="#" onClick="
				   DoAdmin(\'AVbodyV\',document.formSearch.userinfo.value+\';'.$i.'\')"> ></a> </tr></td>';
			 exit;
		  }
 
		}

		  
		mysql_close( $link);
	echo '</table>';

//echo '<br>Done storing file <br>';
  //mysql_close($link);
  //DoPrintData($welcome);
  //fclose($hndl); 
  ?>
<body>
</body>
</html>