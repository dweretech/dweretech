<?php
 // retrieve a state from the African Union
//require_once('db/dbinfo.inc'); 
//require_once('securedata.php'); 
$filename = $_REQUEST['file'];

//get content of textfile
//echo "Looking for The file $filename  exists<br><br>";
//$filename = $_GET['file'];
$myfile   = "xml/".$filename;
//echo 'Clooking for '.$myfile;

if (file_exists($myfile)) {
    //echo "The file $myfile exists";
    $content = file($myfile);
}
 //$content = file($myfile);
//echo 'Content '.$content;
 for($i=0;$i<=sizeof($content);$i++){
 
    echo $content[$i];
	}
?>
