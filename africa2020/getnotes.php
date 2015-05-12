<?php

$UserInfo = $_REQUEST['UserInfo'];

if((strpos($UserInfo,".txt"))||(strpos($UserInfo,".php"))) {
	//  get country name
	$filename = "xml/".$UserInfo;
	if(strpos($UserInfo,";")){ 
	   list($filen,$myname,$mystate,$myemail,$myuname,$myupass,$UsersOnLine) = split(';',$UserInfo);
	   $newUserInfo=$myname.';'.$mystate.';'.$myemail.';'.$myuname.';'.$myupass.';'.$UsersOnLine;
	   //notes.php;Kitara Lagony;Uganda;klagony@dwere.net;klagony;d41d8cd98f00b204e9800998ecf8427e;8
	   // notes.php;Kitara_Lagony;Eritrea;klagony@dwere.net;klagony;d41d8cd98f00b204e9800998ecf8427e;2/829/799 
	   //list($filen,$myuname,$myupass)=split(";",$UserInfo);
	      //echo 'found username: '.$myuname.'<br>File name is<br>';
		  $filename = "xml/".$filen;
	   }
	
 }
//get content of textfile

if (file_exists($filename)) {
   //echo "The file $filename exists";
    $content = file($filename);
	$content = str_replace('tempuname_to_replace' , $myuname, $content);
	$content = str_replace('tempupass_to_replace' , $myupass, $content);
	$content = str_replace('userinfo_to_replace',$newUserInfo, $content);
	//echo $content;
	for($i=0; $i < count( $content); $i++) { 
	  echo $content[$i];
	  }
 }     
      ?>
